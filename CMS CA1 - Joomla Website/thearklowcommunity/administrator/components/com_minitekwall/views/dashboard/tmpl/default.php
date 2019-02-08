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

$user  = JFactory::getUser();
$token = JSession::getFormToken();
?>

<div id="mw-cpanel"><!-- Main Container -->
	
	<?php echo $this->navbar; ?>	
	
	<div id="mw-main-container" class="main-container container-fluid">
	
		<a id="menu-toggler" class="menu-toggler" href="#">
			<span class="menu-text"></span>
		</a>

		<div id="mw-sidebar" class="sidebar">
		
			<?php echo $this->sidebar; ?>
		
		</div>
		
		<div class="main-content">
			
			<div class="page-header clearfix"> </div>
			
			<div class="page-content mw-dashboard">
				
				<div class="row-fluid">
				
					<div class="thumbnail">
						<a href="<?php echo JRoute::_('index.php?option=com_minitekwall&view=widgets'); ?>">
							<i class="fa fa-list-ul"></i>
							<span class="thumbnail-title">
								<?php echo JText::_('COM_MINITEKWALL_WIDGETS'); ?>
							</span>
						</a>
					</div>
					
					<div class="thumbnail">
						<a href="https://www.minitek.gr/support/documentation/joomla-extensions/components/minitek-wall" target="_blank">
							<i class="fa fa-book"></i>
							<span class="thumbnail-title">
								<?php echo JText::_('COM_MINITEKWALL_DOCUMENTATION'); ?>
							</span>
						</a>
					</div>
					
					<div class="thumbnail">
						<a href="<?php echo JRoute::_('index.php?option=com_minitekwall&view=about'); ?>">
							<i class="fa fa-info-circle"></i>
							<span class="thumbnail-title">
								<?php echo JText::_('COM_MINITEKWALL_ABOUT'); ?>
							</span>
						</a>
					</div>
					
					<div class="thumbnail">
						<a href="<?php echo JRoute::_('index.php?option=com_config&view=component&component=com_minitekwall&path=&return='.base64_encode(JURI::getInstance()->toString())); ?>">
							<i class="fa fa-gear"></i>
							<span class="thumbnail-title">
								<?php echo JText::_('COM_MINITEKWALL_CONFIGURATION'); ?>
							</span>
						</a>
					</div>
					
					<div class="thumbnail">
						<a href="https://extensions.joomla.org/extension/minitek-wall/" target="_blank" style="position: relative;">
							<i class="fa fa-star" style="color: #ffcb52;"></i>
							<span class="thumbnail-title">
								<?php echo JText::_('COM_MINITEKWALL_DASHBOARD_LIKE_THIS_EXTENSION'); ?>
							</span>
                          	<span class="small" style="position: absolute;bottom: 5px;width: 100%;left: 0;opacity: 0.9;">
								<?php echo JText::_('COM_MINITEKWALL_DASHBOARD_LEAVE_A_REVIEW_ON_JED'); ?>
							</span>
						</a>
					</div>	
					
				</div>
		
			</div><!-- End page-content -->
			
		</div><!-- End main-content -->

	</div><!-- End mw-main-container -->
	
</div><!-- End Main Container -->