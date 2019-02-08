<?php
/**
 * @package RSPageBuilder!
 * @copyright (C) 2016 www.rsjoomla.com
 * @license GPL, http://www.gnu.org/licenses/gpl-3.0.html
 */

// No direct access
defined ('_JEXEC') or die ('Restricted access');

class RSPageBuilderHelper {
	
	public static function loadAsset($type, $file) {
		$ext = JFile::getExt($file);
		switch (true) {
			case ($type == 'component' and $ext == 'css'):
				JHtml::_('stylesheet', 'com_rspagebuilder/'.$file, array(), true);
			break;
			
			case ($type == 'element' and $ext == 'css'):
				JHtml::_('stylesheet', 'com_rspagebuilder/elements/'.$file, array(), true);
			break;
			
			case ($type == 'module' and $ext == 'css'):
				JHtml::_('stylesheet', 'mod_rspagebuilder_elements/'.$file, array(), true);
			break;
			
			case ($type == 'component' and $ext == 'js'):
				JHtml::_('script', 'com_rspagebuilder/'.$file, false, true);
			break;
			
			case ($type == 'element' and $ext == 'js'):
				JHtml::_('script', 'com_rspagebuilder/elements/'.$file, array(), true);
			break;
			
			case ($type == 'module' and $ext == 'js'):
				JHtml::_('script', 'mod_rspagebuilder_elements/'.$file, false, true);
			break;
		}
	}
	
	public static function loadElementLayout($element, $bootstrap_version) {
		$app	= JFactory::getApplication();
		
		if ($app->isSite()) {
			$patterns	= array(
				'/[^a-zA-Z0-9\s]/',
				'/\s+/'
			);
			$replaces	= array(
				'',
				' '
			);
			$filter		= trim(preg_replace($patterns, $replaces, $app->getUserStateFromRequest('rspagebuilder.search', 'search', $app->input->get('search', '', 'string'))));
			
			if (!empty($filter)) {
				$searchable = array(
					'title',
					'subtitle',
					'content',
					'caption',
					'client_details',
					'client_name',
					'price',
					'item_title',
					'item_content',
					'marker_title',
					'marker_content'
				);
				$terms		= explode(' ', $filter);
				
				array_unshift($terms, $filter);
				$terms = array_unique($terms);
				
				foreach ($terms as $term) {
					
					if (strlen($term) > 1) {
						// Search in element options
						foreach ($element['options'] as $key => $value) {
							if (!empty($element['options'][$key]) && in_array($key, $searchable)) {
								$element['options'][$key] = preg_replace('/'.$term.'/i', '<span class="rspbld-search-result">$0</span>', $value);
							}
						}
						
						// Search in element items options
						foreach ($element['items'] as $item_key => $item_value) {
							foreach ($element['items'][$item_key]['options'] as $key => $value) {
								if (!empty($element['items'][$item_key]['options'][$key]) && in_array($key, $searchable)) {
									$element['items'][$item_key]['options'][$key] = preg_replace('/'.$term.'/i', '<span class="rspbld-search-result">$0</span>', $value);
								}
							}
						}
					}
				}
			}
			
			$layout = new JLayoutFile('elements.bootstrap'.$bootstrap_version.'.'.str_replace('rspbld_', '', $element['type']), null, array('component' => 'com_rspagebuilder'));
		} else {
			if (JFile::exists(JPATH_ROOT . '/templates/'.self::getTemplate().'/html/layouts/com_rspagebuilder/elements/bootstrap'.$bootstrap_version.'/'.str_replace('rspbld_', '', $element['type']).'.php')) {
				$layout = new JLayoutFile(str_replace('rspbld_', '', $element['type']), JPATH_ROOT . '/templates/'.self::getTemplate().'/html/layouts/com_rspagebuilder/elements/bootstrap'.$bootstrap_version);
			} else if (JFile::exists(JPATH_ROOT . '/components/com_rspagebuilder/layouts/elements/bootstrap'.$bootstrap_version.'/'.str_replace('rspbld_', '', $element['type']).'.php')) {
				$layout = new JLayoutFile(str_replace('rspbld_', '', $element['type']), JPATH_ROOT . '/components/com_rspagebuilder/layouts/elements/bootstrap'.$bootstrap_version);
			}
		}
		
		return $layout->render($element);
	}
	
	public static function getElementIcon($element_type) {
		$element_type 			= str_replace('rspbld_', '', $element_type);
		$icon_template_path		= JPATH_ROOT . '/templates/' . self::getTemplate() . '/images/com_rspagebuilder/icons/' . $element_type . '.png';
		$icon_component_path	= JPATH_ROOT . '/media/com_rspagebuilder/images/icons/' . $element_type . '.png';
		
		if (file_exists($icon_template_path)) {
			$icon = JUri::root(true) . '/templates/' . self::getTemplate() . '/images/com_rspagebuilder/icons/' . $element_type . '.png';
		} else if (file_exists($icon_component_path)) {
			$icon = JUri::root(true) . '/media/com_rspagebuilder/images/icons/' . $element_type . '.png';
		} else {
			$icon = JUri::root(true) . '/media/com_rspagebuilder/images/icons/default.png';
		}
		
		return $icon;
	}
	
