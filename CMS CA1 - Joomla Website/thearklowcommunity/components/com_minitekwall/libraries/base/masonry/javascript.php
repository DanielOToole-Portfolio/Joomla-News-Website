<?php
/**
* @title			Minitek Wall
* @copyright   		Copyright (C) 2011-2015 Minitek, All rights reserved.
* @license   		GNU General Public License version 3 or later.
* @author url   	http://www.minitek.gr/
* @developers   	Minitek.gr
*/

// no direct access
defined('_JEXEC') or die('Restricted access');

class MinitekWallLibBaseMasonryJavascript
{
	
	public function loadMasonryJavascript($masonry_params, $widgetID, $totalCount)
	{
		$document = JFactory::getDocument();

		$this->loadJavascriptVars($masonry_params, $widgetID, $totalCount);				
		
		$javascript = "jQuery(function(){";
		
			$javascript .= $this->loadJavascriptVars($masonry_params, $widgetID, $totalCount);
					
			$javascript .= $this->initializeWall($masonry_params, $widgetID);
			
			if ($masonry_params['mas_hb']) 
			{		
				$javascript .= $this->initializeHoverBox($masonry_params['mas_hb_effect']);
			}
					
			$javascript .= $this->initializeFiltersSortings($widgetID);
				
		$javascript .= "});";
				
		$document->addCustomTag('<script type="text/javascript">'.$javascript.'</script>');
	
	}
	
	public function loadJavascriptVars($masonry_params, $widgetID, $totalCount)
	{
		$token = JSession::getFormToken();
		$site_path = JURI::root();
		$itemid = JRequest::getVar('Itemid');	
		$gridType = $masonry_params['mas_grid'];
		$hoverBox = $masonry_params['mas_hb'];
		$layoutMode = 'packery';
		if (array_key_exists('mas_layout_mode', $masonry_params)) {
			$layoutMode = $masonry_params['mas_layout_mode'];
		}
	
		$javascript = "
		
			// Global variables
			var token = '".$token."=1';
			var site_path = '".$site_path."';
			var itemid = '".$itemid."';
			var _container = jQuery('#mnwall_container_".$widgetID."');
			var gridType = '".$gridType."';
			gridType = parseInt(gridType);
			var layoutMode = '".$layoutMode."';
			var hoverBox = '".$hoverBox."';
			var sortBy = _container.attr('data-order');
			if (sortBy == 'RAND()' || sortBy == 'rand' || sortBy == 'random')
			{
				sortBy = 'index';	
			}
			sortBy = [sortBy, 'id'];
			var sortDirection = _container.attr('data-direction');
			sortDirection = (sortDirection == null) ? '' : sortDirection = sortDirection.toLowerCase();
			sortAscending = false;
			if (sortDirection == 'asc')
			{
				sortAscending = true;
			}
			else
			{
				sortAscending = false;
			}
			
		";
		
		return $javascript;
	}
	
