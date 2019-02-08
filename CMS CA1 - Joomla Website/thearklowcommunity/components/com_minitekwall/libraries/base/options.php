<?php
/**
* @title			Minitek Wall
* @copyright   		Copyright (C) 2011-2016 Minitek, All rights reserved.
* @license   		GNU General Public License version 3 or later.
* @author url   	https://www.minitek.gr/
* @developers   	Minitek.gr
*/

// no direct access
defined('_JEXEC') or die('Restricted access');

if(!defined('DS')){
	define('DS',DIRECTORY_SEPARATOR);
} 

class MinitekWallLibBaseOptions
{
	var $utilities = null;
	
	function __construct()
	{
		$this->utilities = new MinitekWallLibUtilities;		
		
		return;	
	}
			
	public function getJoomlaDisplayOptions($widgetID, $items, $detailBoxParams, $hoverBoxParams)
	{
		$com_path = JPATH_SITE.'/components/com_content/';
		if (!class_exists('ContentHelperRoute'))
		{
			require_once $com_path.'helpers/route.php';
		}

		// Get source params
		$source = $this->utilities->getSource($widgetID, 'joomla');
		$joomla_mode = $source['joomla_mode'];
		
		foreach ($items as &$item)
		{
			if ($joomla_mode == 'ja')
			{
				$item->itemID = $item->id;
				$item->itemOrdering = $item->ordering;
				$item->itemFOrdering = $item->fordering;
				$item->itemAlias = $item->alias;
				$item->itemModified = $item->modified;
				$item->itemStart = $item->publish_up;
				$item->itemFinish = $item->publish_down;

				// Content type
				$item->itemType = JText::_('COM_MINITEKWALL_'.$source['ja_title']);
				
				// Image
				if ($detailBoxParams['images'])
				{
					$images = json_decode($item->images, true);
					if ($source['ja_image_type'] == 'introtext') {
						$item->itemImageRaw = $images['image_intro'];
					} else if ($source['ja_image_type'] == 'fulltext') {
						$item->itemImageRaw = $images['image_fulltext'];
					} else if ($source['ja_image_type'] == 'inline') {
						$introtext_temp = strip_tags($item->introtext, '<img>');
						preg_match('/<img[^>]+>/i', $introtext_temp, $new_image);
						$src = false;
						if ($new_image) {
							$new_image[0] = mb_convert_encoding($new_image[0], 'HTML-ENTITIES', "UTF-8");
							$doc = new DOMDocument();
							$doc->loadHTML($new_image[0]);
							$xpath = new DOMXPath($doc);
							$src = $xpath->evaluate("string(//img/@src)"); 
						}
						if ($src) {
							$item->itemImageRaw = $src;
						} else {
							$item->itemImageRaw = $images['image_intro'];
						}
					}
					
					// Image fallback
					if (!$item->itemImageRaw) 
					{
						if (array_key_exists('fallback_image', $detailBoxParams) && $detailBoxParams['fallback_image'])
						{
							$item->itemImageRaw = JURI::root().''.$detailBoxParams['fallback_image'];
						}
					}
					
					$item->itemImage =  $item->itemImageRaw;
			
					if (
						$detailBoxParams['crop_images'] && 
						$item->itemImage && 
						$image = $this->utilities->renderImages($item->itemImage, $detailBoxParams['image_width'], $detailBoxParams['image_height'], $item->title ) 
					) 
					{
						$item->itemImage = $image;
					}
				}
				
				// Title
				$item->itemTitle = $this->utilities->wordLimit($item->title, $detailBoxParams['detailBoxTitleLimit']);
				$item->itemTitleRaw = $item->title;
				if ($hoverBoxParams['hoverBox'] && $hoverBoxParams['hoverBoxTitle'])
				{
					$item->hover_itemTitle = $this->utilities->wordLimit($item->title, $hoverBoxParams['hoverBoxTitleLimit']);
				}
				
				// Links
				$item->slug = $item->id.':'.$item->alias;
				$item->catslug = $item->catid ? $item->catid .':'.$item->category_alias : $item->catid;
				$item->itemLink = JRoute::_(ContentHelperRoute::getArticleRoute($item->slug, $item->catslug));
				$item->itemCategoryLink = JRoute::_(ContentHelperRoute::getCategoryRoute($item->catid));
				
				// Introtext
				if ($detailBoxParams['detailBoxStripTags'])
				{ 
					$item->itemIntrotext = preg_replace('/\{.*\}/', '', $item->introtext);
					$item->itemIntrotext = preg_replace('/\[.*\]/', '', $item->itemIntrotext);
					$item->itemIntrotext = $this->utilities->wordLimit($item->itemIntrotext, $detailBoxParams['detailBoxIntrotextLimit']);
				}
				else
				{
					$item->itemIntrotext = preg_replace('/\{.*\}/', '', $item->introtext);
				}
				 
				if ($hoverBoxParams['hoverBox'] && $hoverBoxParams['hoverBoxStripTags'])
				{
					$item->hover_itemIntrotext = preg_replace('/\{.*\}/', '', $item->introtext);
					$item->hover_itemIntrotext = preg_replace('/\[.*\]/', '', $item->hover_itemIntrotext);
					$item->hover_itemIntrotext = $this->utilities->wordLimit($item->hover_itemIntrotext, $hoverBoxParams['hoverBoxIntrotextLimit']);
				}
				else
				{
					$item->hover_itemIntrotext = preg_replace('/\{.*\}/', '', $item->introtext);
				}
				 
				// Date
				$ja_date_field = $source['ja_date_field'];
				$item->itemDate = JHTML::_('date', $item->$ja_date_field, $detailBoxParams['detailBoxDateFormat']);
				if ($hoverBoxParams['hoverBox'] && $hoverBoxParams['hoverBoxDate'])
				{
					$item->hover_itemDate = JHTML::_('date', $item->$ja_date_field, $hoverBoxParams['hoverBoxDateFormat']);
				}
				$item->itemDateRaw = $item->created;
				
				// Category
				$item->itemCategoryRaw = $item->category_title;
				$item->itemCategory = '<a href="'.$item->itemCategoryLink.'">'.$item->itemCategoryRaw.'</a>';
				
				// Author
				$item->itemAuthorRaw = $item->author;
				$item->itemAuthor = $item->itemAuthorRaw;
				
				// Hits
				$item->itemHits = $item->hits;
								
				// Tags
				$item_tags = new JHelperTags;
				$item->itemTags = $item_tags->getItemTags('com_content.article', $item->id);
			
			}
			else if ($joomla_mode == 'jc')
			{
				$item->itemID = $item->id;
				
				// Content type
				$item->itemType = JText::_('COM_MINITEKWALL_'.$source['jc_title']);
				
				// Image
				if ($detailBoxParams['images'])
				{
					$cat_params = json_decode($item->params, true);
					$item->itemImageRaw = $cat_params['image'];	
					
					// Define new images
					$item->itemImage =  $item->itemImageRaw;
						
					// Image fallback
					/*if (!$item->itemImageRaw)
					{
						$item->itemImage = JURI::base().'components/com_minitekwall/assets/images/category.jpg';
					}*/
			
					// Crop images
					if (
						$detailBoxParams['crop_images'] && 
						$item->itemImage && 
						$image = $this->utilities->renderImages($item->itemImage, $detailBoxParams['image_width'], $detailBoxParams['image_height'], $item->title ) 
					) 
					{
						$item->itemImage = $image;
					}
				}
				
				// Title
				$item->itemTitle = $this->utilities->wordLimit($item->title, $detailBoxParams['detailBoxTitleLimit']);
				$item->itemTitleRaw = $item->title;
				if ($hoverBoxParams['hoverBox'] && $hoverBoxParams['hoverBoxTitle'])
				{
					$item->hover_itemTitle = $this->utilities->wordLimit($item->title, $hoverBoxParams['hoverBoxTitleLimit']);
				}
				
				// Links
				$item->itemLink = JRoute::_(ContentHelperRoute::getCategoryRoute($item->id));
				
				// Introtext
				if ($detailBoxParams['detailBoxStripTags'])
				{
					$item->itemIntrotext = preg_replace('/\{.*\}/', '', $item->description);
					$item->itemIntrotext = preg_replace('/\[.*\]/', '', $item->itemIntrotext);
					$item->itemIntrotext = $this->utilities->wordLimit($item->itemIntrotext, $detailBoxParams['detailBoxIntrotextLimit']);
				}
				else
				{
					$item->itemIntrotext = preg_replace('/\{.*\}/', '', $item->description);
				}
				
				if ($hoverBoxParams['hoverBox'] && $hoverBoxParams['hoverBoxStripTags'])
				{
					$item->hover_itemIntrotext = preg_replace('/\{.*\}/', '', $item->description);
					$item->hover_itemIntrotext = preg_replace('/\[.*\]/', '', $item->hover_itemIntrotext);
					$item->hover_itemIntrotext = $this->utilities->wordLimit($item->hover_itemIntrotext, $hoverBoxParams['hoverBoxIntrotextLimit']);
				}
				else
				{
					$item->hover_itemIntrotext = preg_replace('/\{.*\}/', '', $item->description);
				}
				
				// Date
				$item->itemDate = JHTML::_('date', $item->created_time, $detailBoxParams['detailBoxDateFormat']);
				if ($hoverBoxParams['hoverBox'] && $hoverBoxParams['hoverBoxDate'])
				{
					$item->hover_itemDate = JHTML::_('date', $item->created_time, $hoverBoxParams['hoverBoxDateFormat']);
				}
				$item->itemDateRaw = $item->created_time;
				
				// Author
				$item->itemAuthorRaw = $item->created_user_id;
				$item->itemAuthor = JFactory::getUser($item->itemAuthorRaw)->name;
				
				// Count
				$item->itemCount = $item->numitems;
				if ($item->itemCount == 1) {
					$item->itemCount = $item->itemCount.'&nbsp;'.JText::_('COM_MINITEKWALL_ARTICLE'); 
				} else {
					$item->itemCount = $item->itemCount.'&nbsp;'.JText::_('COM_MINITEKWALL_ARTICLES'); 
				}
				
				// Hits
				$item->itemHits = $item->hits;

			}
		}
	
		return $items;
	}
	
	public function getWidgetDisplayOptions($widgetID, $items, $detailBoxParams, $hoverBoxParams)
	{
		$sourceID = $this->utilities->getSourceID($widgetID);
		
		if ($sourceID == 'joomla')
		{
			return $this->getJoomlaDisplayOptions($widgetID, $items, $detailBoxParams, $hoverBoxParams);
		}
	}	
}