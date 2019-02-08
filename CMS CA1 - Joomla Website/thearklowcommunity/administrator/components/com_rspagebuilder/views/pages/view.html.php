<?php
/**
 * @package RSPageBuilder!
 * @copyright (C) 2016 www.rsjoomla.com
 * @license GPL, http://www.gnu.org/licenses/gpl-3.0.html
 */

// No direct access
defined ('_JEXEC') or die ('Restricted access');

class RSPageBuilderViewPages extends JViewLegacy
{
	public function display($tpl = null) {
		$this->items		= $this->get('Items');
		$this->pagination	= $this->get('Pagination');
		$this->state		= $this->get('State');
		
		if ($errors = $this->get('Errors')) {
			JError::raiseError(500, implode("\n", $errors));
			return false;
		}
		$this->addToolBar();
		$this->sidebar = JHtmlSidebar::render();
		JToolBarHelper::preferences('com_rspagebuilder');
		
		parent::display($tpl);
	}
	
	protected function addToolBar() {
		$actions = JHelperContent::getActions('com_rspagebuilder');
		
		// Title
		JToolBarHelper::title(JText::_('COM_RSPAGEBUILDER'), 'rspagebuilder');
		
		// New page button
		if ($actions->get('core.create')) {
			JToolbarHelper::addNew('page.add');
		}
		
		// Edit button
		if ($actions->get('core.edit')) {
			JToolbarHelper::editList('page.edit');
		}
		
		// Publish / Unpublish button
		if ($actions->get('core.edit.state')) {
			JToolbarHelper::publish('pages.publish');
			JToolbarHelper::unpublish('pages.unpublish');
		}
		
		// Delete and Trush button
		if ($this->state->get('filter.published') == -2 && $actions->get('core.delete')) {
			JToolbarHelper::deleteList('', 'pages.delete', 'JTOOLBAR_EMPTY_TRASH');
		} else if ($actions->get('core.edit.state')) {
			JToolbarHelper::trash('pages.trash');
		}
		
      	JHtmlSidebar::setAction('index.php?option=com_rspagebuilder&view=pages');
      	
      	JHtmlSidebar::addFilter(
			JText::_('JOPTION_SELECT_PUBLISHED'),
			'filter_published',
			JHtml::_('select.options', JHtml::_('jgrid.publishedOptions',array('archived'=>false)), 'value', 'text', $this->state->get('filter.published'), true)
		);
		
        JHtmlSidebar::addFilter(
            JText::_('JOPTION_SELECT_AUTHOR'),
            'filter_author',
            JHtml::_( 'select.options', $this->getAuthors(), 'value', 'text', $this->state->get('filter.author'))
        );
		
		JHtmlSidebar::addFilter(
			JText::_('JOPTION_SELECT_ACCESS'),
			'filter_access',
			JHtml::_('select.options', JHtml::_('access.assetgroups'), 'value', 'text', $this->state->get('filter.access'))
		);

		JHtmlSidebar::addFilter(
			JText::_('JOPTION_SELECT_LANGUAGE'),
			'filter_language',
			JHtml::_('select.options', JHtml::_('contentlanguage.existing', true, true), 'value', 'text', $this->state->get('filter.language'))
		);
	}

	protected function getSortFields() {
		return array(
			JHtml::_('select.option', 'p.title', JText::_('JGLOBAL_TITLE')),
			JHtml::_('select.option', 'author', JText::_('JAUTHOR')),
			JHtml::_('select.option', 'p.access', JText::_('JGRID_HEADING_ACCESS')),
			JHtml::_('select.option', 'p.published', JText::_('JSTATUS')),
			JHtml::_('select.option', 'p.language', JText::_('JGRID_HEADING_LANGUAGE')),
			JHtml::_('select.option', 'p.id', JText::_('JGRID_HEADING_ID'))
		);
	}
	
	public function checkForPages() {
        $db		= JFactory::getDBO();
        $query	= $db->getQuery(true)
			->select('COUNT('.$db->qn('id').')')
			->from($db->qn('#__rspagebuilder'));
        $db->setQuery($query);
        
		return $db->loadResult();
	}
	
    public function getAuthors() {
        $db		= JFactory::getDBO();
        $query	= $db->getQuery(true)
			->select($db->qn('u.id', 'value') . ', ' . $db->qn('u.name', 'text'))
			->from($db->qn('#__users', 'u'))
			->innerJoin( $db->qn('#__rspagebuilder', 'p') . ' ON ' . $db->qn('p.created_by') . ' = ' . $db->qn('u.id'))
			->group($db->qn('u.id'))
			->order($db->qn('u.name'));
        $db->setQuery($query);
        
        return $db->loadObjectList();
    }
}