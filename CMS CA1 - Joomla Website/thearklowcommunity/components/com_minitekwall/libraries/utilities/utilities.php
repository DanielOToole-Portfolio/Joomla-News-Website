<?php
/**
* @title			Minitek Wall
* @copyright   		Copyright (C) 2011-2017 Minitek, All rights reserved.
* @license   		GNU General Public License version 3 or later.
* @author url   	https://www.minitek.gr/
* @developers   	Minitek.gr
*/

// no direct access
defined('_JEXEC') or die('Restricted access');

if(!defined('DS')){
	define('DS',DIRECTORY_SEPARATOR);
}

jimport('joomla.filesystem.folder');

class MinitekWallLibUtilities
{
	
	public static function getParams($option)
	{
	  
		$application = JFactory::getApplication();
		if ($application->isSite())
		{
		  $params = $application->getParams($option);
		}
		else
		{
		  $params = JComponentHelper::getParams($option);
		}
		
		return $params;

	}
	
	// Get source id
  	public static function getSourceID($widgetID) 
	{
		$db = JFactory::getDBO();
		$query = ' SELECT * '
			. ' FROM '. $db->quoteName('#__minitek_wall_widgets') . ' '
			. ' WHERE '.$db->quoteName('id').' = ' . $db->Quote($widgetID);
		$db->setQuery($query);
		$source_id = $db->loadObject()->source_id;
				
		return $source_id;
  	}
	
	// Get source
  	public static function getSource($widgetID, $source_id) 
	{
		$db = JFactory::getDBO();
		$query = ' SELECT * '
			. ' FROM '. $db->quoteName('#__minitek_wall_widgets_source') . ' '
			. ' WHERE '.$db->quoteName('widget_id').' = ' . $db->Quote($widgetID);
		$db->setQuery($query);
		$source_id = $source_id.'_source';
		$data_source = $db->loadObject()->$source_id;
				
		return self::decodeJSONParams($data_source);
  	}
			
	// Decode json params
  	public static function decodeJSONParams($json) 
	{
		$params = json_decode($json, true);
				
		return $params;
  	}
	
	// Get masonry_params
  	public static function getMasonryParams($widgetID) 
	{
		$db = JFactory::getDBO();
		$query = ' SELECT * '
			. ' FROM '. $db->quoteName('#__minitek_wall_widgets')
			. ' WHERE '. $db->quoteName('state').' = '. $db->Quote('1')
			. ' AND '. $db->quoteName('id').' = '. $db->Quote($widgetID);
						
		$db->setQuery($query);
		$result = $db->loadObject();
		$masonry_params = $result->masonry_params;
			
		return self::decodeJSONParams($masonry_params);
  	}
			
	public static function cleanName($name)
	{
		$name_fixed = preg_replace('/(?=\P{Nd})\P{L}/u', '-', $name);
		$name_fixed = preg_replace('/[\s-]{2,}/u', '-', $name_fixed);
		$name_fixed = htmlspecialchars($name_fixed);
		$name_fixed = trim($name_fixed, "-");
		
		return $name_fixed;
	}
	
	public static function recurseMasItemIndex($item_index, $gridType) 
	{
		$item_index = $item_index - $gridType;
		if ($item_index > $gridType) {
			$item_index = self::recurseMasItemIndex($item_index, $gridType);
		}
		
		return $item_index;
	}
	
	public static function hex2RGB($hexStr, $returnAsString = false, $seperator = ',') 
	{
		$hexStr = preg_replace("/[^0-9A-Fa-f]/", '', $hexStr);
		$rgbArray = array();
		if (strlen($hexStr) == 6) 
		{
			$colorVal = hexdec($hexStr);
			$rgbArray['red'] = 0xFF & ($colorVal >> 0x10);
			$rgbArray['green'] = 0xFF & ($colorVal >> 0x8);
			$rgbArray['blue'] = 0xFF & $colorVal;
		} 
		elseif (strlen($hexStr) == 3) 
		{
			$rgbArray['red'] = hexdec(str_repeat(substr($hexStr, 0, 1), 2));
			$rgbArray['green'] = hexdec(str_repeat(substr($hexStr, 1, 1), 2));
			$rgbArray['blue'] = hexdec(str_repeat(substr($hexStr, 2, 1), 2));
		} 
		else 
		{
			return false;
		}
		return $returnAsString ? implode($seperator, $rgbArray) : $rgbArray;
	}
			
	public static function wordLimit($str, $limit = 100, $end_char = '&#8230;')
	{
		if (JString::trim($str) == '')
			return $str;

		// always strip tags for text
		$str = strip_tags($str);

		$find = array("/\r|\n/u", "/\t/u", "/\s\s+/u");
		$replace = array(" ", " ", " ");
		$str = preg_replace($find, $replace, $str);
		$str = preg_replace("/\{\w+\}/", "", $str);

		preg_match('/\s*(?:\S*\s*){'.(int)$limit.'}/u', $str, $matches);
		if (JString::strlen($matches[0]) == JString::strlen($str))
			$end_char = '';
		return JString::rtrim($matches[0]).$end_char;
	}
	
