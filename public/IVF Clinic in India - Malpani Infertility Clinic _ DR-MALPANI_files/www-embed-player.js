(function(){var k,aa="function"==typeof Object.create?Object.create:function(a){function b(){}
b.prototype=a;return new b},ba;
if("function"==typeof Object.setPrototypeOf)ba=Object.setPrototypeOf;else{var ca;a:{var da={ua:!0},ea={};try{ea.__proto__=da;ca=ea.ua;break a}catch(a){}ca=!1}ba=ca?function(a,b){a.__proto__=b;if(a.__proto__!==b)throw new TypeError(a+" is not extensible");return a}:null}var fa=ba;
function n(a,b){a.prototype=aa(b.prototype);a.prototype.constructor=a;if(fa)fa(a,b);else for(var c in b)if("prototype"!=c)if(Object.defineProperties){var d=Object.getOwnPropertyDescriptor(b,c);d&&Object.defineProperty(a,c,d)}else a[c]=b[c];a.u=b.prototype}
var ha="function"==typeof Object.defineProperties?Object.defineProperty:function(a,b,c){a!=Array.prototype&&a!=Object.prototype&&(a[b]=c.value)},ia="undefined"!=typeof window&&window===this?this:"undefined"!=typeof global&&null!=global?global:this;
function ja(a){if(a){for(var b=ia,c=["Object","assign"],d=0;d<c.length-1;d++){var e=c[d];e in b||(b[e]={});b=b[e]}c=c[c.length-1];d=b[c];a=a(d);a!=d&&null!=a&&ha(b,c,{configurable:!0,writable:!0,value:a})}}
var ka="function"==typeof Object.assign?Object.assign:function(a,b){for(var c=1;c<arguments.length;c++){var d=arguments[c];if(d)for(var e in d)Object.prototype.hasOwnProperty.call(d,e)&&(a[e]=d[e])}return a};
ja(function(a){return a||ka});
(function(){function a(){function a(){}
Reflect.construct(a,[],function(){});
return new a instanceof a}
if("undefined"!=typeof Reflect&&Reflect.construct){if(a())return Reflect.construct;var b=Reflect.construct;return function(a,d,e){a=b(a,d);e&&Reflect.setPrototypeOf(a,e.prototype);return a}}return function(a,b,e){void 0===e&&(e=a);
e=aa(e.prototype||Object.prototype);return Function.prototype.apply.call(a,e,b)||e}})();
var p=this;function q(a){return void 0!==a}
function r(a){return"string"==typeof a}
function la(a){return"boolean"==typeof a}
function ma(a){return"number"==typeof a}
function u(a,b,c){a=a.split(".");c=c||p;a[0]in c||"undefined"==typeof c.execScript||c.execScript("var "+a[0]);for(var d;a.length&&(d=a.shift());)!a.length&&q(b)?c[d]=b:c[d]&&c[d]!==Object.prototype[d]?c=c[d]:c=c[d]={}}
var na=/^[\w+/_-]+[=]{0,2}$/,oa=null;function v(a,b){for(var c=a.split("."),d=b||p,e=0;e<c.length;e++)if(d=d[c[e]],null==d)return null;return d}
function pa(){}
function qa(a){a.ea=void 0;a.getInstance=function(){return a.ea?a.ea:a.ea=new a}}
function ra(a){var b=typeof a;if("object"==b)if(a){if(a instanceof Array)return"array";if(a instanceof Object)return b;var c=Object.prototype.toString.call(a);if("[object Window]"==c)return"object";if("[object Array]"==c||"number"==typeof a.length&&"undefined"!=typeof a.splice&&"undefined"!=typeof a.propertyIsEnumerable&&!a.propertyIsEnumerable("splice"))return"array";if("[object Function]"==c||"undefined"!=typeof a.call&&"undefined"!=typeof a.propertyIsEnumerable&&!a.propertyIsEnumerable("call"))return"function"}else return"null";
else if("function"==b&&"undefined"==typeof a.call)return"object";return b}
function w(a){return"array"==ra(a)}
function ta(a){var b=ra(a);return"array"==b||"object"==b&&"number"==typeof a.length}
function ua(a){return"function"==ra(a)}
function va(a){var b=typeof a;return"object"==b&&null!=a||"function"==b}
var wa="closure_uid_"+(1E9*Math.random()>>>0),xa=0;function ya(a,b,c){return a.call.apply(a.bind,arguments)}
function za(a,b,c){if(!a)throw Error();if(2<arguments.length){var d=Array.prototype.slice.call(arguments,2);return function(){var c=Array.prototype.slice.call(arguments);Array.prototype.unshift.apply(c,d);return a.apply(b,c)}}return function(){return a.apply(b,arguments)}}
function x(a,b,c){Function.prototype.bind&&-1!=Function.prototype.bind.toString().indexOf("native code")?x=ya:x=za;return x.apply(null,arguments)}
function y(a,b){var c=Array.prototype.slice.call(arguments,1);return function(){var b=c.slice();b.push.apply(b,arguments);return a.apply(this,b)}}
var z=Date.now||function(){return+new Date};
function Aa(a,b){u(a,b,void 0)}
function A(a,b){function c(){}
c.prototype=b.prototype;a.u=b.prototype;a.prototype=new c;a.prototype.constructor=a;a.ob=function(a,c,f){for(var d=Array(arguments.length-2),e=2;e<arguments.length;e++)d[e-2]=arguments[e];return b.prototype[c].apply(a,d)}}
;function B(a){if(Error.captureStackTrace)Error.captureStackTrace(this,B);else{var b=Error().stack;b&&(this.stack=b)}a&&(this.message=String(a))}
A(B,Error);B.prototype.name="CustomError";var Ba=Array.prototype.indexOf?function(a,b){return Array.prototype.indexOf.call(a,b,void 0)}:function(a,b){if(r(a))return r(b)&&1==b.length?a.indexOf(b,0):-1;
for(var c=0;c<a.length;c++)if(c in a&&a[c]===b)return c;return-1},C=Array.prototype.forEach?function(a,b,c){Array.prototype.forEach.call(a,b,c)}:function(a,b,c){for(var d=a.length,e=r(a)?a.split(""):a,f=0;f<d;f++)f in e&&b.call(c,e[f],f,a)},Ca=Array.prototype.filter?function(a,b){return Array.prototype.filter.call(a,b,void 0)}:function(a,b){for(var c=a.length,d=[],e=0,f=r(a)?a.split(""):a,g=0;g<c;g++)if(g in f){var h=f[g];
b.call(void 0,h,g,a)&&(d[e++]=h)}return d},Da=Array.prototype.map?function(a,b){return Array.prototype.map.call(a,b,void 0)}:function(a,b){for(var c=a.length,d=Array(c),e=r(a)?a.split(""):a,f=0;f<c;f++)f in e&&(d[f]=b.call(void 0,e[f],f,a));
return d};
function Ea(a,b){a:{var c=a.length;for(var d=r(a)?a.split(""):a,e=0;e<c;e++)if(e in d&&b.call(void 0,d[e],e,a)){c=e;break a}c=-1}return 0>c?null:r(a)?a.charAt(c):a[c]}
function Fa(a,b){var c=Ba(a,b);0<=c&&Array.prototype.splice.call(a,c,1)}
function Ia(a){var b=a.length;if(0<b){for(var c=Array(b),d=0;d<b;d++)c[d]=a[d];return c}return[]}
function Ja(a,b){for(var c=1;c<arguments.length;c++){var d=arguments[c];if(ta(d)){var e=a.length||0,f=d.length||0;a.length=e+f;for(var g=0;g<f;g++)a[e+g]=d[g]}else a.push(d)}}
;var Ka=String.prototype.trim?function(a){return a.trim()}:function(a){return/^[\s\xa0]*([\s\S]*?)[\s\xa0]*$/.exec(a)[1]};
function La(a){if(!Ma.test(a))return a;-1!=a.indexOf("&")&&(a=a.replace(Na,"&amp;"));-1!=a.indexOf("<")&&(a=a.replace(Oa,"&lt;"));-1!=a.indexOf(">")&&(a=a.replace(Pa,"&gt;"));-1!=a.indexOf('"')&&(a=a.replace(Qa,"&quot;"));-1!=a.indexOf("'")&&(a=a.replace(Ra,"&#39;"));-1!=a.indexOf("\x00")&&(a=a.replace(Sa,"&#0;"));return a}
var Na=/&/g,Oa=/</g,Pa=/>/g,Qa=/"/g,Ra=/'/g,Sa=/\x00/g,Ma=/[\x00&<>"']/;function Ua(a){for(var b=0,c=0;c<a.length;++c)b=31*b+a.charCodeAt(c)>>>0;return b}
;var Va;a:{var Wa=p.navigator;if(Wa){var Xa=Wa.userAgent;if(Xa){Va=Xa;break a}}Va=""}function D(a){return-1!=Va.indexOf(a)}
;function Ya(a,b){for(var c in a)b.call(void 0,a[c],c,a)}
function Za(a,b){var c=ta(b),d=c?b:arguments;for(c=c?0:1;c<d.length;c++){if(null==a)return;a=a[d[c]]}return a}
function $a(a){var b=ab,c;for(c in b)if(a.call(void 0,b[c],c,b))return c}
function bb(a){for(var b in a)return!1;return!0}
function cb(a,b){if(null!==a&&b in a)throw Error('The object already contains the key "'+b+'"');a[b]=!0}
function db(a,b){for(var c in a)if(!(c in b)||a[c]!==b[c])return!1;for(c in b)if(!(c in a))return!1;return!0}
function eb(a){var b={},c;for(c in a)b[c]=a[c];return b}
var fb="constructor hasOwnProperty isPrototypeOf propertyIsEnumerable toLocaleString toString valueOf".split(" ");function gb(a,b){for(var c,d,e=1;e<arguments.length;e++){d=arguments[e];for(c in d)a[c]=d[c];for(var f=0;f<fb.length;f++)c=fb[f],Object.prototype.hasOwnProperty.call(d,c)&&(a[c]=d[c])}}
;var hb=D("Opera"),ib=D("Trident")||D("MSIE"),jb=D("Edge"),kb=D("Gecko")&&!(-1!=Va.toLowerCase().indexOf("webkit")&&!D("Edge"))&&!(D("Trident")||D("MSIE"))&&!D("Edge"),lb=-1!=Va.toLowerCase().indexOf("webkit")&&!D("Edge");function mb(){var a=p.document;return a?a.documentMode:void 0}
var nb;a:{var ob="",pb=function(){var a=Va;if(kb)return/rv:([^\);]+)(\)|;)/.exec(a);if(jb)return/Edge\/([\d\.]+)/.exec(a);if(ib)return/\b(?:MSIE|rv)[: ]([^\);]+)(\)|;)/.exec(a);if(lb)return/WebKit\/(\S+)/.exec(a);if(hb)return/(?:Version)[ \/]?(\S+)/.exec(a)}();
pb&&(ob=pb?pb[1]:"");if(ib){var qb=mb();if(null!=qb&&qb>parseFloat(ob)){nb=String(qb);break a}}nb=ob}var rb=nb,sb;var tb=p.document;sb=tb&&ib?mb()||("CSS1Compat"==tb.compatMode?parseInt(rb,10):5):void 0;var ub=!ib||9<=Number(sb);function vb(){this.b="";this.f=wb}
vb.prototype.J=!0;vb.prototype.H=function(){return this.b};
vb.prototype.da=!0;vb.prototype.Z=function(){return 1};
function xb(a){return a instanceof vb&&a.constructor===vb&&a.f===wb?a.b:"type_error:TrustedResourceUrl"}
var wb={};function E(){this.b="";this.f=yb}
E.prototype.J=!0;E.prototype.H=function(){return this.b};
E.prototype.da=!0;E.prototype.Z=function(){return 1};
function zb(a){return a instanceof E&&a.constructor===E&&a.f===yb?a.b:"type_error:SafeUrl"}
var Ab=/^(?:(?:https?|mailto|ftp):|[^:/?#]*(?:[/?#]|$))/i;function Bb(a){if(a instanceof E)return a;a=a.J?a.H():String(a);Ab.test(a)||(a="about:invalid#zClosurez");return Cb(a)}
var yb={};function Cb(a){var b=new E;b.b=a;return b}
Cb("about:blank");function Db(){this.b="";this.g=Eb;this.f=null}
Db.prototype.da=!0;Db.prototype.Z=function(){return this.f};
Db.prototype.J=!0;Db.prototype.H=function(){return this.b};
var Eb={};function Fb(a,b){var c=new Db;c.b=a;c.f=b;return c}
Fb("<!DOCTYPE html>",0);Fb("",0);Fb("<br>",0);function Gb(a,b){var c=b instanceof E?b:Bb(b);a.href=zb(c)}
function Hb(a,b,c){a.rel=c;a.href=-1!=c.toLowerCase().indexOf("stylesheet")?xb(b):b instanceof vb?xb(b):b instanceof E?zb(b):Bb(b).H()}
function Ib(a,b){a.src=xb(b);var c;if(null===oa){a:{if((c=p.document.querySelector("script[nonce]"))&&(c=c.nonce||c.getAttribute("nonce"))&&na.test(c))break a;c=null}oa=c||""}if(c=oa)a.nonce=c}
;function Jb(a,b){this.x=q(a)?a:0;this.y=q(b)?b:0}
k=Jb.prototype;k.clone=function(){return new Jb(this.x,this.y)};
k.equals=function(a){return a instanceof Jb&&(this==a?!0:this&&a?this.x==a.x&&this.y==a.y:!1)};
k.ceil=function(){this.x=Math.ceil(this.x);this.y=Math.ceil(this.y);return this};
k.floor=function(){this.x=Math.floor(this.x);this.y=Math.floor(this.y);return this};
k.round=function(){this.x=Math.round(this.x);this.y=Math.round(this.y);return this};function Kb(a,b){this.width=a;this.height=b}
k=Kb.prototype;k.clone=function(){return new Kb(this.width,this.height)};
k.aspectRatio=function(){return this.width/this.height};
k.isEmpty=function(){return!(this.width*this.height)};
k.ceil=function(){this.width=Math.ceil(this.width);this.height=Math.ceil(this.height);return this};
k.floor=function(){this.width=Math.floor(this.width);this.height=Math.floor(this.height);return this};
k.round=function(){this.width=Math.round(this.width);this.height=Math.round(this.height);return this};function Lb(a){var b=document;return r(a)?b.getElementById(a):a}
function Mb(a,b){Ya(b,function(b,d){b&&b.J&&(b=b.H());"style"==d?a.style.cssText=b:"class"==d?a.className=b:"for"==d?a.htmlFor=b:Nb.hasOwnProperty(d)?a.setAttribute(Nb[d],b):0==d.lastIndexOf("aria-",0)||0==d.lastIndexOf("data-",0)?a.setAttribute(d,b):a[d]=b})}
var Nb={cellpadding:"cellPadding",cellspacing:"cellSpacing",colspan:"colSpan",frameborder:"frameBorder",height:"height",maxlength:"maxLength",nonce:"nonce",role:"role",rowspan:"rowSpan",type:"type",usemap:"useMap",valign:"vAlign",width:"width"};
function Ob(a,b,c){var d=arguments,e=document,f=String(d[0]),g=d[1];if(!ub&&g&&(g.name||g.type)){f=["<",f];g.name&&f.push(' name="',La(g.name),'"');if(g.type){f.push(' type="',La(g.type),'"');var h={};gb(h,g);delete h.type;g=h}f.push(">");f=f.join("")}f=e.createElement(f);g&&(r(g)?f.className=g:w(g)?f.className=g.join(" "):Mb(f,g));2<d.length&&Pb(e,f,d);return f}
function Pb(a,b,c){function d(c){c&&b.appendChild(r(c)?a.createTextNode(c):c)}
for(var e=2;e<c.length;e++){var f=c[e];if(!ta(f)||va(f)&&0<f.nodeType)d(f);else{a:{if(f&&"number"==typeof f.length){if(va(f)){var g="function"==typeof f.item||"string"==typeof f.item;break a}if(ua(f)){g="function"==typeof f.item;break a}}g=!1}C(g?Ia(f):f,d)}}}
function Qb(a,b){for(var c=0;a;){if(b(a))return a;a=a.parentNode;c++}return null}
;function Rb(a){var b=!1,c;return function(){b||(c=a(),b=!0);return c}}
;function Sb(a){Tb();var b=new vb;b.b=a;return b}
var Tb=pa;var Ub=/^[\w+/_-]+[=]{0,2}$/;function Vb(){var a=p.document.querySelector("script[nonce]");if(a&&(a=a.nonce||a.getAttribute("nonce"))&&Ub.test(a))return a}
;function Wb(a){var b=Xb;if(b)for(var c in b)Object.prototype.hasOwnProperty.call(b,c)&&a.call(void 0,b[c],c,b)}
function Yb(){var a=[];Wb(function(b){a.push(b)});
return a}
var Xb={bb:"allow-forms",cb:"allow-modals",eb:"allow-orientation-lock",fb:"allow-pointer-lock",gb:"allow-popups",hb:"allow-popups-to-escape-sandbox",ib:"allow-presentation",jb:"allow-same-origin",kb:"allow-scripts",lb:"allow-top-navigation",mb:"allow-top-navigation-by-user-activation"},Zb=Rb(function(){return Yb()});
function $b(){var a=document.createElement("IFRAME").sandbox,b=a&&a.supports;if(!b)return{};var c={};C(Zb(),function(d){b.call(a,d)&&(c[d]=!0)});
return c}
;var ac=document,F=window;function bc(a){"number"==typeof a&&(a=Math.round(a)+"px");return a}
;function cc(a,b,c){a.addEventListener?a.addEventListener(b,c,void 0):a.attachEvent&&a.attachEvent("on"+b,c)}
function dc(a,b,c){a.removeEventListener?a.removeEventListener(b,c,void 0):a.detachEvent&&a.detachEvent("on"+b,c)}
;function ec(a){var b=!1,c=!1;c=void 0===c?!1:c;b=void 0===b?!1:b;p.google_image_requests||(p.google_image_requests=[]);var d=p.document.createElement("img");if(b){var e=function(){b&&Fa(p.google_image_requests,d);dc(d,"load",e);dc(d,"error",e)};
cc(d,"load",e);cc(d,"error",e)}c&&(d.referrerPolicy="no-referrer");d.src=a;p.google_image_requests.push(d)}
;var fc=(new Date).getTime();function gc(a){if(!a)return"";a=a.split("#")[0].split("?")[0];a=a.toLowerCase();0==a.indexOf("//")&&(a=window.location.protocol+a);/^[\w\-]*:\/\//.test(a)||(a=window.location.href);var b=a.substring(a.indexOf("://")+3),c=b.indexOf("/");-1!=c&&(b=b.substring(0,c));a=a.substring(0,a.indexOf("://"));if("http"!==a&&"https"!==a&&"chrome-extension"!==a&&"file"!==a&&"android-app"!==a&&"chrome-search"!==a&&"app"!==a)throw Error("Invalid URI scheme in origin: "+a);c="";var d=b.indexOf(":");if(-1!=d){var e=
b.substring(d+1);b=b.substring(0,d);if("http"===a&&"80"!==e||"https"===a&&"443"!==e)c=":"+e}return a+"://"+b+c}
;function hc(){function a(){e[0]=1732584193;e[1]=4023233417;e[2]=2562383102;e[3]=271733878;e[4]=3285377520;t=m=0}
function b(a){for(var b=g,c=0;64>c;c+=4)b[c/4]=a[c]<<24|a[c+1]<<16|a[c+2]<<8|a[c+3];for(c=16;80>c;c++)a=b[c-3]^b[c-8]^b[c-14]^b[c-16],b[c]=(a<<1|a>>>31)&4294967295;a=e[0];var d=e[1],f=e[2],h=e[3],l=e[4];for(c=0;80>c;c++){if(40>c)if(20>c){var m=h^d&(f^h);var t=1518500249}else m=d^f^h,t=1859775393;else 60>c?(m=d&f|h&(d|f),t=2400959708):(m=d^f^h,t=3395469782);m=((a<<5|a>>>27)&4294967295)+m+l+t+b[c]&4294967295;l=h;h=f;f=(d<<30|d>>>2)&4294967295;d=a;a=m}e[0]=e[0]+a&4294967295;e[1]=e[1]+d&4294967295;e[2]=
e[2]+f&4294967295;e[3]=e[3]+h&4294967295;e[4]=e[4]+l&4294967295}
function c(a,c){if("string"===typeof a){a=unescape(encodeURIComponent(a));for(var d=[],e=0,g=a.length;e<g;++e)d.push(a.charCodeAt(e));a=d}c||(c=a.length);d=0;if(0==m)for(;d+64<c;)b(a.slice(d,d+64)),d+=64,t+=64;for(;d<c;)if(f[m++]=a[d++],t++,64==m)for(m=0,b(f);d+64<c;)b(a.slice(d,d+64)),d+=64,t+=64}
function d(){var a=[],d=8*t;56>m?c(h,56-m):c(h,64-(m-56));for(var g=63;56<=g;g--)f[g]=d&255,d>>>=8;b(f);for(g=d=0;5>g;g++)for(var l=24;0<=l;l-=8)a[d++]=e[g]>>l&255;return a}
for(var e=[],f=[],g=[],h=[128],l=1;64>l;++l)h[l]=0;var m,t;a();return{reset:a,update:c,digest:d,wa:function(){for(var a=d(),b="",c=0;c<a.length;c++)b+="0123456789ABCDEF".charAt(Math.floor(a[c]/16))+"0123456789ABCDEF".charAt(a[c]%16);return b}}}
;function ic(a,b,c){var d=[],e=[];if(1==(w(c)?2:1))return e=[b,a],C(d,function(a){e.push(a)}),jc(e.join(" "));
var f=[],g=[];C(c,function(a){g.push(a.key);f.push(a.value)});
c=Math.floor((new Date).getTime()/1E3);e=0==f.length?[c,b,a]:[f.join(":"),c,b,a];C(d,function(a){e.push(a)});
a=jc(e.join(" "));a=[c,a];0==g.length||a.push(g.join(""));return a.join("_")}
function jc(a){var b=hc();b.update(a);return b.wa().toLowerCase()}
;function kc(a){this.b=a||{cookie:""}}
k=kc.prototype;k.isEnabled=function(){return navigator.cookieEnabled};
k.set=function(a,b,c,d,e,f){if(/[;=\s]/.test(a))throw Error('Invalid cookie name "'+a+'"');if(/[;\r\n]/.test(b))throw Error('Invalid cookie value "'+b+'"');q(c)||(c=-1);e=e?";domain="+e:"";d=d?";path="+d:"";f=f?";secure":"";c=0>c?"":0==c?";expires="+(new Date(1970,1,1)).toUTCString():";expires="+(new Date(z()+1E3*c)).toUTCString();this.b.cookie=a+"="+b+e+d+c+f};
k.get=function(a,b){for(var c=a+"=",d=(this.b.cookie||"").split(";"),e=0,f;e<d.length;e++){f=Ka(d[e]);if(0==f.lastIndexOf(c,0))return f.substr(c.length);if(f==a)return""}return b};
k.remove=function(a,b,c){var d=q(this.get(a));this.set(a,"",0,b,c);return d};
k.isEmpty=function(){return!this.b.cookie};
k.clear=function(){for(var a=(this.b.cookie||"").split(";"),b=[],c=[],d,e,f=0;f<a.length;f++)e=Ka(a[f]),d=e.indexOf("="),-1==d?(b.push(""),c.push(e)):(b.push(e.substring(0,d)),c.push(e.substring(d+1)));for(a=b.length-1;0<=a;a--)this.remove(b[a])};
var lc=new kc("undefined"==typeof document?null:document);lc.f=3950;function mc(a){var b=gc(String(p.location.href)),c=p.__OVERRIDE_SID;null==c&&(c=(new kc(document)).get("SID"));if(c&&(b=(c=0==b.indexOf("https:")||0==b.indexOf("chrome-extension:"))?p.__SAPISID:p.__APISID,null==b&&(b=(new kc(document)).get(c?"SAPISID":"APISID")),b)){c=c?"SAPISIDHASH":"APISIDHASH";var d=String(p.location.href);return d&&b&&c?[c,ic(gc(d),b,a||null)].join(" "):null}return null}
;function nc(a,b){this.g=a;this.h=b;this.f=0;this.b=null}
nc.prototype.get=function(){if(0<this.f){this.f--;var a=this.b;this.b=a.next;a.next=null}else a=this.g();return a};
function oc(a,b){a.h(b);100>a.f&&(a.f++,b.next=a.b,a.b=b)}
;function pc(a){p.setTimeout(function(){throw a;},0)}
var qc;
function rc(){var a=p.MessageChannel;"undefined"===typeof a&&"undefined"!==typeof window&&window.postMessage&&window.addEventListener&&!D("Presto")&&(a=function(){var a=document.createElement("IFRAME");a.style.display="none";a.src="";document.documentElement.appendChild(a);var b=a.contentWindow;a=b.document;a.open();a.write("");a.close();var c="callImmediate"+Math.random(),d="file:"==b.location.protocol?"*":b.location.protocol+"//"+b.location.host;a=x(function(a){if(("*"==d||a.origin==d)&&a.data==
c)this.port1.onmessage()},this);
b.addEventListener("message",a,!1);this.port1={};this.port2={postMessage:function(){b.postMessage(c,d)}}});
if("undefined"!==typeof a&&!D("Trident")&&!D("MSIE")){var b=new a,c={},d=c;b.port1.onmessage=function(){if(q(c.next)){c=c.next;var a=c.ka;c.ka=null;a()}};
return function(a){d.next={ka:a};d=d.next;b.port2.postMessage(0)}}return"undefined"!==typeof document&&"onreadystatechange"in document.createElement("SCRIPT")?function(a){var b=document.createElement("SCRIPT");
b.onreadystatechange=function(){b.onreadystatechange=null;b.parentNode.removeChild(b);b=null;a();a=null};
document.documentElement.appendChild(b)}:function(a){p.setTimeout(a,0)}}
;function sc(){this.f=this.b=null}
var uc=new nc(function(){return new tc},function(a){a.reset()});
sc.prototype.add=function(a,b){var c=uc.get();c.set(a,b);this.f?this.f.next=c:this.b=c;this.f=c};
sc.prototype.remove=function(){var a=null;this.b&&(a=this.b,this.b=this.b.next,this.b||(this.f=null),a.next=null);return a};
function tc(){this.next=this.scope=this.b=null}
tc.prototype.set=function(a,b){this.b=a;this.scope=b;this.next=null};
tc.prototype.reset=function(){this.next=this.scope=this.b=null};function vc(a,b){wc||xc();yc||(wc(),yc=!0);zc.add(a,b)}
var wc;function xc(){if(p.Promise&&p.Promise.resolve){var a=p.Promise.resolve(void 0);wc=function(){a.then(Ac)}}else wc=function(){var a=Ac;
!ua(p.setImmediate)||p.Window&&p.Window.prototype&&!D("Edge")&&p.Window.prototype.setImmediate==p.setImmediate?(qc||(qc=rc()),qc(a)):p.setImmediate(a)}}
var yc=!1,zc=new sc;function Ac(){for(var a;a=zc.remove();){try{a.b.call(a.scope)}catch(b){pc(b)}oc(uc,a)}yc=!1}
;var Bc=null,Cc=null;function Dc(){this.f=-1}
;function Ec(){this.f=64;this.b=[];this.j=[];this.l=[];this.h=[];this.h[0]=128;for(var a=1;a<this.f;++a)this.h[a]=0;this.i=this.g=0;this.reset()}
A(Ec,Dc);Ec.prototype.reset=function(){this.b[0]=1732584193;this.b[1]=4023233417;this.b[2]=2562383102;this.b[3]=271733878;this.b[4]=3285377520;this.i=this.g=0};
function Fc(a,b,c){c||(c=0);var d=a.l;if(r(b))for(var e=0;16>e;e++)d[e]=b.charCodeAt(c)<<24|b.charCodeAt(c+1)<<16|b.charCodeAt(c+2)<<8|b.charCodeAt(c+3),c+=4;else for(e=0;16>e;e++)d[e]=b[c]<<24|b[c+1]<<16|b[c+2]<<8|b[c+3],c+=4;for(e=16;80>e;e++){var f=d[e-3]^d[e-8]^d[e-14]^d[e-16];d[e]=(f<<1|f>>>31)&4294967295}b=a.b[0];c=a.b[1];var g=a.b[2],h=a.b[3],l=a.b[4];for(e=0;80>e;e++){if(40>e)if(20>e){f=h^c&(g^h);var m=1518500249}else f=c^g^h,m=1859775393;else 60>e?(f=c&g|h&(c|g),m=2400959708):(f=c^g^h,m=
3395469782);f=(b<<5|b>>>27)+f+l+m+d[e]&4294967295;l=h;h=g;g=(c<<30|c>>>2)&4294967295;c=b;b=f}a.b[0]=a.b[0]+b&4294967295;a.b[1]=a.b[1]+c&4294967295;a.b[2]=a.b[2]+g&4294967295;a.b[3]=a.b[3]+h&4294967295;a.b[4]=a.b[4]+l&4294967295}
Ec.prototype.update=function(a,b){if(null!=a){q(b)||(b=a.length);for(var c=b-this.f,d=0,e=this.j,f=this.g;d<b;){if(0==f)for(;d<=c;)Fc(this,a,d),d+=this.f;if(r(a))for(;d<b;){if(e[f]=a.charCodeAt(d),++f,++d,f==this.f){Fc(this,e);f=0;break}}else for(;d<b;)if(e[f]=a[d],++f,++d,f==this.f){Fc(this,e);f=0;break}}this.g=f;this.i+=b}};
Ec.prototype.digest=function(){var a=[],b=8*this.i;56>this.g?this.update(this.h,56-this.g):this.update(this.h,this.f-(this.g-56));for(var c=this.f-1;56<=c;c--)this.j[c]=b&255,b/=256;Fc(this,this.j);for(c=b=0;5>c;c++)for(var d=24;0<=d;d-=8)a[b]=this.b[c]>>d&255,++b;return a};function G(){this.g=this.g;this.B=this.B}
G.prototype.g=!1;G.prototype.dispose=function(){this.g||(this.g=!0,this.m())};
function Gc(a,b){a.g?q(void 0)?b.call(void 0):b():(a.B||(a.B=[]),a.B.push(q(void 0)?x(b,void 0):b))}
G.prototype.m=function(){if(this.B)for(;this.B.length;)this.B.shift()()};
function Hc(a){a&&"function"==typeof a.dispose&&a.dispose()}
function Ic(a){for(var b=0,c=arguments.length;b<c;++b){var d=arguments[b];ta(d)?Ic.apply(null,d):Hc(d)}}
;function Jc(a){if(a.classList)return a.classList;a=a.className;return r(a)&&a.match(/\S+/g)||[]}
function Kc(a,b){if(a.classList)var c=a.classList.contains(b);else c=Jc(a),c=0<=Ba(c,b);return c}
function Lc(){var a=document.body;a.classList?a.classList.remove("inverted-hdpi"):Kc(a,"inverted-hdpi")&&(a.className=Ca(Jc(a),function(a){return"inverted-hdpi"!=a}).join(" "))}
;var Mc="StopIteration"in p?p.StopIteration:{message:"StopIteration",stack:""};function Nc(){}
Nc.prototype.next=function(){throw Mc;};
Nc.prototype.D=function(){return this};
function Oc(a){if(a instanceof Nc)return a;if("function"==typeof a.D)return a.D(!1);if(ta(a)){var b=0,c=new Nc;c.next=function(){for(;;){if(b>=a.length)throw Mc;if(b in a)return a[b++];b++}};
return c}throw Error("Not implemented");}
function Pc(a,b){if(ta(a))try{C(a,b,void 0)}catch(c){if(c!==Mc)throw c;}else{a=Oc(a);try{for(;;)b.call(void 0,a.next(),void 0,a)}catch(c){if(c!==Mc)throw c;}}}
function Qc(a){if(ta(a))return Ia(a);a=Oc(a);var b=[];Pc(a,function(a){b.push(a)});
return b}
;function Rc(a,b){this.g={};this.b=[];this.h=this.f=0;var c=arguments.length;if(1<c){if(c%2)throw Error("Uneven number of arguments");for(var d=0;d<c;d+=2)this.set(arguments[d],arguments[d+1])}else if(a)if(a instanceof Rc)for(c=Sc(a),d=0;d<c.length;d++)this.set(c[d],a.get(c[d]));else for(d in a)this.set(d,a[d])}
function Sc(a){Tc(a);return a.b.concat()}
k=Rc.prototype;k.equals=function(a,b){if(this===a)return!0;if(this.f!=a.f)return!1;var c=b||Uc;Tc(this);for(var d,e=0;d=this.b[e];e++)if(!c(this.get(d),a.get(d)))return!1;return!0};
function Uc(a,b){return a===b}
k.isEmpty=function(){return 0==this.f};
k.clear=function(){this.g={};this.h=this.f=this.b.length=0};
k.remove=function(a){return Object.prototype.hasOwnProperty.call(this.g,a)?(delete this.g[a],this.f--,this.h++,this.b.length>2*this.f&&Tc(this),!0):!1};
function Tc(a){if(a.f!=a.b.length){for(var b=0,c=0;b<a.b.length;){var d=a.b[b];Object.prototype.hasOwnProperty.call(a.g,d)&&(a.b[c++]=d);b++}a.b.length=c}if(a.f!=a.b.length){var e={};for(c=b=0;b<a.b.length;)d=a.b[b],Object.prototype.hasOwnProperty.call(e,d)||(a.b[c++]=d,e[d]=1),b++;a.b.length=c}}
k.get=function(a,b){return Object.prototype.hasOwnProperty.call(this.g,a)?this.g[a]:b};
k.set=function(a,b){Object.prototype.hasOwnProperty.call(this.g,a)||(this.f++,this.b.push(a),this.h++);this.g[a]=b};
k.forEach=function(a,b){for(var c=Sc(this),d=0;d<c.length;d++){var e=c[d],f=this.get(e);a.call(b,f,e,this)}};
k.clone=function(){return new Rc(this)};
k.D=function(a){Tc(this);var b=0,c=this.h,d=this,e=new Nc;e.next=function(){if(c!=d.h)throw Error("The map has changed since the iterator was created");if(b>=d.b.length)throw Mc;var e=d.b[b++];return a?e:d.g[e]};
return e};function Vc(a){var b=[];Wc(new Xc,a,b);return b.join("")}
function Xc(){}
function Wc(a,b,c){if(null==b)c.push("null");else{if("object"==typeof b){if(w(b)){var d=b;b=d.length;c.push("[");for(var e="",f=0;f<b;f++)c.push(e),Wc(a,d[f],c),e=",";c.push("]");return}if(b instanceof String||b instanceof Number||b instanceof Boolean)b=b.valueOf();else{c.push("{");e="";for(d in b)Object.prototype.hasOwnProperty.call(b,d)&&(f=b[d],"function"!=typeof f&&(c.push(e),Yc(d,c),c.push(":"),Wc(a,f,c),e=","));c.push("}");return}}switch(typeof b){case "string":Yc(b,c);break;case "number":c.push(isFinite(b)&&
!isNaN(b)?String(b):"null");break;case "boolean":c.push(String(b));break;case "function":c.push("null");break;default:throw Error("Unknown type: "+typeof b);}}}
var Zc={'"':'\\"',"\\":"\\\\","/":"\\/","\b":"\\b","\f":"\\f","\n":"\\n","\r":"\\r","\t":"\\t","\x0B":"\\u000b"},$c=/\uffff/.test("\uffff")?/[\\"\x00-\x1f\x7f-\uffff]/g:/[\\"\x00-\x1f\x7f-\xff]/g;function Yc(a,b){b.push('"',a.replace($c,function(a){var b=Zc[a];b||(b="\\u"+(a.charCodeAt(0)|65536).toString(16).substr(1),Zc[a]=b);return b}),'"')}
;function ad(a){a.prototype.then=a.prototype.then;a.prototype.$goog_Thenable=!0}
function bd(a){if(!a)return!1;try{return!!a.$goog_Thenable}catch(b){return!1}}
;function H(a,b){this.b=0;this.l=void 0;this.h=this.f=this.g=null;this.i=this.j=!1;if(a!=pa)try{var c=this;a.call(b,function(a){cd(c,2,a)},function(a){cd(c,3,a)})}catch(d){cd(this,3,d)}}
function dd(){this.next=this.context=this.onRejected=this.g=this.b=null;this.f=!1}
dd.prototype.reset=function(){this.context=this.onRejected=this.g=this.b=null;this.f=!1};
var ed=new nc(function(){return new dd},function(a){a.reset()});
function fd(a,b,c){var d=ed.get();d.g=a;d.onRejected=b;d.context=c;return d}
function gd(a){return new H(function(b,c){c(a)})}
function hd(a,b,c){id(a,b,c,null)||vc(y(b,a))}
function jd(a){return new H(function(b,c){a.length||b(void 0);for(var d=0,e;d<a.length;d++)e=a[d],hd(e,b,c)})}
function kd(a){return new H(function(b){var c=a.length,d=[];if(c)for(var e=function(a,e,f){c--;d[a]=e?{Y:!0,value:f}:{Y:!1,reason:f};0==c&&b(d)},f=0,g;f<a.length;f++)g=a[f],hd(g,y(e,f,!0),y(e,f,!1));
else b(d)})}
H.prototype.then=function(a,b,c){return ld(this,ua(a)?a:null,ua(b)?b:null,c)};
ad(H);function md(a,b){var c=fd(b,b,void 0);c.f=!0;nd(a,c);return a}
function od(a,b){return ld(a,null,b,void 0)}
H.prototype.cancel=function(a){0==this.b&&vc(function(){var b=new pd(a);qd(this,b)},this)};
function qd(a,b){if(0==a.b)if(a.g){var c=a.g;if(c.f){for(var d=0,e=null,f=null,g=c.f;g&&(g.f||(d++,g.b==a&&(e=g),!(e&&1<d)));g=g.next)e||(f=g);e&&(0==c.b&&1==d?qd(c,b):(f?(d=f,d.next==c.h&&(c.h=d),d.next=d.next.next):rd(c),sd(c,e,3,b)))}a.g=null}else cd(a,3,b)}
function nd(a,b){a.f||2!=a.b&&3!=a.b||td(a);a.h?a.h.next=b:a.f=b;a.h=b}
function ld(a,b,c,d){var e=fd(null,null,null);e.b=new H(function(a,g){e.g=b?function(c){try{var e=b.call(d,c);a(e)}catch(m){g(m)}}:a;
e.onRejected=c?function(b){try{var e=c.call(d,b);!q(e)&&b instanceof pd?g(b):a(e)}catch(m){g(m)}}:g});
e.b.g=a;nd(a,e);return e.b}
H.prototype.o=function(a){this.b=0;cd(this,2,a)};
H.prototype.w=function(a){this.b=0;cd(this,3,a)};
function cd(a,b,c){0==a.b&&(a===c&&(b=3,c=new TypeError("Promise cannot resolve to itself")),a.b=1,id(c,a.o,a.w,a)||(a.l=c,a.b=b,a.g=null,td(a),3!=b||c instanceof pd||ud(a,c)))}
function id(a,b,c,d){if(a instanceof H)return nd(a,fd(b||pa,c||null,d)),!0;if(bd(a))return a.then(b,c,d),!0;if(va(a))try{var e=a.then;if(ua(e))return vd(a,e,b,c,d),!0}catch(f){return c.call(d,f),!0}return!1}
function vd(a,b,c,d,e){function f(a){h||(h=!0,d.call(e,a))}
function g(a){h||(h=!0,c.call(e,a))}
var h=!1;try{b.call(a,g,f)}catch(l){f(l)}}
function td(a){a.j||(a.j=!0,vc(a.B,a))}
function rd(a){var b=null;a.f&&(b=a.f,a.f=b.next,b.next=null);a.f||(a.h=null);return b}
H.prototype.B=function(){for(var a;a=rd(this);)sd(this,a,this.b,this.l);this.j=!1};
function sd(a,b,c,d){if(3==c&&b.onRejected&&!b.f)for(;a&&a.i;a=a.g)a.i=!1;if(b.b)b.b.g=null,wd(b,c,d);else try{b.f?b.g.call(b.context):wd(b,c,d)}catch(e){xd.call(null,e)}oc(ed,b)}
function wd(a,b,c){2==b?a.g.call(a.context,c):a.onRejected&&a.onRejected.call(a.context,c)}
function ud(a,b){a.i=!0;vc(function(){a.i&&xd.call(null,b)})}
var xd=pc;function pd(a){B.call(this,a)}
A(pd,B);pd.prototype.name="cancel";function I(a){G.call(this);this.j=1;this.h=[];this.i=0;this.b=[];this.f={};this.l=!!a}
A(I,G);k=I.prototype;k.subscribe=function(a,b,c){var d=this.f[a];d||(d=this.f[a]=[]);var e=this.j;this.b[e]=a;this.b[e+1]=b;this.b[e+2]=c;this.j=e+3;d.push(e);return e};
function yd(a,b,c,d){if(b=a.f[b]){var e=a.b;(b=Ea(b,function(a){return e[a+1]==c&&e[a+2]==d}))&&a.K(b)}}
k.K=function(a){var b=this.b[a];if(b){var c=this.f[b];0!=this.i?(this.h.push(a),this.b[a+1]=pa):(c&&Fa(c,a),delete this.b[a],delete this.b[a+1],delete this.b[a+2])}return!!b};
k.I=function(a,b){var c=this.f[a];if(c){for(var d=Array(arguments.length-1),e=1,f=arguments.length;e<f;e++)d[e-1]=arguments[e];if(this.l)for(e=0;e<c.length;e++){var g=c[e];zd(this.b[g+1],this.b[g+2],d)}else{this.i++;try{for(e=0,f=c.length;e<f;e++)g=c[e],this.b[g+1].apply(this.b[g+2],d)}finally{if(this.i--,0<this.h.length&&0==this.i)for(;c=this.h.pop();)this.K(c)}}return 0!=e}return!1};
function zd(a,b,c){vc(function(){a.apply(b,c)})}
k.clear=function(a){if(a){var b=this.f[a];b&&(C(b,this.K,this),delete this.f[a])}else this.b.length=0,this.f={}};
k.m=function(){I.u.m.call(this);this.clear();this.h.length=0};function Ad(a){this.b=a}
Ad.prototype.set=function(a,b){q(b)?this.b.set(a,Vc(b)):this.b.remove(a)};
Ad.prototype.get=function(a){try{var b=this.b.get(a)}catch(c){return}if(null!==b)try{return JSON.parse(b)}catch(c){throw"Storage: Invalid value was encountered";}};
Ad.prototype.remove=function(a){this.b.remove(a)};function Bd(a){this.b=a}
A(Bd,Ad);function Cd(a){this.data=a}
function Dd(a){return!q(a)||a instanceof Cd?a:new Cd(a)}
Bd.prototype.set=function(a,b){Bd.u.set.call(this,a,Dd(b))};
Bd.prototype.f=function(a){a=Bd.u.get.call(this,a);if(!q(a)||a instanceof Object)return a;throw"Storage: Invalid value was encountered";};
Bd.prototype.get=function(a){if(a=this.f(a)){if(a=a.data,!q(a))throw"Storage: Invalid value was encountered";}else a=void 0;return a};function Ed(a){this.b=a}
A(Ed,Bd);Ed.prototype.set=function(a,b,c){if(b=Dd(b)){if(c){if(c<z()){Ed.prototype.remove.call(this,a);return}b.expiration=c}b.creation=z()}Ed.u.set.call(this,a,b)};
Ed.prototype.f=function(a){var b=Ed.u.f.call(this,a);if(b){var c=b.creation,d=b.expiration;if(d&&d<z()||c&&c>z())Ed.prototype.remove.call(this,a);else return b}};function Fd(a){this.b=a}
A(Fd,Ed);function Gd(){}
;function Hd(){}
A(Hd,Gd);Hd.prototype.clear=function(){var a=Qc(this.D(!0)),b=this;C(a,function(a){b.remove(a)})};function Id(a){this.b=a}
A(Id,Hd);k=Id.prototype;k.isAvailable=function(){if(!this.b)return!1;try{return this.b.setItem("__sak","1"),this.b.removeItem("__sak"),!0}catch(a){return!1}};
k.set=function(a,b){try{this.b.setItem(a,b)}catch(c){if(0==this.b.length)throw"Storage mechanism: Storage disabled";throw"Storage mechanism: Quota exceeded";}};
k.get=function(a){a=this.b.getItem(a);if(!r(a)&&null!==a)throw"Storage mechanism: Invalid value was encountered";return a};
k.remove=function(a){this.b.removeItem(a)};
k.D=function(a){var b=0,c=this.b,d=new Nc;d.next=function(){if(b>=c.length)throw Mc;var d=c.key(b++);if(a)return d;d=c.getItem(d);if(!r(d))throw"Storage mechanism: Invalid value was encountered";return d};
return d};
k.clear=function(){this.b.clear()};
k.key=function(a){return this.b.key(a)};function Jd(){var a=null;try{a=window.localStorage||null}catch(b){}this.b=a}
A(Jd,Id);function Kd(){var a=null;try{a=window.sessionStorage||null}catch(b){}this.b=a}
A(Kd,Id);function Ld(a,b){this.f=a;this.b=null;if(ib&&!(9<=Number(sb))){Md||(Md=new Rc);this.b=Md.get(a);this.b||(b?this.b=document.getElementById(b):(this.b=document.createElement("userdata"),this.b.addBehavior("#default#userData"),document.body.appendChild(this.b)),Md.set(a,this.b));try{this.b.load(this.f)}catch(c){this.b=null}}}
A(Ld,Hd);var Nd={".":".2E","!":".21","~":".7E","*":".2A","'":".27","(":".28",")":".29","%":"."},Md=null;function Od(a){return"_"+encodeURIComponent(a).replace(/[.!~*'()%]/g,function(a){return Nd[a]})}
k=Ld.prototype;k.isAvailable=function(){return!!this.b};
k.set=function(a,b){this.b.setAttribute(Od(a),b);Pd(this)};
k.get=function(a){a=this.b.getAttribute(Od(a));if(!r(a)&&null!==a)throw"Storage mechanism: Invalid value was encountered";return a};
k.remove=function(a){this.b.removeAttribute(Od(a));Pd(this)};
k.D=function(a){var b=0,c=this.b.XMLDocument.documentElement.attributes,d=new Nc;d.next=function(){if(b>=c.length)throw Mc;var d=c[b++];if(a)return decodeURIComponent(d.nodeName.replace(/\./g,"%")).substr(1);d=d.nodeValue;if(!r(d))throw"Storage mechanism: Invalid value was encountered";return d};
return d};
k.clear=function(){for(var a=this.b.XMLDocument.documentElement,b=a.attributes.length;0<b;b--)a.removeAttribute(a.attributes[b-1].nodeName);Pd(this)};
function Pd(a){try{a.b.save(a.f)}catch(b){throw"Storage mechanism: Quota exceeded";}}
;function Qd(a,b){this.f=a;this.b=b+"::"}
A(Qd,Hd);Qd.prototype.set=function(a,b){this.f.set(this.b+a,b)};
Qd.prototype.get=function(a){return this.f.get(this.b+a)};
Qd.prototype.remove=function(a){this.f.remove(this.b+a)};
Qd.prototype.D=function(a){var b=this.f.D(!0),c=this,d=new Nc;d.next=function(){for(var d=b.next();d.substr(0,c.b.length)!=c.b;)d=b.next();return a?d.substr(c.b.length):c.f.get(d)};
return d};function Rd(a){if(!ua(a))if(a&&"function"==typeof a.handleEvent)a=x(a.handleEvent,a);else throw Error("Invalid listener argument");return 2147483647<Number(5E3)?-1:p.setTimeout(a,5E3)}
function Td(){var a=null;return od(new H(function(b,c){a=Rd(function(){b(void 0)});
-1==a&&c(Error("Failed to schedule timer."))}),function(b){p.clearTimeout(a);
throw b;})}
;var Ud=/^(?:([^:/?#.]+):)?(?:\/\/(?:([^/?#]*)@)?([^/#?]*?)(?::([0-9]+))?(?=[/#?]|$))?([^?#]+)?(?:\?([^#]*))?(?:#([\s\S]*))?$/;function J(a){return a.match(Ud)}
function Vd(a){return a?decodeURI(a):a}
function Wd(a,b,c){if(w(b))for(var d=0;d<b.length;d++)Wd(a,String(b[d]),c);else null!=b&&c.push(a+(""===b?"":"="+encodeURIComponent(String(b))))}
function Xd(a){var b=[],c;for(c in a)Wd(c,a[c],b);return b.join("&")}
function Yd(a,b){var c=Xd(b);if(c){var d=a.indexOf("#");0>d&&(d=a.length);var e=a.indexOf("?");if(0>e||e>d){e=d;var f=""}else f=a.substring(e+1,d);d=[a.substr(0,e),f,a.substr(d)];e=d[1];d[1]=c?e?e+"&"+c:c:e;c=d[0]+(d[1]?"?"+d[1]:"")+d[2]}else c=a;return c}
;function Zd(a,b,c){var d="script";d=void 0===d?"":d;var e=a.createElement("link");Hb(e,b,"preload");d&&(e.as=d);c&&(e.nonce=c);if(a=a.getElementsByTagName("head")[0])try{a.appendChild(e)}catch(f){}}
;var $d=/^\.google\.(com?\.)?[a-z]{2,3}$/,ae=/\.(cn|com\.bi|do|sl|ba|by|ma)$/;function be(a){return $d.test(a)&&!ae.test(a)}
var ce=p;function de(a){a="https://"+("adservice"+a+"/adsid/integrator.js");var b=["domain="+encodeURIComponent(p.location.hostname)];K[3]>=z()&&b.push("adsid="+encodeURIComponent(K[1]));return a+"?"+b.join("&")}
var K,L;function ee(){ce=p;K=ce.googleToken=ce.googleToken||{};var a=z();K[1]&&K[3]>a&&0<K[2]||(K[1]="",K[2]=-1,K[3]=-1,K[4]="",K[6]="");L=ce.googleIMState=ce.googleIMState||{};be(L[1])||(L[1]=".google.com");w(L[5])||(L[5]=[]);la(L[6])||(L[6]=!1);w(L[7])||(L[7]=[]);ma(L[8])||(L[8]=0)}
function fe(){ee();return K[1]}
var M={ca:function(){return 0<L[8]},
Oa:function(){L[8]++},
Pa:function(){0<L[8]&&L[8]--},
Qa:function(){L[8]=0},
shouldRetry:function(){return!1},
la:function(){return L[5]},
ja:function(a){try{a()}catch(b){p.setTimeout(function(){throw b;},0)}},
ha:function(){if(!M.ca()){var a=p.document,b=function(b){b=de(b);a:{try{var c=Vb();break a}catch(h){}c=void 0}var d=c;Zd(a,b,d);c=a.createElement("script");c.type="text/javascript";d&&(c.nonce=d);c.onerror=function(){return p.processGoogleToken({},2)};
b=Sb(b);Ib(c,b);try{(a.head||a.body||a.documentElement).appendChild(c),M.Oa()}catch(h){}},c=L[1];
b(c);".google.com"!=c&&b(".google.com");b={};var d=(b.newToken="FBT",b);p.setTimeout(function(){return p.processGoogleToken(d,1)},1E3)}}};
function ge(a){ee();var b=ce.googleToken[5]||0;a&&(0!=b||K[3]>=z()?M.ja(a):(M.la().push(a),M.ha()));K[3]>=z()&&K[2]>=z()||M.ha()}
function he(a){p.processGoogleToken=p.processGoogleToken||function(a,c){var b=a,e=c;b=void 0===b?{}:b;e=void 0===e?0:e;var f=b.newToken||"",g="NT"==f,h=parseInt(b.freshLifetimeSecs||"",10),l=parseInt(b.validLifetimeSecs||"",10),m=b["1p_jar"]||"";b=b.pucrd||"";ee();1==e?M.Qa():M.Pa();if(!f&&M.shouldRetry())be(".google.com")&&(L[1]=".google.com"),M.ha();else{var t=ce.googleToken=ce.googleToken||{},N=0==e&&f&&r(f)&&!g&&ma(h)&&0<h&&ma(l)&&0<l&&r(m);g=g&&!M.ca()&&(!(K[3]>=z())||"NT"==K[1]);var Ga=!(K[3]>=
z())&&0!=e;if(N||g||Ga)g=z(),h=g+1E3*h,l=g+1E3*l,1E-5>Math.random()&&ec("https://pagead2.googlesyndication.com/pagead/gen_204?id=imerr&err="+e),t[5]=e,t[1]=f,t[2]=h,t[3]=l,t[4]=m,t[6]=b,ee();if(N||!M.ca()){e=M.la();for(f=0;f<e.length;f++)M.ja(e[f]);e.length=0}}};
ge(a)}
;function ie(a,b){if(1<b.length)a[b[0]]=b[1];else{var c=b[0],d;for(d in c)a[d]=c[d]}}
var O=window.performance&&window.performance.timing&&window.performance.now?function(){return window.performance.timing.navigationStart+window.performance.now()}:function(){return(new Date).getTime()};var je=window.yt&&window.yt.config_||window.ytcfg&&window.ytcfg.data_||{};u("yt.config_",je,void 0);function P(a){ie(je,arguments)}
function Q(a,b){return a in je?je[a]:b}
function ke(a){return Q(a,void 0)}
function le(){return Q("PLAYER_CONFIG",{})}
;function me(a){return a&&window.yterr?function(){try{return a.apply(this,arguments)}catch(b){R(b)}}:a}
function R(a,b,c,d,e){var f=v("yt.logging.errors.log");f?f(a,b,c,d,e):(f=Q("ERRORS",[]),f.push([a,b,c,d,e]),P("ERRORS",f))}
;function S(a){return Q("EXPERIMENT_FLAGS",{})[a]}
;function ne(a){a&&(a.dataset?a.dataset[oe("loaded")]="true":a.setAttribute("data-loaded","true"))}
function pe(a,b){return a?a.dataset?a.dataset[oe(b)]:a.getAttribute("data-"+b):null}
var qe={};function oe(a){return qe[a]||(qe[a]=String(a).replace(/\-([a-z])/g,function(a,c){return c.toUpperCase()}))}
;function T(a,b){ua(a)&&(a=me(a));return window.setTimeout(a,b)}
function re(a){window.clearTimeout(a)}
;var se=v("ytPubsubPubsubInstance")||new I;I.prototype.subscribe=I.prototype.subscribe;I.prototype.unsubscribeByKey=I.prototype.K;I.prototype.publish=I.prototype.I;I.prototype.clear=I.prototype.clear;u("ytPubsubPubsubInstance",se,void 0);var te=v("ytPubsubPubsubSubscribedKeys")||{};u("ytPubsubPubsubSubscribedKeys",te,void 0);var ue=v("ytPubsubPubsubTopicToKeys")||{};u("ytPubsubPubsubTopicToKeys",ue,void 0);var ve=v("ytPubsubPubsubIsSynchronous")||{};u("ytPubsubPubsubIsSynchronous",ve,void 0);
function we(a,b){var c=xe();if(c){var d=c.subscribe(a,function(){var c=arguments;var f=function(){te[d]&&b.apply(window,c)};
try{ve[a]?f():T(f,0)}catch(g){R(g)}},void 0);
te[d]=!0;ue[a]||(ue[a]=[]);ue[a].push(d);return d}return 0}
function ye(a){var b=xe();b&&(ma(a)?a=[a]:r(a)&&(a=[parseInt(a,10)]),C(a,function(a){b.unsubscribeByKey(a);delete te[a]}))}
function ze(a,b){var c=xe();c&&c.publish.apply(c,arguments)}
function Ae(a){var b=xe();if(b)if(b.clear(a),a)Be(a);else for(var c in ue)Be(c)}
function xe(){return v("ytPubsubPubsubInstance")}
function Be(a){ue[a]&&(a=ue[a],C(a,function(a){te[a]&&delete te[a]}),a.length=0)}
;var Ce=/\.vflset|-vfl[a-zA-Z0-9_+=-]+/,De=/-[a-zA-Z]{2,3}_[a-zA-Z]{2,3}(?=(\/|$))/;function Ee(a,b){if(window.spf){var c="";if(a){var d=a.indexOf("jsbin/"),e=a.lastIndexOf(".js"),f=d+6;-1<d&&-1<e&&e>f&&(c=a.substring(f,e),c=c.replace(Ce,""),c=c.replace(De,""),c=c.replace("debug-",""),c=c.replace("tracing-",""))}spf.script.load(a,c,b)}else Fe(a,b)}
function Fe(a,b){var c=Ge(a),d=document.getElementById(c),e=d&&pe(d,"loaded"),f=d&&!e;if(e)b&&b();else{if(b){e=we(c,b);var g=""+(b[wa]||(b[wa]=++xa));He[g]=e}f||(d=Ie(a,c,function(){pe(d,"loaded")||(ne(d),ze(c),T(y(Ae,c),0))}))}}
function Ie(a,b,c){var d=document.createElement("SCRIPT");d.id=b;d.onload=function(){c&&setTimeout(c,0)};
d.onreadystatechange=function(){switch(d.readyState){case "loaded":case "complete":d.onload()}};
Ib(d,Sb(a));a=document.getElementsByTagName("head")[0]||document.body;a.insertBefore(d,a.firstChild);return d}
function Je(a){a=Ge(a);var b=document.getElementById(a);b&&(Ae(a),b.parentNode.removeChild(b))}
function Ke(a,b){if(a&&b){var c=""+(b[wa]||(b[wa]=++xa));(c=He[c])&&ye(c)}}
function Ge(a){var b=document.createElement("a");Gb(b,a);a=b.href.replace(/^[a-zA-Z]+:\/\//,"//");return"js-"+Ua(a)}
var He={};function Le(){this.b=null}
Le.prototype.initialize=function(a,b,c,d){b?Ee(b,function(){window.botguard?Me(this,c,d):(Je(b),R(Error("Unable to load Botguard from "+b),"WARNING"))}.bind(this)):a&&(eval(a),window.botguard?Me(this,c,d):R(Error("Unable to load Botguard from JS"),"WARNING"))};
function Me(a,b,c){a.b=new window.botguard.bg(b);c&&c(b)}
Le.prototype.invoke=function(){return this.b?this.b.invoke():null};
Le.prototype.dispose=function(){this.b=null};
var Ne=new Le;function Oe(){S("botguard_periodic_refresh")&&O()}
function Pe(){return null!==Ne.b}
function Qe(){return Ne.invoke()}
;z();var Re=q(XMLHttpRequest)?function(){return new XMLHttpRequest}:q(ActiveXObject)?function(){return new ActiveXObject("Microsoft.XMLHTTP")}:null;
function Se(){if(!Re)return null;var a=Re();return"open"in a?a:null}
function Te(a){switch(a&&"status"in a?a.status:-1){case 200:case 201:case 202:case 203:case 204:case 205:case 206:case 304:return!0;default:return!1}}
;function Ue(a){"?"==a.charAt(0)&&(a=a.substr(1));a=a.split("&");for(var b={},c=0,d=a.length;c<d;c++){var e=a[c].split("=");if(1==e.length&&e[0]||2==e.length){var f=decodeURIComponent((e[0]||"").replace(/\+/g," "));e=decodeURIComponent((e[1]||"").replace(/\+/g," "));f in b?w(b[f])?Ja(b[f],e):b[f]=[b[f],e]:b[f]=e}}return b}
;var Ve={"X-Goog-Visitor-Id":"SANDBOXED_VISITOR_ID","X-YouTube-Client-Name":"INNERTUBE_CONTEXT_CLIENT_NAME","X-YouTube-Client-Version":"INNERTUBE_CONTEXT_CLIENT_VERSION","X-Youtube-Identity-Token":"ID_TOKEN","X-YouTube-Page-CL":"PAGE_CL","X-YouTube-Page-Label":"PAGE_BUILD_LABEL","X-YouTube-Variants-Checksum":"VARIANTS_CHECKSUM"},We=!1;
function Xe(a,b){b=void 0===b?{}:b;if(!c)var c=window.location.href;var d=J(a)[1]||null,e=Vd(J(a)[3]||null);d&&e?(d=c,c=J(a),d=J(d),c=c[3]==d[3]&&c[1]==d[1]&&c[4]==d[4]):c=e?Vd(J(c)[3]||null)==e&&(Number(J(c)[4]||null)||null)==(Number(J(a)[4]||null)||null):!0;for(var f in Ve){if((e=d=Q(Ve[f]))&&!(e=c)){e=f;var g=Q("CORS_HEADER_WHITELIST")||{},h=Vd(J(a)[3]||null);e=h?(g=g[h])?0<=Ba(g,e):!1:!0}e&&(b[f]=d)}return b}
function Ye(a,b){if(window.fetch&&"XML"!=b.format){var c={method:b.method||"GET",credentials:"same-origin"};b.headers&&(c.headers=b.headers);a=Ze(a,b);var d=$e(a,b);d&&(c.body=d);b.withCredentials&&(c.credentials="include");var e=!1,f;fetch(a,c).then(function(a){if(!e){e=!0;f&&re(f);var c=a.ok,d=function(d){d=d||{};var e=b.context||p;c?b.onSuccess&&b.onSuccess.call(e,d,a):b.onError&&b.onError.call(e,d,a);b.ga&&b.ga.call(e,d,a)};
"JSON"==(b.format||"JSON")&&(c||400<=a.status&&500>a.status)?a.json().then(d,function(){d(null)}):d(null)}});
b.na&&0<b.timeout&&(f=T(function(){e||(e=!0,re(f),b.na.call(b.context||p))},b.timeout))}else af(a,b)}
function af(a,b){var c=b.format||"JSON";a=Ze(a,b);var d=$e(a,b),e=!1,f,g=bf(a,function(a){if(!e){e=!0;f&&re(f);var d=Te(a),g=null;if(d||400<=a.status&&500>a.status)g=cf(c,a,b.qb);if(d)a:if(a&&204==a.status)d=!0;else{switch(c){case "XML":d=0==parseInt(g&&g.return_code,10);break a;case "RAW":d=!0;break a}d=!!g}g=g||{};var h=b.context||p;d?b.onSuccess&&b.onSuccess.call(h,a,g):b.onError&&b.onError.call(h,a,g);b.ga&&b.ga.call(h,a,g)}},b.method,d,b.headers,b.responseType,b.withCredentials);
b.L&&0<b.timeout&&(f=T(function(){e||(e=!0,g.abort(),re(f),b.L.call(b.context||p,g))},b.timeout));
return g}
function Ze(a,b){b.Ba&&(a=document.location.protocol+"//"+document.location.hostname+(document.location.port?":"+document.location.port:"")+a);var c=Q("XSRF_FIELD_NAME",void 0),d=b.ab;if(d){d[c]&&delete d[c];d=d||{};var e=a.split("#",2);c=e[0];e=1<e.length?"#"+e[1]:"";var f=c.split("?",2);c=f[0];f=Ue(f[1]||"");for(var g in d)f[g]=d[g];a=Yd(c,f)+e}return a}
function $e(a,b){var c=Q("XSRF_FIELD_NAME",void 0),d=Q("XSRF_TOKEN",void 0),e=b.postBody||"",f=b.A,g=ke("XSRF_FIELD_NAME"),h;b.headers&&(h=b.headers["Content-Type"]);b.rb||Vd(J(a)[3]||null)&&!b.withCredentials&&Vd(J(a)[3]||null)!=document.location.hostname||"POST"!=b.method||h&&"application/x-www-form-urlencoded"!=h||b.A&&b.A[g]||(f||(f={}),f[c]=d);f&&r(e)&&(e=Ue(e),gb(e,f),e=b.oa&&"JSON"==b.oa?JSON.stringify(e):Xd(e));f=e||f&&!bb(f);!We&&f&&"POST"!=b.method&&(We=!0,R(Error("AJAX request with postData should use POST")));
return e}
function cf(a,b,c){var d=null;switch(a){case "JSON":a=b.responseText;b=b.getResponseHeader("Content-Type")||"";a&&0<=b.indexOf("json")&&(d=JSON.parse(a));break;case "XML":if(b=(b=b.responseXML)?df(b):null)d={},C(b.getElementsByTagName("*"),function(a){d[a.tagName]=ef(a)})}c&&ff(d);
return d}
function ff(a){if(va(a))for(var b in a){var c;(c="html_content"==b)||(c=b.length-5,c=0<=c&&b.indexOf("_html",c)==c);if(c){c=b;var d=Fb(a[b],null);a[c]=d}else ff(a[b])}}
function df(a){return a?(a=("responseXML"in a?a.responseXML:a).getElementsByTagName("root"))&&0<a.length?a[0]:null:null}
function ef(a){var b="";C(a.childNodes,function(a){b+=a.nodeValue});
return b}
function gf(a,b){b.method="POST";b.A||(b.A={});af(a,b)}
function bf(a,b,c,d,e,f,g){function h(){4==(l&&"readyState"in l?l.readyState:0)&&b&&me(b)(l)}
c=void 0===c?"GET":c;d=void 0===d?"":d;var l=Se();if(!l)return null;"onloadend"in l?l.addEventListener("loadend",h,!1):l.onreadystatechange=h;l.open(c,a,!0);f&&(l.responseType=f);g&&(l.withCredentials=!0);c="POST"==c&&(void 0===window.FormData||!(d instanceof FormData));if(e=Xe(a,e))for(var m in e)l.setRequestHeader(m,e[m]),"content-type"==m.toLowerCase()&&(c=!1);c&&l.setRequestHeader("Content-Type","application/x-www-form-urlencoded");l.send(d);return l}
;var hf={},jf=0;
function kf(a,b,c,d,e){e=void 0===e?"":e;a&&(c&&(c=Va,c=!(c&&0<=c.toLowerCase().indexOf("cobalt"))),c?a&&(a instanceof E||(a=a.J?a.H():String(a),Ab.test(a)||(a="about:invalid#zClosurez"),a=Cb(a)),b=zb(a),"about:invalid#zClosurez"===b?a="":(b instanceof Db?a=b:(a=null,b.da&&(a=b.Z()),b=La(b.J?b.H():String(b)),a=Fb(b,a)),a=encodeURIComponent(String(Vc(a instanceof Db&&a.constructor===Db&&a.g===Eb?a.b:"type_error:SafeHtml")))),/^[\s\xa0]*$/.test(a)||(a=Ob("IFRAME",{src:'javascript:"<body><img src=\\""+'+a+
'+"\\"></body>"',style:"display:none"}),(9==a.nodeType?a:a.ownerDocument||a.document).body.appendChild(a))):e?bf(a,b,"POST",e,d):Q("USE_NET_AJAX_FOR_PING_TRANSPORT",!1)||d?bf(a,b,"GET","",d):lf(a,b))}
function lf(a,b){var c=new Image,d=""+jf++;hf[d]=c;c.onload=c.onerror=function(){b&&hf[d]&&b();delete hf[d]};
c.src=a}
;var mf={},nf=0;
function of(a,b,c,d,e,f){f=f||{};f.name=c||Q("INNERTUBE_CONTEXT_CLIENT_NAME",1);f.version=d||Q("INNERTUBE_CONTEXT_CLIENT_VERSION",void 0);b=void 0===b?"ERROR":b;e=void 0===e?!1:e;b=void 0===b?"ERROR":b;e=window&&window.yterr||(void 0===e?!1:e)||!1;if(a&&e&&!(5<=nf)){e=a.stacktrace;c=a.columnNumber;a.hasOwnProperty("params")&&(f.params=JSON.stringify(a.params));d=v("window.location.href");if(r(a))a={message:a,name:"Unknown error",lineNumber:"Not available",fileName:d,stack:"Not available"};else{var g=
!1;try{var h=a.lineNumber||a.line||"Not available"}catch(N){h="Not available",g=!0}try{var l=a.fileName||a.filename||a.sourceURL||p.$googDebugFname||d}catch(N){l="Not available",g=!0}a=!g&&a.lineNumber&&a.fileName&&a.stack&&a.message&&a.name?a:{message:a.message||"Not available",name:a.name||"UnknownError",lineNumber:h,fileName:l,stack:a.stack||"Not available"}}e=e||a.stack;h=a.lineNumber.toString();isNaN(h)||isNaN(c)||(h=h+":"+c);if(!(mf[a.message]||0<=e.indexOf("/YouTubeCenter.js")||0<=e.indexOf("/mytube.js"))){l=
e;h={ab:{a:"logerror",t:"jserror",type:a.name,msg:a.message.substr(0,1E3),line:h,level:b,"client.name":f.name},A:{url:Q("PAGE_NAME",window.location.href),file:a.fileName},method:"POST"};f.version&&(h["client.version"]=f.version);l&&(h.A.stack=l);for(var m in f)h.A["client."+m]=f[m];if(m=Q("LATEST_ECATCHER_SERVICE_TRACKING_PARAMS",void 0))for(var t in m)h.A[t]=m[t];af(Q("ECATCHER_REPORT_HOST","")+"/error_204",h);mf[a.message]=!0;nf++}}}
;var pf=window.yt&&window.yt.msgs_||window.ytcfg&&window.ytcfg.msgs||{};u("yt.msgs_",pf,void 0);function qf(a){ie(pf,arguments)}
;function rf(){}
function sf(a,b){return tf(a,1,b)}
;function uf(){}
n(uf,rf);function tf(a,b,c){isNaN(c)&&(c=void 0);var d=v("yt.scheduler.instance.addJob");return d?d(a,b,c):void 0===c?(a(),NaN):T(a,c||0)}
function vf(a){if(!isNaN(a)){var b=v("yt.scheduler.instance.cancelJob");b?b(a):re(a)}}
uf.prototype.start=function(){var a=v("yt.scheduler.instance.start");a&&a()};
uf.prototype.pause=function(){var a=v("yt.scheduler.instance.pause");a&&a()};
qa(uf);uf.getInstance();var wf=[],xf=!1;function yf(){if("1"!=Za(le(),"args","privembed")){var a=function(){xf=!0;"google_ad_status"in window?P("DCLKSTAT",1):P("DCLKSTAT",2)};
Ee("//static.doubleclick.net/instream/ad_status.js",a);wf.push(sf(function(){xf||"google_ad_status"in window||(Ke("//static.doubleclick.net/instream/ad_status.js",a),P("DCLKSTAT",3))},5E3))}}
function zf(){return parseInt(Q("DCLKSTAT",0),10)}
;var Af=0;u("ytDomDomGetNextId",v("ytDomDomGetNextId")||function(){return++Af},void 0);var Bf={stopImmediatePropagation:1,stopPropagation:1,preventMouseEvent:1,preventManipulation:1,preventDefault:1,layerX:1,layerY:1,screenX:1,screenY:1,scale:1,rotation:1,webkitMovementX:1,webkitMovementY:1};
function Cf(a){this.type="";this.state=this.source=this.data=this.currentTarget=this.relatedTarget=this.target=null;this.charCode=this.keyCode=0;this.metaKey=this.shiftKey=this.ctrlKey=this.altKey=!1;this.clientY=this.clientX=0;this.changedTouches=this.touches=null;if(a=a||window.event){this.event=a;for(var b in a)b in Bf||(this[b]=a[b]);(b=a.target||a.srcElement)&&3==b.nodeType&&(b=b.parentNode);this.target=b;if(b=a.relatedTarget)try{b=b.nodeName?b:null}catch(c){b=null}else"mouseover"==this.type?
b=a.fromElement:"mouseout"==this.type&&(b=a.toElement);this.relatedTarget=b;this.clientX=void 0!=a.clientX?a.clientX:a.pageX;this.clientY=void 0!=a.clientY?a.clientY:a.pageY;this.keyCode=a.keyCode?a.keyCode:a.which;this.charCode=a.charCode||("keypress"==this.type?this.keyCode:0);this.altKey=a.altKey;this.ctrlKey=a.ctrlKey;this.shiftKey=a.shiftKey;this.metaKey=a.metaKey;this.b=a.pageX;this.f=a.pageY}}
function Df(a){if(document.body&&document.documentElement){var b=document.body.scrollTop+document.documentElement.scrollTop;a.b=a.clientX+(document.body.scrollLeft+document.documentElement.scrollLeft);a.f=a.clientY+b}}
Cf.prototype.preventDefault=function(){this.event&&(this.event.returnValue=!1,this.event.preventDefault&&this.event.preventDefault())};
Cf.prototype.stopPropagation=function(){this.event&&(this.event.cancelBubble=!0,this.event.stopPropagation&&this.event.stopPropagation())};
Cf.prototype.stopImmediatePropagation=function(){this.event&&(this.event.cancelBubble=!0,this.event.stopImmediatePropagation&&this.event.stopImmediatePropagation())};var ab=v("ytEventsEventsListeners")||{};u("ytEventsEventsListeners",ab,void 0);var Ef=v("ytEventsEventsCounter")||{count:0};u("ytEventsEventsCounter",Ef,void 0);
function Ff(a,b,c,d){d=void 0===d?{}:d;a.addEventListener&&("mouseenter"!=b||"onmouseenter"in document?"mouseleave"!=b||"onmouseenter"in document?"mousewheel"==b&&"MozBoxSizing"in document.documentElement.style&&(b="MozMousePixelScroll"):b="mouseout":b="mouseover");return $a(function(e){var f=la(e[4])&&e[4]==!!d,g=va(e[4])&&va(d)&&db(e[4],d);return!!e.length&&e[0]==a&&e[1]==b&&e[2]==c&&(f||g)})}
var Gf=Rb(function(){var a=!1;try{var b=Object.defineProperty({},"capture",{get:function(){a=!0}});
window.addEventListener("test",null,b)}catch(c){}return a});
function V(a,b,c,d){d=void 0===d?{}:d;if(!a||!a.addEventListener&&!a.attachEvent)return"";var e=Ff(a,b,c,d);if(e)return e;e=++Ef.count+"";var f=!("mouseenter"!=b&&"mouseleave"!=b||!a.addEventListener||"onmouseenter"in document);var g=f?function(d){d=new Cf(d);if(!Qb(d.relatedTarget,function(b){return b==a}))return d.currentTarget=a,d.type=b,c.call(a,d)}:function(b){b=new Cf(b);
b.currentTarget=a;return c.call(a,b)};
g=me(g);a.addEventListener?("mouseenter"==b&&f?b="mouseover":"mouseleave"==b&&f?b="mouseout":"mousewheel"==b&&"MozBoxSizing"in document.documentElement.style&&(b="MozMousePixelScroll"),Gf()||la(d)?a.addEventListener(b,g,d):a.addEventListener(b,g,!!d.capture)):a.attachEvent("on"+b,g);ab[e]=[a,b,c,g,d];return e}
function Hf(a){a&&("string"==typeof a&&(a=[a]),C(a,function(a){if(a in ab){var b=ab[a],d=b[0],e=b[1],f=b[3];b=b[4];d.removeEventListener?Gf()||la(b)?d.removeEventListener(e,f,b):d.removeEventListener(e,f,!!b.capture):d.detachEvent&&d.detachEvent("on"+e,f);delete ab[a]}}))}
;function If(a){this.o=a;this.b=null;this.i=0;this.l=null;this.j=0;this.f=[];for(a=0;4>a;a++)this.f.push(0);this.h=0;this.C=V(window,"mousemove",x(this.F,this));a=x(this.w,this);ua(a)&&(a=me(a));this.G=window.setInterval(a,25)}
A(If,G);If.prototype.F=function(a){q(a.b)||Df(a);var b=a.b;q(a.f)||Df(a);this.b=new Jb(b,a.f)};
If.prototype.w=function(){if(this.b){var a=O();if(0!=this.i){var b=this.l,c=this.b,d=b.x-c.x;b=b.y-c.y;d=Math.sqrt(d*d+b*b)/(a-this.i);this.f[this.h]=.5<Math.abs((d-this.j)/this.j)?1:0;for(c=b=0;4>c;c++)b+=this.f[c]||0;3<=b&&this.o();this.j=d}this.i=a;this.l=this.b;this.h=(this.h+1)%4}};
If.prototype.m=function(){window.clearInterval(this.G);Hf(this.C)};var Jf={};
function Kf(a){var b=void 0===a?{}:a;a=void 0===b.Ca?!0:b.Ca;b=void 0===b.Ma?!1:b.Ma;if(null==v("_lact",window)){var c=parseInt(Q("LACT"),10);c=isFinite(c)?z()-Math.max(c,0):-1;u("_lact",c,window);u("_fact",c,window);-1==c&&Lf();V(document,"keydown",Lf);V(document,"keyup",Lf);V(document,"mousedown",Lf);V(document,"mouseup",Lf);a&&(b?V(window,"touchmove",function(){Mf("touchmove",200)},{passive:!0}):(V(window,"resize",function(){Mf("resize",200)}),V(window,"scroll",function(){Mf("scroll",200)})));
new If(function(){Mf("mouse",100)});
V(document,"touchstart",Lf,{passive:!0});V(document,"touchend",Lf,{passive:!0})}}
function Mf(a,b){Jf[a]||(Jf[a]=!0,sf(function(){Lf();Jf[a]=!1},b))}
function Lf(){null==v("_lact",window)&&Kf();var a=z();u("_lact",a,window);-1==v("_fact",window)&&u("_fact",a,window);(a=v("ytglobal.ytUtilActivityCallback_"))&&a()}
function Nf(){var a=v("_lact",window);return null==a?-1:Math.max(z()-a,0)}
;var Of=Math.pow(2,16)-1,Pf={log_event:"events",log_interaction:"interactions"},Qf=Object.create(null);Qf.log_event="GENERIC_EVENT_LOGGING";Qf.log_interaction="INTERACTION_LOGGING";var Rf={},Sf=0,W=v("ytLoggingTransportLogPayloadsQueue_")||{};u("ytLoggingTransportLogPayloadsQueue_",W,void 0);var Tf=v("ytLoggingTransportTokensToCttTargetIds_")||{};u("ytLoggingTransportTokensToCttTargetIds_",Tf,void 0);var Uf=v("ytLoggingTransportDispatchedStats_")||{};u("ytLoggingTransportDispatchedStats_",Uf,void 0);
u("ytytLoggingTransportCapturedTime_",v("ytLoggingTransportCapturedTime_")||{},void 0);function Vf(a,b){if(a.V){var c=a.V;var d={};c.videoId?d.videoId=c.videoId:c.playlistId&&(d.playlistId=c.playlistId);Tf[a.V.token]=d;c=Wf(a.endpoint,a.V.token)}else c=Wf(a.endpoint);c.push(a.payload);Rf[a.endpoint]=new b;c.length>=(Number(S("web_logging_max_batch")||0)||20)?Xf():Yf()}
function Xf(){re(Sf);if(!bb(W)){for(var a in W){var b=Rf[a];if(b){var c=void 0,d=a,e=b,f=Pf[d],g=Uf[d]||{};Uf[d]=g;b=Math.round(O());for(c in W[d]){var h=e.b;h={client:{hl:h.Fa,gl:h.Ea,clientName:h.Da,clientVersion:h.innertubeContextClientVersion}};var l=window.devicePixelRatio;l&&1!=l&&(h.client.screenDensityFloat=String(l));Q("DELEGATED_SESSION_ID")&&(h.user={onBehalfOfUser:Q("DELEGATED_SESSION_ID")});h={context:h};h[f]=Wf(d,c);g.dispatchedEventCount=g.dispatchedEventCount||0;g.dispatchedEventCount+=
h[f].length;if(l=Tf[c])a:{var m=h,t=c;if(l.videoId)var N="VIDEO";else if(l.playlistId)N="PLAYLIST";else break a;m.credentialTransferTokenTargetId=l;m.context=m.context||{};m.context.user=m.context.user||{};m.context.user.credentialTransferTokens=[{token:t,scope:N}]}delete Tf[c];l=h;l.requestTimeMs=b;(N=Q("EVENT_ID",void 0))&&S("enable_gel_web_client_event_id")&&(m=(Q("BATCH_CLIENT_COUNTER",void 0)||0)+1,m>Of&&(m=1),P("BATCH_CLIENT_COUNTER",m),l.serializedClientEventId={serializedEventId:N,clientCounter:m});
Zf(e,d,h,{retry:!0})}c=g;d=b;c.previousDispatchMs&&(b=d-c.previousDispatchMs,e=c.diffCount||0,c.averageTimeBetweenDispatchesMs=e?(c.averageTimeBetweenDispatchesMs*e+b)/(e+1):b,c.diffCount=e+1);c.previousDispatchMs=d;delete W[a]}}bb(W)||Yf()}}
function Yf(){re(Sf);Sf=T(Xf,Q("LOGGING_BATCH_TIMEOUT",1E4))}
function Wf(a,b){b=void 0===b?"":b;W[a]=W[a]||{};W[a][b]=W[a][b]||[];return W[a][b]}
;function $f(a,b,c,d){var e=ag,f={};f.eventTimeMs=Math.round(c||O());f[a]=b;f.context={lastActivityMs:String(c?-1:Nf())};Vf({endpoint:"log_event",payload:f,V:d},e)}
;function bg(a){var b={"X-Goog-Visitor-Id":Q("VISITOR_DATA","")},c;a?c="Bearer "+v("gapi.auth.getToken")().nb:c=mc([]);c&&(b.Authorization=c,b["X-Goog-AuthUser"]=Q("SESSION_INDEX",0));return b}
function cg(a){a=Object.assign({},a);delete a.Authorization;var b=mc();if(b){var c=new Ec;c.update(Q("INNERTUBE_API_KEY",void 0));c.update(b);b=c.digest();if(!Bc)for(Bc={},Cc={},c=0;65>c;c++)Bc[c]="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=".charAt(c),Cc[c]="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_.".charAt(c);c=Cc;for(var d=[],e=0;e<b.length;e+=3){var f=b[e],g=e+1<b.length,h=g?b[e+1]:0,l=e+2<b.length,m=l?b[e+2]:0,t=f>>2;f=(f&3)<<4|h>>4;h=(h&15)<<2|m>>
6;m&=63;l||(m=64,g||(h=64));d.push(c[t],c[f],c[h],c[m])}a.hash=d.join("")}return a}
;function dg(a,b,c,d){lc.set(""+a,b,c,"/",void 0===d?"youtube.com":d,!1)}
;function eg(){var a=new Jd;(a=a.isAvailable()?new Qd(a,"yt.innertube"):null)||(a=new Ld("yt.innertube"),a=a.isAvailable()?a:null);this.b=a?new Ed(a):null;this.f=document.domain||window.location.hostname}
eg.prototype.set=function(a,b,c,d){c=c||31104E3;this.remove(a);if(this.b)try{this.b.set(a,b,z()+1E3*c);return}catch(f){}var e="";if(d)try{e=escape(Vc(b))}catch(f){return}else e=escape(b);dg(a,e,c,this.f)};
eg.prototype.get=function(a,b){var c=void 0,d=!this.b;if(!d)try{c=this.b.get(a)}catch(e){d=!0}if(d&&(c=lc.get(""+a,void 0))&&(c=unescape(c),b))try{c=JSON.parse(c)}catch(e){this.remove(a),c=void 0}return c};
eg.prototype.remove=function(a){this.b&&this.b.remove(a);var b=this.f;lc.remove(""+a,"/",void 0===b?"youtube.com":b)};var fg=new eg;function gg(a,b,c,d){if(d)return null;d=fg.get("nextId",!0)||1;var e=fg.get("requests",!0)||{};e[d]={method:a,request:b,authState:cg(c),requestTime:Math.round(O())};fg.set("nextId",d+1,86400,!0);fg.set("requests",e,86400,!0);return d}
function hg(a){var b=fg.get("requests",!0)||{};delete b[a];fg.set("requests",b,86400,!0)}
function ig(a){var b=fg.get("requests",!0);if(b){for(var c in b){var d=b[c];if(!(6E4>Math.round(O())-d.requestTime)){var e=d.authState,f=cg(bg(!1));db(e,f)&&(e=d.request,"requestTimeMs"in e&&(e.requestTimeMs=Math.round(O())),Zf(a,d.method,e,{}));delete b[c]}}fg.set("requests",b,86400,!0)}}
;function ag(a){var b=this;this.b=a||{innertubeApiKey:ke("INNERTUBE_API_KEY"),innertubeApiVersion:ke("INNERTUBE_API_VERSION"),Da:Q("INNERTUBE_CONTEXT_CLIENT_NAME","WEB"),innertubeContextClientVersion:ke("INNERTUBE_CONTEXT_CLIENT_VERSION"),Fa:ke("INNERTUBE_CONTEXT_HL"),Ea:ke("INNERTUBE_CONTEXT_GL"),Ga:ke("INNERTUBE_HOST_OVERRIDE")||"",Ha:!!Q("INNERTUBE_USE_THIRD_PARTY_AUTH",!1)};tf(function(){ig(b)},0,5E3)}
function Zf(a,b,c,d){!Q("VISITOR_DATA")&&.01>Math.random()&&R(Error("Missing VISITOR_DATA when sending innertube request."),"WARNING");var e={headers:{"Content-Type":"application/json"},method:"POST",A:c,oa:"JSON",L:function(){d.L()},
na:d.L,onSuccess:function(a,b){if(d.onSuccess)d.onSuccess(b)},
ma:function(a){if(d.onSuccess)d.onSuccess(a)},
onError:function(a,b){if(d.onError)d.onError(b)},
sb:function(a){if(d.onError)d.onError(a)},
timeout:d.timeout,withCredentials:!0},f=a.b.Ha||!1,g=bg(f);Object.assign(e.headers,g);var h="",l=a.b.Ga;l&&(h=l);e.headers.Authorization&&!h&&(e.headers["x-origin"]=window.location.origin);h=""+h+("/youtubei/"+a.b.innertubeApiVersion+"/"+b)+"?alt=json&key="+a.b.innertubeApiKey;var m;if(d.retry&&S("retry_web_logging_batches")&&(m=gg(b,c,g,f))){var t=e.onSuccess,N=e.ma;e.onSuccess=function(a,b){hg(m);t(a,b)};
c.ma=function(a,b){hg(m);N(a,b)}}try{S("use_fetch_for_op_xhr")?Ye(h,e):gf(h,e)}catch(Ga){if("InvalidAccessError"==Ga)m&&(hg(m),m=0),R(Error("An extension is blocking network request."),"WARNING");
else throw Ga;}m&&tf(function(){ig(a)},0,5E3)}
;var jg=z().toString();
function kg(){a:{if(window.crypto&&window.crypto.getRandomValues)try{var a=Array(16),b=new Uint8Array(16);window.crypto.getRandomValues(b);for(var c=0;c<a.length;c++)a[c]=b[c];var d=a;break a}catch(e){}d=Array(16);for(a=0;16>a;a++){b=z();for(c=0;c<b%23;c++)d[a]=Math.random();d[a]=Math.floor(256*Math.random())}if(jg)for(a=1,b=0;b<jg.length;b++)d[a%16]=d[a%16]^d[(a-1)%16]/4^jg.charCodeAt(b),a++}a=[];for(b=0;b<d.length;b++)a.push("ABCDEFGHIJLKMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(d[b]&63));
return a.join("")}
;var lg=kg();function mg(a){this.b=a}
function ng(a){var b={};void 0!==a.b.trackingParams?b.trackingParams=a.b.trackingParams:(b.veType=a.b.veType,null!=a.b.veCounter&&(b.veCounter=a.b.veCounter),null!=a.b.elementIndex&&(b.elementIndex=a.b.elementIndex));void 0!==a.b.dataElement&&(b.dataElement=ng(a.b.dataElement));void 0!==a.b.youtubeData&&(b.youtubeData=a.b.youtubeData);return b}
var og=1;function pg(){var a=Q("ROOT_VE_TYPE",void 0);return a?new mg({veType:a}):null}
function qg(){var a=Q("client-screen-nonce")||Q("EVENT_ID");return a?a:null}
function rg(a,b){function c(){setTimeout(function(){a&&$f("foregroundHeartbeatScreenAssociated",{clientDocumentNonce:lg,clientScreenNonce:a})},0)}
P("client-screen-nonce",a);P("ROOT_VE_TYPE",b);"requestAnimationFrame"in window?window.requestAnimationFrame(c):c()}
;function sg(a,b,c){b=void 0===b?{}:b;c=void 0===c?!1:c;var d=Q("EVENT_ID");d&&(b.ei||(b.ei=d));if(b){d=a;var e=Q("VALID_SESSION_TEMPDATA_DOMAINS",[]),f=Vd(J(window.location.href)[3]||null);f&&e.push(f);f=Vd(J(d)[3]||null);if(0<=Ba(e,f)||!f&&0==d.lastIndexOf("/",0))if(S("autoescape_tempdata_url")&&(e=document.createElement("a"),Gb(e,d),d=e.href),d){f=J(d);d=f[5];e=f[6];f=f[7];var g="";d&&(g+=d);e&&(g+="?"+e);f&&(g+="#"+f);d=g;e=d.indexOf("#");if(d=0>e?d:d.substr(0,e)){if(b.itct||b.ved)b.csn=b.csn||
qg();if(h){var h=parseInt(h,10);isFinite(h)&&0<h&&(d="ST-"+Ua(d).toString(36),b=b?Xd(b):"",dg(d,b,h||5))}else h="ST-"+Ua(d).toString(36),b=b?Xd(b):"",dg(h,b,5)}}}if(c)return!1;if((window.ytspf||{}).enabled)spf.navigate(a);else{var l=void 0===l?{}:l;var m=void 0===m?"":m;var t=void 0===t?window:t;c=t.location;a=Yd(a,l)+m;a=a instanceof E?a:Bb(a);c.href=zb(a)}return!0}
;function tg(a,b,c){ug({attachChild:{csn:a,parentVisualElement:ng(b),visualElements:[ng(c)]}})}
function ug(a){var b=ag;a.eventTimeMs=Math.round(O());a.lactMs=Nf();Vf({endpoint:"log_interaction",payload:a},b)}
;function vg(a){a=a||{};this.url=a.url||"";this.args=a.args||eb(wg);this.assets=a.assets||{};this.attrs=a.attrs||eb(xg);this.fallback=a.fallback||null;this.fallbackMessage=a.fallbackMessage||null;this.html5=!!a.html5;this.disable=a.disable||{};this.loaded=!!a.loaded;this.messages=a.messages||{}}
var wg={enablejsapi:1},xg={};vg.prototype.clone=function(){var a=new vg,b;for(b in this)if(this.hasOwnProperty(b)){var c=this[b];a[b]="object"==ra(c)?eb(c):c}return a};function yg(){G.call(this);this.b=[]}
n(yg,G);yg.prototype.m=function(){for(;this.b.length;){var a=this.b.pop();a.target.removeEventListener(a.name,a.pb)}G.prototype.m.call(this)};var zg=/cssbin\/(?:debug-)?([a-zA-Z0-9_-]+?)(?:-2x|-web|-rtl|-vfl|.css)/;function Ag(a){a=a||"";if(window.spf){var b=a.match(zg);spf.style.load(a,b?b[1]:"",void 0)}else Bg(a)}
function Bg(a){var b=Cg(a),c=document.getElementById(b),d=c&&pe(c,"loaded");d||c&&!d||(c=Dg(a,b,function(){pe(c,"loaded")||(ne(c),ze(b),T(y(Ae,b),0))}))}
function Dg(a,b,c){var d=document.createElement("link");d.id=b;d.onload=function(){c&&setTimeout(c,0)};
a=Sb(a);Hb(d,a,"stylesheet");(document.getElementsByTagName("head")[0]||document.body).appendChild(d);return d}
function Cg(a){var b=document.createElement("A");a=Cb(a);Gb(b,a);b=b.href.replace(/^[a-zA-Z]+:\/\//,"//");return"css-"+Ua(b)}
;var Eg=v("ytLoggingLatencyUsageStats_")||{};u("ytLoggingLatencyUsageStats_",Eg,void 0);var Fg=0;function Gg(a){Eg[a]=Eg[a]||{count:0};var b=Eg[a];b.count++;b.time=O();Fg||(Fg=tf(Hg,0,5E3));return 10<b.count?(11==b.count&&of(Error("CSI data exceeded logging limit with key: "+a),0==a.indexOf("info")?"WARNING":"ERROR"),!0):!1}
function Hg(){var a=O(),b;for(b in Eg)6E4<a-Eg[b].time&&delete Eg[b];Fg=0}
;function Ig(a,b){this.version=a;this.args=b}
;function Jg(a){this.topic=a}
Jg.prototype.toString=function(){return this.topic};var Kg=v("ytPubsub2Pubsub2Instance")||new I;I.prototype.subscribe=I.prototype.subscribe;I.prototype.unsubscribeByKey=I.prototype.K;I.prototype.publish=I.prototype.I;I.prototype.clear=I.prototype.clear;u("ytPubsub2Pubsub2Instance",Kg,void 0);u("ytPubsub2Pubsub2SubscribedKeys",v("ytPubsub2Pubsub2SubscribedKeys")||{},void 0);u("ytPubsub2Pubsub2TopicToKeys",v("ytPubsub2Pubsub2TopicToKeys")||{},void 0);u("ytPubsub2Pubsub2IsAsync",v("ytPubsub2Pubsub2IsAsync")||{},void 0);
u("ytPubsub2Pubsub2SkipSubKey",null,void 0);function Lg(a,b){var c=v("ytPubsub2Pubsub2Instance");c&&c.publish.call(c,a.toString(),a,b)}
;var X=window.performance||window.mozPerformance||window.msPerformance||window.webkitPerformance||{};function Mg(){var a=Q("TIMING_TICK_EXPIRATION");a||(a={},P("TIMING_TICK_EXPIRATION",a));return a}
function Ng(){var a=Mg(),b;for(b in a)vf(a[b]);P("TIMING_TICK_EXPIRATION",{})}
;function Og(a,b){Ig.call(this,1,arguments)}
n(Og,Ig);function Pg(a,b){Ig.call(this,1,arguments)}
n(Pg,Ig);var Qg=new Jg("aft-recorded"),Rg=new Jg("timing-sent");var Sg={vc:!0},Y={},Tg=(Y.ad_allowed="adTypesAllowed",Y.ad_at="adType",Y.ad_cpn="adClientPlaybackNonce",Y.ad_docid="adVideoId",Y.yt_ad_an="adNetworks",Y.p="httpProtocol",Y.t="transportProtocol",Y.cpn="clientPlaybackNonce",Y.csn="clientScreenNonce",Y.docid="videoId",Y.is_nav="isNavigation",Y.yt_lt="loadType",Y.yt_ad="isMonetized",Y.nr="webInfo.navigationReason",Y.ncnp="webInfo.nonPreloadedNodeCount",Y.paused="playerInfo.isPausedOnLoad",Y.fmt="playerInfo.itag",Y.yt_pl="watchInfo.isPlaylist",Y.yt_ad_pr=
"prerollAllowed",Y.yt_red="isRedSubscriber",Y.st="serverTimeMs",Y.vph="viewportHeight",Y.vpw="viewportWidth",Y.yt_vis="isVisible",Y),Ug="ap c cver ei srt yt_fss yt_li plid vpil vpni vpst yt_eil vpni2 vpil2 icrc icrt pa GetBrowse_rid GetPlayer_rid GetSearch_rid GetWatchNext_rid cmt d_vpct d_vpnfi d_vpni pc pfa pfeh pftr prerender psc rc start tcrt tcrc ssr vpr vps yt_abt yt_fn yt_fs yt_pft yt_pre yt_pt yt_pvis yt_ref yt_sts".split(" "),Vg="isNavigation isMonetized playerInfo.isPausedOnLoad prerollAllowed isRedSubscriber isVisible watchInfo.isPlaylist".split(" "),
Wg=!1;function Zg(){var a=$g().info.yt_lt="hot_bg";ah().info_yt_lt=a;if(bh())if("yt_lt"in Tg){var b=Tg.yt_lt;0<=Ba(Vg,b)&&(a=!!a);if(bh()){var c={};b=b.split(".");for(var d=c,e=0;e<b.length-1;e++)d[b[e]]=d[b[e]]||{},d=d[b[e]];d[b[b.length-1]]=a;a=ch();b=Object.keys(c).join("");Gg("info_"+b+"_"+a)||(c.clientActionNonce=a,$f("latencyActionInfo",c,void 0,void 0))}}else 0<=Ba(Ug,"yt_lt")||R(Error("Unknown label yt_lt logged with GEL CSI."))}
function dh(){var a=eh();if(a.aft)return a.aft;for(var b=Q("TIMING_AFT_KEYS",["ol"]),c=b.length,d=0;d<c;d++){var e=a[b[d]];if(e)return e}return NaN}
var fh=x(X.clearResourceTimings||X.webkitClearResourceTimings||X.mozClearResourceTimings||X.msClearResourceTimings||X.oClearResourceTimings||pa,X);function ch(){var a=$g().nonce;a||(a=kg(),$g().nonce=a);return a}
function eh(){return $g().tick}
function ah(){var a=$g();"gel"in a||(a.gel={});return a.gel}
function $g(){return v("ytcsi.data_")||gh()}
function gh(){var a={tick:{},info:{}};u("ytcsi.data_",a,void 0);return a}
function hh(a,b){u("yt.timing."+(b||"")+"pingSent_",a,void 0)}
function ih(){var a=eh(),b=a.pbr,c=a.vc;a=a.pbs;return b&&c&&a&&b<c&&c<a&&1==$g().info.yt_pvis}
function bh(){return!!S("csi_on_gel")}
function jh(){Ng();if(!bh()){var a=eh(),b=$g().info,c=a._start;for(f in a)if(0==f.lastIndexOf("_",0)&&w(a[f])){var d=f.slice(1);if(d in Sg){var e=Da(a[f],function(a){return Math.round(a-c)});
b["all_"+d]=e.join()}delete a[f]}var f=!!b.ap;if(d=v("ytglobal.timingReportbuilder_")){if(a=d(a,b,void 0))kh(a,f),gh(),fh(),hh(!1,void 0),Q("TIMING_ACTION")&&P("PREVIOUS_ACTION",Q("TIMING_ACTION")),P("TIMING_ACTION","")}else{var g=Q("CSI_SERVICE_NAME","youtube");d={v:2,s:g,action:Q("TIMING_ACTION",void 0)};e=Zg.srt;void 0!==a.srt&&delete b.srt;if(b.h5jse){var h=window.location.protocol+v("ytplayer.config.assets.js");(h=X.getEntriesByName?X.getEntriesByName(h)[0]:null)?b.h5jse=Math.round(b.h5jse-h.responseEnd):
delete b.h5jse}a.aft=dh();ih()&&"youtube"==g&&(Zg(),g=a.vc,h=a.pbs,delete a.aft,b.aft=Math.round(h-g));for(var l in b)"_"!=l.charAt(0)&&(d[l]=b[l]);a.ps=O();b={};l=[];for(var m in a)"_"!=m.charAt(0)&&(g=Math.round(a[m]-c),b[m]=g,l.push(m+"."+g));d.rt=l.join(",");(a=v("ytdebug.logTiming"))&&a(d,b);kh(d,f,void 0);Lg(Rg,new Pg(b.aft+(e||0),void 0))}}}
function kh(a,b,c){if(S("debug_csi_data")){var d=v("yt.timing.csiData");d||(d=[],u("yt.timing.csiData",d,void 0));d.push({page:location.href,time:new Date,args:a})}d="";for(var e in a)d+="&"+e+"="+a[e];a="/csi_204?";S("redirect_csi_204_to_qoe")&&(a="/api/stats/qoe?",d+="&redirect_csi_204_to_qoe=true");a+=d.substring(1);if(window.navigator&&window.navigator.sendBeacon&&b){var f=void 0===f?"":f;try{window.navigator&&window.navigator.sendBeacon&&window.navigator.sendBeacon(a,f)||kf(a,void 0,void 0,void 0,
f)}catch(g){kf(a,void 0,void 0,void 0,f)}}else kf(a);hh(!0,c)}
function lh(a){if("_"!=a[0]){var b=a;X.mark&&(0==b.lastIndexOf("mark_",0)||(b="mark_"+b),X.mark(b))}b=eh();var c=O();b[a]&&(b["_"+a]=b["_"+a]||[b[a]],b["_"+a].push(c));b[a]=c;b=Mg();if(c=b[a])vf(c),b[a]=0;ah()["tick_"+a]=void 0;O();bh()?(b=ch(),"_start"==a?Gg("baseline_"+b)||$f("latencyActionBaselined",{clientActionNonce:b},void 0,void 0):Gg("tick_"+a+"_"+b)||$f("latencyActionTicked",{tickName:a,clientActionNonce:b},void 0,void 0),a=!0):a=!1;if(a=!a)a=!v("yt.timing.pingSent_");if(a&&(b=ke("TIMING_ACTION"),
a=eh(),v("ytglobal.timingready_")&&b&&a._start&&(b=dh()))){S("tighter_critical_section")&&!Wg&&(Lg(Qg,new Og(Math.round(b-a._start),void 0)),Wg=!0);b=!0;c=Q("TIMING_WAIT",[]);if(c.length)for(var d=0,e=c.length;d<e;++d)if(!(c[d]in a)){b=!1;break}b&&jh()}}
;function mh(a,b){G.call(this);this.l=this.S=a;this.G=b;this.o=!1;this.f={};this.P=this.F=null;this.w=new I;Gc(this,y(Hc,this.w));this.i={};this.N=this.R=this.h=this.X=this.b=null;this.M=!1;this.j=this.C=null;this.T={};this.sa=["onReady"];this.W=null;this.ia=NaN;this.O={};nh(this);this.U("WATCH_LATER_VIDEO_ADDED",this.Ja.bind(this));this.U("WATCH_LATER_VIDEO_REMOVED",this.Ka.bind(this));this.U("onAdAnnounce",this.va.bind(this));this.ta=new yg(this);Gc(this,y(Hc,this.ta))}
n(mh,G);k=mh.prototype;
k.fa=function(a){if(!this.g){a instanceof vg||(a=new vg(a));this.X=a;this.b=a.clone();this.h=this.b.attrs.id||this.h;"video-player"==this.h&&(this.h=this.G,this.b.attrs.id=this.G);this.l.id==this.h&&(this.h+="-player",this.b.attrs.id=this.h);this.b.args.enablejsapi="1";this.b.args.playerapiid=this.G;this.R||(this.R=oh(this,this.b.args.jsapicallback||"onYouTubePlayerReady"));this.b.args.jsapicallback=null;if(a=this.b.attrs.width)this.l.style.width=bc(Number(a)||a);if(a=this.b.attrs.height)this.l.style.height=bc(Number(a)||
a);ph(this);this.o&&qh(this)}};
k.ya=function(){return this.X};
function qh(a){a.b.loaded||(a.b.loaded=!0,"0"!=a.b.args.autoplay?a.f.loadVideoByPlayerVars(a.b.args):a.f.cueVideoByPlayerVars(a.b.args))}
function rh(a){var b=!0,c=sh(a);c&&a.b&&(a=a.b,b=pe(c,"version")==a.assets.js);return b&&!!v("yt.player.Application.create")}
function ph(a){if(!a.g&&!a.M){var b=rh(a);if(b&&"html5"==(sh(a)?"html5":null))a.N="html5",a.o||th(a);else if(uh(a),a.N="html5",b&&a.j)a.S.appendChild(a.j),th(a);else{a.b.loaded=!0;var c=!1;a.C=function(){c=!0;var b=a.b.clone();v("yt.player.Application.create")(a.S,b);th(a)};
a.M=!0;b?a.C():(Ee(a.b.assets.js,a.C),Ag(a.b.assets.css),vh(a)&&!c&&u("yt.player.Application.create",null,void 0))}}}
function sh(a){var b=Lb(a.h);!b&&a.l&&a.l.querySelector&&(b=a.l.querySelector("#"+a.h));return b}
function th(a){if(!a.g){var b=sh(a),c=!1;b&&b.getApiInterface&&b.getApiInterface()&&(c=!0);c?(a.M=!1,b.isNotServable&&b.isNotServable(a.b.args.video_id)||wh(a)):a.ia=T(function(){th(a)},50)}}
function wh(a){nh(a);a.o=!0;var b=sh(a);b.addEventListener&&(a.F=xh(a,b,"addEventListener"));b.removeEventListener&&(a.P=xh(a,b,"removeEventListener"));var c=b.getApiInterface();c=c.concat(b.getInternalApiInterface());for(var d=0;d<c.length;d++){var e=c[d];a.f[e]||(a.f[e]=xh(a,b,e))}for(var f in a.i)a.F(f,a.i[f]);qh(a);a.R&&a.R(a.f);a.w.I("onReady",a.f)}
function xh(a,b,c){var d=b[c];return function(){try{return a.W=null,d.apply(b,arguments)}catch(e){"sendAbandonmentPing"!=c&&(e.message+=" ("+c+")",a.W=e,R(e,"WARNING",void 0,void 0,void 0))}}}
function nh(a){a.o=!1;if(a.P)for(var b in a.i)a.P(b,a.i[b]);for(var c in a.O)re(parseInt(c,10));a.O={};a.F=null;a.P=null;for(var d in a.f)a.f[d]=null;a.f.addEventListener=a.U.bind(a);a.f.removeEventListener=a.Ra.bind(a);a.f.destroy=a.dispose.bind(a);a.f.getLastError=a.za.bind(a);a.f.getPlayerType=a.Aa.bind(a);a.f.getCurrentVideoConfig=a.ya.bind(a);a.f.loadNewVideoConfig=a.fa.bind(a);a.f.isReady=a.Ia.bind(a)}
k.Ia=function(){return this.o};
k.U=function(a,b){var c=this,d=oh(this,b);if(d){if(!(0<=Ba(this.sa,a)||this.i[a])){var e=yh(this,a);this.F&&this.F(a,e)}this.w.subscribe(a,d);"onReady"==a&&this.o&&T(function(){d(c.f)},0)}};
k.Ra=function(a,b){if(!this.g){var c=oh(this,b);c&&yd(this.w,a,c)}};
function oh(a,b){var c=b;if("string"==typeof b){if(a.T[b])return a.T[b];c=function(){var a=v(b);a&&a.apply(p,arguments)};
a.T[b]=c}return c?c:null}
function yh(a,b){var c="ytPlayer"+b+a.G;a.i[b]=c;p[c]=function(c){var d=a.b&&a.b.args&&a.b.args.fflags;if(d&&0>d.indexOf("use_html5_player_event_timeout=true"))a.w.I(b,c);else{var f=T(function(){if(!a.g){a.w.I(b,c);var d=a.O,e=String(f);e in d&&delete d[e]}},0);
cb(a.O,String(f))}};
return c}
k.va=function(a){ze("a11y-announce",a)};
k.Ja=function(a){ze("WATCH_LATER_VIDEO_ADDED",a)};
k.Ka=function(a){ze("WATCH_LATER_VIDEO_REMOVED",a)};
k.Aa=function(){return this.N||(sh(this)?"html5":null)};
k.za=function(){return this.W};
function uh(a){lh("dcp");a.cancel();nh(a);a.N=null;a.b&&(a.b.loaded=!1);var b=sh(a);b&&(rh(a)||!vh(a)?a.j=b:(b&&b.destroy&&b.destroy(),a.j=null));for(a=a.S;b=a.firstChild;)a.removeChild(b)}
k.cancel=function(){this.C&&Ke(this.b.assets.js,this.C);re(this.ia);this.M=!1};
k.m=function(){uh(this);if(this.j&&this.b&&this.j.destroy)try{this.j.destroy()}catch(b){R(b)}this.T=null;for(var a in this.i)p[this.i[a]]=null;this.X=this.b=this.f=null;delete this.S;delete this.l;G.prototype.m.call(this)};
function vh(a){return a.b&&a.b.args&&a.b.args.fflags?-1!=a.b.args.fflags.indexOf("player_destroy_old_version=true"):!1}
;var zh={},Ah="player_uid_"+(1E9*Math.random()>>>0);function Bh(a){var b="player";b=r(b)?Lb(b):b;var c=Ah+"_"+(b[wa]||(b[wa]=++xa)),d=zh[c];if(d)return d.fa(a),d.f;d=new mh(b,c);zh[c]=d;ze("player-added",d.f);Gc(d,y(Ch,d));T(function(){d.fa(a)},0);
return d.f}
function Ch(a){delete zh[a.G]}
;function Dh(){var a=Eh(),b=Fh();if(!a&&!b||!window.JSON)return null;try{var c=a.get("yt-player-two-stage-token")}catch(d){}if(!r(c))try{c=b.get("yt-player-two-stage-token")}catch(d){}if(!r(c))return null;try{c=JSON.parse(c,void 0)}catch(d){}return c}
var Fh=Rb(function(){var a=new Jd;return a.isAvailable()?new Fd(a):null}),Eh=Rb(function(){var a=new Kd;
return a.isAvailable()?new Fd(a):null});function Gh(a){return(0==a.search("cue")||0==a.search("load"))&&"loadModule"!=a}
function Hh(a,b,c){r(a)&&(a={mediaContentUrl:a,startSeconds:b,suggestedQuality:c});b=/\/([ve]|embed)\/([^#?]+)/.exec(a.mediaContentUrl);a.videoId=b&&b[2]?b[2]:null;return Ih(a)}
function Ih(a,b,c){if(va(a)){b="endSeconds startSeconds mediaContentUrl suggestedQuality videoId two_stage_token".split(" ");c={};for(var d=0;d<b.length;d++){var e=b[d];a[e]&&(c[e]=a[e])}return c}return{videoId:a,startSeconds:b,suggestedQuality:c}}
function Jh(a,b,c,d){if(va(a)&&!w(a)){b="playlist list listType index startSeconds suggestedQuality".split(" ");c={};for(d=0;d<b.length;d++){var e=b[d];a[e]&&(c[e]=a[e])}return c}b={index:b,startSeconds:c,suggestedQuality:d};r(a)&&16==a.length?b.list="PL"+a:b.playlist=a;return b}
function Kh(a){var b=a.video_id||a.videoId;if(r(b)){var c=Dh()||{},d=Dh()||{};q(void 0)?d[b]=void 0:delete d[b];var e=z()+3E5,f=Fh();if(f&&window.JSON){r(d)||(d=JSON.stringify(d,void 0));try{f.set("yt-player-two-stage-token",d,e)}catch(g){f.remove("yt-player-two-stage-token")}}(b=c[b])&&(a.two_stage_token=b)}}
;function Lh(a){G.call(this);this.b=a;this.b.subscribe("command",this.pa,this);this.f={};this.i=!1}
A(Lh,G);k=Lh.prototype;k.start=function(){this.i||this.g||(this.i=!0,Mh(this.b,"RECEIVING"))};
k.pa=function(a,b,c){if(this.i&&!this.g){var d=b||{};switch(a){case "addEventListener":r(d.event)&&(a=d.event,a in this.f||(c=x(this.Ta,this,a),this.f[a]=c,this.addEventListener(a,c)));break;case "removeEventListener":r(d.event)&&Nh(this,d.event);break;default:this.h.isReady()&&this.h[a]&&(b=Oh(a,b||{}),c=this.h.handleExternalCall(a,b,c||null),(c=Ph(a,c))&&this.i&&!this.g&&Mh(this.b,a,c))}}};
k.Ta=function(a,b){this.i&&!this.g&&Mh(this.b,a,this.aa(a,b))};
k.aa=function(a,b){if(null!=b)return{value:b}};
function Nh(a,b){b in a.f&&(a.removeEventListener(b,a.f[b]),delete a.f[b])}
k.m=function(){var a=this.b;a.g||yd(a.b,"command",this.pa,this);this.b=null;for(var b in this.f)Nh(this,b);Lh.u.m.call(this)};function Qh(a,b){Lh.call(this,b);this.h=a;this.start()}
A(Qh,Lh);Qh.prototype.addEventListener=function(a,b){this.h.addEventListener(a,b)};
Qh.prototype.removeEventListener=function(a,b){this.h.removeEventListener(a,b)};
function Oh(a,b){switch(a){case "loadVideoById":return b=Ih(b),Kh(b),[b];case "cueVideoById":return b=Ih(b),Kh(b),[b];case "loadVideoByPlayerVars":return Kh(b),[b];case "cueVideoByPlayerVars":return Kh(b),[b];case "loadPlaylist":return b=Jh(b),Kh(b),[b];case "cuePlaylist":return b=Jh(b),Kh(b),[b];case "seekTo":return[b.seconds,b.allowSeekAhead];case "playVideoAt":return[b.index];case "setVolume":return[b.volume];case "setPlaybackQuality":return[b.suggestedQuality];case "setPlaybackRate":return[b.suggestedRate];
case "setLoop":return[b.loopPlaylists];case "setShuffle":return[b.shufflePlaylist];case "getOptions":return[b.module];case "getOption":return[b.module,b.option];case "setOption":return[b.module,b.option,b.value];case "handleGlobalKeyDown":return[b.keyCode,b.shiftKey]}return[]}
function Ph(a,b){switch(a){case "isMuted":return{muted:b};case "getVolume":return{volume:b};case "getPlaybackRate":return{playbackRate:b};case "getAvailablePlaybackRates":return{availablePlaybackRates:b};case "getVideoLoadedFraction":return{videoLoadedFraction:b};case "getPlayerState":return{playerState:b};case "getCurrentTime":return{currentTime:b};case "getPlaybackQuality":return{playbackQuality:b};case "getAvailableQualityLevels":return{availableQualityLevels:b};case "getDuration":return{duration:b};
case "getVideoUrl":return{videoUrl:b};case "getVideoEmbedCode":return{videoEmbedCode:b};case "getPlaylist":return{playlist:b};case "getPlaylistIndex":return{playlistIndex:b};case "getOptions":return{options:b};case "getOption":return{option:b}}}
Qh.prototype.aa=function(a,b){switch(a){case "onReady":return;case "onStateChange":return{playerState:b};case "onPlaybackQualityChange":return{playbackQuality:b};case "onPlaybackRateChange":return{playbackRate:b};case "onError":return{errorCode:b}}return Qh.u.aa.call(this,a,b)};
Qh.prototype.m=function(){Qh.u.m.call(this);delete this.h};function Rh(a,b,c,d){G.call(this);this.f=b||null;this.o="*";this.h=c||null;this.sessionId=null;this.channel=d||null;this.C=!!a;this.l=x(this.w,this);window.addEventListener("message",this.l)}
n(Rh,G);Rh.prototype.w=function(a){if(!("*"!=this.h&&a.origin!=this.h||this.f&&a.source!=this.f)&&r(a.data)){try{var b=JSON.parse(a.data)}catch(c){return}if(!(null==b||this.C&&(this.sessionId&&this.sessionId!=b.id||this.channel&&this.channel!=b.channel))&&b)switch(b.event){case "listening":"null"!=a.origin&&(this.h=this.o=a.origin);this.f=a.source;this.sessionId=b.id;this.b&&(this.b(),this.b=null);break;case "command":this.i&&(!this.j||0<=Ba(this.j,b.func))&&this.i(b.func,b.args,a.origin)}}};
Rh.prototype.sendMessage=function(a,b){var c=b||this.f;if(c){this.sessionId&&(a.id=this.sessionId);this.channel&&(a.channel=this.channel);try{var d=Vc(a);c.postMessage(d,this.o)}catch(e){R(e,"WARNING")}}};
Rh.prototype.m=function(){window.removeEventListener("message",this.l);G.prototype.m.call(this)};function Sh(a,b,c){Rh.call(this,a,b,c||Q("POST_MESSAGE_ORIGIN",void 0)||window.document.location.protocol+"//"+window.document.location.hostname,"widget");this.j=this.b=this.i=null}
n(Sh,Rh);function Th(){var a=this.f=new Sh(!!Q("WIDGET_ID_ENFORCE")),b=x(this.Na,this);a.i=b;a.j=null;this.f.channel="widget";if(a=Q("WIDGET_ID"))this.f.sessionId=a;this.h=[];this.j=!1;this.i={}}
k=Th.prototype;k.Na=function(a,b,c){"addEventListener"==a&&b?(a=b[0],this.i[a]||"onReady"==a||(this.addEventListener(a,Uh(this,a)),this.i[a]=!0)):this.ra(a,b,c)};
k.ra=function(){};
function Uh(a,b){return x(function(a){this.sendMessage(b,a)},a)}
k.addEventListener=function(){};
k.xa=function(){this.j=!0;this.sendMessage("initialDelivery",this.ba());this.sendMessage("onReady");C(this.h,this.qa,this);this.h=[]};
k.ba=function(){return null};
function Vh(a,b){a.sendMessage("infoDelivery",b)}
k.qa=function(a){this.j?this.f.sendMessage(a):this.h.push(a)};
k.sendMessage=function(a,b){this.qa({event:a,info:void 0==b?null:b})};
k.dispose=function(){this.f=null};function Wh(a){Th.call(this);this.b=a;this.g=[];this.addEventListener("onReady",x(this.La,this));this.addEventListener("onVideoProgress",x(this.Xa,this));this.addEventListener("onVolumeChange",x(this.Ya,this));this.addEventListener("onApiChange",x(this.Sa,this));this.addEventListener("onPlaybackQualityChange",x(this.Ua,this));this.addEventListener("onPlaybackRateChange",x(this.Va,this));this.addEventListener("onStateChange",x(this.Wa,this));this.addEventListener("onWebglSettingsChanged",x(this.Za,
this))}
A(Wh,Th);k=Wh.prototype;k.ra=function(a,b,c){if(this.b[a]){b=b||[];if(0<b.length&&Gh(a)){var d=b;if(va(d[0])&&!w(d[0]))d=d[0];else{var e={};switch(a){case "loadVideoById":case "cueVideoById":e=Ih.apply(window,d);break;case "loadVideoByUrl":case "cueVideoByUrl":e=Hh.apply(window,d);break;case "loadPlaylist":case "cuePlaylist":e=Jh.apply(window,d)}d=e}Kh(d);b.length=1;b[0]=d}this.b.handleExternalCall(a,b,c);Gh(a)&&Vh(this,this.ba())}};
k.La=function(){var a=x(this.xa,this);this.f.b=a};
k.addEventListener=function(a,b){this.g.push({eventType:a,listener:b});this.b.addEventListener(a,b)};
k.ba=function(){if(!this.b)return null;var a=this.b.getApiInterface();Fa(a,"getVideoData");for(var b={apiInterface:a},c=0,d=a.length;c<d;c++){var e=a[c],f=e;if(0==f.search("get")||0==f.search("is")){f=e;var g=0;0==f.search("get")?g=3:0==f.search("is")&&(g=2);f=f.charAt(g).toLowerCase()+f.substr(g+1);try{var h=this.b[e]();b[f]=h}catch(l){}}}b.videoData=this.b.getVideoData();b.currentTimeLastUpdated_=z()/1E3;return b};
k.Wa=function(a){a={playerState:a,currentTime:this.b.getCurrentTime(),duration:this.b.getDuration(),videoData:this.b.getVideoData(),videoStartBytes:0,videoBytesTotal:this.b.getVideoBytesTotal(),videoLoadedFraction:this.b.getVideoLoadedFraction(),playbackQuality:this.b.getPlaybackQuality(),availableQualityLevels:this.b.getAvailableQualityLevels(),videoUrl:this.b.getVideoUrl(),playlist:this.b.getPlaylist(),playlistIndex:this.b.getPlaylistIndex(),currentTimeLastUpdated_:z()/1E3,playbackRate:this.b.getPlaybackRate(),
mediaReferenceTime:this.b.getMediaReferenceTime()};this.b.getProgressState&&(a.progressState=this.b.getProgressState());this.b.getStoryboardFormat&&(a.storyboardFormat=this.b.getStoryboardFormat());Vh(this,a)};
k.Ua=function(a){Vh(this,{playbackQuality:a})};
k.Va=function(a){Vh(this,{playbackRate:a})};
k.Sa=function(){for(var a=this.b.getOptions(),b={namespaces:a},c=0,d=a.length;c<d;c++){var e=a[c],f=this.b.getOptions(e);b[e]={options:f};for(var g=0,h=f.length;g<h;g++){var l=f[g],m=this.b.getOption(e,l);b[e][l]=m}}this.sendMessage("apiInfoDelivery",b)};
k.Ya=function(){Vh(this,{muted:this.b.isMuted(),volume:this.b.getVolume()})};
k.Xa=function(a){a={currentTime:a,videoBytesLoaded:this.b.getVideoBytesLoaded(),videoLoadedFraction:this.b.getVideoLoadedFraction(),currentTimeLastUpdated_:z()/1E3,playbackRate:this.b.getPlaybackRate(),mediaReferenceTime:this.b.getMediaReferenceTime()};this.b.getProgressState&&(a.progressState=this.b.getProgressState());Vh(this,a)};
k.Za=function(){if(this.b.getSphericalProperties){var a={sphericalProperties:this.b.getSphericalProperties()};Vh(this,a)}};
k.dispose=function(){Wh.u.dispose.call(this);for(var a=0;a<this.g.length;a++){var b=this.g[a];this.b.removeEventListener(b.eventType,b.listener)}this.g=[]};function Xh(){G.call(this);this.b=new I;Gc(this,y(Hc,this.b))}
A(Xh,G);Xh.prototype.subscribe=function(a,b,c){return this.g?0:this.b.subscribe(a,b,c)};
Xh.prototype.j=function(a,b){this.g||this.b.I.apply(this.b,arguments)};function Yh(a,b,c){Xh.call(this);this.f=a;this.h=b;this.i=c}
A(Yh,Xh);function Mh(a,b,c){if(!a.g){var d=a.f;d.g||a.h!=d.b||(a={id:a.i,command:b},c&&(a.data=c),d.b.postMessage(Vc(a),d.h))}}
Yh.prototype.m=function(){this.h=this.f=null;Yh.u.m.call(this)};function Zh(a,b,c){G.call(this);this.b=a;this.h=c;this.i=V(window,"message",x(this.j,this));this.f=new Yh(this,a,b);Gc(this,y(Hc,this.f))}
A(Zh,G);Zh.prototype.j=function(a){var b;if(b=!this.g)if(b=a.origin==this.h)a:{b=this.b;do{b:{var c=a.source;do{if(c==b){c=!0;break b}if(c==c.parent)break;c=c.parent}while(null!=c);c=!1}if(c){b=!0;break a}b=b.opener}while(null!=b);b=!1}if(b&&(b=a.data,r(b))){try{b=JSON.parse(b)}catch(d){return}b.command&&(c=this.f,c.g||c.j("command",b.command,b.data,a.origin))}};
Zh.prototype.m=function(){Hf(this.i);this.b=null;Zh.u.m.call(this)};function $h(){var a=eb(ai),b;return od(new H(function(c,d){a.onSuccess=function(a){Te(a)?c(a):d(new bi("Request failed, status="+a.status,"net.badstatus",a))};
a.onError=function(a){d(new bi("Unknown request error","net.unknown",a))};
a.L=function(a){d(new bi("Request timed out","net.timeout",a))};
b=af("//googleads.g.doubleclick.net/pagead/id",a)}),function(a){a instanceof pd&&b.abort();
return gd(a)})}
function bi(a,b){B.call(this,a+", errorCode="+b);this.errorCode=b;this.name="PromiseAjaxError"}
n(bi,B);function ci(a){this.g=void 0===a?null:a;this.f=0;this.b=null}
ci.prototype.then=function(a,b,c){return this.g?this.g.then(a,b,c):1===this.f&&a?(a=a.call(c,this.b),bd(a)?a:di(a)):2===this.f&&b?(a=b.call(c,this.b),bd(a)?a:ei(a)):this};
ci.prototype.getValue=function(){return this.b};
ad(ci);function ei(a){var b=new ci;a=void 0===a?null:a;b.f=2;b.b=void 0===a?null:a;return b}
function di(a){var b=new ci;a=void 0===a?null:a;b.f=1;b.b=void 0===a?null:a;return b}
;function fi(a){B.call(this,a.message||a.description||a.name);this.isMissing=a instanceof gi;this.isTimeout=a instanceof bi&&"net.timeout"==a.errorCode;this.isCanceled=a instanceof pd}
n(fi,B);fi.prototype.name="BiscottiError";function gi(){B.call(this,"Biscotti ID is missing from server")}
n(gi,B);gi.prototype.name="BiscottiMissingError";var ai={format:"RAW",method:"GET",timeout:5E3,withCredentials:!0},hi=null;function ii(){if("1"===Za(le(),"args","privembed"))return gd(Error("Biscotti ID is not available in private embed mode"));hi||(hi=od($h().then(ji),function(a){return ki(2,a)}));
return hi}
function ji(a){a=a.responseText;if(0!=a.lastIndexOf(")]}'",0))throw new gi;a=JSON.parse(a.substr(4));if(1<(a.type||1))throw new gi;a=a.id;li(a);hi=di(a);mi(18E5,2);return a}
function ki(a,b){var c=new fi(b);li("");hi=ei(c);0<a&&mi(12E4,a-1);throw c;}
function mi(a,b){T(function(){od($h().then(ji,function(a){return ki(b,a)}),pa)},a)}
function li(a){u("yt.ads.biscotti.lastId_",a,void 0)}
function ni(){try{var a=v("yt.ads.biscotti.getId_");return a?a():ii()}catch(b){return gd(b)}}
;function oi(a){B.apply(this,arguments)}
n(oi,B);oi.prototype.name="YuzuError";function pi(){var a=new oi("ID is missing"),b=new oi("Timeout"),c=null,d=!1;he(function(){c=fe();d=!0});
if(d)return c?di(c):ei(a);var e=new H(function(b,c){he(function(){var d=fe();d?b(d):c(a)})}),f=Td().then(function(){return gd(b)});
return md(jd([e,f]),function(){return f.cancel()})}
;function qi(a){if("1"!==Za(le(),"args","privembed")){a&&(v("yt.ads.biscotti.getId_")||Aa("yt.ads.biscotti.getId_",ii));try{var b=ni();if(S("enable_yuzu")){v("yt.ads.yuzu.getId_")||u("yt.ads.yuzu.getId_",pi,void 0);try{var c=v("yt.ads.yuzu.getId_")()}catch(d){c=gd(d)}}else c=gd(new oi("unimplemented"));kd([b,c]).then(function(a){var b=a[0];a=a[1];if(b.Y||a.Y){b=b.value;a=a.value;var c={};c.dt=fc;c.flash="0";a:{try{var d=window.top.location.href}catch(Ta){d=2;break a}d=null!=d?d==window.document.location.href?
0:1:2}d=(c.frm=d,c);d.u_tz=-(new Date).getTimezoneOffset();var h=void 0===h?F:h;try{var l=h.history.length}catch(Ta){l=0}d.u_his=l;d.u_java=!!F.navigator&&"unknown"!==typeof F.navigator.javaEnabled&&!!F.navigator.javaEnabled&&F.navigator.javaEnabled();F.screen&&(d.u_h=F.screen.height,d.u_w=F.screen.width,d.u_ah=F.screen.availHeight,d.u_aw=F.screen.availWidth,d.u_cd=F.screen.colorDepth);F.navigator&&F.navigator.plugins&&(d.u_nplug=F.navigator.plugins.length);F.navigator&&F.navigator.mimeTypes&&(d.u_nmime=
F.navigator.mimeTypes.length);d.ca_type="image";if(S("enable_server_side_search_pyv")||S("enable_server_side_mweb_search_pyv")){l=window;try{var m=l.screenX;var t=l.screenY}catch(Ta){}try{var N=l.outerWidth;var Ga=l.outerHeight}catch(Ta){}try{var Xg=l.innerWidth;var Yg=l.innerHeight}catch(Ta){}m=[l.screenLeft,l.screenTop,m,t,l.screen?l.screen.availWidth:void 0,l.screen?l.screen.availTop:void 0,N,Ga,Xg,Yg];t=window.top;try{var U=(t||window).document,sa="CSS1Compat"==U.compatMode?U.documentElement:
U.body;var Ha=(new Kb(sa.clientWidth,sa.clientHeight)).round()}catch(Ta){Ha=new Kb(-12245933,-12245933)}U={};sa=0;p.SVGElement&&p.document.createElementNS&&(sa|=1);t=$b();t["allow-top-navigation-by-user-activation"]&&(sa|=2);t["allow-popups-to-escape-sandbox"]&&(sa|=4);U.bc=sa;U.bih=Ha.height;U.biw=Ha.width;U.brdim=m.join();Ha=(U.vis={visible:1,hidden:2,prerender:3,preview:4,unloaded:5}[ac.visibilityState||ac.webkitVisibilityState||ac.mozVisibilityState||""]||0,U.wgl=!!F.WebGLRenderingContext,U);
for(var Sd in Ha)d[Sd]=Ha[Sd]}void 0!==b&&(d.bid=b);void 0!==a&&(d.anid=a);d.bsq=ri++;gf("//www.youtube.com/ad_data_204",{Ba:!1,A:d,withCredentials:!0})}});
T(qi,18E5)}catch(d){R(d)}}}
var ri=0;var Z=v("ytglobal.prefsUserPrefsPrefs_")||{};u("ytglobal.prefsUserPrefsPrefs_",Z,void 0);function si(){this.b=Q("ALT_PREF_COOKIE_NAME","PREF");var a=lc.get(""+this.b,void 0);if(a){a=decodeURIComponent(a).split("&");for(var b=0;b<a.length;b++){var c=a[b].split("="),d=c[0];(c=c[1])&&(Z[d]=c.toString())}}}
k=si.prototype;k.get=function(a,b){ti(a);ui(a);var c=void 0!==Z[a]?Z[a].toString():null;return null!=c?c:b?b:""};
k.set=function(a,b){ti(a);ui(a);if(null==b)throw Error("ExpectedNotNull");Z[a]=b.toString()};
k.remove=function(a){ti(a);ui(a);delete Z[a]};
k.save=function(){var a=this.b,b=[],c;for(c in Z)b.push(c+"="+encodeURIComponent(String(Z[c])));dg(a,b.join("&"),63072E3)};
k.clear=function(){for(var a in Z)delete Z[a]};
function ui(a){if(/^f([1-9][0-9]*)$/.test(a))throw Error("ExpectedRegexMatch: "+a);}
function ti(a){if(!/^\w+$/.test(a))throw Error("ExpectedRegexMismatch: "+a);}
function vi(a){a=void 0!==Z[a]?Z[a].toString():null;return null!=a&&/^[A-Fa-f0-9]+$/.test(a)?parseInt(a,16):null}
qa(si);var wi=null,xi=null,yi=null,zi={};function Ai(a){$f(a.payload_name,a.payload,void 0,void 0)}
function Bi(a){var b=a.id;a=a.ve_type;var c=og++;a=new mg({veType:a,veCounter:c,elementIndex:void 0,dataElement:void 0,youtubeData:void 0});zi[b]=a;b=qg();c=pg();b&&c&&tg(b,c,a)}
function Ci(a){var b=a.csn;a=a.root_ve_type;if(b&&a&&(rg(b,a),a=pg()))for(var c in zi){var d=zi[c];d&&tg(b,a,d)}}
function Di(a){zi[a.id]=new mg({trackingParams:a.tracking_params})}
function Ei(a){var b=qg();a=zi[a.id];b&&a&&(S("interaction_click_on_gel_web")?$f("visualElementGestured",{csn:b,ve:ng(a),gestureType:"INTERACTION_LOGGING_GESTURE_TYPE_GENERIC_CLICK"}):ug({click:{csn:b,visualElement:ng(a)}}))}
function Fi(a){a=a.ids;var b=qg();if(b)for(var c=0;c<a.length;c++){var d=zi[a[c]];d&&$f("visualElementShown",{csn:b,ve:ng(d),eventType:1})}}
function Gi(){var a=wi;a&&a.startInteractionLogging&&a.startInteractionLogging()}
;u("yt.setConfig",P,void 0);u("yt.config.set",P,void 0);u("yt.setMsg",qf,void 0);u("yt.msgs.set",qf,void 0);u("yt.logging.errors.log",of,void 0);
u("writeEmbed",function(){var a=Q("PLAYER_CONFIG",void 0);qi(!0);"gvn"==a.args.ps&&(document.body.style.backgroundColor="transparent");var b=document.referrer,c=Q("POST_MESSAGE_ORIGIN");window!=window.top&&b&&b!=document.URL&&(a.args.loaderUrl=b);Q("LIGHTWEIGHT_AUTOPLAY")&&(a.args.autoplay="1");a.args.autoplay&&Kh(a.args);wi=a=Bh(a);a.addEventListener("onScreenChanged",Ci);a.addEventListener("onLogClientVeCreated",Bi);a.addEventListener("onLogServerVeCreated",Di);a.addEventListener("onLogToGel",Ai);
a.addEventListener("onLogVeClicked",Ei);a.addEventListener("onLogVesShown",Fi);a.addEventListener("onReady",Gi);b=Q("POST_MESSAGE_ID","player");Q("ENABLE_JS_API")?yi=new Wh(a):Q("ENABLE_POST_API")&&r(b)&&r(c)&&(xi=new Zh(window.parent,b,c),yi=new Qh(a,xi.f));Q("BG_P")&&(Q("BG_I")||Q("BG_IU"))&&Ne.initialize(Q("BG_I",null),Q("BG_IU",null),ke("BG_P"),Oe);yf()},void 0);
u("yt.www.watch.ads.restrictioncookie.spr",function(a){kf(a+"mac_204?action_fcts=1");return!0},void 0);
var Hi=me(function(){lh("ol");var a=si.getInstance(),b=!!((vi("f"+(Math.floor(119/31)+1))||0)&67108864),c=1<window.devicePixelRatio;if(document.body&&Kc(document.body,"exp-invert-logo"))if(c&&!Kc(document.body,"inverted-hdpi")){var d=document.body;d.classList?d.classList.add("inverted-hdpi"):Kc(d,"inverted-hdpi")||(d.className+=0<d.className.length?" inverted-hdpi":"inverted-hdpi")}else!c&&Kc(document.body,"inverted-hdpi")&&Lc();b!=c&&(b="f"+(Math.floor(119/31)+1),d=vi(b)||0,d=c?d|67108864:d&-67108865,
0==d?delete Z[b]:Z[b]=d.toString(16).toString(),a.save())}),Ii=me(function(){var a=wi;
a&&a.sendAbandonmentPing&&a.sendAbandonmentPing();Q("PL_ATT")&&Ne.dispose();a=0;for(var b=wf.length;a<b;a++)vf(wf[a]);wf.length=0;Je("//static.doubleclick.net/instream/ad_status.js");xf=!1;P("DCLKSTAT",0);Ic(yi,xi);if(a=wi)a.removeEventListener("onScreenChanged",Ci),a.removeEventListener("onLogClientVeCreated",Bi),a.removeEventListener("onLogServerVeCreated",Di),a.removeEventListener("onLogToGel",Ai),a.removeEventListener("onLogVeClicked",Ei),a.removeEventListener("onLogVesShown",Fi),a.removeEventListener("onReady",
Gi),a.destroy();zi={}});
window.addEventListener?(window.addEventListener("load",Hi),window.addEventListener("unload",Ii)):window.attachEvent&&(window.attachEvent("onload",Hi),window.attachEvent("onunload",Ii));Aa("yt.abuse.botguardInitialized",v("yt.abuse.botguardInitialized")||Pe);Aa("yt.abuse.invokeBotguard",v("yt.abuse.invokeBotguard")||Qe);Aa("yt.abuse.dclkstatus.checkDclkStatus",v("yt.abuse.dclkstatus.checkDclkStatus")||zf);Aa("yt.player.exports.navigate",v("yt.player.exports.navigate")||sg);
Aa("yt.util.activity.init",v("yt.util.activity.init")||Kf);Aa("yt.util.activity.getTimeSinceActive",v("yt.util.activity.getTimeSinceActive")||Nf);Aa("yt.util.activity.setTimestamp",v("yt.util.activity.setTimestamp")||Lf);}).call(this);
