<?php
/**
 * ConnectDaily Events Calendar Plugin Class
 *  
 * @package Joomla.Plugin 
 * @subpackage Content.connectdaily 
 * @copyright (C) 2016 - MH Software, Inc. 
 * @license GNU/GPLv3 http://www.gnu.org/licenses/gpl-3.0.html 
 * @author gsexton (3/11/16) 
 */
defined('_JEXEC') or die;
jimport('connectdaily.CDailySocialNetworkHelper');
jimport('connectdaily.class-cdaily-base-renderer');
jimport('connectdaily.class-cdaily-plugin');
jimport('connectdaily.class-cdaily-misc');
jimport('connectdaily.CDailySettings');
jimport('connectdaily.class-cdaily-crypto');
jimport('connectdaily.class-joomla-locale-helper');

class CDailyJoomlaPlugin extends CDailyPlugin {

    const VERSION_NUMBER="1.0.27";
    const BUILD_NUMBER="0842";

    const CAPTIONS='com_connectdaily';
    const TUTORIAL_URL="//vimeo.com/171137847";

    private $settingsWrapper=null;
    private $lh=null;   // Locale Helper

    public function __construct(){
        parent::__construct();
        
        $lang=JFactory::getLanguage();
        if (!$lang->load('lib_connectdaily')) {
            if (!$lang->load(static::CAPTIONS,JPATH_BASE)) {
                $this->logError("Error loading captions: ".static::CAPTIONS);
            }
        }
    }



    public function addPluginScripts(){
        JHtml::_('jquery.framework');
        JHtml::_('bootstrap.framework');
        $doc=JFactory::getDocument();
        $doc->addScript($this->getSiteUrl().'libraries/connectdaily/scripts/cdaily.js?ver='.self::BUILD_NUMBER);
        $social=$this->getSocialNetworkHelper();
        if ($social!=null) {
            $doc->addScript($social->getPageLevelCodeURL());
        }

    }

    public function addPluginStylesheet() {
        JFactory::getDocument()->addStyleSheet($this->getSiteUrl().'libraries/connectdaily/css/cdaily.css?ver='.self::BUILD_NUMBER);
    }

    /**
     * Enqueue the per-item style, or by event type style sheet.
     */
    public function addEventStyles(){
        JFactory::getDocument()->addStyleSheet($this->getAjaxURL('action=cd_csshelper&format=raw'));
    }


    public function createNonce($nonce_data){
        $time = time();
        $secret=JFactory::getConfig()->get('secret');
        $nonce=hash('sha256',$secret . $time . $nonce_data) . "-" . $time;
        return $nonce;
    }

    /**
     * Retrieve information or data from the system cache. 
     *  
     * @return CDailyDataResponse if successful, null if not or 
     *         caching is disabled.
     */
    public function fetchDataFromCache($slugname, $url,$fields=null) {
        if (!$this->isCacheEnabled()) {
            return null;
        }
        $cache=$this->getCache();
        $key_value = $this->getKeyName($slugname, $url,$fields);
        $cached_data = $cache->get($key_value);
        if (empty($cached_data)) {
            return null;
        }
        $res = new CDailyDataResponse($cached_data);
        if ($res->getJSONError()!=null) {
            $this->logError($res->getJSONError()->toString());
        }
        $res->slugname=$slugname;
        return $res;

    }

    /**
     * Return the URL javascript calling this plugin should use for 
     * making AJAX requests. The URL returned is RELATIVE. 
     *  
     * @param $addlParms - Additional parameters to add to the 
     *                   string.
     * @param $absolute - true if the absolute path should be 
     *                  returned.
     */
    public function getAjaxURL($addlParms=null, $absolute=false){
        if ($absolute) {
            $result=$this->getSiteUrl().'index.php?option=com_ajax&plugin=connectdaily&group=content';
            if ($addlParms!=null) {
                $result.='&'.$addlParms;
            }
        } else {
            $result='index.php?option=com_ajax&amp;plugin=connectdaily&amp;group=content';
            if ($addlParms!=null) {
                $result.='&amp;'.$addlParms;
            }
            $result=JRoute::_($result,false);
        }
        return $result;
    }

