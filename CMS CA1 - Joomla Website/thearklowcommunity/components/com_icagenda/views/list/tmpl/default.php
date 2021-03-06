<?php
/**
 *------------------------------------------------------------------------------
 *  iCagenda v3 by Jooml!C - Events Management Extension for Joomla! 2.5 / 3.x
 *------------------------------------------------------------------------------
 * @package     com_icagenda
 * @copyright   Copyright (c)2012-2017 Cyril Rezé, Jooml!C - All rights reserved
 *
 * @license     GNU General Public License version 3 or later; see LICENSE.txt
 * @author      Cyril Rezé (Lyr!C)
 * @link        http://www.joomlic.com
 *
 * @version     3.6.9 2017-06-17
 * @since       3.6.0
 *------------------------------------------------------------------------------
*/

// No direct access to this file
defined('_JEXEC') or die();

?>
<div id="icagenda" class="ic-list-view<?php echo $this->pageclass_sfx; ?>">
	<?php if ($this->params->get('show_page_heading', 1)) : ?>
	<h1 class="componentheading">
		<?php echo $this->escape($this->params->get('page_heading')); ?>
	</h1>
	<?php endif; ?>

	<?php // Content is generated by content plugin event "iCagendaOnListBeforeDisplay" ?>
	<?php echo $this->event->iCagendaOnListBeforeDisplay; ?>

	<?php // Start List of events ?>
	<form id="icagenda-list"
		name="iclist"
		action="<?php echo JRoute::_('index.php?option=com_icagenda&view=list&Itemid=' . JFactory::getApplication()->input->get('Itemid', 0)); ?>"
		method="get">

		<?php // Menu Item Link : not needed with form get method when SEF enabled, as processed by the router ?>
		<?php if (JFactory::getApplication()->getCfg('sef') != 1) : ?>
			<input name="option" type="hidden" value="com_icagenda" />
			<input name="view" type="hidden" value="list" />
			<input name="Itemid" type="hidden" value="<?php echo JFactory::getApplication()->input->get('Itemid', 0); ?>" />
		<?php endif; ?>

		<?php // Search Filters ?>
		<?php if ($this->params->get('search_filters', '0')) : ?>
			<?php echo $this->loadTemplate('filters'); ?>
		<?php endif; ?>

		<?php // Start Header ?>
		<div class="ic-clearfix">

			<?php // Header - Title / Subtitle ?>
			<?php echo $this->header; ?>

			<?php // Header - Categories Information ?>
			<?php echo $this->loadTemplate('categories'); ?>

		</div>
		<?php // End Header ?>

		<?php // Header - Pagination ?>
		<?php if ( in_array($this->params->get('navposition', 1), array('0', '2')) ) : ?>
			<div class="ic-clearfix">
				<?php echo $this->pagination; ?>
			</div>
		<?php endif; ?>

		<?php // List of events ?>
		<div class="ic-list-events ic-clearfix">
			<?php echo '<!-- ' . $this->template . ' -->'; ?>

			<?php foreach ($this->items as $k => $item) : ?>

				<?php // Get the date ?>
				<?php $evt = $this->evt[$k]; ?>

				<?php // Load preset data variables for list of events ?>
				<?php require $this->iclist_vars; ?>

				<?php // Load template to display each event in the list ?>
				<?php require $this->themeList; ?>

			<?php endforeach; ?>
		</div>

		<?php // AddThis buttons ?>
		<?php if ($this->params->get('atlist', 0) && $this->sharing) : ?>
			<div class="share ic-clearfix">
				<?php echo $this->sharing; ?>
			</div>
		<?php endif; ?>

		<?php // Navigation & pagination ?>
		<?php if ( in_array($this->params->get('navposition', 1), array('1', '2')) ) : ?>
			<div class="ic-clearfix">
				<?php echo $this->pagination; ?>
			</div>
		<?php endif; ?>

	</form>
	<?php // End List of events ?>

	<?php // Content is generated by content plugin event "iCagendaOnListAfterDisplay" ?>
	<?php echo $this->event->iCagendaOnListAfterDisplay; ?>

</div>
