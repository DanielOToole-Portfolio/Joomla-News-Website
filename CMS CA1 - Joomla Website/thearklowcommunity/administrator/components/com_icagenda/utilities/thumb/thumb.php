<?php
/**
 *------------------------------------------------------------------------------
 *  iC Library - Library by Jooml!C, for Joomla!
 *------------------------------------------------------------------------------
 * @package     iCagenda
 * @subpackage  utilities
 * @copyright   Copyright (c)2012-2017 Cyril Rezé, Jooml!C - All rights reserved
 *
 * @license     GNU General Public License version 3 or later; see LICENSE.txt
 * @author      Cyril Rezé (Lyr!C)
 * @link        http://www.joomlic.com
 *
 * @version     3.5.0 2015-02-20
 * @since       3.4.0
 *------------------------------------------------------------------------------
*/

// No direct access to this file
defined('_JEXEC') or die();

/**
 * class icagendaThumb
 */
class icagendaThumb
{
	/**
	 * Return the LARGE thumbnail from an image
	 * Generated by iCagenda with Global Options settings
	 *
	 * @since       3.4.0
	 */
	static public function sizeLarge($image, $type = null, $checksize = null)
	{
		$thumbsPath = self::iCagendaImagesPath();

		// Options Large Size
		$thumbOptions = JComponentHelper::getParams('com_icagenda')->get('thumb_large');
		$width = is_numeric($thumbOptions[0]) ? $thumbOptions[0] : '900';
		$height = is_numeric($thumbOptions[1]) ? $thumbOptions[1] : '600';
		$quality = is_numeric($thumbOptions[2]) ? $thumbOptions[2] : '100';
		$crop = !empty($thumbOptions[3]) ? true : false;

		// Generate large thumb if not exist
		$sizeLarge = iCThumbGet::thumbnail($image, $thumbsPath, 'themes', $width, $height, $quality, $crop, 'ic_large', $type, $checksize);

		return $sizeLarge;
	}

	/**
	 * Return the MEDIUM thumbnail from an image
	 * Generated by iCagenda with Global Options settings
	 *
	 * @since       3.4.0
	 */
	static public function sizeMedium($image, $type = null, $checksize = null)
	{
		$thumbsPath = self::iCagendaImagesPath();

		// Options Medium Size
		$thumbOptions = JComponentHelper::getParams('com_icagenda')->get('thumb_medium');
		$width = is_numeric($thumbOptions[0]) ? $thumbOptions[0] : '300';
		$height = is_numeric($thumbOptions[1]) ? $thumbOptions[1] : '300';
		$quality = is_numeric($thumbOptions[2]) ? $thumbOptions[2] : '100';
		$crop = !empty($thumbOptions[3]) ? true : false;

		// Generate medium thumb if not exist
		$sizeMedium = iCThumbGet::thumbnail($image, $thumbsPath, 'themes', $width, $height, $quality, $crop, 'ic_medium', $type, $checksize);

		return $sizeMedium;
	}

	/**
	 * Return the SMALL thumbnail from an image
	 * Generated by iCagenda with Global Options settings
	 *
	 * @since       3.4.0
	 */
	static public function sizeSmall($image, $type = null, $checksize = null)
	{
		$thumbsPath = self::iCagendaImagesPath();

		// Options Small Size
		$thumbOptions = JComponentHelper::getParams('com_icagenda')->get('thumb_small');
		$width = is_numeric($thumbOptions[0]) ? $thumbOptions[0] : '100';
		$height = is_numeric($thumbOptions[1]) ? $thumbOptions[1] : '100';
		$quality = is_numeric($thumbOptions[2]) ? $thumbOptions[2] : '100';
		$crop = !empty($thumbOptions[3]) ? true : false;

		// Generate small thumb if not exist
		$sizeSmall = iCThumbGet::thumbnail($image, $thumbsPath, 'themes', $width, $height, $quality, $crop, 'ic_small', $type, $checksize);

		return $sizeSmall;
	}

	/**
	 * Return the SMALL thumbnail from an image
	 * Generated by iCagenda with Global Options settings
	 *
	 * @since       3.4.0
	 */
	static public function sizeXSmall($image, $type = null, $checksize = null)
	{
		$thumbsPath = self::iCagendaImagesPath();

		// Options XSmall Size
		$thumbOptions = JComponentHelper::getParams('com_icagenda')->get('thumb_xsmall');
		$width = is_numeric($thumbOptions[0]) ? $thumbOptions[0] : '48';
		$height = is_numeric($thumbOptions[1]) ? $thumbOptions[1] : '48';
		$quality = is_numeric($thumbOptions[2]) ? $thumbOptions[2] : '80';
		$crop = !empty($thumbOptions[3]) ? true : false;

		// Generate xsmall thumb if not exist
		$sizeXSmall = iCThumbGet::thumbnail($image, $thumbsPath, 'themes', $width, $height, $quality, $crop, 'ic_xsmall', $type, $checksize);

		return $sizeXSmall;
	}

	/**
	 * Return the iCagenda images path
	 *
	 * @since       3.4.0
	 */
	static public function iCagendaImagesPath()
	{
		// Get media path
		$params_media = JComponentHelper::getParams('com_media');
		$image_path = $params_media->get('image_path', 'images');

		// Paths to thumbs folder
		$thumbsPath = $image_path . '/icagenda/thumbs';

		return $thumbsPath;
	}
}
