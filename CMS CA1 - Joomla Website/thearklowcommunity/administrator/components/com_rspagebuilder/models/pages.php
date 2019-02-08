<?php
/**
 * @package RSPageBuilder!
 * @copyright (C) 2016 www.rsjoomla.com
 * @license GPL, http://www.gnu.org/licenses/gpl-3.0.html
 */

// No direct access
defined ('_JEXEC') or die ('Restricted access');

class RSPageBuilderModelPages extends JModelList
{
	
	public function __construct($config = array()) {
		if (empty($config['filter_fields'])) {
			$config['filter_fields'] = array(
				'p.id',
				'p.title',
				'author',
				'p.created_by',
				'p.published',
				'p.access',
				'p.language'
			);
		}
		
		parent::__construct($config);
	}
	
	protected function populateState($ordering = null, $direction = null) {
		$search = $this->getUserStateFromRequest($this->context . '.search', 'filter_search');
		$this->setState('filter.search', $search);
		
		$access = $this->getUserStateFromRequest($this->context . '.filter.access', 'filter_access');
		$this->setState('filter.access', $access);
		
		$author = $this->getUserStateFromRequest($this->context . '.filter.author', 'filter_author', '');
        $this->setState('filter.author', $author);
		
		$published = $this->getUserStateFromRequest($this->context . '.filter.published', 'filter_published', '');
		$this->setState('filter.published', $published);
		
		$language = $this->getUserStateFromRequest($this->context . '.filter.language', 'filter_language', '');
		$this->setState('filter.language', $language);
		
		// List state information.
		parent::populateState('p.id', 'desc');
	}
	
	protected function getListQuery() {
		$db		= JFactory::getDBO();
		$select	= array(
			$db->qn('p'). '.*',
			$db->qn('u.name', 'author'),
			$db->qn('vl.title', 'access_title'),
			$db->qn('l.title_native', 'language_title')
		);
		
		$query	= $db->getQuery(true)
			->select($select)
			->from($db->qn('#__rspagebuilder', 'p'))
			->leftJoin($db->qn('#__users', 'u') . ' ON ' . $db->qn('p.created_by') . ' = ' . $db->qn('u.id'))
			->leftJoin($db->qn('#__viewlevels', 'vl') . ' ON ' . $db->qn('vl.id') . ' = ' . $db->qn('p.access'))
			->leftJoin($db->qn('#__languages', 'l') . ' ON ' . $db->qn('l.lang_code') . ' = ' . $db->qn('p.language'));
		
		// Filter by search in title
        $search = $this->getState('filter.search');
		
        if (!empty($search)) {
            if (stripos($search, 'id:') === 0) {
                $query->where($db->qn('p.id') . ' = ' . $db->q(substr($search, 3)));
            } else if (stripos($search, 'author:') === 0) {
                $search = $db->q('%' . $db->escape( substr($search, 7), true ) .'%');
                $query->where("(" . $db->qn('u.name') . " LIKE $search OR " . $db->qn('u.username') . " LIKE $search)");
            } else {
                $search = $db->q('%' . $db->escape($search, true) . '%');
                $query->where($db->qn('p.title') . " LIKE $search");
            }
        }
		
		// Filter by access
		if ($access = $this->getState('filter.access')) {
			$query->where('p.access = ' . (int) $access);
		}
		
		// Filter by author
		$author = $this->getState('filter.author');
            
        if ($author !== '') {
            $query->where($db->qn('created_by') . ' = ' . $db->q($author));
        }
		
        // Filter by published state
        $published = $this->getState('filter.published');
            
        if ($published !== '') {
			if (is_numeric($published)) {
				$query->where($db->qn('p.published') . ' = ' . (int) $published);
			}
        }
		
		// Filter by language
		if ($language = $this->getState('filter.language')) {
			$query->where('p.language = ' . $db->quote($language));
		}
		
		$listOrdering	= $this->getState('list.ordering', 'p.title');
		$listDirn	= $db->escape($this->getState('list.direction', 'ASC'));
		
		if ($listOrdering == 'p.access') {
			$query->order('p.access ' . $listDirn . ', p.title ' . $listDirn);
		} else {
			$query->order($db->escape($listOrdering) . ' ' . $listDirn);
		}
		
		return $query;
	}
}