<?php
/**
  * Copyright 2016, MH Software, Inc.
  *
  * This program is free software; you can redistribute it and/or
  * modify it under the terms of the GNU General Public License
  * as published by the Free Software Foundation; either version 2
  * of the License, or (at your option) any later version.
  * This program is distributed in the hope that it will be useful,
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  * You should have received a copy of the GNU General Public License
  * along with this program; if not, write to the Free Software
  * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
*/
defined('_JEXEC') or die;
/**
 * This class provides a wrapper around the settings table.
 *  
 * ******************************************************************
 *  BIG FREAKING WARNING:
 *  
 *  DONT CALL DEBUGOUT BECAUSE IT REQUIRES SETTINGS AND WILL
 *  CAUSE AN INFINITE LOOP!
 * ****************************************************************** 
 * @author gsexton (3/21/16)
 */
require_once('class-cdaily-joomla.php');
class CDailySettings {

    const CONFIGURATION = 1;
    const HINTS=2;
    const TABLE_NAME = '#__cdailysettings';

    private $setting_id;
    private $last_update;
    private $setting_values;
    private $objValues;
    private $fromDB = false;

    private function __construct($objData) {

        $this->setting_id = $objData->setting_id;
        if (property_exists($objData, 'last_update')) {
            $this->last_update = $objData->last_update;
            $this->fromDB = true;
        }
        if (property_exists($objData, 'setting_values')) {
            $this->setting_values = $objData->setting_values;
        }
    }

    private static function getSettingsDefaults() {

        $language = JFactory::getLanguage();
        $lc = $language->getLocale();
        $config = JFactory::getConfig();
        $defaults = array(
            'date_format' => JText::_('DATE_FORMAT_LC'),
            'datetime_format' => JText::_('DATE_FORMAT_LC2'),
            'disable_timestamp' => time() + 2 * CDailyPlugin::CACHE_DISABLE_PERIOD_SECONDS,
            'language' => $lc[2],
            'password' => '',
            'resource_management' => false,
            'setting_id' => self::CONFIGURATION,
            'skip_resource_types' => '',
            'start_of_week' => $language->getFirstDay(),
            'time_format' => 'g:i a',
            'timezone_string' => $config->get('offset'),
            'token' => null,
            'url' => '',
            'used' => false,
            'username' => '',
            'version' => CDailyJoomlaPlugin::VERSION_NUMBER
            );
        return (object)$defaults;
    }

    public static function getSettings($settingsType = self::CONFIGURATION) {
        $oResult = null;
        try {
            $db = JFactory::getDbo(); // JDatabaseDriver
            $query = $db->getQuery(true);
            $query->select(array('setting_id', 'last_update', 'setting_values'));
            $query->from(self::TABLE_NAME);
            $query->where($db->quoteName('setting_id') . '=' . (int)$settingsType);
            $db->setQuery($query);
            $data = $db->loadObject();

            if ($data == null) {
                $data = new stdClass;
                $data->setting_id = $settingsType;
                if ($settingsType===self::CONFIGURATION) {
                    $data->setting_values = json_encode(self::getSettingsDefaults());
                } else {
                    $data->setting_values = '';
                }
            }
            $oResult = new CDailySettings($data);
        } catch (Exception $ex) {
            CDailySettings::logDBError($ex);
            $defs=CDailySettings::getSettingsDefaults();
            $defs->{"error"}=$ex->getMessage();
            $oResult=new CDailySettings($defs);
        }
        return $oResult;
    }

    private static function logDBError(Exception $ex){
        $d=new DateTime();
        file_put_contents('php://stderr', print_r('[' . $d->format(DateTime::RFC2822) . "] " . CDailyPlugin::PLUGIN_NAME . " - Database Exception: " . $ex->getMessage() . "\n", true));
    }

    /** 
     * Return the settings id or type. 
     * @return int Settings ID/Type.
     */
    public function getType() {
        return $this->setting_id;
    }

    /**
     * Return the last update value. 
     * @return datetime 
     */
    public function getLastUpdate() {
        return $this->last_update;
    }

    /**
     * Return the Settings Values as an object. 
     *  
     * @return object 
     */
    public function getValues() {
        if ($this->objValues == null) {
            if (empty($this->setting_values)) {
                if ($this->setting_id===self::CONFIGURATION) {
                    $this->objValues = self::getSettingsDefaults();
                } else {
                    $this->objValues = new stdClass;
                }
            } else {
                $language = JFactory::getLanguage();
                $lc = $language->getLocale();
                $config = JFactory::getConfig();
                $this->objValues = json_decode($this->setting_values);
                // Always override the timezone value and the language
                // value with the current ones from Joomla
                if ($this->setting_id==self::CONFIGURATION) {
                    $this->objValues->timezone_string = $config->get('offset');
                    $this->objValues->language = $lc[2];
                }
            }
        }
        return $this->objValues;
    }

    public function setValues($objValues) {
        $this->objValues = $objValues;
    }

    /**
     * Serialize the new values and set last_update.
     */
    public function update() {
        $result=false;
        try {
            $db = JFactory::getDbo();

            if (empty($this->objValues)) {
                return $this->delete();
            }
            if (property_exists($this->objValues,'error')) {
                unset($this->objValues->{"error"});
            }

            $this->setting_values = json_encode($this->objValues);
            $this->last_update = date($db->getDateFormat(), time());
            /*
                Use an object for update.
            */
            $o = new stdClass();
            $o->setting_id = $this->setting_id;
            $o->last_update = $this->last_update;
            $o->setting_values = $this->setting_values;
            
            if ($this->fromDB) {
                $result = $db->updateObject(self::TABLE_NAME, $o, array('setting_id'));
            } else {
                $result = $db->insertObject(self::TABLE_NAME, $o);
                $this->fromDB = true;
            }
        } catch (Exception $ex) {
            $this->objValues->{"error"}=$ex->getMessage();
            CDailySettings::logDBError($ex);
        }
        return $result;
    }

    /**
     * Remove this settings object from the database.
     */
    public function delete() {

        $result=false;
        try {
            $db = JFactory::getDbo();
            $query = $db->getQuery(true);
            $query->delete($db->quoteName(self::TABLE_NAME));
            $query->where(array($db->quoteName('setting_id') . '=' . $this->setting_id));
            $db->setQuery($query);
            $result = $db->execute();
            $this->fromDB = false;
        } catch (Exception $ex) {
            CDailySettings::logDBError($ex);
        }

        return $result;
    }

}