	public static function makeDir( $path )
	{
		$folders = explode ( '/',  ( $path ) );
		$tmppath =  JPATH_SITE.DS.'images'.DS.'mnwallimages'.DS;
		if( !file_exists($tmppath) ) {
			JFolder::create( $tmppath, 0755 );
		}; 
		for( $i = 0; $i < count ( $folders ) - 1; $i ++) {
			if (! file_exists ( $tmppath . $folders [$i] ) && ! JFolder::create( $tmppath . $folders [$i], 0755) ) {
				return false;
			}	
			$tmppath = $tmppath . $folders [$i] . DS;
		}		
		return true;
	}
	
	public static function renderImages( $path, $width, $height, $title='', $type='' ) 
	{
		$params = self::getParams('com_minitekwall');
		
	  	// PHP Thumb
		if ($params->get('load_phpthumb')) {
			if( !defined('PhpThumbFactoryLoaded') ) {
			  require_once( JPATH_SITE.DS.'components'.DS.'com_minitekwall'.DS.'libraries'.DS.'utilities'.DS.'phpthumb'.DS.'ThumbLib.inc.php' );
				define('PhpThumbFactoryLoaded',1);
			}
		}
		
		// Check if path starts with // (fix for easyblog images)
		if (substr( $path, 0, 2 ) === '//')
		{
			if (substr( JURI::base(), 0, 5 ) === 'https')
			{
				$path = 'https:'.$path;
			}
			else
			{
				$path = 'http:'.$path;
			}
		}
		
	  	$path = str_replace( JURI::base(), '', $path );
		$imgSource = JPATH_SITE.DS. str_replace( '/', DS,  $path );
		
		if ( file_exists($imgSource)  ) 
		{
			if ($type)
			{
				$path =  $width."x".$height.'x'.$type.'/'.$path;
			}
			else
			{
				$path =  $width."x".$height.'/'.$path;
			}
			$thumbPath = JPATH_SITE.DS.'images'.DS.'mnwallimages'.DS. str_replace( '/', DS,  $path );
			if ( !file_exists($thumbPath) ) 
			{
			  $thumb = PhpThumbFactory::create( $imgSource  );  
				if( !self::makeDir( $path ) ) 
				{
					return '';
				}		
				$thumb->adaptiveResize( $width, $height);
				$thumb->save( $thumbPath  ); 
			}
			$path = JURI::base().'images/mnwallimages/'.$path;
		} 
		
		return $path;
	}
		
	// Convert category ids to category names
	public static function getCategoriesNames($sourcetype_key, $cat_ids)
	{
		$cat_names = array();
		
		switch ($sourcetype_key)
		{
			// Joomla
			case 'joomla_mode':			
				$categories = JCategories::getInstance('Content');
		
				foreach($cat_ids as $catid) 
				{
					$category = $categories->get($catid);
					$cat_names[] = $category->title;
				}
				break;						
		}
		
		return $cat_names;
	}
	
	// Convert tag ids to tag names
	public static function getTagsNames($sourcetype_key, $tag_ids)
	{
		$tag_names = array();
		
		switch ($sourcetype_key)
		{
			// Joomla
			case 'joomla_mode':
				$tagsHelper = new JHelperTags;
				$all_tags = $tagsHelper->getTagNames($tag_ids);
				
				foreach($all_tags as $key => $itemTag) 
				{
					$tag_names[] = $itemTag;
				}
				break;			
		}
		
		return $tag_names;
	}
							
	// Get ordering from data source
	public static function getItemsOrdering($data_source)
	{
		reset($data_source);
		$sourcetype_key = key($data_source); // get first key of array data source
		$ordering = 'title';

		switch ($sourcetype_key)
		{
			// Joomla
			case 'joomla_mode':
				if ($data_source['joomla_mode'] == 'ja')
				{
					$ordering = $data_source['ja_article_ordering'];
					if (($pos = strpos($ordering, '.')) !== FALSE) { 
						if ($ordering == 'fp.ordering')
						{
							$ordering = 'fordering';	
						}
						else
						{
							$ordering = substr($ordering, strrpos($ordering, '.') + 1);
						}
					}
					if ($ordering == 'created')
					{
						$ordering = 'date';
					}
					if ($ordering == 'publish_up')
					{
						$ordering = 'start';
					}
					if ($ordering == 'publish_down')
					{
						$ordering = 'finish';
					}
				}
				else if ($data_source['joomla_mode'] == 'jc')
				{
					$ordering = $data_source['jc_ordering'];
					if ($ordering == 'alpha')
					{
						$ordering = 'title';
					}
				}
				break;
		}
		
		return $ordering;
	}
	
	// Get ordering direction from data source
	public static function getItemsDirection($data_source)
	{
		reset($data_source);
		$sourcetype_key = key($data_source); // get first key of array data source
		$direction = 'DESC';

		switch ($sourcetype_key)
		{
			// Joomla
			case 'joomla_mode':
				if ($data_source['joomla_mode'] == 'ja')
				{
					$direction = $data_source['ja_article_ordering_direction'];
				}
				else if ($data_source['joomla_mode'] == 'jc')
				{
					if (array_key_exists('jc_ordering_direction', $data_source))
					{
						$direction = $data_source['jc_ordering_direction'];
					}
				}
				break;
		}
		
		return $direction;
	}
		
}