    public function ajaxURLScript($addlParams=null){
        $result="<script type=\"text/javascript\">\n".
            "if (!CDaily.hasOwnProperty('ajaxURL') || CDaily.ajaxURL===null) { \nCDaily['ajaxURL']=\"".$this->getAjaxURL($addlParams)."\"; \n}\n".
            "</script>";
        return $result;
    }

    /** @return User   */
    public function getCurrentUser() {
        $j= JFactory::getUser();

        $result=new stdClass;
        $result->user_name=$j->username;
        $result->user_fullname=$j->name;
        $result->user_email=$j->email;
        return $result;
    }

    /**
     * @return JCache
     */
    private function getCache(){
        $controller=JFactory::getCache(CDailyPlugin::SHORT_NAME,'');
        $controller->setCaching(CDailyPlugin::CACHE_ENABLE);
        $controller->setLifeTime(CDailyPlugin::CACHE_PERIOD_SECONDS/60);
        $cache=$controller->cache;
        return $cache;
    }

    public function getIconURL($iconName) {
        return $this->getSiteUrl().'libraries/connectdaily/images/'.
            $this->translate($iconName);
    }

    /**
     * Retrieve our singleton instance. 
     *  
     * @return CDailyJoomlaPlugin 
     */
    public static function getInstance() {
        $o = parent::getInstance();
        if ($o == null) {
            $o = new CDailyJoomlaPlugin();
            self::setInstance($o);
        }
        return $o;
    }

    /**
     * Return the language code. E.G. en_GB
     */
    public static function getLanguage(){
        $lc=JFactory::getLanguage()->getLocale();
        if ($lc===false || count($lc)<3) {
            return "en_GB";
        } else {
            return $lc[2];
        }
    }

    /**
     * @return CDailyLocaleHelper
     */
    public function getLocaleHelper(){
        if ($this->lh==null) {
            $this->lh=new CDailyJoomlaLocaleHelper();
        }
        return $this->lh;
    }

   /**
    * Return previously stored data using the nonce key. 
    *  
    * Retrieving the value is a one-time operation, deleting the 
    * value from the transient table. 
    */
    public function getNonceTransient($nonce) {
        $cache=$this->getCache();
        // TODO: The part after the hyphen is a timestamp. Expire if the timestamp
        // is more than 600 seconds.
        $data=$cache.get($nonce,static::SHORT_NAME.'-cdnonce');
        if (empty($data)) {
            return false;
        }
        $cache->remove($nonce,static::SHORT_NAME.'-cdnonce');

        return $data;
    }

    public function getRequiredCaptions($a){
        $res='<script type="text/javascript">CDaily.addCaptions({"captions" : [';
        foreach ($a as $caption){
            $res.='{"caption" : "'.self::CAPTION_PREFIX.$caption.'", "value" : '.json_encode(JText::_(self::CAPTION_PREFIX.strtoupper($caption))).'},';
        }
        $res.='{"caption" : "UNUSED","value" : null}]});</script>';
        return $res;
    }

    public function getSiteDescription() {
        return JFactory::getConfig()->get('MetaDesc');
    }

    public function getSiteEmail() {
        return JFactory::getConfig()->get('mailfrom');
    }

    public function getSiteName() {
        $value=JFactory::getConfig()->get('sitename');
        if (empty($value)) {
            $value=gethostname();
        }
        return $value;
    }

    public function getSettings() {
        if ($this->settingsWrapper==null) {
            $this->settingsWrapper=CDailySettings::getSettings();
        }
        return $this->settingsWrapper->getValues();
    }

    public function getSiteUrl() {
        $res=JURI::base();
        if (strpos($res,"/administrator/")>0) {
            $res=substr($res,0,strlen($res)-14);
        }
        return $res;
    }

    public function loadAdminCSS() {
        JFactory::getDocument()->addStyleSheet($this->getSiteUrl().'libraries/connectdaily/css/cdaily-admin.css?ver='.self::BUILD_NUMBER);
    }

    public function loadAdminScripts() {
        $this->addPluginScripts();
        JFactory::getDocument()->addScript($this->getSiteUrl().'libraries/connectdaily/scripts/cdaily-admin.js?ver='.self::BUILD_NUMBER);
    }

