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

jimport('connectdaily.if-locale-helper');
jimport('connectdaily.class-cdaily-joomla');
jimport('connectdaily.class-cdaily-datetime');

class CDailyJoomlaLocaleHelper implements CDailyLocaleHelper {

    public function getLocaleAsJSON(){
        return json_encode($this->getLocale());
    }

    public function getLocale(){
        $months=array('JANUARY','FEBRUARY','MARCH','APRIL','MAY','JUNE','JULY','AUGUST','SEPTEMBER','OCTOBER','NOVEMBER','DECEMBER');
        $days=array('SUNDAY','MONDAY','TUESDAY','WEDNESDAY','THURSDAY','FRIDAY','SATURDAY');
        $o=new stdClass();
        $mo=array();
        $ma=array();
        foreach ($months as $key) {
            array_push($mo,JText::_($key));
            array_push($ma,JText::_($key.'_SHORT'));
        }
        $o->MonthNames=$mo;
        $o->AbbrMonthNames=$ma;
        $dn=array();    // Full Day Names
        $sdn=array();   // Short Day Names
        $di=array();    // Day Initials
        foreach ($days as $key) {
            array_push($dn,JText::_($key));
            array_push($sdn,JText::_(substr($key,0,3)));
            array_push($di,substr(JText::_(substr($key,0,3)),0,1));
        }
        $o->DayNames=$dn;
        $o->AbbrDayNames=$sdn;
        $o->DayInitials=$di;
        $o->FirstDayOfWeek=CDailyJoomlaPlugin::getInstance()->getSettings()->start_of_week;
        return $o;
    }
}