	public function initializeWall($masonry_params, $widgetID)
	{	
		$hiddenStyle = '';
		$visibleStyle = '';	
		if (array_key_exists('mas_effects', $masonry_params))
		{
			$mas_effects = $masonry_params['mas_effects'];
			if (is_array($mas_effects))
			{
				if (in_array('fade', $mas_effects))
				{
					$hiddenStyle .= 'opacity: 0, ';
					$visibleStyle .= 'opacity: 1, ';
				}
				if (in_array('scale', $mas_effects))
				{
					$hiddenStyle .= 'transform: \'scale(0.001)\'';
					$visibleStyle .= 'transform: \'scale(1)\'';
				}
			}
			else
			{
				$hiddenStyle .= 'opacity: 0';
				$visibleStyle .= 'opacity: 1';
			}
		}
		else
		{
			$hiddenStyle .= 'opacity: 0';
			$visibleStyle .= 'opacity: 1';	
		}
		
		$effect = "
			hiddenStyle: {
				".$hiddenStyle."
			},
			visibleStyle: {
				".$visibleStyle."
			}
		";
		
		$transitionDuration = 400;
		if (array_key_exists('mas_transition_duration', $masonry_params))
		{
			$transitionDuration = (int)$masonry_params['mas_transition_duration'];
		}
		$transitionStagger = 0;
		if (array_key_exists('mas_transition_stagger', $masonry_params))
		{
			$transitionStagger = (int)$masonry_params['mas_transition_stagger'];
		}
		
		$javascript = "
		
			var transitionDuration = ".$transitionDuration.";
			var transitionStagger = ".$transitionStagger.";
			
			// Initialize wall	
			var _wall = jQuery('#mnwall_iso_container_".$widgetID."').imagesLoaded( function() 
			{
				// Instantiate isotope
				_wall.isotope({
					// General
					itemSelector: '.mnwall-item',
					layoutMode: layoutMode,
					// Vertical list
					vertical: {
						horizontalAlignment: 0
					},
					initLayout: false,
					stagger: transitionStagger,
					transitionDuration: transitionDuration,
					".$effect."
				});
			});
			
			// Initiate layout
			jQuery('.mnwall_container').show();
			_wall.isotope({
				getSortData: {
					ordering: '[data-ordering] parseInt',
					fordering: '[data-fordering] parseInt',
					hits: '[data-hits] parseInt',
					title: '[data-title]',
					id: '[data-id] parseInt',
					alias: '[data-alias]',
					date: '[data-date]',
					modified: '[data-modified]',
					start: '[data-start]',
					finish: '[data-finish]',
					category: '[data-category]',
					author: '[data-author]',
					index: '[data-index] parseInt',
				},
				sortBy: sortBy,
				sortAscending: sortAscending
			});
							
		";
		
		$javascript .= "
			
			// Handle resize
			var wall_id;
			jQuery(window).resize(function(){
				
				clearTimeout(wall_id);
    			wall_id = setTimeout(doneBrowserResizing, 500);
			});
			
			function doneBrowserResizing(){
  				_wall.isotope();
			}
		
		";
		
		return $javascript;
	}
	
