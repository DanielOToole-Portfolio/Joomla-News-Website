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

// Page title
if ($this->mas_page_title)
{
	if ($this->params->get('show_page_heading', 1)) { 
		$app = JFactory::getApplication();
		$menu = $app->getMenu();
		$active = $menu->getActive();
		if ($active->params->get('page_heading'))
		{
			$page_heading = $active->params->get('page_heading');
		} else {
			$doc = JFactory::getDocument(); 
			$page_heading = $doc->getTitle();
		}
	?>
		<div class="page-header">
			<h1> <?php echo $this->escape($page_heading); ?> </h1>
		</div>
	<?php }
}

// Suffix
$suffix = '';
if (isset($this->suffix)) 
{
	$suffix = $this->suffix;
} 
?>

<div 
	id="mnwall_container_<?php echo $this->widgetID; ?>" 
	class="mnwall_container mnwall-<?php echo $this->mnwall_layout; ?> <?php echo $this->mnwall_grid; ?> <?php echo $suffix; ?>"
	data-order="<?php echo $this->active_ordering; ?>"
	data-direction="<?php echo $this->active_direction; ?>"
>
	
	<?php if (isset($this->filters) || isset($this->sortings)) { ?>
	
		<div class="mnwall_filters_sortings">
		
		<?php
		////////////////////////////////////////////////////////////////
		// Filters
		////////////////////////////////////////////////////////////////
		
		if (isset($this->filters)) 
		{ ?>
		
			<div id="mnwall_iso_filters_cont_<?php echo $this->widgetID; ?>" class="mnwall_iso_filters_cont">
				<div id="mnwall_iso_filters_<?php echo $this->widgetID; ?>" class="mnwall_iso_filters">
					<?php echo $this->filters; ?>
				</div>
			</div>
			
		<?php }
		
		////////////////////////////////////////////////////////////////
		// Sortings
		////////////////////////////////////////////////////////////////
		
		if (isset($this->sortings)) 
		{ ?>
		
			<div id="mnwall_iso_sortings_cont_<?php echo $this->widgetID; ?>" class="mnwall_iso_sortings_cont">
				<div id="mnwall_iso_sortings_<?php echo $this->widgetID; ?>" class="mnwall_iso_sortings">
					<?php echo $this->sortings; ?>
				</div>
			</div>
			
		<?php }
		
		////////////////////////////////////////////////////////////////
		// Reset button
		////////////////////////////////////////////////////////////////
		
		if ($this->resetButton && (isset($this->filters) || isset($this->sortings))) 
		{ ?>
		
			<div class="mnwall_iso_reset_cont">
				<div class="mnwall_iso_reset">
					<button class="btn-reset" id="mnwall_reset_<?php echo $this->widgetID; ?>">
						<i class="fa fa-times"></i> <?php echo JText::_('COM_MINITEKWALL_RESET'); ?>
					</button>
				</div>
			</div>
			
		<?php } ?>
		
		</div>
	
	<?php }
	////////////////////////////////////////////////////////////////
	// Masonry Container
	////////////////////////////////////////////////////////////////
	?>
	  	    
    <div 
		id="mnwall_iso_container_<?php echo $this->widgetID; ?>" 
		class="mnwall_iso_container" 
		style="margin: -<?php echo (int)$this->gutter; ?>px;"
	>
    	<?php 
		include (dirname(__FILE__).'/'.$this->getLayout().'_'.$this->mnwall_layout.'.php'); 
		?>
        
    </div>
        
</div>