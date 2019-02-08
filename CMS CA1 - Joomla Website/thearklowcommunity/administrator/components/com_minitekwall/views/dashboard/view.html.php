<?php
/**
* @title			Minitek Wall
* @copyright   		Copyright (C) 2011-2017 Minitek, All rights reserved.
* @license   		GNU General Public License version 3 or later.
* @author url   	https://www.minitek.gr/
* @developers   	Minitek.gr
*/

// no direct access
defined('_JEXEC') or die('Restricted access');

class MinitekWallViewDashboard extends JViewLegacy
{
	public function display($tpl = null)
	{
		$utilities = new MinitekWallHelperUtilities();
		
		$this->navbar = $utilities->getNavbarHTML();
		$this->sidebar = $utilities->getSideMenuHTML();
				
		$this->addTitle();
				
		parent::display($tpl);
	}

	protected function addTitle()
	{
		JToolbarHelper::title(JText::_('COM_MINITEKWALL_HOME'), '');
	}

}
