<?php
/**
 * @package RSPageBuilder!
 * @copyright (C) 2016 www.rsjoomla.com
 * @license GPL, http://www.gnu.org/licenses/gpl-3.0.html
 */

// No direct access
defined ('_JEXEC') or die ('Restricted access');

$app = JFactory::getApplication();

if ($app->isSite()) {
	JSession::checkToken('get') or die(JText::_('JINVALID_TOKEN'));
}

JHtml::_('bootstrap.tooltip');
JHtml::_('behavior.multiselect');
JHtml::_('formbehavior.chosen', 'select');

require_once JPATH_ROOT . '/components/com_rspagebuilder/helpers/route.php';

$user		= JFactory::getUser();
$function  	= $app->input->getCmd('function', 'jSelectPage');
$listOrder	= $this->escape($this->state->get('list.ordering'));
$listDirn	= $this->escape($this->state->get('list.direction'));
?>

<script type="text/javascript">
	Joomla.orderTable = function() {
		var table		= document.getElementById('sortTable'),
			direction	= document.getElementById('directionTable'),
			order		= table.options[table.selectedIndex].value;
			
		if (order != '<?php echo $listOrder; ?>') {
			direction = 'asc';
		} else {
			direction = direction.options[direction.selectedIndex].value;
		}
		Joomla.tableOrdering(order, direction, '');
	}
</script>

<form action="<?php echo JRoute::_('index.php?option=com_rspagebuilder&view=pages&layout=modal&tmpl=component&function=' . $function . '&' .JSession::getFormToken() . '=1');?>" method="post" name="adminForm" id="adminForm">
	<fieldset class="filter">
		<div class="btn-toolbar">
			<div class="btn-group">
				<label for="filter_search">
					<?php echo JText::_('JSEARCH_FILTER_LABEL'); ?>
				</label>
			</div>
			<div class="btn-group">
				<input type="text" name="filter_search" id="filter_search" value="<?php echo $this->escape($this->state->get('filter.search')); ?>" size="30" title="<?php echo JText::_('COM_CONTENT_FILTER_SEARCH_DESC'); ?>" />
			</div>
			<div class="btn-group">
				<button type="submit" class="btn hasTooltip" title="<?php echo JHtml::tooltipText('JSEARCH_FILTER_SUBMIT'); ?>" data-placement="bottom">
					<span class="icon-search"></span><?php echo JText::_('JSEARCH_FILTER_SUBMIT'); ?></button>
				<button type="button" class="btn hasTooltip" title="<?php echo JHtml::tooltipText('JSEARCH_FILTER_CLEAR'); ?>" data-placement="bottom" onclick="document.getElementById('filter_search').value='';this.form.submit();">
				<span class="icon-remove"></span><?php echo JText::_('JSEARCH_FILTER_CLEAR'); ?></button>
			</div>
		</div>
		<hr class="hr-condensed" />
		<div class="filters">
			<select name="filter_access" class="input-medium" onchange="this.form.submit()">
				<option value=""><?php echo JText::_('JOPTION_SELECT_ACCESS');?></option>
				<?php echo JHtml::_('select.options', JHtml::_('access.assetgroups'), 'value', 'text', $this->state->get('filter.access'));?>
			</select>
			<select name="filter_published" class="input-medium" onchange="this.form.submit()">
				<option value=""><?php echo JText::_('JOPTION_SELECT_PUBLISHED');?></option>
				<?php echo JHtml::_('select.options', JHtml::_('jgrid.publishedOptions'), 'value', 'text', $this->state->get('filter.published'), true);?>
			</select>
			<select name="filter_language" class="input-medium" onchange="this.form.submit()">
				<option value=""><?php echo JText::_('JOPTION_SELECT_LANGUAGE');?></option>
				<?php echo JHtml::_('select.options', JHtml::_('contentlanguage.existing', true, true), 'value', 'text', $this->state->get('filter.language'));?>
			</select>
		</div>
	</fieldset>
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
							<th>
								<?php echo JHtml::_('grid.sort', 'JGLOBAL_TITLE', 'a.title', $listDirn, $listOrder); ?>
							</th>
							<th width="10%" class="nowrap hidden-phone">
								<?php echo JHtml::_('grid.sort',  'JGRID_HEADING_ACCESS', 'a.access', $listDirn, $listOrder); ?>
							</th>
							<th width="5%" class="nowrap hidden-phone">
								<?php echo JHtml::_('grid.sort', 'JGRID_HEADING_LANGUAGE', 'language', $this->state->get('list.direction'), $this->state->get('list.ordering')); ?>
							</th>
							<th width="1%" class="nowrap hidden-phone">
								<?php echo JHtml::_('grid.sort', 'JGRID_HEADING_ID', 'a.id', $listDirn, $listOrder); ?>
							</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<td colspan="15">
								<?php echo $this->pagination->getListFooter(); ?>
							</td>
						</tr>
					</tfoot>
					<tbody>
						<?php
						foreach ($this->items as $i => $item) {
							$canEdit = $user->authorise('core.edit', 'com_rspagebuilder');
						?>
							<tr>
								<td>
									<?php if ($canEdit) { ?>
										<a href="javascript:void(0)" onclick="if (window.parent) window.parent.<?php echo $this->escape($function);?>('<?php echo $item->id; ?>', '<?php echo $this->escape(addslashes($item->title)); ?>','<?php echo $this->escape(RSPageBuilderHelperRoute::getPageRoute($item->id, $item->language)); ?>', null);">
											<?php echo $this->escape($item->title); ?>
										</a>
									<?php
									} else {
										echo $this->escape($item->title);
									}
									?>
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
	<div>
		<input type="hidden" name="task" value="" />
		<input type="hidden" name="boxchecked" value="0" />
		<input type="hidden" name="filter_order" value="<?php echo $listOrder; ?>" />
		<input type="hidden" name="filter_order_Dir" value="<?php echo $listDirn; ?>" />
		<?php echo JHtml::_('form.token'); ?>
	</div>
</form>