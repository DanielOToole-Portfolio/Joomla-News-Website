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
 * @version     3.6.9 2017-07-03
 * @since       3.6.0
 *------------------------------------------------------------------------------
*/

// No direct access to this file
defined('JPATH_BASE') or die;

jimport('joomla.html.html');
jimport('joomla.form.formfield');
jimport('joomla.form.helper');
JFormHelper::loadFieldClass('list');

/**
 * Year frontend search filter.
 */
class JFormFieldYear extends JFormFieldList
{
	/**
	 * The form field type.
	 *
	 * @var		string
	 * @since	3.6.0
	 */
	protected $type = 'year';

	/**
	 * Method to get the field options.
	 *
	 * @return	array	The field option objects.
	 * @since	3.6.0
	 */
	public function getOptions()
	{
		$params = JFactory::getApplication()->getParams();

		$app            = JFactory::getApplication();
		$params         = $app->getParams();

		$filters_mode   = ($app->getMenu()->getActive()->params->get('search_filters') == 1)
						? $params->get('filters_mode', 1)
						: JComponentHelper::getParams('com_icagenda')->get('filters_mode', 1);

		// Initialize variables.
		$options = array();

		$filterTime = ($filters_mode == 1)
					? $params->get('time', 0)
					: '0';

		$dates = icagendaEventsData::getAllDates($filterTime);

		if (count($dates) < 1)
		{
			$year = $app->input->get('filter_year', '');

			if ($year)
			{
				$year_option = new stdClass;
				$year_option->value = $year;
				$year_option->label = $year;

				if ( ! in_array($year_option, $options))
				{
					$options[] = $year_option;
				}
			}
		}
		else
		{
			foreach ($dates AS $date)
			{
				$year       = substr($date, 0, 4);
				$year		= ((int) $year > 0)
							? $year
							: '';

				if ($year)
				{
					$year_option = new stdClass;
					$year_option->value = $year;
					$year_option->label = $year;

					if ( ! in_array($year_option, $options))
					{
						$options[] = $year_option;
					}
				}
			}
		}

		rsort($options);

		return $options;
	}
}
