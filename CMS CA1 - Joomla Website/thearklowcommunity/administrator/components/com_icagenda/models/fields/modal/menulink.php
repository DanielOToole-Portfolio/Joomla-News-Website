<?php
/**
 *------------------------------------------------------------------------------
 *  iCagenda v3 by Jooml!C - Events Management Extension for Joomla! 2.5 / 3.x
 *------------------------------------------------------------------------------
 * @package     com_icagenda
 * @copyright   Copyright (c)2012-2017 Cyril Rez�, Jooml!C - All rights reserved
 *
 * @license     GNU General Public License version 3 or later; see LICENSE.txt
 * @author      Cyril Rez� (Lyr!C)
 * @link        http://www.joomlic.com
 *
 * @version     3.6.4 2016-10-06
 * @since       2.1.4
 *------------------------------------------------------------------------------
*/

// No direct access to this file
defined('_JEXEC') or die();

jimport( 'joomla.filesystem.path' );
jimport('joomla.form.formfield');

class JFormFieldModal_Menulink extends JFormField
{
	protected $type='modal_menulink';

	protected function getInput()
	{
		$db		= JFactory::getDbo();
		$query	= $db->getQuery(true);
		$query->select('a.title, a.published, a.id, a.path')
			->from('`#__menu` AS a')
			->where( "(link = 'index.php?option=com_icagenda&view=list') AND (published > 0)" );
		$db->setQuery($query);
		$links = $db->loadObjectList();

		$class = isset($this->class) ? ' class="' . $this->class . '"' : '';

		$html = '<select id="' . $this->id . '_id"' . $class . ' name="' . $this->name . '">';

		$html.='<option value="">- ' . JTEXT::_('JGLOBAL_AUTO') . ' -</option>';

		foreach ($links as &$l)
		{
			if ($l->published == '1')
			{
				$html.='<option value="'.$l->id.'"';
				$html.= ($this->value == $l->id) ? ' selected="selected"' : '';
				$html.='>[' . $l->id . '] ' . $l->title . '</option>';
			}
		}

		$html.='</select>';

		return $html;
	}
}