	public function initializeHoverBox($hoverBoxEffect)
	{		
		$javascript = "
			
			// Hover effects
			var hoverBoxEffect = '".$hoverBoxEffect."';
			
			// Hover box trigger
			if (hoverBox == '1') {
					
				var triggerHoverBox = function triggerHoverBox() {
								
					if (gridType == 99 || gridType == 98) {
						// Hover effects
						_container.find('.mnwall-item-inner-cont')
						.mouseenter(function(e) {        
							
							if (hoverBoxEffect == 'no') {
								jQuery(this).closest('.mnwall-item-outer-cont').find('.mnwall-hover-box').stop().addClass('hoverShow');
							}
							if (hoverBoxEffect == '1') {
								jQuery(this).closest('.mnwall-item-outer-cont').find('.mnwall-hover-box').stop().addClass('hoverFadeIn');
							}
							if (hoverBoxEffect == '2') {
								jQuery(this).closest('.mnwall-item').find('.mnwall-cover').stop().addClass('perspective');
								jQuery(this).closest('.mnwall-item-outer-cont').find('.mnwall-img-div').stop().addClass('flip flipY hoverFlipY');
							}
							if (hoverBoxEffect == '3') {
								jQuery(this).closest('.mnwall-item-outer-cont').find('.mnwall-cover').stop().addClass('perspective');
								jQuery(this).closest('.mnwall-item-outer-cont').find('.mnwall-img-div').stop().addClass('flip flipX hoverFlipX');
							}
							if (hoverBoxEffect == '4') {
								jQuery(this).closest('.mnwall-item-outer-cont').find('.mnwall-hover-box').stop().addClass('slideInRight');
							}
							if (hoverBoxEffect == '5') {
								jQuery(this).closest('.mnwall-item-outer-cont').find('.mnwall-hover-box').stop().addClass('slideInLeft');
							}
							if (hoverBoxEffect == '6') {
								jQuery(this).closest('.mnwall-item-outer-cont').find('.mnwall-hover-box').stop().addClass('slideInTop');
							}
							if (hoverBoxEffect == '7') {
								jQuery(this).closest('.mnwall-item-outer-cont').find('.mnwall-hover-box').stop().addClass('slideInBottom');
							}
							if (hoverBoxEffect == '8') {
								jQuery(this).closest('.mnwall-item-outer-cont').find('.mnwall-hover-box').stop().addClass('mnwzoomIn');
							}
											
						}).mouseleave(function (e) {   
							
							if (hoverBoxEffect == 'no') {
								jQuery(this).closest('.mnwall-item-outer-cont').find('.mnwall-hover-box').stop().removeClass('hoverShow');
							}
							if (hoverBoxEffect == '1') {
								jQuery(this).closest('.mnwall-item-outer-cont').find('.mnwall-hover-box').stop().removeClass('hoverFadeIn');
							}
							if (hoverBoxEffect == '2') {
								jQuery(this).closest('.mnwall-item-outer-cont').find('.mnwall-img-div').stop().removeClass('hoverFlipY');
							}
							if (hoverBoxEffect == '3') {
								jQuery(this).closest('.mnwall-item-outer-cont').find('.mnwall-img-div').stop().removeClass('hoverFlipX');
							}
							if (hoverBoxEffect == '4') {
								jQuery(this).closest('.mnwall-item-outer-cont').find('.mnwall-hover-box').stop().removeClass('slideInRight');
							}
							if (hoverBoxEffect == '5') {
								jQuery(this).closest('.mnwall-item-outer-cont').find('.mnwall-hover-box').stop().removeClass('slideInLeft');
							}
							if (hoverBoxEffect == '6') {
								jQuery(this).closest('.mnwall-item-outer-cont').find('.mnwall-hover-box').stop().removeClass('slideInTop');
							}
							if (hoverBoxEffect == '7') {
								jQuery(this).closest('.mnwall-item-outer-cont').find('.mnwall-hover-box').stop().removeClass('slideInBottom');
							}
							if (hoverBoxEffect == '8') {
								jQuery(this).closest('.mnwall-item-outer-cont').find('.mnwall-hover-box').stop().removeClass('mnwzoomIn');
							}
							
						});
					}
					
					if (gridType != 98 && gridType != 99) {
						// Hover effects
						_container.find('.mnwall-item')
						.mouseenter(function(e) {        
							
							if (hoverBoxEffect == 'no') {
								jQuery(this).find('.mnwall-hover-box').stop().addClass('hoverShow');
							}
							if (hoverBoxEffect == '1') {
								jQuery(this).find('.mnwall-hover-box').stop().addClass('hoverFadeIn');
							}
							if (hoverBoxEffect == '2') {
								jQuery(this).stop().addClass('perspective');
								jQuery(this).find('.mnwall-item-outer-cont').stop().addClass('flip flipY hoverFlipY');
							}
							if (hoverBoxEffect == '3') {
								jQuery(this).stop().addClass('perspective');
								jQuery(this).find('.mnwall-item-outer-cont').stop().addClass('flip flipX hoverFlipX');
							}
							if (hoverBoxEffect == '4') {
								jQuery(this).find('.mnwall-hover-box').stop().addClass('animated slideInRight');
							}
							if (hoverBoxEffect == '5') {
								jQuery(this).find('.mnwall-hover-box').stop().addClass('animated slideInLeft');
							}
							if (hoverBoxEffect == '6') {
								jQuery(this).find('.mnwall-hover-box').stop().addClass('animated slideInTop');
							}
							if (hoverBoxEffect == '7') {
								jQuery(this).find('.mnwall-hover-box').stop().addClass('animated slideInBottom');
							}
							if (hoverBoxEffect == '8') {
								jQuery(this).find('.mnwall-hover-box').stop().addClass('animated mnwzoomIn');
							}
											
						}).mouseleave(function (e) {   
							
							if (hoverBoxEffect == 'no') {

								jQuery(this).find('.mnwall-hover-box').stop().removeClass('hoverShow');
							}
							if (hoverBoxEffect == '1') {
								jQuery(this).find('.mnwall-hover-box').stop().removeClass('hoverFadeIn');
							}
							if (hoverBoxEffect == '2') {
								jQuery(this).find('.mnwall-item-outer-cont').stop().removeClass('hoverFlipY');
							}
							if (hoverBoxEffect == '3') {
								jQuery(this).find('.mnwall-item-outer-cont').stop().removeClass('hoverFlipX');
							}
							if (hoverBoxEffect == '4') {
								jQuery(this).find('.mnwall-hover-box').stop().removeClass('slideInRight');
							}
							if (hoverBoxEffect == '5') {
								jQuery(this).find('.mnwall-hover-box').stop().removeClass('slideInLeft');
							}
							if (hoverBoxEffect == '6') {
								jQuery(this).find('.mnwall-hover-box').stop().removeClass('slideInTop');
							}
							if (hoverBoxEffect == '7') {
								jQuery(this).find('.mnwall-hover-box').stop().removeClass('slideInBottom');
							}
							if (hoverBoxEffect == '8') {
								jQuery(this).find('.mnwall-hover-box').stop().removeClass('mnwzoomIn');
							}
							
						});
					}
				}
				triggerHoverBox();
			}
			
		";
		
		return $javascript;
	}
	
