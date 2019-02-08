<?php
/**
* @title			Minitek Wall
* @copyright   		Copyright (C) 2011-2015 Minitek, All rights reserved.
* @license   		GNU General Public License version 3 or later.
* @author url   	http://www.minitek.gr/
* @developers   	Minitek.gr
*/

// no direct access
defined('_JEXEC') or die('Restricted access');
?>								
									
<form action="<?php echo JRoute::_('index.php?option=com_minitekwall&layout=edit&id=' . (int) $this->item->id); ?>" method="post" name="adminForm" id="widget-form" class="form-validate">
					
	<div class="row-fluid">
	
		<div class="span4">
	
			<div class="thumbnail">
				<i class="fa fa-joomla mw-source-icon"></i>
				<div class="thumbnail-title">
					<span><?php echo JText::_('COM_MINITEKWALL_JOOMLA'); ?></span>
				</div>
				
				<button class="btn btn-info" onclick="Joomla.submitbutton('widget.selectSourceJoomla')">
					<?php echo JText::_('COM_MINITEKWALL_SELECT'); ?>
				</button>
				
			</div>
		 
		</div>
		
		<div class="span4">
									
			<div class="thumbnail">
				<img src="components/com_minitekwall/assets/images/icon-48-k2.png" alt="K2" />
				<div class="thumbnail-title">
					<span><?php echo JText::_('COM_MINITEKWALL_K2'); ?></span>
				</div>
				
				<a href="https://www.minitek.gr/joomla-extensions/minitek-wall#subscriptionPlans" class="btn btn-warning" target="_blank">
					<?php echo JText::_('COM_MINITEKWALL_ONLY_IN_PRO_VERSION'); ?>
				</a>
				
			</div>
			
		</div>
		
		<div class="span4">
									
			<div class="thumbnail">
				<img src="components/com_minitekwall/assets/images/icon-48-virtuemart.png" alt="Virtuemart" />
				<div class="thumbnail-title">
					<span><?php echo JText::_('COM_MINITEKWALL_VIRTUEMART'); ?></span>
				</div>
				
				<a href="https://www.minitek.gr/joomla-extensions/minitek-wall#subscriptionPlans" class="btn btn-warning" target="_blank">
					<?php echo JText::_('COM_MINITEKWALL_ONLY_IN_PRO_VERSION'); ?>
				</a>
				
			</div>
			
		</div>
	
	</div>

	<div class="row-fluid">
						
		<div class="span4">
	
			<div class="thumbnail">
				<img src="components/com_minitekwall/assets/images/icon-48-jomsocial.png" alt="Jomsocial" />
				<div class="thumbnail-title">
					<span><?php echo JText::_('COM_MINITEKWALL_JOMSOCIAL'); ?></span>
				</div>
				
				<a href="https://www.minitek.gr/joomla-extensions/minitek-wall#subscriptionPlans" class="btn btn-warning" target="_blank">
					<?php echo JText::_('COM_MINITEKWALL_ONLY_IN_PRO_VERSION'); ?>
				</a>
				
			</div>
		 
		</div>
		
		<div class="span4">
									
			<div class="thumbnail">
				<img src="components/com_minitekwall/assets/images/icon-48-easyblog.png" alt="Easyblog" />
				<div class="thumbnail-title">
					<span><?php echo JText::_('COM_MINITEKWALL_EASYBLOG'); ?></span>
				</div>
				
				<a href="https://www.minitek.gr/joomla-extensions/minitek-wall#subscriptionPlans" class="btn btn-warning" target="_blank">
					<?php echo JText::_('COM_MINITEKWALL_ONLY_IN_PRO_VERSION'); ?>
				</a>
				
			</div>
			
		</div>
		
		<div class="span4">
									
			<div class="thumbnail">
				<i class="fa fa-folder-open mw-source-icon"></i>
				<div class="thumbnail-title">
					<span><?php echo JText::_('COM_MINITEKWALL_IMAGE_FOLDER'); ?></span>
				</div>
				
				<a href="https://www.minitek.gr/joomla-extensions/minitek-wall#subscriptionPlans" class="btn btn-warning" target="_blank">
					<?php echo JText::_('COM_MINITEKWALL_ONLY_IN_PRO_VERSION'); ?>
				</a>
				
			</div>
			
		</div>
	
	</div>
	
	<input type="hidden" name="task" value="" />
	<?php echo JHtml::_('form.token'); ?>

</form>