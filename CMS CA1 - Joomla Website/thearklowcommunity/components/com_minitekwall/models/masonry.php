<?php
/**
* @title			Minitek Wall
* @copyright   		Copyright (C) 2011-2016 Minitek, All rights reserved.
* @license   		GNU General Public License version 3 or later.
* @author url   	http://www.minitek.gr/
* @developers   	Minitek.gr
*/

// no direct access
defined('_JEXEC') or die('Restricted access');

class MinitekWallModelMasonry extends JModelLegacy
{
	var $utilities = null;
	var $joomla_source = null;
	var $options = null;
	var $masonry_options = null;
	var $masonry_filters = null;
	var $responsive_masonry = null;
	var $masonry_javascript = null;
	
	function __construct()
	{
		$jinput = JFactory::getApplication()->input;
		$widgetID = $jinput->get('widget_id');
		$this->utilities = $this->getUtilitiesLib();
		$source_id = $this->utilities->getSourceID($widgetID); 			
		
		// Joomla source
		if ($source_id = 'joomla')
		{
			$this->joomla_source = $this->getJoomlaSource();
		}
				
		$this->options = $this->getOptionsLib();
		$this->masonry_options = $this->getMasonryOptionsLib();
		$this->masonry_filters = $this->getMasonryFiltersLib();
		$this->responsive_masonry = $this->getResponsiveMasonryLib();
		$this->masonry_javascript = $this->getMasonryJavascriptLib();
		
		parent::__construct();
	}
    
	public function getUtilitiesLib()
	{
		$utilities = new MinitekWallLibUtilities;
		
		return $utilities;
	}
	
	public function getJoomlaSource()
	{
		$joomla_source = new MinitekWallLibSourceJoomla;
		
		return $joomla_source;
	}
		
	public function getOptionsLib()
	{
		$options = new MinitekWallLibBaseOptions;
		
		return $options;
	}
	
	public function getMasonryOptionsLib()
	{
		$options = new MinitekWallLibBaseMasonryOptions;
		
		return $options;
	}
	
	public function getMasonryFiltersLib()
	{
		$options = new MinitekWallLibBaseMasonryFilters;
		
		return $options;
	}
		
	public function getResponsiveMasonryLib()
	{
		$options = new MinitekWallLibBaseMasonryResponsive;
		
		return $options;
	}
	
	public function getMasonryJavascriptLib()
	{
		$options = new MinitekWallLibBaseMasonryJavascript;
		
		return $options;
	}
	
	public function getAllResultsCount($widgetID)
	{
		// Get source
		$source_id = $this->utilities->getSourceID($widgetID); 		
		$data_source = $this->utilities->getSource($widgetID, $source_id);
		
		// Limits
		$masonry_params = $this->utilities->getMasonryParams($widgetID);
		$globalLimit = (int)$masonry_params['mas_starting_limit'];
		
		// Joomla
		if ($source_id == 'joomla') 
		{
			$joomla_mode = $data_source['joomla_mode'];
				
			// Joomla Articles
			if ($joomla_mode == 'ja') {
				$joomla_articles_count = $this->joomla_source->getJoomlaArticlesCount($data_source, $globalLimit);
				if ($joomla_articles_count) {
					$output = $joomla_articles_count;
				}
			} 
		
			// Joomla Categories
			if ($joomla_mode == 'jc') {
				$joomla_categories_count = $this->joomla_source->getJoomlaCategoriesCount($data_source, $globalLimit);
				if ($joomla_categories_count) {
					$output = $joomla_categories_count;
				}
			}
			
		} 	
														
		if (isset($output))
			return $output;
	}
	
	public function getAllResults($widgetID)
	{
		// Get source
		$source_id = $this->utilities->getSourceID($widgetID); 		
		$data_source = $this->utilities->getSource($widgetID, $source_id);
			
		// Limits
		$masonry_params = $this->utilities->getMasonryParams($widgetID);
		$startLimit = (int)$masonry_params['mas_starting_limit'];
		$pageLimit = $startLimit;
		$globalLimit = $startLimit;
		if ($startLimit > $globalLimit) {
			$startLimit = $globalLimit;
		}
	
		// Joomla
		if ($source_id == 'joomla') 
		{			
			$joomla_output = $this->getJoomlaResults($data_source, $startLimit, $pageLimit = 0, $globalLimit = 0);
			$output = $joomla_output;
		} 	
									
		return $output;
	}
		
	// Get Joomla results
	public function getJoomlaResults($data_source, $startLimit, $pageLimit, $globalLimit)
	{		
		$joomla_mode = $data_source['joomla_mode'];
		$output = array();
		
		// Joomla Articles
		if ($joomla_mode == 'ja') {
			$joomla_articles = $this->joomla_source->getJoomlaArticles($data_source, $startLimit, $pageLimit, $globalLimit);
			
			if ($joomla_articles) {
				$output = array_merge($output, $joomla_articles);
			}
			
		} 
		
		// Joomla Categories
		if ($joomla_mode == 'jc') {
			$joomla_categories = $this->joomla_source->getJoomlaCategories($data_source, $startLimit, $pageLimit, $globalLimit);

			if ($joomla_categories) {
				$output = array_merge($output, $joomla_categories);
			}
						
		}
		
		return $output;
	}
				
}