	private static function getTemplate() {
		$db		= JFactory::getDbo();
		$query	= $db->getQuery(true)
			->select($db->qn(array('template')))
			->from($db->qn('#__template_styles'))
			->where($db->qn('client_id') . ' = 0')
			->where($db->qn('home') . ' = 1');
		$db->setQuery($query);

		return $db->loadObject()->template;
	}
	
	public static function loadGoogleFonts() {
		$db		= JFactory::getDbo();
		$query	= $db->getQuery(true)
			->select($db->qn('params'))
			->from($db->qn('#__template_styles'))
			->where($db->qn('client_id') . ' = 0')
			->where($db->qn('home') . ' = 1');
		$db->setQuery($query);
		
		$doc				= JFactory::getDocument();
		$params				= json_decode($db->loadObject()->params);
		$uri             	= JURI::getInstance();
		$prefix_protocol	= 'http';
		$sufix				= '';
		$fonts				= array();
		
		if ($uri->isSSL()) {
			$prefix_protocol .= 's';
		}
		
		if (!empty($params->googleTitleFont)) {
			$fonts['title'] = $params->googleTitleFont;
		}
		
		if (!empty($params->googleContentFont)) {
			$fonts['content'] = $params->googleContentFont;
		}
		
		if (!empty($params->googleNavbarFont)) {
			$fonts['navbar'] = $params->googleNavbarFont;
		}
		
		if (!empty($params->googleFontSubset)) {
			$sufix = '&amp;subset=' . $params->googleFontSubset;
		}
		
		$fonts = array_unique($fonts);
		
		foreach ($fonts as $font) {
			$doc->addCustomTag('<link href="' . $prefix_protocol . '://fonts.googleapis.com/css?family=' . $font . $sufix . '" rel="stylesheet" type="text/css" />');
		}
		
		// Title selectors with Google Font
		if (!empty($params->addGoogleTitleClasses)) {
			$extraTitleSelectors = trim($params->addGoogleTitleClasses, ',');
			$doc->addStyleDeclaration(
				$extraTitleSelectors . "{
					font-family: " . current(explode(":", $params->googleTitleFont)) . "
				}"
			);
		}
		
		// Content selectors with Google Font
		if (!empty($params->addGoogleContentClasses)) {
			$extraContentSelectors = trim($params->addGoogleContentClasses, ',');
			$doc->addStyleDeclaration(
				$extraContentSelectors . "{
					font-family: " . current(explode(":", $params->googleTitleFont)) . "
				}"
			);
		}
	}
	
	public static function randomNumber() {
		return rand(1000, 9999);
	}
	
	public static function createId($text, $number) {
		$id = '';
		
		if ($text) {
			$id .= preg_replace('/[^\da-z]/i', '', strtolower($text));
		}
		$id .= $number;
		
		return $id;
	}
	
	public static function escapeHtml($string) {
		$string = htmlentities($string, ENT_QUOTES, 'UTF-8');
		$string = preg_replace('/&lt;span class=&quot;rspbld-search-result&quot;&gt;(.*?)&lt;\/span&gt;/', '<span class="rspbld-search-result">$1</span>', $string);
		
		return $string;
	}
	
	public static function escapeHtmlArray($array) {
		$not_escapable = array(
			'content',
			'item_content',
			'marker_content'
		);
		
		foreach ($array as $key => $val) {
			if (!in_array($key, $not_escapable)) {
				$array[$key] = RSPageBuilderHelper::escapeHtml($val);
			}
		}
		
		return $array;
	}
	
	public static function buildStyle($array) {
		$style				= '';
		
		if (count($array)) {
			$style .= ' style="';
			
			foreach ($array as $key => $val) {
				if ($key == 'background-image') {
					$style .= $key.':url('.$val.');';
				} else {
					$style .= $key.':'.$val.';';
				}
			}
			$style .= '"';
		}
		
		return $style;
	}
	
	public static function elementTypeToTitle($element_type) {
		return JText::_('COM_RSPAGEBUILDER_' . strtoupper(str_replace('rspbld_', '', $element_type)));
	}
	
	public static function toArray($obj) {
		if (is_object($obj)) {
			$obj = (array)$obj;
		}
		if (is_array($obj)) {
			$new_array = array();
			foreach ($obj as $key => $val) {
				$new_array[$key] = RSPageBuilderHelper::toArray($val);
			}
		} else {
			$new_array = $obj;
		}
		
		return $new_array;
	}
	
	public static function init() {
		
	}
}