    public static function getUserAgent(){
        $ver=new JVersion();
        return $ver->PRODUCT . '/'.$ver->RELEASE.'.'.$ver->DEV_LEVEL.
            '; '.self::PLUGIN_NAME.' v'.self::VERSION_NUMBER.
            '; PHP v'.phpversion().'/'.PHP_OS.
            '; '.JURI::base();
    }

    /**
     * Make a POST request back to connectDaily, returning a 
     * CDailyDataResponse object with the results. 
     *  
     * @param $url - the fully qualified absolute URL for the 
     *              request.
     * @param $fields - Optional, the Form fields to send in the 
     *                POST request.
     * @param $options - Optional Additional options for 
     *                 HttpRequest. The only implemented one is
     *                 timeout (seconds).
     *  
     * @return CDailyDataResponse - If the request is successful, 
     *         the CDailyDataResponse->error value will be 0.
     *  
     * If there's an error, CDailyDataRponse->error will be 
     * non-zero and CDailyDataResponse->error_message will have the 
     * error message. Note that this is only the HTTP level error. 
     * Content may return it's own error message. 
     */
    public function makePostRequest($url,$fields=null, $options=null){ 
        $this->clearLastError();
        $http=JHttpFactory::getHttp();
        $headers=$this->getDefaultHeaders();

        if ($options==null) {
            $options=array();
        }
        if (!array_key_exists('timeout',$options)) {
            $options['timeout']=self::REQUEST_TIMEOUT;
        }
        
        $result=$this->convertResponse($http->post($url,$fields,$headers,$options['timeout']),$url,$fields);
        
        return $result;
    }

/**
 * Look at some content and see if the first two characters are 
 * the magic numbers for gzip or flate content. 
 *  
 * @return true if it's GZIP or FLATE content. 
 */
private function isCompressed($content) {
    $result=false;
    if (strlen($content)>2) {
            $c1=ord(substr($content,0,1));
            $c2=ord(substr($content,1,1));
            // This is GZIP
            $result=($c1==0x1f && $c2==0x8b);
            // This is ZLIB or FLATE
            $result|=($c1==0x78 && ($c2==0x01 || $c2==0x9c || $c2==0xda ));
    }
    return $result;
}

    /**
     * Convert a JHttpResponse to a CDailyDataResponse 
     *  
     * In JEDChecker, this sets off alarms because of the call to 
     * the uncompression function of PHP. This is a bogus complaint.
     *  
     * What we're doing here is adding support for DEFLATE 
     * compression so that when we make requests back to Connect 
     * Daily, they're compressed if possible. 
     *  
     * @param $jhttpsresponse 
     * @param $url 
     * @param $fields 
     */
    private function convertResponse($jhttpresponse,$url,$fields){
        
        $res=new CDailyDataResponse();
        $res->url=$url;
        $res->fields=$fields;
        if (isset($jhttpresponse->headers['last-modified'])) {
            $tstamp = $jhttpresponse->headers['last-modified'];
            $datetime = DateTime::createFromFormat(DateTime::RFC2822, $tstamp);
            if ($datetime instanceof DateTime) {
                // Under some circumstances, this was failing. Check $datetime is valid.
                $res->last_modified = $datetime->getTimestamp();
            } else {
                $this->logError("Attempt to parse last-modified header failed. Value=" . $tstamp);
            }
        }
        if (isset($jhttpresponse->headers['Content-Encoding']) && $this->isCompressed($jhttpresponse->body)) {
            /* 
                7/18/16 - GLS
             
                Evidently, Joomla 3.6 inflates things automatically for you now. It
                appears to be this issue:
             
                https://github.com/joomla/joomla-cms/pull/5210
             
             
                The rest of this code I found this code in the SimplePie plugin/module.
            */
            $zip=strtolower(trim($jhttpresponse->headers['Content-Encoding']))=='deflate';
            if ($zip) {
                $body=gzuncompress($jhttpresponse->body);
                if ($body===false) {
                    if (($body=gzinflate($jhttpresponse->body))===false) {
                        $msg=self::PLUGIN_NAME.' - Unable to decode HTTP "deflate" stream.';
                        $this->logError($msg);
                        JFactory::getApplication()->enqueueMessage($msg,'error');
                    } 
                }
            }
        } else {
            $body=$jhttpresponse->body;
        }
        $res->error=$jhttpresponse->code;
        $msg='';
        switch ($res->error) {
        case 200:
            $res->content=$body;
            break;
        case 302:
        case 403:
        case 404:
            $msg=JText::_('COM_CONNECTDAILY_HTTP_'.$res->error);
            break;
        default:
            $msg=$body;
            break;
        }
        if (!empty($msg)) {
           $res->error_message=JText::sprintf(JText::_('COM_CONNECTDAILY_HTTP_ERR'),
                                              $res->error,
                                              $url,
                                              $msg
                                              );
           $this->logError($res->error_message);
        }
        return $res;
    }

