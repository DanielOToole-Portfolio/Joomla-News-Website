<?php
/**
 * @package RSPageBuilder!
 * @copyright (C) 2016 www.rsjoomla.com
 * @license GPL, http://www.gnu.org/licenses/gpl-3.0.html
 */

// No direct access
defined ('_JEXEC') or die ('Restricted access');

class com_rspagebuilderInstallerScript
{
	public function preflight($type, $parent) {
		$app		= JFactory::getApplication();
		$jversion	= new JVersion();
		
		if (!$jversion->isCompatible('3.7.0')) {
			$app->enqueueMessage('Please upgrade to at least Joomla! 3.7.0 before continuing!', 'error');
			return false;
		}
		
		return true;
	}
	
	public function postflight($type, $parent) {
		if ($type == 'uninstall') {
			return true;
		}
?>

<style type="text/css">
.version-history {
	margin: 0 0 2em 0;
	padding: 0;
	list-style-type: none;
}
.version-history > li {
	margin: 0 0 0.5em 0;
	padding: 0 0 0 4em;
}
.version,
.version-new,
.version-fixed,
.version-upgraded {
	float: left;
	font-size: 0.8em;
	margin-left: -4.9em;
	width: 4.5em;
	color: white;
	text-align: center;
	font-weight: bold;
	text-transform: uppercase;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
}
.version {
	background: #000;
}
.version-new {
	background: #7dc35b;
}
.version-fixed {
	background: #e9a130;
}
.version-upgraded {
	background: #61b3de;
}
.installer-left {
	float: left;
	width: 230px;
	margin: 30px 10px 30px 0px;
}
.installer-right {
	float: left;
	margin: 30px 0;
}
@media (max-width: 979px) {
	.installer-left {
		float: none;
		margin: 30px 0px 30px 0px;
		text-align: center;
		width: 100%;
	}
	.installer-right {
		float: none;
		margin: 0px 0px 30px 0px;
		width: 100%;
	}
}
</style>
	<div class="installer-left">
		<img src="../media/com_rspagebuilder/images/rspagebuilder.png" alt="RSPageBuilder!" />
	</div>
	<div class="installer-right">
		<h2>RSPageBuilder! v1.0.16 Changelog</h2>
		<ul class="version-history">
			<li><span class="version-fixed">Fix</span> Pages view was displayed when multiple segments were added to menu item URL.</li>
			<li><span class="version-fixed">Fix</span> Countdown Timer element did not work when a different date format was used in the 'Limit' field.</li>
			<li><span class="version-upgraded">Upg</span> Searched terms are highlighted after using RSPageBuilder! Search module.</li>
		</ul>
		<a class="btn btn-success" href="index.php?option=com_rspagebuilder">Start using RSPageBuilder!</a>
		<a class="btn btn-info" href="https://www.rsjoomla.com/support/documentation/rspagebuilder.html" target="_blank">Read the RSPageBuilder! User Guide</a>
		<a class="btn btn-warning" href="http://www.rsjoomla.com/customer-support/tickets.html" target="_blank">Get Support!</a>
	</div>
<?php
	}
}