	public function initializeFiltersSortings($widgetID)
	{		
		$javascript = "
		
			// Filters
			var filters = {};
			jQuery('#mnwall_iso_filters_".$widgetID."').on( 'click', '.mnwall-filter', function(event) 
			{
				event.preventDefault();
										
				var \$this = jQuery(this);
				// get group key
				var \$buttonGroup = \$this.parents('.button-group');
				var filterGroup = \$buttonGroup.attr('data-filter-group');
				// set filter for group
				filters[ filterGroup ] = \$this.attr('data-filter');
				// combine filters
				var filterValue = '';
				for ( var prop in filters ) {
					filterValue += filters[ prop ];
				}
				// set filter for Isotope
				_wall.isotope({ 
					filter: filterValue 
				});
				
			});
			
			// Change active class on filter buttons
			var active_Filters = function active_Filters() {
				var \$activeFilters = _container.find('.button-group').each( function( i, buttonGroup ) {
					var \$buttonGroup = jQuery( buttonGroup );
					\$buttonGroup.on( 'click', 'a', function(event) {
						event.preventDefault();
						\$buttonGroup.find('.mnw_filter_active').removeClass('mnw_filter_active');
						jQuery( this ).addClass('mnw_filter_active');
					});
				});
			};
			active_Filters();
			
			// Dropdown filter list
			var dropdown_Filters = function dropdown_Filters() {
				var \$dropdownFilters = _container.find('.mnwall_iso_filters .mnwall_iso_dropdown').each( function( i, dropdownGroup ) {
					var \$dropdownGroup = jQuery( dropdownGroup );
					\$dropdownGroup.on( 'click', '.dropdown-label', function(event) {
						event.preventDefault();
						\$dropdownGroup.toggleClass('expanded');
					});
				});
				jQuery(document).mouseup(function (e)
				{
					var \$dropdowncontainer = _container.find('.mnwall_iso_dropdown');
				
					if (!\$dropdowncontainer.is(e.target)
						&& \$dropdowncontainer.has(e.target).length === 0
						) 
					{
						\$dropdowncontainer.removeClass('expanded');
					}
				});
			};
			dropdown_Filters();
				
			// Bind sort button click
			_container.find('.sorting-group-filters').on( 'click', '.mnwall-filter', function(event) {
				event.preventDefault();
				var sortValue = jQuery(this).attr('data-sort-value');
				// Add second ordering: id
				sortValue = [sortValue, 'id'];	
				// set filter for Isotope
				_wall.isotope({ 
					sortBy: sortValue
				});
			});
		
			// Change active class on sorting filters
			_container.find('.sorting-group-filters').each( function( i, sortingGroup ) {
				var \$sortingGroup = jQuery( sortingGroup );
				\$sortingGroup.on( 'click', '.mnwall-filter', function() {
					\$sortingGroup.find('.mnw_filter_active').removeClass('mnw_filter_active');
					jQuery( this ).addClass('mnw_filter_active');
				});
			});
			
			// Bind sorting direction button click
			_container.find('.sorting-group-direction').on( 'click', '.mnwall-filter', function(event) {
				event.preventDefault();
				var sortDirection = jQuery(this).attr('data-sort-value');
				if (sortDirection == 'asc') {
					sort_Direction = true;
				} else {
					sort_Direction = false;
				}
				// set direction
				_wall.isotope({ 
					sortAscending: sort_Direction
				});
			});
			
			// Change active class on sorting direction
			_container.find('.sorting-group-direction').each( function( i, sortingDirection ) {
				var \$sortingDirection = jQuery( sortingDirection );
				\$sortingDirection.on( 'click', '.mnwall-filter', function() {
					\$sortingDirection.find('.mnw_filter_active').removeClass('mnw_filter_active');
					jQuery( this ).addClass('mnw_filter_active');
				});
			});
			
			// Dropdown sorting list
			var dropdown_Sortings = function dropdown_Sortings() {
				var \$dropdownSortings = _container.find('.mnwall_iso_sortings .mnwall_iso_dropdown').each( function( i, dropdownSorting ) {
					var \$dropdownSorting = jQuery( dropdownSorting );
					\$dropdownSorting.on( 'click', '.dropdown-label', function(event) {
						event.preventDefault();
						\$dropdownSorting.toggleClass('expanded');
					});
				});
			};
			dropdown_Sortings();
			
			// Reset Filters and sortings
			function reset_filters() 
			{	
				var \$resetFilters = _container.find('.button-group').each( function( i, buttonGroup ) {
					var \$buttonGroup = jQuery( buttonGroup );
					\$buttonGroup.find('.mnw_filter_active').removeClass('mnw_filter_active');
					\$buttonGroup.find('li:first-child a').addClass('mnw_filter_active');
					
					// Reset filters
					var filterGroup = \$buttonGroup.attr('data-filter-group');
					filters[ filterGroup ] = '';
					var filterValue = '';
					// set filter for Isotope
					_wall.isotope({ 
						filter: filterValue,
						sortBy: sortBy,
						sortAscending: sortAscending
					});						
				});
			
				// Get first item in sortBy array
				var \$resetSortings = _container.find('.sorting-group-filters').each( function( i, sortingGroup ) {
					var \$sortingGroup = jQuery( sortingGroup );
					\$sortingGroup.find('.mnw_filter_active').removeClass('mnw_filter_active');
					\$sortingGroup.find('li a[data-sort-value=\"'+sortBy[0]+'\"]').addClass('mnw_filter_active');
				});
				var \$resetSortingDirection = _container.find('.sorting-group-direction').each( function( i, sortingGroupDirection ) {
					var \$sortingGroupDirection = jQuery( sortingGroupDirection );
					\$sortingGroupDirection.find('.mnw_filter_active').removeClass('mnw_filter_active');
					\$sortingGroupDirection.find('li a[data-sort-value=\"'+sortDirection+'\"]').addClass('mnw_filter_active');
				});
			}
			
			jQuery('#mnwall_reset_".$widgetID.", #mnwall_container_".$widgetID." .mnwall-reset-btn').on( 'click', '', function(event) 
			{
				reset_filters();
			});
			
		";
		
		return $javascript;
	}
	
}