    /**
     * Return the default header set for a remote http request.
     */
    function getDefaultHeaders(){
        $headers=array(
            "Accept-Language" => self::convertToBCP47($this->getLanguage()),
            "User-Agent" => self::getUserAgent()
            );
        $ip=JFactory::getSession()->get('session.client.address');
        if (!empty($ip)) {
            $headers['X-Forwarded-For']=$ip;
        }
        if (extension_loaded('zlib')) {
            $ver=new JVersion();
            // Version 3.6 fixed a bug where curl wasn't getting set right.
            // We can now do GZIP since it has a better compression ratio.
            //
            // cURL added compression support in version 7.10 released in 2002.
            //
            if (version_compare($ver->RELEASE,'3.6')>=0) {
                $headers['Accept-Encoding']='gzip, deflate';
            } else {
                // We have our own deflate handling code. 
                $headers['Accept-Encoding']='deflate';
            }
        }
        return $headers;
    }

    /**
     * Make a get request to connectDaily for information or data. 
     * @return CDailyDataResponse 
     */
    public function makeGetRequest($url) {
        $this->clearLastError();
        $http=JHttpFactory::getHttp();
        $headers=$this->getDefaultHeaders();
        $settings=$this->getSettings();
        return $this->convertResponse($http->get($settings->url.$url,$headers,self::REQUEST_TIMEOUT),$url);
    }

    /**
     * Retrieve data from the connect daily system. 
     *  
     * @param $slugname The Unique ID of the caller. 
     * @param $url the URL for the request. 
     * @param $autosave - default true, auto-save the result in 
     *                  local cache.
     *  
     * @return CDailyDataResponse 
     */
    public function getData($slugname, $url, $fields=null,$autosave = true) {
        
        if (empty($fields)) {
            $fields=array();
        }
        if (empty($this->getSettings()->url)) {
            $res = new CDailyDataResponse;
            $res->error = -2;
            $res->error_message = JText::_('COM_CONNECTDAILY_NOT_CONFIGURED');
            return $res;
        }
        $fields=$this->addAuthenticationData($fields);
        $res = null;
        $cache = $this->isCacheEnabled();
        if ($cache) {
            $res = $this->fetchDataFromCache($slugname, $url,$fields);
        }
        if (empty($res)) {
            $res = $this->makePostRequest($url,$fields);
            $res->slugname = $slugname;
            if ($autosave && $cache && $res->wasSuccess()) {
                $this->saveDataToCache($res);
            }
        } else {
            $res->from_cache = true;
        }

        return $res;
    }

    /**
     * Purge our transients from the cache table. 
     *  
     * @param $all If true, purge all entries. If false, purge 
     *             expired entries.
     *  
     * @param $includeHints If true, purge hint seen entries. 
     *  
     * @return int, the number of deleted entries. 
     */
    public function purgeTransients($all = false, $includeHints=false) {
        $cache=$this->getCache();
        $stores=$cache->getStores();
        $ret=false;
        if ($all) {
            $ret=$cache->clean(CDailyPlugin::SHORT_NAME);
        } else {
            $ret=$cache->gc();
        }
        if ($includeHints) {
            $hints=CDailySettings::getSettings(CDailySettings::HINTS);
            if ($hints->delete()) {
                $ret++;
            }
        }
        return $ret;
    }

