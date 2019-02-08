<?php
/**
 * ConnectDaily Events Calendar Content Plugin 
 *  
 *  
 * @package Joomla.Plugin 
 * @subpackage Content.connectdaily 
 * @copyright (C) 2016 - MH Software, Inc. 
 * @license GNU/GPLv3 http://www.gnu.org/licenses/gpl-3.0.html 
 * @author gsexton (3/11/16) 
 */

defined('_JEXEC') or die;


class JToolbarButtonExternalLink extends JToolbarButtonLink {
    var $_name = 'ExternalLink';

    function fetchButton($type = 'ExternalLink', $name = 'back', $text = '', $url = null) {
        $text   = JText::_($text);
        $class  = $this->fetchIconClass($name);
        $doTask = $this->_getCommand($url);

        $html   = '<button onclick="';
        if (strpos($url, '//') > 0) {
            $html .= 'window.open(\'' . $url . '\');"';
        } else {
            $html .= $url . '"';
        }
        $html .= ' class="btn btn-small">';
        $html .= "<span class=\"$class\" title=\"$text\">\n";
        $html .= "</span>\n";
        $html   .= "$text\n";
        $html   .= "</button>\n";

        return $html;
    }
}
