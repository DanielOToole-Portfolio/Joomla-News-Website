<?php
/**
 * @package RSPageBuilder!
 * @copyright (C) 2016 www.rsjoomla.com
 * @license GPL, http://www.gnu.org/licenses/gpl-3.0.html
 */

// No direct access
defined ('_JEXEC') or die ('Restricted access');

JHtml::_('behavior.tooltip');
JHtml::_('behavior.multiselect');
JHtml::_('formbehavior.chosen', 'select');

$user		= JFactory::getUser();
$listOrder	= $this->escape($this->state->get('list.ordering'));
$listDirn	= $this->escape($this->state->get('list.direction'));
$sortFields	= $this->getSortFields();
?>

<script type="text/javascript">
	Joomla.orderTable = function() {
		table		= document.getElementById('sortTable');
		direction	= document.getElementById('directionTable');
		order		= table.options[table.selectedIndex].value;
		
		if (order != '<?php echo $listOrder; ?>') {
			direction = 'asc';
		} else {
			direction = direction.options[direction.selectedIndex].value;
		}
		Joomla.tableOrdering(order, direction, '');
	}
</script>

<form id="adminForm" name="adminForm" action="<?php echo JRoute::_('index.php?option=com_rspagebuilder&view=pages');?>" method="post">
	<?php if (!empty($this->sidebar)) { ?>
	<div id="j-sidebar-container" class="span2">
		<?php echo $this->sidebar; ?>
	</div>
	<div id="j-main-container" class="span10">
	<?php } else { ?>
	<div id="j-main-container">
	<?php } ?>
		<div id="filter-bar" class="btn-toolbar">
			<div class="filter-search btn-group pull-left">
				<label for="filter_search" class="element-invisible"><?php echo JText::_('JSEARCH_FILTER_SUBMIT');?></label>
				<input type="text" name="filter_search" id="filter_search" placeholder="<?php echo JText::_('JSEARCH_FILTER'); ?>" value="<?php echo $this->escape($this->state->get('filter.search')); ?>" class="hasTooltip" title="<?php echo JHtml::tooltipText('JSEARCH_FILTER_SUBMIT'); ?>" />
			</div>
			<!-- Search Options -->
			<div class="btn-group hidden-phone">
				<button type="submit" class="btn hasTooltip" title="<?php echo JHtml::tooltipText('JSEARCH_FILTER_SUBMIT'); ?>"><i class="icon-search"></i></button>
				<button type="button" class="btn hasTooltip" title="<?php echo JHtml::tooltipText('JSEARCH_FILTER_CLEAR'); ?>" onclick="document.getElementById('filter_search').value='';this.form.submit();"><i class="icon-remove"></i></button>
			</div>
			<!-- Limit Options -->
			<div class="btn-group pull-right hidden-phone">
				<label for="limit" class="element-invisible"><?php echo JText::_('JFIELD_PLG_SEARCH_SEARCHLIMIT_DESC');?></label>
				<?php echo $this->pagination->getLimitBox(); ?>
			</div>
			<!-- Sort Direction -->
			<div class="btn-group pull-right hidden-phone">
				<label for="directionTable" class="element-invisible"><?php echo JText::_('JFIELD_ORDERING_DESC');?></label>
				<select name="directionTable" id="directionTable" class="input-medium" onchange="Joomla.orderTable()">
					<option value=""><?php echo JText::_('JFIELD_ORDERING_DESC');?></option>
					<option value="asc" <?php if ($listDirn == 'asc') echo 'selected="selected"'; ?>><?php echo JText::_('JGLOBAL_ORDER_ASCENDING');?></option>
					<option value="desc" <?php if ($listDirn == 'desc') echo 'selected="selected"'; ?>><?php echo JText::_('JGLOBAL_ORDER_DESCENDING');?></option>
				</select>
			</div>
			<!-- Sort Options -->
			<div class="btn-group pull-right">
				<label for="sortTable" class="element-invisible"><?php echo JText::_('JGLOBAL_SORT_BY');?></label>
				<select name="sortTable" id="sortTable" class="input-medium" onchange="Joomla.orderTable()">
					<option value=""><?php echo JText::_('JGLOBAL_SORT_BY');?></option>
					<?php echo JHtml::_('select.options', $sortFields, 'value', 'text', $listOrder);?>
				</select>
			</div>
		</div>
		<?php
		$pages = $this->checkForPages();
		
		if (!empty($pages)) {
			if (empty($this->items)) { ?>
			<div class="alert alert-no-items">
				<?php echo JText::_('COM_RSPAGEBUILDER_NO_PAGES_FOUND'); ?>
			</div>
			<?php } else { ?>
			<table  class="table table-striped" id="pageList">
				<thead>
					<tr>
						<th class="hidden-phone" width="1%">
							<?php echo JHtml::_('grid.checkall'); ?>
						</th>
						<th class="nowrap center" width="1%">
							<?php echo JHtml::_('grid.sort', 'JSTATUS', 'p.published', $listDirn, $listOrder); ?>
						</th>
						<th>
							<?php echo JHtml::_('grid.sort', 'JGLOBAL_TITLE', 'p.title', $listDirn, $listOrder); ?>
						</th>
						<th class="nowrap hidden-phone" width="10%">
							<?php echo JHtml::_('grid.sort',  'JAUTHOR', 'author', $listDirn, $listOrder); ?>
						</th>
						<th class="nowrap hidden-phone" width="10%">
							<?php echo JHtml::_('grid.sort',  'JGRID_HEADING_ACCESS', 'p.access', $listDirn, $listOrder); ?>
						</th>
						<th class="nowrap hidden-phone" width="10%">
							<?php echo JHtml::_('grid.sort', 'JGRID_HEADING_LANGUAGE', 'language', $this->state->get('list.direction'), $this->state->get('list.ordering')); ?>
						</th>
						<th width="1%" class="nowrap hidden-phone">
							<?php echo JHtml::_('grid.sort', 'JGRID_HEADING_ID', 'p.id', $listDirn, $listOrder); ?>
						</th>
					</tr>
				</thead>
				<tbody>
					<?php
					foreach ($this->items as $i => $item) {
						$canEdit    = $user->authorise('core.edit', 'com_rspagebuilder');
						$canChange  = $user->authorise('core.edit.state', 'com_rspagebuilder');
					?>
					<tr>
						<td class="center hidden-phone">
							<?php echo JHtml::_('grid.id', $i, $item->id); ?>
						</td>
						<td class="center">
							<?php echo JHtml::_('jgrid.published', $item->published, $i, 'pages.', $canChange);?>
						</td>
						<td>
							<?php if ($canEdit) { ?>
							<a href="<?php echo JRoute::_('index.php?option=com_rspagebuilder&task=page.edit&id='.$item->id);?>">
								<?php echo $this->escape($item->title); ?>
							</a>
							<?php
							} else {
								echo $this->escape($item->title);
							}
							?>
							<?php if($item->alias) { ?>
								<span class="small" title="<?php echo $this->escape($item->alias); ?>">
									<?php echo JText::sprintf('JGLOBAL_LIST_ALIAS', $this->escape($item->alias));?>
								</span>
							<?php } ?>
						</td>
						<td class="small hidden-phone">
							<a href="<?php echo JRoute::_("index.php?option=com_users&task=user.edit&id=$item->created_by"); ?>">
								<?php echo $this->escape($item->author); ?>
							</a>
						</td>
						<td class="small hidden-phone">
							<?php echo $this->escape($item->access_title); ?>
						</td>
						<td class="small nowrap hidden-phone">
						<?php
						if ($item->language == '*') {
							echo JText::alt('JALL', 'language');
						} else {
							echo $item->language_title ? $this->escape($item->language_title) : JText::_('JUNDEFINED');
						}
						?>
						</td>
						<td class="center hidden-phone">
							<?php echo (int) $item->id; ?>
						</td>
					</tr>
					<?php } ?>
				</tbody>
			</table>
		<?php
			}
		} else {
		?>
			<div class="alert alert-info alert-no-items">
				<?php echo JText::_('COM_RSPAGEBUILDER_NO_PAGES_YET'); ?>
			</div>
		<?php } ?>
		
		<?php echo $this->pagination->getListFooter(); ?>
		
		<input type="hidden" name="task" value="" />
		<input type="hidden" name="boxchecked" value="0" />
		<input type="hidden" name="filter_order" value="<?php echo $listOrder; ?>" />
		<input type="hidden" name="filter_order_Dir" value="<?php echo $listDirn; ?>" />
		<?php echo JHtml::_('form.token'); ?>
	</div>
</form>