    /**
     * Save the data response to our cache system. This needs to be 
     * overwritten by the CMS specific plugin class. 
     *  
     * @param $data CDailyDataResponse 
     * @param $expiresPeriod period to retain data for. 
     *  
     * @return boolean true if successful, false otherwise. 
     */
    public function saveDataToCache($data, $expiresPeriod = self::CACHE_PERIOD_SECONDS) {
        $res = false;
        if ($this->isCacheEnabled()) {
            $cache=$this->getCache();
            if ($expiresPeriod!=self::CACHE_PERIOD_SECONDS) {
                $cache->setLifeTime($expiresPeriod/60);
            }
            $key_value = $this->getKeyName($data->slugname, $data->url,$data->fields);
            
            $res=$cache->store($data->asJSON(),$key_value);
            if ($data->getJSONError()!=null) {
                $this->logError($data->getJSONError()->toString());
            }
        }
        return $res;
    }

    public function saveSettings($values) {
        $result=true;
        $values->url = $this->secureURLIfPossible($values->url);
        foreach ($values as $key => &$value ) {
            if (gettype($value)=='string') {
                $value=trim($value);
                if (empty($value)) {
                    $value=null;
                }
            }
        }
        $this->settingsWrapper->setValues($values);
        $this->settingsWrapper->update();
        if (property_exists($this->settingsWrapper->getValues(),"error")) {
            $result=false;
            self::logError($this->settingsWrapper->getValues()->error);
        }
        return $result;
    }

   /**
     * Store some data in the transient table, and generate a nonce 
     * that can be used to access it. 
     *  
     * @param $transient_data - the data to store.
     * @param $expires - The expiration time for the data. Default 
     *                 600 seconds.
     */
    public function setNonceTransient($transient_data, $expires = 600) {
        $cache=$this->getCache();
        $nonce=$this->createNonce($transient_data);
        $cache->store($transient_data,$nonce,static::SHORT_NAME.'-cdnonce');
        return $nonce;
    }

    public function translate($mnemonic,$context=null){
        $retVal=JText::_(strtoupper($mnemonic));
        switch ($mnemonic) {
        case 'COM_CONNECTDAILY_NOT_CONFIGURED':
            $retVal=sprintf($retVal,"index.php?task=settings.showsettings&option=com_connectdaily",self::TUTORIAL_URL.'#t=1m06s');
            break;
        case 'COM_CONNECTDAILY_NOT_USED':
            $retVal=sprintf($retVal,self::TUTORIAL_URL.'#t=2m05s',self::TUTORIAL_URL.'#t=3m25s');
            break;
        }
        return $retVal;
    }

    /** @return void   */
    protected function upgradeSettings($settings){
        parent::upgradeSettings($settings);
        $current=$this->getVersionArray($settings->version);
        $new=$this->getVersionArray(static::VERSION_NUMBER);
        // OK, now do the actual work. I'm picturing a big set of
        // nested switch statements.

        $settings->version=static::VERSION_NUMBER;
    }

    public function getCMSName(){
        return "Joomla!";
    }

    public function hasUserSeenHint($hintName){
        $hints=CDailySettings::getSettings(CDailySettings::HINTS);
        $u=$this->getCurrentUser()->user_name;
        $hintValues=$hints->getValues();
        $res=false;
        if (property_exists($hintValues,'UserTable') && property_exists($hintValues->UserTable,$u)) {
            $res=in_array($hintName,$hintValues->UserTable->{$u});
        }
        return $res;
    }

    public function markHintSeen($hintName){
        $hints=CDailySettings::getSettings(CDailySettings::HINTS);
        $u=$this->getCurrentUser()->user_name;
        $hintValues=$hints->getValues();
        if (!property_exists($hintValues,'UserTable')) {
            $hintValues->{'UserTable'}=array($u => array($hintName));
        } else {
            if (property_exists($hintValues->UserTable,$u)) {
                if (in_array($hintName, $hintValues->UserTable->{$u})) {
                    return;
                }
                array_push($hintValues->UserTable->{$u},$hintName);
            } else {
                $hintValues->UserTable->{$u}=array($hintName);
            }
        }
        $hints->update();
        return;
    }
 
}
