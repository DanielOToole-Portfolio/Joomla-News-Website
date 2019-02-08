/**
 * This function is called by the editor plugin to insert the 
 * shortcode. 
 */
CDaily["joomlaPluginInsert"]=function(){
    var control=document.getElementById('IDcd_codetype'),
        sType=jQuery(control).val(),
        sClasses=jQuery(control.options[control.selectedIndex]).attr('data-elementclass'),
        a=sClasses.split(" ");

    res="{connectdaily_"+jQuery(control.options[control.selectedIndex]).val()+" ";
    for (var i=0; i < a.length; i++) {
        switch (a[i]) {
        case 'add_event_options':
            res+=' allow_recurrence="'+(jQuery('#IDcd_allow_recurrence').prop('checked') ? '1' : '0')+'"';
            break;
        case 'by_method':
            res+=' by_method="'+jQuery('#IDcd_by_method').val()+
            '" by_id="'+jQuery('#IDcd_by_id').val()+'"';
            break;
        case 'califrame':
            res+=' view="'+jQuery('#IDcd_iframe_view').val()+'"';
            break;
        case 'filter':
            res+=' by_method="'+jQuery("#IDcd_filter_by_method").val()+'"';
            var s=jQuery("#IDcd_filter_title").val().trim();
            if (s.length>0) {
                res+=' title="'+s+'"';
            }
            res+=' collapse_threshold="'+jQuery("#IDcd_collapse_threshold").val()+'"';
            s=jQuery("#IDcd_collapse_label").val().trim();
            if (s.length>0) {
                res+=' collapse_label="'+s+'"';
            }
            s=jQuery("#IDcd_expand_label").val().trim();
            if (s.length>0) {
                res+=' expand_label="'+s+'"';
            }
            break;
        case 'fullcalendar':
            if (document.getElementById('IDcd_wrap_eventtitles').checked) {
                res+=' wrap_events="1"';
            }
            if (document.getElementById('IDcd_enable_dropdown').checked) {
                res+=' enable_dropdown="1"';
            }
            if (document.getElementById('IDcd_event_styles').checked) {
                res+=' enable_styles="1"';
            }
            break;
        case 'iframesize':
            res+=' height="'+jQuery('#IDcd_height').val()+'" width="'+jQuery('#IDcd_width').val()+'"';
            break;
        case 'EndTimes':
            res+=' show_endtimes="'+(document.getElementById('IDcd_show_endtimes').checked ? "1" : "0")+'"';
            break;
        case 'listevents':
            res+=' allow_duplicates="'+
                (document.getElementById('IDcd_allow_duplicates').checked ? "1" : "0")+'"';
            res+=' maxcount="'+jQuery('#IDcd_max_events').val()+'"';
            res+=' dayspan="'+jQuery('#IDcd_max_days').val()+'"';
            break;
        case 'simplelist':
            res+=' show_starttimes="'+    
                (document.getElementById('IDcd_show_starttimes').checked ? "1" : "0")+'"';
            break;
        }
    }
    res+="}";
    switch (sType) {
    case 'simplelist':
       res+='{emailcloak=off}';
       break;
    case 'icalendar':
        // The editor insert is kind of weird since we're an html tag. We need to re-encode
        // the by_method and by_id to use single-quotes rather than double...
        res='<a class="icon-calendar-3" href="'+res.replace(/"/g,"'")+'">iCalendar</a>';
        break;
    }
    window.parent.jCDailyInsertShortCode(res);
    return false;
};

CDaily['showTerms']=function(){
    var sURL=CDaily.ajaxURL+"&action=cd_terms&format=raw";
    var args={
        "dataType": "html",
        "timeout": 5000,
        "url": sURL,
        "success": function(data, textStatus, jqXHR) {
            CDaily.showDialog(data);
        }
    };

    jQuery.ajax(args).error(function(jqxhr, status, error) {
            console.log("error=" + error);
            console.log(jqxhr.responseText);
            alert('Show Terms! : '+error);
    });
}

CDaily['dismissHint']=function(hintName,targetDiv){
var sURL=CDaily.ajaxURL+"&action=cd_dismisshint&format=raw&hintName="+hintName;
    var args={
        "dataType": "html",
        "timeout": 5000,
        "url": sURL,
        "success": function(data, textStatus, jqXHR) {
            //  CDaily.showDialog(data);
        }
    };
    jQuery('#idCDCloseHint').closest('.alert').remove();
    jQuery.ajax(args).error(function(jqxhr, status, error) {
            console.log("error=" + error);
            console.log(jqxhr.responseText);
            alert('dismissHint! : '+error);
    });
}
