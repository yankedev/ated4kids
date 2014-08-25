"use strict";

var SiteUtils = SiteUtils || {};

(function () {
    
    $('window').load(function() {
        new FastClick(document.body);
    });
    
    $('document').ready(function() {
        $('a,input,:button').each(function(n, e) {
            FastClick.attach(e);
        });
    });
        
    SiteUtils.switchLanguage = function(baseCtx, newCtx) {
        var currentAddress = window.location.pathname;
        var actualAddress = currentAddress;
        if(currentAddress.substring(0, baseCtx.length) == baseCtx) {
            actualAddress = currentAddress.substring(baseCtx.length);
        }
        window.location.pathname=newCtx + actualAddress;
        return false;
    };    
})();
