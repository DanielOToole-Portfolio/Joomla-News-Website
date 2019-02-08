<?php
/**
 * ConnectDaily Events Calendar Content Plugin 
 *  
 * This plugin implements the various connectDaily shortcodes 
 * that can be inserted into content. 
 *  
 * @package Joomla.Plugin 
 * @subpackage Content.connectdaily 
 * @copyright (C) 2016 - MH Software, Inc. 
 * @license GNU/GPLv3 http://www.gnu.org/licenses/gpl-3.0.html 
 * @author gsexton (3/11/16) 
 */

defined('_JEXEC') or die('Restricted access');

/**
 * A base class for models.
 * 
 * @author gsexton (4/12/16)
 */
class CDailyModel  extends JModelLegacy {

    public function getPlugin(){
        return CDailyJoomlaPlugin::getInstance();
    }

    public function getSettings(){
        return $this->getPlugin()->getSettings();
    }
}
