// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require prefixfree.jquery
//= require bootstrap
//= require bootstrap-datepicker
//= require bootstrap-datepicker-rails
//= require_tree .



$(document).ajaxSend(function(event, request, settings) {
  if (typeof(AUTH_TOKEN) == "undefined") return;
  if (settings.type == 'GET' || settings.type == 'get') return;
  settings.data = settings.data || "";
  settings.data += (settings.data ? "&" : "") + "authenticity_token=" + $.URLEncode(AUTH_TOKEN);
  request.setRequestHeader("Content-Type", settings.contentType);
});

$.extend({URLEncode:function(c){var o='';var x=0;c=c.toString();var r=/(^[a-zA-Z0-9_.]*)/;
while(x<c.length){var m=r.exec(c.substr(x));
  if(m!=null && m.length>1 && m[1]!=''){o+=m[1];x+=m[1].length;
  }else{if(c[x]==' ')o+='+';else{var d=c.charCodeAt(x);var h=d.toString(16);
    o+='%'+(h.length<2?'0':'')+h.toUpperCase();}x++;}}return o;},
    URLDecode:function(s){var o=s;var binVal,t;var r=/(%[^%]{2})/;
    while((m=r.exec(o))!=null && m.length>1 && m[1]!=''){b=parseInt(m[1].substr(1),16);
      t=String.fromCharCode(b);o=o.replace(m[1],t);}return o;}
    });
