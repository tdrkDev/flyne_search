var inveno = {};
inveno.newsPullAdress = "http://xz.inveno.cn/",
	inveno.default_app = "h5chn",
	inveno.defRes = "detail.html",
	inveno.thirdPartyRes = "thirdparty.html",
	inveno.adPara = {imgScale:1/(Math.floor(window.devicePixelRatio) || 1),channelId:"piemediah5"},
	inveno.analyUrl = "http://zhizi.inveno.com/",
	inveno.downUrl = "http://download.inveno.com/apk/geewise/XiaoZhi_geewise_3.1.0.0.0.10.apk",
	inveno.onlineDebug =!0,
	inveno.adIdArray = [30,31,32,33,34,35,36,37,38,39,40],
	inveno.isIOS=navigator.userAgent.toLowerCase().indexOf("iphone") > -1 || navigator.userAgent.toLowerCase().indexOf("ipad") > -1 || navigator.userAgent.toLowerCase().indexOf("ios") > -1,
	inveno.isAndroid=navigator.userAgent.toLowerCase().indexOf("android") > -1 || navigator.userAgent.toLowerCase().indexOf("adr") > -1 || navigator.userAgent.toLowerCase().indexOf("linux") > -1;
	inveno.adCSSUrl = 'http://download.inveno.com/SDK/malacca_js/1.1/src/malacca.1.1.css';
	inveno.adScriptUrl  = inveno.onlineDebug?'http://h5chn.hotoday.cn/jssdk/release/malacca_jhSdk.js':'http://j.inveno.com/jssdk/malacca_jhSdk.js';
	inveno.homeBaseUrl = (inveno.onlineDebug==true)?"http://192.168.1.238:18011":'http://h5chn.hotoday.cn';
	inveno.configAddress = (inveno.onlineDebug==true)?"http://192.168.1.238/":"http://business.inveno.com/";
	inveno.jQAddress = "http://download.inveno.com/SDK/malacca_js/1.1/src/jquery.min.js";
	inveno.csAddress = "http://download.inveno.com/SDK/malacca_js/1.1/src/inveno.css";
    inveno.youkuAdress = "http://player.youku.com/jsapi";
	inveno.relatedRecommendId = 0,
		inveno.hotRecommendId = 0,
		inveno.isSupportStorage = 1,
		inveno.lsExpire = 600000,
		inveno.isDisplayInterfaceStatus = !1, //是否展示接口拉取失败标识
		inveno.strategyObj = null, //chenkailong 请求过来的策略数据。
		inveno.MD5 = function(data) {
    function fflog(msg) {
        try {
            console.log(msg);
        } catch(e) {}
    }
    function to_zerofilled_hex(n) {
        var t1 = (n >>> 24).toString(16);
        var t2 = (n & 0x00FFFFFF).toString(16);
        return "00".substr(0, 2 - t1.length) + t1 +
        "000000".substr(0, 6 - t2.length) + t2;
    }
    function chars_to_bytes(ac) {
        var retval = [];
        for (var i = 0; i < ac.length; i++) {
            retval = retval.concat(str_to_bytes(ac[i]));
        }
        return retval;
    }
    function int64_to_bytes(num) {
        var retval = [];
        for (var i = 0; i < 8; i++) {
            retval.push(num & 0xFF);
           num = num >>> 8;
        }
        return retval;
    }
    function rol(num, places) {
        return ((num << places) & 0xFFFFFFFF) | (num >>> (32 - places));
    }
    function fF(b, c, d) {
        return (b & c) | (~b & d);
    }
    function fG(b, c, d) {
        return (d & b) | (~d & c);
    }
    function fH(b, c, d) {
        return b ^ c ^ d;
    }
    function fI(b, c, d) {
        return c ^ (b | ~d);
    }
    function bytes_to_int32(arr, off) {
        return (arr[off + 3] << 24) | (arr[off + 2] << 16) | (arr[off + 1] << 8) | (arr[off]);
    }
 	function str_to_bytes(str) {
 	    var retval = [ ];
 	    for (var i = 0; i < str.length; i++)
 	        if (str.charCodeAt(i) <= 0x7F) {
 	            retval.push(str.charCodeAt(i));
 	        } else {
 	            var tmp = encodeURIComponent(str.charAt(i)).substr(1).split('%');
 	            for (var j = 0; j < tmp.length; j++) {
 	                retval.push(parseInt(tmp[j], 0x10));
 				}
 	        }
 	    return retval;
 	};
    function int128le_to_hex(a, b, c, d) {
        var ra = "";
        var t = 0;
        var ta = 0;
        for (var i = 3; i >= 0; i--) {
            ta = arguments[i];
            t = (ta & 0xFF);
            ta = ta >>> 8;
            t = t << 8;
            t = t | (ta & 0xFF);
            ta = ta >>> 8;
            t = t << 8;
            t = t | (ta & 0xFF);
            ta = ta >>> 8;
            t = t << 8;
            t = t | ta;
            ra = ra + to_zerofilled_hex(t);
        }
        return ra;
    }
    var databytes = null;
    if (typeof data == 'string') {
        databytes = str_to_bytes(data);
    } else if (data.constructor == Array) {
        if (data.length === 0) {
            databytes = data;
        } else if (typeof data[0] == 'string') {
            databytes = chars_to_bytes(data);
        } else if (typeof data[0] == 'number') {
            databytes = data;
        } else {
            fflog("input data type mismatch");
     		return null;
        }
    } else {
        fflog("input data type mismatch");
        return null;
    }
    var org_len = databytes.length;
    databytes.push(0x80);
    var tail = databytes.length % 64;
    if (tail > 56) {
        for (var i = 0; i < (64 - tail); i++) {
            databytes.push(0x0);
        }
        tail = databytes.length % 64;
    }
    for (i = 0; i < (56 - tail); i++) {
        databytes.push(0x0);
    }
    databytes = databytes.concat(int64_to_bytes(org_len * 8));
    var h0 = 0x67452301;
    var h1 = 0xEFCDAB89;
    var h2 = 0x98BADCFE;
    var h3 = 0x10325476;
    var a = 0,
    b = 0,
    c = 0,
    d = 0;
 	function _add(n1, n2) {
 		return 0x0FFFFFFFF & (n1 + n2)
 	}
    var updateRun = function(nf, sin32, dw32, b32) {
        var temp = d;
        d = c;
        c = b;
 		b = _add(b,
 			rol(
 				_add(a,
 					_add(nf, _add(sin32, dw32))
 				), b32
 			)
 		);
        a = temp;
    };
    for (i = 0; i < databytes.length / 64; i++) {
        a = h0;
        b = h1;
        c = h2;
        d = h3;
        var ptr = i * 64;
        updateRun(fF(b, c, d), 0xd76aa478, bytes_to_int32(databytes, ptr), 7);
        updateRun(fF(b, c, d), 0xe8c7b756, bytes_to_int32(databytes, ptr + 4), 12);
        updateRun(fF(b, c, d), 0x242070db, bytes_to_int32(databytes, ptr + 8), 17);
        updateRun(fF(b, c, d), 0xc1bdceee, bytes_to_int32(databytes, ptr + 12), 22);
        updateRun(fF(b, c, d), 0xf57c0faf, bytes_to_int32(databytes, ptr + 16), 7);
        updateRun(fF(b, c, d), 0x4787c62a, bytes_to_int32(databytes, ptr + 20), 12);
        updateRun(fF(b, c, d), 0xa8304613, bytes_to_int32(databytes, ptr + 24), 17);
        updateRun(fF(b, c, d), 0xfd469501, bytes_to_int32(databytes, ptr + 28), 22);
        updateRun(fF(b, c, d), 0x698098d8, bytes_to_int32(databytes, ptr + 32), 7);
        updateRun(fF(b, c, d), 0x8b44f7af, bytes_to_int32(databytes, ptr + 36), 12);
        updateRun(fF(b, c, d), 0xffff5bb1, bytes_to_int32(databytes, ptr + 40), 17);
        updateRun(fF(b, c, d), 0x895cd7be, bytes_to_int32(databytes, ptr + 44), 22);
        updateRun(fF(b, c, d), 0x6b901122, bytes_to_int32(databytes, ptr + 48), 7);
        updateRun(fF(b, c, d), 0xfd987193, bytes_to_int32(databytes, ptr + 52), 12);
        updateRun(fF(b, c, d), 0xa679438e, bytes_to_int32(databytes, ptr + 56), 17);
        updateRun(fF(b, c, d), 0x49b40821, bytes_to_int32(databytes, ptr + 60), 22);
        updateRun(fG(b, c, d), 0xf61e2562, bytes_to_int32(databytes, ptr + 4), 5);
        updateRun(fG(b, c, d), 0xc040b340, bytes_to_int32(databytes, ptr + 24), 9);
        updateRun(fG(b, c, d), 0x265e5a51, bytes_to_int32(databytes, ptr + 44), 14);
        updateRun(fG(b, c, d), 0xe9b6c7aa, bytes_to_int32(databytes, ptr), 20);
        updateRun(fG(b, c, d), 0xd62f105d, bytes_to_int32(databytes, ptr + 20), 5);
        updateRun(fG(b, c, d), 0x2441453, bytes_to_int32(databytes, ptr + 40), 9);
        updateRun(fG(b, c, d), 0xd8a1e681, bytes_to_int32(databytes, ptr + 60), 14);
        updateRun(fG(b, c, d), 0xe7d3fbc8, bytes_to_int32(databytes, ptr + 16), 20);
        updateRun(fG(b, c, d), 0x21e1cde6, bytes_to_int32(databytes, ptr + 36), 5);
        updateRun(fG(b, c, d), 0xc33707d6, bytes_to_int32(databytes, ptr + 56), 9);
        updateRun(fG(b, c, d), 0xf4d50d87, bytes_to_int32(databytes, ptr + 12), 14);
        updateRun(fG(b, c, d), 0x455a14ed, bytes_to_int32(databytes, ptr + 32), 20);
        updateRun(fG(b, c, d), 0xa9e3e905, bytes_to_int32(databytes, ptr + 52), 5);
        updateRun(fG(b, c, d), 0xfcefa3f8, bytes_to_int32(databytes, ptr + 8), 9);
        updateRun(fG(b, c, d), 0x676f02d9, bytes_to_int32(databytes, ptr + 28), 14);
        updateRun(fG(b, c, d), 0x8d2a4c8a, bytes_to_int32(databytes, ptr + 48), 20);
        updateRun(fH(b, c, d), 0xfffa3942, bytes_to_int32(databytes, ptr + 20), 4);
        updateRun(fH(b, c, d), 0x8771f681, bytes_to_int32(databytes, ptr + 32), 11);
        updateRun(fH(b, c, d), 0x6d9d6122, bytes_to_int32(databytes, ptr + 44), 16);
        updateRun(fH(b, c, d), 0xfde5380c, bytes_to_int32(databytes, ptr + 56), 23);
        updateRun(fH(b, c, d), 0xa4beea44, bytes_to_int32(databytes, ptr + 4), 4);
        updateRun(fH(b, c, d), 0x4bdecfa9, bytes_to_int32(databytes, ptr + 16), 11);
        updateRun(fH(b, c, d), 0xf6bb4b60, bytes_to_int32(databytes, ptr + 28), 16);
        updateRun(fH(b, c, d), 0xbebfbc70, bytes_to_int32(databytes, ptr + 40), 23);
        updateRun(fH(b, c, d), 0x289b7ec6, bytes_to_int32(databytes, ptr + 52), 4);
        updateRun(fH(b, c, d), 0xeaa127fa, bytes_to_int32(databytes, ptr), 11);
        updateRun(fH(b, c, d), 0xd4ef3085, bytes_to_int32(databytes, ptr + 12), 16);
        updateRun(fH(b, c, d), 0x4881d05, bytes_to_int32(databytes, ptr + 24), 23);
        updateRun(fH(b, c, d), 0xd9d4d039, bytes_to_int32(databytes, ptr + 36), 4);
        updateRun(fH(b, c, d), 0xe6db99e5, bytes_to_int32(databytes, ptr + 48), 11);
        updateRun(fH(b, c, d), 0x1fa27cf8, bytes_to_int32(databytes, ptr + 60), 16);
        updateRun(fH(b, c, d), 0xc4ac5665, bytes_to_int32(databytes, ptr + 8), 23);
        updateRun(fI(b, c, d), 0xf4292244, bytes_to_int32(databytes, ptr), 6);
        updateRun(fI(b, c, d), 0x432aff97, bytes_to_int32(databytes, ptr + 28), 10);
        updateRun(fI(b, c, d), 0xab9423a7, bytes_to_int32(databytes, ptr + 56), 15);
        updateRun(fI(b, c, d), 0xfc93a039, bytes_to_int32(databytes, ptr + 20), 21);
        updateRun(fI(b, c, d), 0x655b59c3, bytes_to_int32(databytes, ptr + 48), 6);
        updateRun(fI(b, c, d), 0x8f0ccc92, bytes_to_int32(databytes, ptr + 12), 10);
        updateRun(fI(b, c, d), 0xffeff47d, bytes_to_int32(databytes, ptr + 40), 15);
        updateRun(fI(b, c, d), 0x85845dd1, bytes_to_int32(databytes, ptr + 4), 21);
        updateRun(fI(b, c, d), 0x6fa87e4f, bytes_to_int32(databytes, ptr + 32), 6);
        updateRun(fI(b, c, d), 0xfe2ce6e0, bytes_to_int32(databytes, ptr + 60), 10);
        updateRun(fI(b, c, d), 0xa3014314, bytes_to_int32(databytes, ptr + 24), 15);
        updateRun(fI(b, c, d), 0x4e0811a1, bytes_to_int32(databytes, ptr + 52), 21);
        updateRun(fI(b, c, d), 0xf7537e82, bytes_to_int32(databytes, ptr + 16), 6);
        updateRun(fI(b, c, d), 0xbd3af235, bytes_to_int32(databytes, ptr + 44), 10);
        updateRun(fI(b, c, d), 0x2ad7d2bb, bytes_to_int32(databytes, ptr + 8), 15);
        updateRun(fI(b, c, d), 0xeb86d391, bytes_to_int32(databytes, ptr + 36), 21);
        h0 = _add(h0, a);
        h1 = _add(h1, b);
        h2 = _add(h2, c);
        h3 = _add(h3, d);
    }
    return int128le_to_hex(h3, h2, h1, h0).toLowerCase();
};
!function(){
	function cookie(a){
		var arr,reg=new RegExp("(^| )"+a+"=([^;]*)(;|$)");
		if(arr=document.cookie.match(reg))
			return decodeURIComponent(arr[2]);
		else
			return null;
	};
	function support_storage() {
		try {
			return 'localStorage' in window && window['localStorage'] !== null;
		} catch (e) {
			return false;
		}
	};
	inveno.isSupportStorage = support_storage();
	var app = (document.location.search.match(new RegExp("(?:^\\?|&)invenoapp=(.*?)(?=&|$)")) || ['', null])[1] || cookie('app');
	var uid = (document.location.search.match(new RegExp("(?:^\\?|&)invenouid=(.*?)(?=&|$)")) || ['', null])[1] || cookie('uid');
	if(app != null && uid != null){
		inveno.whichRes = 2
	}else if(document.location && document.location.href.indexOf(inveno.defRes)>0){
		inveno.whichRes = 0;
	}else{
		inveno.whichRes = 3;
	}
}();

!function(a) {
	var b = a.Zepto || a.jQuery;
	a.Statistics = {
		base:"http://imgs.inveno.com/icon?id=5984951488922036500&quality=raw?",
		params: function(a) {
			var b, c = {};
			if ("string" == typeof a) c._once_ = a, c._dc = +new Date;
			else {
				for (b in a) c[b] = a[b];
				if (c.hasOwnProperty("_dc")) {
					var d;
					for (d = "_dc" + Math.random().toString().substring(2, 15); c.hasOwnProperty(d););
					c[d] = +new Date
				} else c._dc = +new Date
			}
			return this.appendParams(c)
		},
		appendParams: function(a) {
			var b, c = [];
			for (b in a) a.hasOwnProperty(b) && c.push(b + "=" + a[b]);
			return c.join("&")
		},
		addStatistics: function(a, b) {
			var c;
			b = b || this.base, c = new Image(1, 1), c.src = b + this.params(a)
		},
		addGlobalSupport: function() {
			function a(a) {
				var b, d, e;
				a.preventDefault(), a.stopPropagation(), b = a.target, d = b.parentNode, ((e = b.getAttribute("data-code")) || (e = d.getAttribute("data-code"))) && c.addStatistics(e)
			}
			var c = this;
			b("body").on("touchend", "[data-code]", a)
		}
	}
}(this);
var Base64 = {
	_keyStr: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=",
	encode: function(a) {
		var b, c, d, e, f, g, h, i = "",
			j = 0;
		for (a = Base64._utf8_encode(a); j < a.length;) b = a.charCodeAt(j++), c = a.charCodeAt(j++), d = a.charCodeAt(j++), e = b >> 2, f = (3 & b) << 4 | c >> 4, g = (15 & c) << 2 | d >> 6, h = 63 & d, isNaN(c) ? g = h = 64 : isNaN(d) && (h = 64), i = i + this._keyStr.charAt(e) + this._keyStr.charAt(f) + this._keyStr.charAt(g) + this._keyStr.charAt(h);
		return i
	},
	decode: function(a) {
		var b, c, d, e, f, g, h, i = "",
			j = 0;
		for (a = a.replace(/[^A-Za-z0-9\+\/\=]/g, ""); j < a.length;) e = this._keyStr.indexOf(a.charAt(j++)), f = this._keyStr.indexOf(a.charAt(j++)), g = this._keyStr.indexOf(a.charAt(j++)), h = this._keyStr.indexOf(a.charAt(j++)), b = e << 2 | f >> 4, c = (15 & f) << 4 | g >> 2, d = (3 & g) << 6 | h, i += String.fromCharCode(b), 64 != g && (i += String.fromCharCode(c)), 64 != h && (i += String.fromCharCode(d));
		return i = Base64._utf8_decode(i)
	},
	_utf8_encode: function(a) {
		a = a.replace(/\r\n/g, "\n");
		for (var b = "", c = 0; c < a.length; c++) {
			var d = a.charCodeAt(c);
			128 > d ? b += String.fromCharCode(d) : d > 127 && 2048 > d ? (b += String.fromCharCode(d >> 6 | 192), b += String.fromCharCode(63 & d | 128)) : (b += String.fromCharCode(d >> 12 | 224), b += String.fromCharCode(d >> 6 & 63 | 128), b += String.fromCharCode(63 & d | 128))
		}
		return b
	},
	_utf8_decode: function(a) {
		for (var b = "", c = 0, d = c1 = c2 = 0; c < a.length;) d = a.charCodeAt(c), 128 > d ? (b += String.fromCharCode(d), c++) : d > 191 && 224 > d ? (c2 = a.charCodeAt(c + 1), b += String.fromCharCode((31 & d) << 6 | 63 & c2), c += 2) : (c2 = a.charCodeAt(c + 1), c3 = a.charCodeAt(c + 2), b += String.fromCharCode((15 & d) << 12 | (63 & c2) << 6 | 63 & c3), c += 3);
		return b
	}
};
//使requestAnimationFrame适用所有浏览器
!function() {
    var lastTime = 0;
    var vendors = ['ms', 'moz', 'webkit', 'o'];
    for (var x = 0; x < vendors.length && !window.requestAnimationFrame; ++x) {
        window.requestAnimationFrame = window[vendors[x] + 'RequestAnimationFrame'];
       	window.cancelAnimationFrame = window[vendors[x] + 'CancelAnimationFrame'] || window[vendors[x] + 'CancelRequestAnimationFrame'];
    }
    if (!window.requestAnimationFrame) window.requestAnimationFrame = function(callback, element) {
        var currTime = new Date().getTime();
        var timeToCall = Math.max(0, 16 - (currTime - lastTime));
        var id = window.setTimeout(function() {
           	 callback(currTime + timeToCall);
        }, timeToCall);
        lastTime = currTime + timeToCall;
        return id;
    };
    if (!window.cancelAnimationFrame) window.cancelAnimationFrame = function(id) {
        clearTimeout(id);
    };
}(),
Date.prototype.format = function(fmt) {
	var o = {
		"M+": this.getMonth() + 1, 						//月份
		"d+": this.getDate(), 							//日
		"h+": this.getHours(), 							//小时
		"m+": this.getMinutes(), 						//分
		"s+": this.getSeconds(), 						//秒
		"q+": Math.floor((this.getMonth() + 3) / 3), 	//季度
		"S": this.getMilliseconds() 					//毫秒
	};
	if (/(y+)/.test(fmt))
		fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
	for (var k in o)
		if (new RegExp("(" + k + ")").test(fmt))
			fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
	return fmt;
};
!function(win,inveno){
	inveno.getUid=function(){
        function S4() {
            return (((1+Math.random())*0x10000)|0).toString(16).substring(1);
        }
        return (S4()+S4()+"-"+S4()+"-"+S4()+"-"+S4()+"-"+S4()+S4()+S4());
    },
	inveno.int_to_6bithex = function(n){
			var t2 = (n & 0x00FFFFFF).toString(16);
			var ret = "0x" + "000000".substr(0, 6 - t2.length) + t2;
			return ret;
		},
	inveno.getCookie = function(a){
		var arr,reg=new RegExp("(^| )"+a+"=([^;]*)(;|$)");
		if(arr=document.cookie.match(reg))
			return decodeURIComponent(arr[2]);
		else
			return null;
	},

	inveno.setCookie = function(key, value, oTime, domain, path) {
		var a = -1, o = new Date;
		Number(oTime) && (o.setTime(o.getTime() + 1e3 * oTime),
		a = o.toUTCString());
		var r = key + "=" + value + "; expires=" + a;
		domain && (r += "; domain=" + domain),
		path && (r += "; path=" + path),
			document.cookie = r
	}
	inveno.getQueryPara = function (a){
			return (document.location.search.match(new RegExp("(?:^\\?|&)" + a + "=(.*?)(?=&|$)")) || ['', null])[1];
	},
	inveno.getUrl = function(a){
		return document.location.href || "";
	},
	inveno.getHashPara = function (a){
		return (document.location.hash.match(new RegExp("(?:^\\#|&)" + a + "=(.*?)(?=&|$)")) || ['', null])[1];
	},
	//用户唯一标识	
	inveno.uid = function (){
		var t = '';
		return (t=inveno.getQueryPara(inveno.whichRes==0?'uid':'invenouid')
			|| inveno.getCookie('uid'),t && (inveno.isSupportStorage?localStorage.setItem('inveno_uid',t):inveno.setCookie('inveno_uid',t)),t)
			|| (inveno.isSupportStorage?localStorage.getItem('inveno_uid'):inveno.getCookie('inveno_uid'));
	}(),
	//渠道号
	inveno.app = function(){
		return inveno.getQueryPara(inveno.whichRes==0?'app':'invenoapp') || inveno.getCookie('app');
	}(),
    //app相关promotion值
    inveno.promotion = function(){
        return inveno.getQueryPara('promotion') || inveno.getCookie('promotion') || (console.log('promotion is null'),'');
    }(),
    //默认的appsec值
    inveno.appSec = "fccf9b7e512768fc738f8b24516aaf4102bc6b8d",
    inveno.drrsce = 328447,           //初始化相关推荐scenario值
    inveno.dmlrsce = 132095,          //初始化精彩推荐scenario值

	inveno.id = function(){
		return inveno.getQueryPara(inveno.whichRes==0?'id':'invenoid') || inveno.getCookie('id');
		}(),
		//一级页传过来的scenario
		inveno.scenario = function(){
			return inveno.getQueryPara('scenario') || inveno.getCookie('scenario');
	}(),
	inveno.h5ver = function(){
		return inveno.getCookie('h5ver');
	}(),
	//是否开启滚动监控
	inveno.isMonitorScroll = !1,
	//拉取几屏资讯
	inveno.pgn = 1,
	//资讯偏移量，用来上传已拉取到的最后的资讯id
	inveno.mid = 0,
	//当前是否是推荐频道
	inveno.isRecom = !0;
	//是否当前正在拉取资讯
	inveno.isPullingNews = !1,
	//页面是否在滚动
	inveno.isScroll = !1,
	//当前资讯数据是否是缓存数据
	inveno.isCacheData = !1,
	//广告css Load标识
	inveno.adCSSReady = !1,
	//广告js插件load标识
	inveno.adJSReady = !1;
	//当前滚动位置
	inveno.currentScrollY = 0;
	//先前滚动位置
	inveno.previousScrollY = 0;

	//对金立负一屏处理广告id
	switch (inveno.app){
		case "fyp-ginee-h5":
			inveno.adIdArray = ["67","66","65","64","63","62","61","60","59","58","57"];
			break;
		case "amicallist-h5":
			inveno.adIdArray = ["30","104","103","102","101","100","99","98","97","96","95"];
			break;
		case "amicaldet-h5":
			inveno.adIdArray = ["30","105","106","107","108","109","110","111","112","113","114"];
			break;
		default:
			break;
	}
	//获取详情页跳转url地址
	inveno.getDetailUrl = function (data) {

		function matchUrl(b,a){
			return  (b.match(new RegExp("(?:^\\?|&)" + a + "=(.*?)(?=&|$)")) || ['', null])[1];
		};
        //if((data.action == 1 || data.action == 2)){
        if((data.link_type == 0x00000001)){
            var b = data.origin_url.substring(data.origin_url.indexOf('?')),
                app = matchUrl(b,"invenoapp") || matchUrl(b,"app"),
                uid = matchUrl(b,"invenouid") || matchUrl(b,"uid"),
                id = matchUrl(b,"invenoid") || matchUrl(b,"id");
        }
        return   ((data.link_type == 0x00000001)
        && data.origin_url + (data.origin_url.indexOf('?')>0?'&':'?') + (app != null  ?"":("invenoapp=" + this.app)) + (uid != null ?"":("&invenouid=" + this.uid)) + (id != null ?"":("&invenoid=" + data.content_id) + "&upack=" + (data.upack || '-') +"&cpack=" + (data.cpack || '-') +"&scenario=" + (this.scenario || '-') +"&tm=" + data.publish_time + "&type=" + data.content_type + "#fract=" + (this.isIndex?(Number($.getHash('channel'))+100):118))
        || inveno.homeBaseUrl  + "/detail.html?app=" + this.app + "&uid=" + this.uid + "&id=" + data.content_id +"&upack=" + (data.upack || '-') +"&cpack=" + (data.cpack || '-') +"&scenario=" + (this.scenario || '-') + "&tm=" + data.publish_time + "&type=" + data.content_type+"#fract=" + (this.isIndex?(Number($.getHash('channel'))+100):118));
	},
	// 资讯下标时间处理
	inveno.lastdate = function (d,channel) {
		var c = (new Date().getTime()) - (d * 1000);
		if(c / (1000 * 60) <= 1){
			return "1分钟内";
		}else if (c / (1000 * 60) <= 60) {
			return parseInt(c / (1000 * 60), 10) + '分钟前 ';
		} else if (c / (1000 * 60 * 60) <= 12) {
			return parseInt(c / (1000 * 60 * 60), 10) + '小时前 ';
		} else if (c / (1000 * 60 * 60 * 24) <= 1) {
			return new Date(d*1000).format('hh:mm');
/*            } else if(this.isRecom){
                return channel;*/
        }else{
            return "一天前";//new Date(d*1000).format("MM-dd hh:mm");
		}
	},
	//获取已阅读所有id的集合
	inveno.getReadedNewsIdArray = function () {
		var idArray = inveno.isSupportStorage ? window.localStorage.getItem("inveno_readedNewsId") : inveno.getCookie("inveno_readedNewsId");
		return idArray && idArray.split(",") || [];
	},
	//给已阅读id设置样式
	inveno.setReadedNewsCss = function setCheckZixun() {
		var arry = this.getReadedNewsIdArray();
		for (var i = 0; i < arry.length; i++) {
			jQuery("#yuedu_" + arry[i]).addClass("yiyuedu-huise");
		}
	},
	//添加新id
	inveno.addNewsId = function (newsId) {
		var idArry = this.getReadedNewsIdArray();
		if(idArry.indexOf(newsId) == -1){
			idArry.push(newsId);
			(inveno.isSupportStorage ? localStorage.setItem("inveno_readedNewsId",idArry.join()) : inveno.setCookie("inveno_readedNewsId",idArry.join()))
				&& this.setReadedNewsCss();
		}
	},
	//图片load处理
	//可见区域时加载图片(图片懒加载，减缓服务器压力)
	inveno.loadVisibleAreaImg = function () {
		inveno.hr?jQuery('.hot-recommend').addClass('display'):"";
		var height = jQuery(window).height(); 						//可视区域的高度
		jQuery(".scrollLoading").each(function(index, item) {
			var isAnimation = jQuery(this).attr("isanimation");
			if (isAnimation == 1) 								//已播放动画  并为src赋值   则不再进入
				return;
			var thisTop = jQuery(this).offset().top; 				//当前图片距离顶部的高度
			var thisHeight = jQuery(this).height(); 					//当前图片本身的高度
			var thisWidth = jQuery(this).width(); 					//当前图片本身的宽度

			if ( height==0 || (thisTop >=jQuery(window).scrollTop()-0.5*height && thisTop <=jQuery(window).scrollTop() + 1.5*height) || ((thisTop + thisHeight) >=jQuery(window).scrollTop() -0.5*height && (thisTop + thisHeight) <=jQuery(window).scrollTop() + 1.5*height )) { //判断图片是否在可视区域
				if(jQuery(this).hasClass("hot-recommend") && inveno.hr){
					inveno.ajax('q',{jsonpCallback:"jsonpforq"});
				}else{
					jQuery(this).attr("src", jQuery(this).attr("data-url")); 	//设置真实路径
				}
				//if (jQuery(this).attr("src") != undefined) {
					jQuery(this).attr("isanimation", 1); 				//设置已注册过图片加载事件（播放过动画）
				//}
			}
			if( inveno.app.indexOf("coolpad")>=0){
				jQuery(this).attr("src", jQuery(this).attr("data-url")); 	//设置真实路径
			}
		});

		jQuery(".scrollAdLoading").each(function(index,item){
			//chenkailong 修改图片可视区域
			var thisTop =  jQuery(window).scrollTop();
			var thisHeight = jQuery(window).height();
			var thisWidth =  this.offsetTop;
			//判断广告是否在可视范围内，如果是则 加载图片。
			if (jQuery(this).attr("load") == "1") {
				jQuery(this).removeClass("scrollAdLoading");
				return;
			}
            if ( height==0 || (thisTop >=jQuery(window).scrollTop()-0.5*height && thisTop <=jQuery(window).scrollTop() + 1.5*height) || ((thisTop + thisHeight) >=jQuery(window).scrollTop() -0.5*height && (thisTop + thisHeight) <=jQuery(window).scrollTop() + 1.5*height )) { //判断图片是否在可视区域

				if(jQuery(this).attr("adSpace") != null && inveno.adCSSReady && inveno.adJSReady){
					jQuery(this).attr("adSpaceId",jQuery(this).attr("adSpace"));
					jQuery.malaccaJhRender(inveno.adPara);
				}
			}
		});

		if( inveno.app.indexOf("coolpad")>=0 && inveno.hr && jQuery(".hot-recommend").attr('isanimation')!=1){
			inveno.ajax('q',{jsonpCallback:"jsonpforq"});
			jQuery(".hot-recommend").attr('isanimation', 1);
		}
	},
	//图片load成功
	win.loadimg = function (){
		var e = this.parentNode;
		if (e && jQuery(this).attr("src").indexOf("http")>-1) {
			this.style.opacity = "1";
			e.style.background = "none";
		}
	},
	//图片load失败
	win.errorimg = function (){
		jQuery(this).attr("src","data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAADUlEQVQImWNgYGBgAAAABQABh6FO1AAAAABJRU5ErkJggg==");
		jQuery(this).attr("isanimation",0);
	},
	//获取图片最大尺寸
	inveno.getImgMaxSize = function (imgO){
		var imgSize = {};
		(imgO.imgH>imgO.maxH && imgO.imgW>imgO.maxW && (imgSize.w = imgO.maxW,imgSize.h = imgO.maxH)) || (imgO.imgW/imgO.imgH > imgO.a && (imgSize.h = imgO.imgH,imgSize.w = imgO.a*imgO.imgH)) || (imgO.imgW/imgO.imgH < imgO.a && (imgSize.w = imgO.imgW,imgSize.h = imgO.imgW/imgO.a));
		return imgSize;
	},
	//图片处理结束
	//处理文字长度
	inveno.textLengthHandle = function (content, num) {
		return content.length > num && content.substr(0, num) + '..' || content;
	},
	//资讯组装函数
	inveno.getNewsHtml = function (d){
		var html = "",
			url = this.getDetailUrl(d),
			imgSize = [];
			d.title = this.textLengthHandle(d.title, 25),
                d.summary = this.textLengthHandle(d.summary, 46);
            var defImg = "data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAADUlEQVQImWNgYGBgAAAABQABh6FO1AAAAABJRU5ErkJggg==";
            //	d.src = this.textLengthHandle(d.src, 4);
            html += '<section class="list-item '+ (this.isCacheData?'"':'waitForCollect"') + ' data-action = "' + d.link_type +'" data-stime = "' + (d.stime || "-") + '" data-upack = "' + (d.upack || "-") + '" data-type = "' + d.content_type + '" data-cpack = "' + (d.cpack || "-") + '"  data-url = "'+url+'" data-scenario = "' + (d.scenario || "-") + '" data-id = "' + d.content_id + '" onclick="goToDetail.call(this) "';
            if(this.isIndex && d.display == 0x00000008){
                imgSize = this.getImgMaxSize({"a":16/9,"maxH":900,"maxW":1600,"imgW":d.list_images[0].width,"imgH":d.list_images[0].height});
                html+=' data-dtype = "' + 1 + '">';
                html += '<h3 id="yuedu_' + d.content_id + '" class="article_title banner">' + d.title + '</h3>';
                html += '<div class="list-item-img banner">';
                html +=     '<img onload="loadimg.call(this)" class="scrollLoading" onerror="errorimg.call(this,true)" src="'+(inveno.lazy?defImg:d.list_images[0].img_url)+'" data-url="' + d.list_images[0].img_url + "&width=" + imgSize.w + "&height=" + imgSize.h + '">';
			if(d.label == "视频"){
				html +=   '<span class="video-icon-banner"> </span>';
			}
    		html += '</div>';
    		html += '<div class="item_info banner">';
			html +=    '<span class="article_src">' + d.source + '</span>';
       	 	if(d.label != "推广" && d.label != "视频" && d.label){
    			html +='<div class="article_label addRed">' + d.label + '</div>';
    		}else if(d.label != "视频" && d.label){
    			html +='<div class="article_label">' + d.label + '</div>';
    		}
               html +=    '<span class="article_time">' + this.lastdate(d.publish_time,d.channel) + '</span>';
            }else{
                if (d.display == 0x00000002) {
                    html+=' data-dtype = "' + 0 + '">';
                    imgSize = this.getImgMaxSize({"a":21/16,"maxH":160,"maxW":210,"imgW":d.list_images[0].width,"imgH":d.list_images[0].height});
                    html +='<div class="list-item-img">';
                    html +=	   '<img  src="'+(inveno.lazy?defImg:d.list_images[0].img_url)+'" onload="loadimg.call(this)" onerror="errorimg.call(this)" data-url="' + d.list_images[0].img_url + "&width=" + imgSize.w + "&height=" + imgSize.h + '"  class="bg-img-div-img scrollLoading"  alt="hotoday">';
				if(d.label == "视频"){
					html +=   '<span class="video-icon-small"> </span>';
				}
				if (d.type == 1){
		       		html +=    '<div class="list-item-img-shiping"></div>';
		    	}
				html +=    '</div>';

				html +='<article class="list-item-title" >';
                    html +=    '<h3 id="yuedu_' + d.content_id + '" class="article_title withPicAndText" style="margin-left:0.28rem">' + d.title + '</h3>';
                    html +=	   '<div class="item_info withPicAndText">';
                    html +=    '<span class="article_src" style="margin-left:0.28rem">' + d.source + '</span>';
                    if(d.label != "广告" && d.label != "视频" && d.label){
					html +=    '<div class="article_label addRed">' + d.label + '</div>';
				}else if(d.label != "视频" && d.label){
					html +=    '<div class="article_label">' + d.label + '</div>';
				}
                    html +=    '<span class="article_time">' + this.lastdate(d.publish_time,d.channel) + '</span>';
                    html +=    '</div>';
                    html +='</article>';
                }else if (d.display == 0x00000004) {
                    html+=' data-dtype = "' + 2 + '">';
                    imgSize = [this.getImgMaxSize({"a":21/16,"maxH":160,"maxW":210,"imgW":d.list_images[0].width,"imgH":d.list_images[0].height}),this.getImgMaxSize({"a":21/16,"maxH":160,"maxW":210,"imgW":d.list_images[1].width,"imgH":d.list_images[1].height}),this.getImgMaxSize({"a":21/16,"maxH":160,"maxW":210,"imgW":d.list_images[2].width,"imgH":d.list_images[2].height})];
                    html +='<h3 id="yuedu_' + d.content_id + '" class="article_title">' + d.title + '</h3>';
                    html +='<div class="list_image">';
                    html +=    '<ul class="clearfix">';
                    html +=        '<li class="list_img_holder"><img class="scrollLoading" onerror="errorimg.call(this)" onload="loadimg.call(this)" src="'+(inveno.lazy?defImg:d.list_images[0].img_url)+'" data-url="' + d.list_images[0].img_url + "&width=" + imgSize[0].w + "&height=" + imgSize[0].h + '"></li>';
                    html +=        '<li class="list_img_holder"><img class="scrollLoading" onerror="errorimg.call(this)" onload="loadimg.call(this)" src="'+(inveno.lazy?defImg:d.list_images[1].img_url)+'" data-url="' + d.list_images[1].img_url + "&width=" + imgSize[1].w + "&height=" + imgSize[1].h + '"></li>';
                    html +=		   '<li class="list_img_holder"><img class="scrollLoading" onerror="errorimg.call(this)" onload="loadimg.call(this)" src="'+(inveno.lazy?defImg:d.list_images[2].img_url)+'" data-url="' + d.list_images[2].img_url + "&width=" + imgSize[2].w + "&height=" + imgSize[2].h + '"></li>';
        		html +=	    '</ul>';
    			html +='</div>';
    			html +='<div class="item_info">';
                    html +=    '<span class="article_src">' + d.source + '</span>';
    			if(d.label != "推广" && d.label){
    				html +='<div class="article_label addRed">' + d.label + '</div>';
    			}else if(d.label){
    				html +='<div class="article_label">' + d.label + '</div>';
    			}
    			html +=    '<span class="article_time">' + this.lastdate(d.tm,d.channel) + '</span>';
                }else if (d.display == 0x00000001){
                    html+=' data-dtype = "' + 3 + '">';
                    html +='<h3 id="yuedu_' + d.content_id + '" class="article_title">' + d.title + '</h3>';
                    html +='<div class="item_info text">';
                    html +=    '<span class="article_src">' + d.source + '</span>';
				if(d.label != "推广" && d.label){
					html +='<div class="article_label addRed">' + d.label + '</div>';
				}else if(d.label){
					html +='<div class="article_label">' + d.label + '</div>';
				}
                    html +=    '<span class="article_time">' + this.lastdate(d.publish_time,d.channel) + '</span>';
                }else{ //相关推荐接口目前线上有问题，暂时兼容一下   --louis0901
                    html+=' data-dtype = "' + 0 + '">';
                    imgSize = this.getImgMaxSize({"a":21/16,"maxH":160,"maxW":210,"imgW":d.list_images[0].width,"imgH":d.list_images[0].height});
                    html +='<div class="list-item-img">';
                    html +=	   '<img  src="'+(inveno.lazy?defImg:d.list_images[0].img_url)+'" onload="loadimg.call(this)" onerror="errorimg.call(this)" data-url="' + d.list_images[0].img_url + "&width=" + imgSize.w + "&height=" + imgSize.h + '"  class="bg-img-div-img scrollLoading"  alt="hotoday">';
                    if(d.label == "视频"){
                        html +=   '<span class="video-icon-small"> </span>';
                    }
                    if (d.type == 1){
                        html +=    '<div class="list-item-img-shiping"></div>';
                    }
                    html +=    '</div>';

                    html +='<article class="list-item-title" >';
                    html +=    '<h3 id="yuedu_' + d.content_id + '" class="article_title withPicAndText" style="margin-left:0.28rem">' + d.title + '</h3>';
                    html +=	   '<div class="item_info withPicAndText">';
                    html +=    '<span class="article_src" style="margin-left:0.28rem">' + d.source + '</span>';
                    if(d.label != "广告" && d.label != "视频" && d.label){
                        html +=    '<div class="article_label addRed">' + d.label + '</div>';
                    }else if(d.label != "视频" && d.label){
                        html +=    '<div class="article_label">' + d.label + '</div>';
                    }
                    html +=    '<span class="article_time">' + this.lastdate(d.publish_time,d.channel) + '</span>';
                    html +=    '</div>';
                    html +='</article>';
			}
		}
		html +=    '</div>';
		html +='</section>';
		return html;
	},
		//接口load状态展示1为成功，2为正在进行，3为失败
		inveno.addDateText = function (v) {
			switch (v) {
				case 1:
					jQuery('.load-status').html('<a class="loading" href="#"></a>').hide();
					break;
				case 2:
                    jQuery('.load-status').html('<a class="loading" href="#"><span>正在载入</span></a>').show();
					break;
				case 3:
                    jQuery('.load-status').html('<a class="error" href="#" onclick="inveno.reload()"><span>网络不佳，点击重试</span></a>').show();
					break;
				default:
					break;
			}
		},
	//获取时间戳
	inveno.time = function (){
		var tm = function(){
			return new Date().getTime();
		}(),
		j = this,
		tk = function(){
			return inveno.MD5(j.app + ":" + j.uid + ":" + tm);
		}();
		return {tm:tm,tk:tk};
	},
	//简化ajax请求
	inveno.ajax = function(q,data,url){
		this.isDisplayInterfaceStatus && this.addDateText(2);
		var ajaxData = {},j = this,k = j.time(),d='';
		ajaxData.type = 'GET',ajaxData.dataType='jsonp',ajaxData.success=j['success_'+q],ajaxData.error=j['error_'+q];
		if(typeof data == 'object' && data.jsonpCallback){
			ajaxData.jsonpCallback = data.jsonpCallback;
			delete data.jsonpCallback;
		}
		d = ajaxData.data = typeof data == 'object' && data || {};

		//chenkailong
		d.app = j.app,d.uid=j.uid,d.tk=k.tk,d.tm = k.tm,d.lang='zh_CN', (d.colorid=(inveno.strategyObj != null && inveno.strategyObj.colorid != null) ? inveno.strategyObj.colorid:0);
		switch (q){
			case 'q':
				j.isPullingNews = !0;
                //	d.from = 'h5',d.pgn = j.pgn,d.num=10,d.csdk=1;
                d.tm = parseInt(d.tm/1000);
                d.tk = inveno.MD5(j.appSec + "::" + d.tm);
                ajaxData.type = 'POST';
                ajaxData.dataType = 'json';
                ajaxData.jsonpCallback = 'json';
                d.request_time=d.tm, d.product_id=d.app, d.model='h5', d.promotion=j.promotion, d.network=6, d.mode=1,d.api_ver='1.0.0';
                d.operation=4, api_ver='1.0.0', d.content_type='0x00000027', d.link_type='0x00000043', d.platform='android';
                d.display='0x00001807', d.scenario=j.int_to_6bithex(parseInt(j.dmlrsce)), d.app_lan='zh_CN';                    d.brand='PiemediaH5', d.language='zh_CN', d.app_ver='2.5.0', d.count=10;
                url = 'http://121.201.57.84/info/';
                q = 'list';
				break
			case 'i':
				d.from = 'h5',d.type = inveno.getQueryPara('type'),d.id = inveno.id,d.csdk=1,d.cpack = inveno.getQueryPara('cpack') || "-",d.upack = inveno.getQueryPara('upack') || "-",d.nolog = inveno.getQueryPara('nolog') == "1"?1:0;
                    break;
            case 'relevant': //相关推荐
                d.tm = parseInt(d.tm/1000);
                d.tk = inveno.MD5(j.appSec + "::" + d.tm);
                ajaxData.type = 'POST';
                ajaxData.dataType = 'json';
                ajaxData.jsonpCallback = 'json';
                d.request_time=d.tm, d.product_id=d.app, d.model='h5', d.promotion=j.promotion, d.network=6, d.mode=1,d.api_ver='1.0.0';
                d.content_id=inveno.id, api_ver='1.0.0', d.content_type='0x00000027', d.link_type='0x00000043', d.platform='android';
                d.display='0x00001807', d.scenario=j.int_to_6bithex(parseInt(j.drrsce));
                d.app_lan='zh_CN', d.brand='PiemediaH5', d.language='zh_CN', d.app_ver='2.5.0', d.count=10;
                url = 'http://121.201.57.84/info/';
                q = 'relevant';
				break;
			case 'detail':
				d.tm = parseInt(d.tm/1000);
				d.tk = inveno.MD5("fccf9b7e512768fc738f8b24516aaf4102bc6b8d::" + d.tm);
				ajaxData.type = 'POST';
				ajaxData.dataType = 'json';
				ajaxData.jsonpCallback = 'json';
				d.request_time=d.tm, d.product_id=d.app, d.model='h5', d.promotion='inveno', d.network=6, d.api_ver='1.0.0';
				d.operation=4, api_ver='1.0.0', d.platform='android', d.scenario=j.int_to_6bithex(parseInt(j.scenario));
				d.content_id=inveno.id, d.app_lan='zh_CN', d.brand='PiemediaH5', d.language='zh_CN', d.app_ver='2.5.0';
				url = 'http://121.201.57.84/info/';
				q = 'detail';
				break;
			case 'report':
				d.tm = parseInt(d.tm/1000);
				d.tk = inveno.MD5("fccf9b7e512768fc738f8b24516aaf4102bc6b8d:"+decodeURIComponent(d.data)+":" + d.tm);
				ajaxData.type = 'POST';
				ajaxData.dataType = 'json';
				ajaxData.jsonpCallback = 'json';
				d.report_time=d.tm, d.product_id=d.app, d.model='h5', d.promotion='inveno', d.network=6, d.api_ver='1.0.0';
				d.api_ver='1.0.0', d.platform='android', d.app_lan='zh_CN', d.brand='PiemediaH5', d.app_ver='2.5.0';
				url = 'http://121.201.57.84/';
				q = 'report';
				break;
			case 'qcomm':
				d.from = 'h5',d.id = inveno.id;
				break;
			case 'ucl':
				ajaxData.timeout = 50;
				break;
			case 'mq':
				d.from = 'h5',d.id = inveno.id;
				break;
			case 'ht_h5ui':
				d.h5ver = j.h5ver ? j.h5ver : 0;
				break;
			//chenkailong
			case 'ht_colorag':
				d.h5ver = j.h5ver ? j.h5ver : 0;
				break;
		}
		if(url){
			ajaxData.url = url + q
		}else{
			ajaxData.url = inveno.analyUrl + q;
		}
		jQuery.ajax(ajaxData);
	},
	//资讯列表拉取成功回调函数
	inveno.callbackForQ = function(){},
	inveno.success_ht_h5ui = function (){},
    //    chenkailong
    inveno.success_ht_colorag = function (){},

	//q接口拉取成功
	inveno.success_q = function(data) {
		inveno.isPullingNews = !1;
		if (data.num <= 0 || !data.data) {
			return false;
		}
		// localStorage.setItem("inveno_cn_"+inveno.channelId,JSON.stringify(data));
		inveno.renderNews(data);
	},
	//q接口拉取失败
	inveno.error_q = function() {
		inveno.isPullingNews = !1;
		// var data = localStorage.getItem("inveno_cn_"+inveno.channelId);
		// if(inveno.pgn == 1 && data){
		// 	data = JSON.parse(data);
		// 	inveno.isCacheData = !0;
		// 	inveno.renderNews(data);
		// }
	},
	inveno.renderNews = function(d){
		var j = this;
		j.pgn++;
		j.html = '';
		var upack = d.upack;
		jQuery.each(d.data, function(i, data) {
			data.upack = upack;
			if(data.type !=4 && data.type != 5){ //过滤老接口广告
				j.html += j.getNewsHtml(data);
			}
			if(i==4){
				if(j.isIndex && j.pgn == 2){
					if(inveno.hotRecommendId !=0){
						j.html += '<section adPositionType = "5" class="scrollAdLoading" adSpace="'+ inveno.adIdArray[1] +'" style="height: 7.58rem;width:100%;"></section>';
					}
				}else{
					if(inveno.hotRecommendId !=0){
						j.html += '<section adPositionType = "3" class="scrollAdLoading" adSpace="'+ inveno.hotRecommendId +'" style="height: 2.85rem;width:100%;"></section>';
					}
				}
			}
			j.mid = data.id;
		});
		jQuery(".news-list").append(j.html);
		// inveno.hr?jQuery('.hot-recommend').addClass('display'):"";
		inveno.app.indexOf("coolpad")>=0 && this.loadVisibleAreaImg();
		this.setReadedNewsCss();
		this.callbackForQ();
	},

     win.showYoukuVideo = function(vvid){
         player = new YKU.Player('youkuVideo',{
             client_id: 'ed9ac0a9b76da8bb',
             vid: vvid,
             show_related: false,
             autoplay: false,
         });
     };

 	//跳转详情页
	win.goToDetail = function () {
		inveno.dataAction = jQuery(this).attr('data-action');
		inveno.isSupportStorage ? localStorage.setItem("dataAction",inveno.dataAction) : inveno.setCookie("dataAction",inveno.dataAction);
		inveno.addNewsId(jQuery(this).attr('data-id'));
		// if(jQuery(this).attr('data-action') == 1 || jQuery(this).attr('data-action') == 2){
			var	k = this;
			inveno_analytics && inveno_analytics.sendNewsClickEvent(k);
			var b = new Date();
			while (inveno_analytics && !inveno_analytics.isSendSucc && new Date() - b <50){

			}
			inveno_analytics.isSendSucc = !1;
		// }

		if(navigator.userAgent.toLocaleLowerCase().indexOf("inveno_sdk")>-1){
			top.location.assign(jQuery(this).attr('data-url'));
		}else{
			top.location.href = jQuery(this).attr('data-url');
		}
	};
 	//滚动回调
 	inveno.scroll = function (){
		inveno.isMonitorScroll = !0,
 		inveno.isScroll = !0,
 		window.requestAnimationFrame(scrollMonitor);
	};
	window.onunload = function () {};
}(window,window.inveno || (window.inveno = {}));
function inveno_analytics(a){
	var j = inveno;
		a.isSendSucc=!1, 								//标识是否发送成功
		a.sid=Number(Math.random().toString().slice(2, 12)),
		a.seq=0,
		a.sendSucc=function(a){ 						//需要判断发送成功、页面跳转用
			this.isSendSucc = !0;
		},
		a.sendSucc2=function(a){ 						//不需要判断发送成功、页面内事件用
		},
		a.paraHandle=function(a,b,c){ 					//b为1时需要监控。0时不需要
			a = typeof a == 'object' && a || {},
				a.seq = this.seq,
				a.sid = this.sid,
				a.upack = jQuery(c).attr('data-upack') || inveno.getQueryPara('upack') || "-",
				// a.uid =	j.uid,
				// a.app = j.app,
				// a.fapp=-1,
				// a.os = inveno.isIOS?1:inveno.isAndroid?4:-1,
				// a.sdk=-1,
				// a.net='-',
				// a.op='-',
				// a.fuid='-',
				// a.tm = +new Date(),
				// a.ver='2.3.0',
				// a.fver='-',
				// a.rver='1.0.8';
			this.seq++;
			b && (j.success_report = this.sendSucc) || (j.success_report = this.sendSucc2);
			j.ajax('report',a);
		},
		a.sendNewsClickEvent=function(a){
			var c={};
			c.event_id = "3",
			c.content_id = jQuery(a).attr('data-id'),
			c.scenario = jQuery(a).attr('data-scenario'),
			c.cpack = jQuery(a).attr('data-cpack'),
			c.event_time = new Date().getTime();
			this.paraHandle({data:Base64.encode(JSON.stringify([c]))},0,a);
		},
		a.sendThirdPartNewsClickEvent=function(a){
			var c={};
			c.id = jQuery(a).attr('data-id'),
			c.scenario = jQuery(a).attr('data-scenario'),
			c.cpack = jQuery(a).attr('data-cpack'),
			c.type = Number(jQuery(a).attr('data-type')),
			c.upack = jQuery(a).attr('data-upack'),
			c.stime = jQuery(a).attr('data-stime'),
			c.from = 'h5',
			c.dtype = jQuery(a).attr('data-dtype');
			j.success_ucl = this.sendSucc;
			j.ajax('ucl',{info:JSON.stringify([c])});
		},
		a.sendPVEvent=function(a){
			j.success_ucl = this.sendSucc;
			j.ajax('ucl',{info:JSON.stringify([a])});

		},
		a.sendReadTimeEvent=function(a,b){
			this.paraHandle({data:Base64.encode(JSON.stringify([b]))},0,a);
		},
		a.sendReadPercentEvent=function(a,b){
			this.paraHandle({data:Base64.encode(JSON.stringify([b]))},0,a);
		},
		a.sendNewsPV=function(a,b){
			this.paraHandle({data:Base64.encode(JSON.stringify(b))},0,a);
		},
		a.sendBatchEvent=function(a){
			if (jQuery.isArray(a)){
				for (i=0;i<a.length;i++){
					a[i].seq = this.seq,
						a[i].sid = this.sid,
						a[i].uid =	j.uid,
						a[i].app = j.app,
						a[i].fapp=-1,
						a[i].os = inveno.isIOS?1:inveno.isAndroid?4:-1,
						a[i].sdk=-1,
						a[i].net='-',
						a[i].op='-',
						a[i].fuid='-',
						a[i].tm = +new Date(),
						a[i].ver='2.3.0',
						a[i].fver='-',
						a[i].rver='1.0.8';
					this.seq++;
				}
				j.success_coun = this.sendSucc2;
				j.ajax('report',{json:JSON.stringify(a)});
			}
		}
	//上报延迟的统计对象
	// if(localStorage.getItem("inveno_analyArry")){
	// 	a.sendBatchEvent(JSON.parse(localStorage.getItem("inveno_analyArry")));
	// 	a.isSendSucc = !1;
	// 	localStorage.removeItem("inveno_analyArry");
	// }
}
!function()
{
	function loadScript(e, t) {
		var a, i = document.head;
		a = document.createElement("script"),
		a.type = "text/javascript",
		a.charset = "utf-8",
		a.src = e,
		i.insertBefore(a, i.firstChild),
		t && a.addEventListener("load", function() {
			t();
		}, !1)
		if(getOsVersion() && getOsVersion()<=4.3){
			try{
				setTimeout(t(),100);
			} catch(e){}
		}
	}
	function loadStyle(e, t) {
		var a, i = document.head;
		a = document.createElement("link"),
		a.rel = "stylesheet",
		a.type = "text/css",
		a.href = e,
		i.appendChild(a),
		t && a.addEventListener("load", function() {
			t();
		}, !1)
		if(getOsVersion() && getOsVersion()<=4.3){
			try{
				setTimeout(t(),100);
			} catch(e){}
		}
	}
	function setFontSize(){
		var e = document.documentElement,baseFontSize =Math.max(e.getBoundingClientRect().width/10,32);
		console.log(baseFontSize);
		e.style.fontSize = baseFontSize +"px";
	};
	function getFontSize(){
		return document.documentElement.style.fontSize;
	}
	function t(){
		inveno_analytics(window.inveno_analytics || (window.inveno_analytics={}));
		loadScript(inveno.adScriptUrl,a) || loadStyle(inveno.adCSSUrl,b);
		function a(){
			inveno.adJSReady = !0;
            //广告已经在loadVisibleAreaImg里统一做了懒加载，后面可以考虑去掉来优化性能 --liuyuan
 			if(inveno.adCSSReady){
 				jQuery.malaccaJhRender(inveno.adPara);
 			}
		}
		function b(){
			inveno.adCSSReady = !0;
            //广告已经在loadVisibleAreaImg里统一做了懒加载，后面可以考虑去掉来优化性能 --liuyuan
 			if(inveno.adJSReady){
 				jQuery.malaccaJhRender(inveno.adPara);
 			}
		}
		function success_qcomm(d) {
			var commentHtml ='';
			if (d.commnum == 0 || !jQuery.isArray(d.info)) {
				jQuery(".add-4").css({"display": "none",});
				return;
			} else {
				jQuery.each(d.info, function(i, data) {
					commentHtml += commentConvertToHtml(data);
				});
				jQuery('.comments-list').html(commentHtml).parent().addClass('display');
				// 设置评论多功能广告位id
				// jQuery(".comments-multi-func-ad").attr("adspaceid",inveno.adIdArray[10]);
                //广告已经在loadVisibleAreaImg里统一做了懒加载，后面可以考虑去掉来优化性能 --liuyuan
				if(inveno.adCSSReady && inveno.adJSReady){
					jQuery.malaccaJhRender(inveno.adPara);
				}
			}

		}
		function success_mq(d) {
			if (d.code != 200){
				return;
			}
			d.id = j.id;
            //广告已经在loadVisibleAreaImg里统一做了懒加载，后面可以考虑去掉来优化性能 --liuyuan
			if(inveno.adCSSReady && inveno.adJSReady){
				jQuery.malaccaJhRender(inveno.adPara);
			}
		}

		//获取detail接口成功回调
		function success_detail(d) {
			if (d.code != 200){
				return;
			}
			var j = inveno;
			d.id = j.id;
			if(inveno.isSupportStorage){
				localStorage.setItem('inveno_i',JSON.stringify(d));
			}
			j.lazy = (jQuery(window).height()>0) ?true:false;

			if(jQuery(".mid-nav-channel-text").parent().hasClass("display")){
				jQuery(".mid-nav-channel-text").html("进入"+decodeURIComponent((d.channel===null?"推荐":d.channel)+"频道")).parent().attr("data-channel",d.channelID ===null ? "0": d.channelID);
			}
			j.channelId = d.channelID ===null ? "0": d.channelID;
			if(j.whichRes == 0){
                if(d.source.indexOf("优酷") > -1){   //处理优酷视频
                    loadScript(j.youkuAdress, detailYoukuHandle(d));
                }else{
                    detailLoadedHandle(d);
                }
			}
            j.loadVisibleAreaImg();
/*            if(j.adCSSReady && j.adJSReady){
                jQuery.malaccaJhRender(j.adPara);
            }*/
		}

		//获取detail接口失败回调
		function error_detail(){
			var d = inveno.isSupportStorage && localStorage.getItem('inveno_i');
			if(d && (d = JSON.parse(d)) && d.id == newsId){
				detailLoadedHandle(d);
				j.addDateText(1);
			}else{
				j.addDateText(3);
			}
		}
        //获取相关推荐接口rr成功回调
        function success_relevant(d) {
            if (d.code != 200){
                return;
            }
            if(!j.isDefResDrrHide){
             relatedRecommendHandle(d.data);
            }
            //广告已经在loadVisibleAreaImg里统一做了懒加载，后面可以考虑去掉来优化性能 --liuyuan
            if(j.adCSSReady && j.adJSReady){
                jQuery.malaccaJhRender(j.adPara);
            }
        }
        //获取相关推荐接口rr失败回调
        function error_relevant(){
            console.log("relatedRecommend error~");
		}

        function detailYoukuHandle(d){
            //louis
            ////优酷视频头部处理
            var headHtml = '<div class="video-container" id="youkuVideo">';
//            headHtml += '<img src="'+ d.headimage.img_url +'" />';
//            headHtml += '<div class="videoListPlay" vid="'+ d.url.match(new RegExp("/id_(.*?)(.html)"))[1] +'" style="cursor:pointer;" onload="showYoukuVideo.call(this)"/>';
            headHtml += '</div>';
            $(".detail_header").html(headHtml);

            document.title = d.title;
            var articleContext;
			//获取实际的时长值，如果为0则后面显示未知   -- liuyuan
			var availableDuration = ((d.paragraphs.length>0) && (typeof d.paragraphs[0].paragraph_video != "undefined") && (d.paragraphs[0].paragraph_video.duration > 0))
				? d.paragraphs[0].paragraph_video.duration : 0;

            articleContext +=	'<div class="video-head-container">',
            articleContext +=		'<h3 class="video-article-title">'+ d.title +'</h3>',
            articleContext +=		'<div>',
            articleContext +=		  	'<span class="video-head-info article-src">' + d.source + '</span>',
            articleContext +=		  	'<span class="video-head-info public-time">' + new Date(d.publish_time).format("MM-dd hh:mm") + '</span>',
            articleContext +=		  	'<span class="video-head-info " >' +  (availableDuration != 0 ? (availableDuration < 60 ? (availableDuration + "秒钟") : (parseInt(availableDuration/60)+'分钟')) : '未知') + ' </span>',
            articleContext +=		'</div>',
            articleContext += '</div>';
            $(".article-content").css("font-size","0");
            $(".article-content").html(articleContext);
            $("body").addClass('display');
            document.getElementById("inveno_footer").style.display = "block";
			window.onload = function(){
				showYoukuVideo(d.url.match(new RegExp("/id_(.*?)(.html)"))[1]);
                //再做一次懒加载  --liuyuan
                inveno.loadVisibleAreaImg();
			}
        }

		//详情正文处理
		function detailLoadedHandle(d){
			//文章头部处理
			var headHtml = '';
			headHtml +=	'<div class="head-container">',
				headHtml +=		'<h3 class="article-title">'+ d.title +'</h3>',
				headHtml +=		'<div>',
				headHtml +=		  	'<span class="head-info article-src">' + d.source + '</span>',
				headHtml +=		  	'<span class="head-info public-time">' + new Date(d.publish_time).format("MM-dd hh:mm") + '</span>',
				headHtml +=		  	'<span class="head-info skip-original" data-url = "'+ d.url +'">'+ unescape('%u5F00%u542F%u539F%u6587')+ '</span>',
				headHtml +=		'</div>',
				headHtml += '</div>';
			$(".detail_header").html(headHtml);
			var articleContext = '';
			articleContext += 	'<section class = "article-text">',
				articleContext +=		'<div class = "article-container"></div>',
				articleContext += '</section>',
				articleContext +='<div class="expand-button-container">',
				articleContext +=		'<div class="expand-button">展开全文</div>',
				articleContext +='</div>' ;
			$(".article-content").html(articleContext);
			//跳转原文
			$('.skip-original').on('click',function(e){
				location.href = $(this).attr('data-url');
			});
			//文章标题处理
			document.title = d.title;
			//文章正文处理
			var contentHtml;
			d.paragraphs==null ? $("body").html('<div class="nocontent-div">资讯不存在</div>').addClass("nocontent"):(contentHtml = contentConverToHtml(d.paragraphs));
			$('.article-container').html(contentHtml);
			//传递分享图片给可视化SDK
			window.Android && typeof window.Android.shareIconUrl == "function" && window.Android.shareIconUrl($($("p.imgs")[0]).find("img").attr("data-url"));
			window.Android && typeof window.Android.transcode == "function" && window.Android.transcode(d.title,d.source,d.publish_time,d.url,d.url,inveno.getUrl().indexOf(j.defRes)>0 ? 0:1);
			//展示页面所有组件
			$("body").addClass('display');
			document.getElementById("inveno_footer").style.display = "block";
			//展示全文按钮处理
			if($(".article-text").height()<26.67*getFontSize()-1 || d.channelID == 99){
				hideExpandButton();
			}else{
				$('.expand-button').on('click',function(event) {
					hideExpandButton();
				});
			}
		}
		//展示全文按钮handle
		function hideExpandButton(){
			$(".article-text").css("max-height","999999px");
			$(".expand-button-container").hide();
		}
		//将i接口返回转化为html
		function contentConverToHtml(content) {
			var html = "";
			if(content != null){
				$.each(content, function(index, data) {
					if(data.paragraph != null){
						html += data.paragraph;
					}
					if(data.paragraph_image != null){
						if (data.paragraph_image.format == "gif"){
							html += '<p class="imgs"><img class = "scrollLoading" style="height:' + parseInt(data.paragraph_image.height)*984/108/parseInt(data.paragraph_image.width)
								+ 'rem;" src="'+(inveno.lazy?"":data.paragraph_image.img_url)+'" data-url="' + data.paragraph_image.img_url + '" alt="hotoday" onload="loadimg.call(this)"></p>';
                        }
                        else {
                            html += '<p class="imgs"><img class = "scrollLoading" style="height:' + parseInt(data.paragraph_image.height) * 984 / 108 / parseInt(data.paragraph_image.width)
                                + 'rem;" src="' + (inveno.lazy ? "" : data.paragraph_image.img_url) + '" data-url="' + data.paragraph_image.img_url + "&width=" + getFontSize() * 10
                                + '" onerror="errorimg.call(this)" onload="loadimg.call(this)"></p>';
                        }

					}
				});
			}
/*			for (var i = 0; i < content.length; i++) {
				if (content[i].imgs == undefined) {
					try {
						if(typeof content[i] == "object"){
							continue;
						}
						var str = content[i];
						if (str.toLowerCase().indexOf("iframe".toLowerCase()) > -1)
							str = str.replace(/　　/g, '<p class="imgs">'); //说明为视频
						else
							str = str.replace(/　　/g, '<p>');
						content[i] = str.replace(/\n/g, '<p>');
						content[i] = content[i].replace(/<br\/>|<\/img>/g, '');
						html += content[i];
					}
					catch(e){
						console.log(e);
						content[i] = "";
					}
				} else {
					$.each(content[i].imgs, function(index, data) {
						if (data.fm == "gif")
							html += '<p class="imgs"><img class = "scrollLoading" style="height:' + parseInt(data.hg)*984/108/parseInt(data.wd) + 'rem;" src="'+(inveno.lazy?"":data.url)+'" data-url="' + data.url + '" alt="hotoday" onload="loadimg.call(this)"></p>';
						else
							html += '<p class="imgs"><img class = "scrollLoading" style="height:' + parseInt(data.hg)*984/108/parseInt(data.wd) + 'rem;" src="'+(inveno.lazy?"":data.url)+'" data-url="' + data.url + "&width=" + getFontSize()*10 + '" onerror="errorimg.call(this)" onload="loadimg.call(this)"></p>';
					});
				}
			}*/
			return html;
		}
		//相关推荐处理
		function relatedRecommendHandle(d) {
			var html = "";
			if (!jQuery.isArray(d) || d.length<=0) {
				jQuery(".add-5").css({"display": "none",});
				return;
			}
			jQuery.each(d, function(i, data) {
				if(i<4){
					html += inveno.getNewsHtml(data);
				}
			});
			jQuery('.related-recommend-list').prepend(html),
			jQuery('.related-recommend').addClass('display');
			//设置相关推荐广告位id
			if(inveno.relatedRecommendId != 0){
				jQuery(".related-recommend-footer-ad").attr("adspace",inveno.relatedRecommendId);
				jQuery(".related-recommend-footer-ad").addClass("scrollAdLoading");
			}
			return;
		}
		//评论转化html
		function commentConvertToHtml(data) {
			var html = "";
			if (data.uhurl == "") {
				data.uhurl = "http://imgs.inveno.com/icon?id=9564762804220937320&quality=raw";
				data.uname = "hotoday用户";
			}
			data.uname = decodeURI(data.uname);
			data.content = decodeURI(data.content);
			html += '<div class="comment-detail">';
			html += '	<div class="comment-detail-info">';
			html += '			<div class="comment-detail-userImg ">';
			html += '				<img src="' + data.uhurl + '" alt="头像" />';
			html += '			</div>';
			html += '        <span class="comment-detail-lUserName">' + data.uname + '</span>';
			html += '        <span class="comment-detail-rTime fr ">' + new Date(data.tm*1000).format("yyyy-MM-dd hh:mm") + '</span>';
			html += '</div>';
			html += '     <article class="comment-detail-content">';
			html +=          data.content;
			html += '     </article>';
			html += '</div>';
			return html;
		}
		//精彩推荐回调函数
		function callbackForQ(){
			if(j.pgn<= 2){
				j.ajax('q',{jsonpCallback:"jsonpforq"});
			}
			// jQuery('.hot-recommend').addClass('display');
			//渲染广告
            //广告已经在loadVisibleAreaImg里统一做了懒加载，后面可以考虑去掉来优化性能 --liuyuan
			if(j.adCSSReady && j.adJSReady){
				jQuery.malaccaJhRender(inveno.adPara);
			}
		}
		var j = inveno;

        //chenkailong
        j.success_ht_colorag = function(a){
            if(a.code !=200){
                return;
            }
            inveno.isSupportStorage && localStorage.setItem('inveno_ht_colorag',JSON.stringify({val:a,time:new Date().getTime()}));
            inveno.strategyObj = a;

            //请求h5 模板配置
            if(inveno.isSupportStorage){
                (ls = JSON.parse(localStorage.getItem('inveno_ht_h5ui_'+j.app)))!=null && (new Date().getTime() - ls.time < j.lsExpire)
                    ? j.success_ht_h5ui(ls.val):j.ajax("ht_h5ui",{chash:0,jsonpCallback:"invenoConfig"},inveno.configAddress);
            }else{
                j.ajax("ht_h5ui",{chash:0,jsonpCallback:"invenoConfig"},inveno.configAddress);
            }
        }

		j.error_ht_h5ui = function(a){
			if(j.whichRes == 0){
                j.success_detail = success_detail,
                    j.error_detail = error_detail ,
					j.ajax('detail',{"id":newsId,scenario:"9"});
			}
		}

		j.success_ht_h5ui = function(a){
			if(a.code !=200){
				return;
			}
			inveno.isSupportStorage && ((ls = JSON.parse(localStorage.getItem('inveno_ht_h5ui_'+j.app))) == null || (new Date().getTime() - ls.time > j.lsExpire)) && localStorage.setItem('inveno_ht_h5ui_'+j.app,JSON.stringify({val:a,time:new Date().getTime()}));
			if(getOsVersion() && getOsVersion()<=4.3){
				jQuery(".share-container").css({"display": "none",});
				jQuery(".add-3").css({"display": "none",});
			}
            //获取pmp后台传过来的promotion和appSec值
            inveno.promotion = a.data.h5ui.aboutList.promotion;
            inveno.appSec = a.data.h5ui.aboutList.appSec;

			//广告模块与UI模块联动的list
			var advert2ui = [];
			advert2ui.push(1,0,1,0,0,0,0,0,0,1,1,1,1,1);

			var i = a.data.h5ui.detailPage;
			if(i.tbhn.isShow){//顶部导航
				advert2ui[1] = 1;
				jQuery('.header-nav').addClass("display").css('background-color',i.tbhn.dtnc);
				jQuery('.skip-home').css('color',i.tbhn.dtnfc);
				jQuery('.start-download').css('color',i.tbhn.dtnfc);
				// if(i.tbhn.dtnnis){
				// 	jQuery('.skip-home').html(i.tbhn.dtnn+"主页");
				// }
				if(i.tbhn.dtnbhiis){
					jQuery('.skip-home').css('background-image',"url("+i.tbhn.dtnbhi+")")
				}
				if(i.tbhn.dtniis){
					inveno.downUrl = i.tbhn.dtnid;
					if(i.tbhn.dtnidliis){
						jQuery('.start-download').css('background-image',"url("+i.tbhn.dtnidli+")");
					}
				}else{
					document.getElementById('start-download').style.display = 'none';
				}
			}
			if(i.ds.isShow){//分享模块
				advert2ui[3] = 1;
				jQuery(".share-container").addClass("display");
				var b = new Share();
			}
			// j.success_qcomm = success_mq;
			// j.ajax("qcomm",{id:j.id},inveno.newsPullAdress);
			// if(inveno.adCSSReady && inveno.adJSReady){
			// 	jQuery.malaccaJhRender(inveno.adPara);
			// }

			if(i.dlc.isShow){//评论模块
				advert2ui[4] = 1;
				j.success_qcomm = success_qcomm;
				j.ajax("qcomm",{id:j.id},inveno.newsPullAdress);
			}
			if(i.dcn.isShow){//中部频道导航回首页
				advert2ui[6] = 1;
				// jQuery(".mid-nav-channel-text").html("进入推荐频道").css("color",i.dcn.dcnfc).parent().addClass('display').attr("data-channel","0");
				jQuery(".add-6").css({"display": "none",});
				if(getOsVersion() && getOsVersion()<=4.3 && isInvenoSDK()){
					jQuery(".mid-nav-channel-text").css("text-align","center").css("background-position","70% 30%");
				}
			}
			if(j.whichRes == 0){
                j.success_detail = success_detail,   //请求详情成功回调
                j.error_detail = error_detail,
                j.ajax('detail',{"id":newsId});
				if(!i.drr.isShow){//相关推荐是否隐藏
					j.isDefResDrrHide = true;
				}else{
					j.isDefResDrrHide = false;
                    j.drrsce = i.drr.drrsce;
					advert2ui[5] = 1;
                    j.success_relevant = success_relevant,					//请求相关推荐回调
                    j.error_relevant = error_relevant ,
                    j.ajax('relevant',{"id":newsId});
				}



			}else if(j.whichRes == 2){
				if(i.drr.isShow){//相关推荐
					j.isDefResDrrHide = false;
                    j.drrsce = i.drr.drrsce;
					advert2ui[5] = 1;
                    j.success_relevant = success_relevant;
                    j.error_relevant = error_relevant ;
                    j.ajax("relevant",{id:j.id});
				}
			}
			if(i.dmlr.isShow){//精彩推荐模块
				j.hr = true;
                j.dmlrsce = i.dmlr.dmlrsce;
				// jQuery('.hot-recommend').addClass('display');
				j.callbackForQ = callbackForQ;
				if(j.whichRes == 2){
					inveno.app.indexOf("coolpad")>=0 && inveno.loadVisibleAreaImg();
				}
				// j.ajax('q',{jsonpCallback:"jsonpforq"});
				//只有在精彩推荐拉到资讯后再显示广告模块7
				if(j.pgn<=2){
					advert2ui[7] = 1;
				}
			}
			inveno.titleName = i.dbbhn.dbnn;
			if(i.dbbhn.isShow){//底部导航模块
				advert2ui[8] = 1;
				if(i.dbbhn.dbnnis){
					jQuery(".footer-nav-home-txt").html("进入"+i.dbbhn.dbnn+"主页查看更多资讯");
				}else{
					jQuery(".footer-nav-home-txt").html("进入主页查看更多资讯");
				}
				jQuery(".footer-nav-home-txt").css("color",i.dbbhn.dbnfc).parent().addClass("display");
			}
			// if(j.adCSSReady && j.adJSReady){
			// 	jQuery.malaccaJhRender(inveno.adPara);
			// }
			if(j.adOpen==false){
				advert2ui.splice(1,13,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
			}
			//先进行list初始化，再对广告模块进行控制显示
			jQuery.each(a.data.adui.advertList,function(i,value){
				if(value.isOpen && advert2ui[parseInt(value.advertPos)]) {
					if(value.advertPos == 12 && a.data.h5ui.detailPage.drr.isShow){
						inveno.relatedRecommendId = value.advertId;
					}else if(value.advertPos == 13 && a.data.h5ui.detailPage.dmlr.isShow) {    //只有配置了13位置的广告模块并且开启了精彩推荐才赋值广告id，否则无意义
						inveno.hotRecommendId = value.advertId;
					}else if(value.advertPos == 1 || value.advertPos == 2){
						// var ss = {"adpositiontype": value.advertType};
						// 	(value.advertPos == 1 || value.advertPos == 2 ) ? ss.adSpaceId = value.advertId:ss.adSpace = value.advertId;

						jQuery("<div class='ad-item-" + value.advertPos +"'>"+"</div>")
							.attr({
								"adpositiontype": value.advertType,
								"adSpaceId": value.advertId
							})
							.css("height",value.advertHeight/100+"rem").css("display","none")
							.appendTo(jQuery(".add-"+value.advertPos)).addClass("scrollAdLoading");
						// (value.advertPos != 1 && value.advertPos != 2 ) && jQuery("ad-item-1 ").css("display","block");
					}else{
					// var ss = {"adpositiontype": value.advertType};
					// (value.advertPos == 1 || value.advertPos == 2 ) ? ss.adSpaceId = value.advertId:ss.adSpace = value.advertId;

						jQuery("<div class='ad-item-" + value.advertPos +"'>"+"</div>")
							.attr({
								"adpositiontype": value.advertType,
								"adSpace": value.advertId
							})
							.css("height",value.advertHeight/100+"rem").css("display","block")
							.appendTo(jQuery(".add-"+value.advertPos)).addClass("scrollAdLoading");
					// (value.advertPos != 1 && value.advertPos != 2 ) && jQuery("ad-item-1 ").css("display","block");
				}
					//return true;
				}
			});
			if(isInvenoSDK()){
				sendParInfo();
			}
			function sendParInfo(){
				var homeShareUrl =  window.location.href.substr(0,window.location.href.lastIndexOf("/")),
				f = jQuery("title").text() + "-派媒体" || "",
					i = (jQuery("p").text().length>25) ? jQuery("p").text().substring(0,25).trim()+"...":jQuery("p").text()|| f,j,d;
					//使用当前url下的share.png图片
					j = jQuery("p.imgs").length>0 && jQuery(jQuery("p.imgs")[0]).find("img").attr("data-url") || ("http://imgs.inveno.com/icon?id=5984951488922036500&quality=raw");
					d = document.location.href || "";
				 	window.InvenoTransCode && window.InvenoTransCode.shareInfoUrl(d,f,i,j);
			}
			//跳转主页推荐频道
			function goToHome(e){
				//清空一级页缓存
				sessionStorage.clear();
				if(navigator.userAgent.toLocaleLowerCase().indexOf("inveno_sdk")>-1){
					top.location.assign(inveno.homeBaseUrl + "?app=" +j.app+"&uid="+j.uid + "&jump=2#fract=118");
				}else{
					top.location.href = inveno.homeBaseUrl + "?app=" +j.app+"&uid="+j.uid + "&jump=2#fract=118";
				}
			}

			//跳转主页及对应频道
			function goToHomeWithChannel(){
				if(navigator.userAgent.toLocaleLowerCase().indexOf("inveno_sdk")>-1){
					top.location.assign(inveno.homeBaseUrl + "?app=" + j.app + "&uid=" + j.uid + "#channel=" + jQuery(".mid-nav-channel-text").parent().attr('data-channel') + "&fract=118");
				}else{
					top.location.href = inveno.homeBaseUrl + "?app=" + j.app + "&uid=" + j.uid + "#channel=" + jQuery(".mid-nav-channel-text").parent().attr('data-channel') + "&fract=118";
				}
			}
			//下载
			function startDownLoad(){
				//对传过来的链接地址做判断，如果不是http开头，就自动补上 -yuan.liu
				if(inveno.downUrl.indexOf("http") != 0){
					inveno.downUrl = "http://" + inveno.downUrl;
				}
				location.href = inveno.downUrl;
			}

			jQuery(".link-to-home").on('click',goToHome); 						//导航到主页点击事件
			jQuery(".mid-nav-channel-text").on('click',goToHomeWithChannel);
			jQuery(".start-download").on('click',startDownLoad); 				//导量下载按钮点击

			//chenkailong 修改广告不显示问题。
			if(j.adCSSReady && j.adJSReady){
				jQuery.malaccaJhRender(j.adPara);
			}
		}
		var ls;

        ////chenkailong
        //if(inveno.isSupportStorage){
        //    (ls = JSON.parse(localStorage.getItem('inveno_ht_colorag')))!=null && (new Date().getTime() - ls.time < j.lsExpire)
        //        ? j.success_ht_colorag(ls.val):j.ajax("ht_colorag",{chash:0,jsonpCallback:"invenoConfig"},inveno.configAddress);
        //}else{
        //    j.ajax("ht_colorag",{chash:0,jsonpCallback:"invenoConfig"},inveno.configAddress);
        //}

		////请求h5 模板配置
		if(inveno.isSupportStorage){
			(ls = JSON.parse(localStorage.getItem('inveno_ht_h5ui_'+j.app)))!=null && (new Date().getTime() - ls.time < j.lsExpire)
				? j.success_ht_h5ui(ls.val):j.ajax("ht_h5ui",{chash:0,jsonpCallback:"invenoConfig"},inveno.configAddress);
		}else{
			j.ajax("ht_h5ui",{chash:0,jsonpCallback:"invenoConfig"},inveno.configAddress);
		}

		var j = inveno,
			isFooterNavBarPvSend = !1,					//监控底部导航栏曝光事件是否发送
			newsId = j.id;			//资讯id
			analyObj = {								//初始化数据统计对象
				loadtm:-1,
				upack:'-',
				cpack:'-',
				scenario:inveno.getQueryPara('scenario'),
				idtype:inveno.getQueryPara('type'),
				id:j.id,
				cact:118,
				fract:inveno.getHashPara('fract'),
				sca:0,
				nowTime:+new Date()
			},										//数据统计上报数据
		j.isIndex = !1,								//标识为详情页
		jQuery(window).one('scroll', j.scroll);
		//滚动监控
		window.scrollMonitor = function (){
			var offsetY = "";
			if (j.isMonitorScroll) {
				// if(j.pgn <3 && !j.isPullingNews && (inveno.hotRecommendId !=0)){//如果设置不显示精彩推荐，则不发请求
				// 	j.ajax('q',{jsonpCallback:"jsonpforq"});
				// }
				j.loadVisibleAreaImg();
			}
			//判断滚动条是否在滚动
			if(j.isScroll){
				j.currentScrollY = jQuery(window).scrollTop();
				if (j.currentScrollY == j.previousScrollY){
					j.isScroll = !1,
					j.isMonitorScroll = !1,
					jQuery(window).one('scroll', j.scroll);
					if(jQuery('.footer-nav-home').offset().top<=jQuery(window).height()+j.currentScrollY && !isFooterNavBarPvSend){
						isFooterNavBarPvSend = !0;
					}
					var newsArray = [];
					jQuery('.waitForCollect').each(function(i,data){
						if(jQuery(this).offset().top<=jQuery(window).height()+j.currentScrollY){
							newsArray.push({
								event_id:"2",
								content_id:jQuery(this).attr('data-id') || "-",
								scenario:jQuery(this).attr('data-scenario') || "-",
								cpack:jQuery(this).attr('data-cpack') || "-",
								server_time:jQuery(this).attr('data-stime') || "-",
								event_time:new Date().getTime(),
							})
							jQuery(this).removeClass('waitForCollect');
						}
					});
					if(newsArray.length>0){
						var a = this;
						inveno_analytics.sendNewsPV(a,newsArray);
						inveno_analytics.isSendSucc = !1;
					}
				}else{
					j.previousScrollY = j.currentScrollY;
					window.requestAnimationFrame(scrollMonitor);
				}
			}
		}
		//窗口关闭前数据回传
		jQuery(window).on(inveno.isIOS?"pagehide":"beforeunload", function(){
			var startTime = analyObj.nowTime;
			var exitTm = +new Date();
			// analyObj.sca= Math.min(100,analyObj.sca);
			var analyArry = {
				event_id:"4",
				content_id:analyObj.id,
				scenario:analyObj.scenario,
				cpack:analyObj.cpack,
				// upack:analyObj.upack,
				stay_time:parseInt((exitTm-analyObj.loadtm-startTime)/1000),
				event_time:new Date().getTime(),
				// sca:analyObj.sca
			};
			var k= this;
			inveno_analytics && inveno_analytics.sendReadTimeEvent(k,analyArry);

			var p = Math.min(100,Math.round((jQuery(window).scrollTop()+jQuery(window).height()- jQuery(".inveno_header").height())/(jQuery(document).height() - jQuery(".inveno_footer").height() - jQuery(".inveno_header").height())*100));
			var pertArry = {
				event_id:"5",
				content_id:analyObj.id,
				scenario:analyObj.scenario,
				cpack:analyObj.cpack,
				proportion:p,
				event_time:new Date().getTime(),
			};
			inveno_analytics && inveno_analytics.sendReadPercentEvent(k,pertArry);

			// if(localStorage.getItem("inveno_analyArry")){
			// 	localStorage.setItem("inveno_analyArry",JSON.stringify(JSON.parse(localStorage.getItem("inveno_analyArry")).concat(analyArry)));
			// }else{
			// 	localStorage.setItem("inveno_analyArry",JSON.stringify(analyArry));
			// }
		});
		return true;
	}
	function appendToBodyFooter(){
	 	var a = document.createElement('div'),
	 		b = document.body,
            html='<div class="add-3">';
        html += '</div>';
		html +=	   '<div class="share-container">';
		html +=	   		'<div class="shareText">分享到：</div>';
		html +=	   		'<ul class="share-list">';
		html +=	   			'<li class="shareWx" data-app="wechatfriends" data-shareNum = "1"></li>';
		html +=	   			'<li class="shareWxFriend" data-app="wechattimeline" data-shareNum = "2"></li>';
		html +=	   			'<li class="shareSinaWeibo sns" data-app="sinaweibo" data-shareNum = "3"></li>';
		html +=	   			'<li class="shareQQ sns" data-app="qq" data-shareNum = "4"></li>';
		html +=	   		'</ul>';
		html +=    '</div>';

        html +=    '<div class="add-4">';
        html +=   '</div>';
		html +=	   '<section class = "comments">';
		html +=	       '<div class="comments-header">热门发言</div>';
		html +=	   	   '<div class="comments-list"></div>';
		html +=	   '</section>';

        html +=     '<div class="add-5">';
        // html += '<div class = "footer-banner-ad ad-item-5"></div>';
        html +=     '</div>';

		html +=	   '<section class = "related-recommend">';
		html +=	   	   '<div class="related-recommend-header">相关推荐</div>';
		html +=	   	   '<div class="related-recommend-list">';
		html +=	   		   '<section class = "related-recommend-footer-ad" adpositiontype="3"></section>';
		html +=	   	   '</div>';
		html +=	   '</section>';
        html +=       '<div class="add-6">';
        html +=       '</div>';

		html +=	   '<nav class = "mid-nav-channel">';
		html +=	   	   '<div class="mid-nav-channel-text">1</div>';
		html +=	   '</nav>';

        html +=       '<div class="add-7">';
        html +=        '</div>';

		html +=	   '<section class = "hot-recommend scrollLoading">';
		html +=	   	   '<div class="hot-recommend-header">精彩推荐</div>';
		html +=	   	   '<div class ="hot-recommend-list news-list" ></div>';
		html +=	   '</section>';

        html +=      '<div class="add-8">';
        html +=      '</div>';

		html +=	   '<footer class = "footer-nav-home">';
		html +=	   	   '<div class="footer-nav-home-txt link-to-home">返回主页查看更多资讯</div>';
		html +=	   '</footer>';
		a.innerHTML = html;
		a.style.display = 'none';
		a.id = "inveno_footer",
		a.setAttribute("class","inveno_footer"),
		b.appendChild(a);
		return true;
	}
	function isInvenoSDK(){
		var str = navigator.userAgent.toLocaleLowerCase();
		if(str.indexOf("inveno_sdk")>-1){
			return true;
		}else{
			return false;
		}
	}
	function getOsVersion(){
		var str = navigator.userAgent.toLocaleLowerCase();
		if(str.indexOf("android")>-1){
			var str1 = str.substring(str.indexOf("android")+"android".length);
			var str2 = str1.substring(0,str1.indexOf(';')).trim();
			var str3 = str2.substring(0,3);
			return str3;
		}
	}
	function appendToBodyHeader(){
		var a = document.createElement('div'),
			b = document.body,

            html = '<div class="add-1">';
        html += '</div>';
			//强制不换行，避免QQ浏览器中可能的换行显示
			html  += '<nav class="header-nav" style="white-space:nowrap">';
		html +=			'<div class="unit skip-home link-to-home"></div>';
		html +=			'<div class="unit start-download" id="start-download"></div>';
		html +=		'</nav>';

        html += '<div class="add-2">';
        html += '</div>';

		a.innerHTML = html,
		a.id = "inveno_header",
		a.setAttribute("class","inveno_header"),
		b.insertBefore(a,b.childNodes[0]);
		return true;
	}
	var mediaUrl;
	var ca = inveno.getCookie('app');
	mediaUrl = (typeof articleurl != "undefined") ? articleurl : (document.location.href || "");
	function add(){
		setFontSize();
		if(inveno.app && inveno.uid){
			appendToBodyHeader() && appendToBodyFooter() && loadStyle(inveno.csAddress);
			window.jQuery && t() || loadScript(inveno.jQAddress,t);
		}
	}
	function setCss(d){
		for(var i in d){
			var obj = d[i].c.trim().split("|");
			if(obj.length == 3){
				jQuery(obj[0]).css(obj[1],obj[2]);
			}
		}
	}
	function permitXml(cssData){
		add();
		setCss(cssData);
		document.getElementById("inveno_footer").style.display = "block";
	}
	function succsssXml(data){
		var tempData,cssData,temp = data.mediaList.media;
		// console.log("广告屏蔽列表： mediaUrl="+mediaUrl + " 列表="+temp)
		for(var o in temp){
			if(mediaUrl.indexOf(temp[o].mediaUrl) >=0){
				if(!temp[o].isOpen){
					tempData =  true;
					break;
				}
				inveno.adOpen = (temp[o].adOpen==false)?false:true;
				cssData = temp[o].style || "";
			}
			tempData = false;
		}
		inveno.isSupportStorage && localStorage.setItem('inveno_success_xml',JSON.stringify({confOpen:tempData,adOpen:inveno.adOpen,cssData:cssData,time:new Date().getTime()}));
		(navigator.userAgent.toLocaleLowerCase().indexOf("inveno_transcode")>-1) && inveno.isSupportStorage && localStorage.setItem("inveno_unsupport_xml", JSON.stringify({data:temp,time:new Date().getTime()}));
		if(!tempData){
			permitXml(cssData);
		}
	}
	function successTranscodeXml(data) {
		var tempData,cssData,temp = data;
		// console.log("本地广告屏蔽列表： mediaUrl="+mediaUrl + " 列表="+temp)
		for(var o in temp){
			if(mediaUrl.indexOf(temp[o].mediaUrl) >=0){
				if(!temp[o].isOpen){
					tempData =  true;
					break;
				}
				inveno.adOpen = (temp[o].adOpen==false)?false:true;
				cssData = temp[o].style || "";
			}
			tempData = false;
		}
		if(!tempData){
			permitXml(cssData);
		}
	}

	function getXml(){
		var ls;
		if(navigator.userAgent.toLocaleLowerCase().indexOf("inveno_transcode")>-1){
			//本地转码
			// console.log("inveno_unsupport_xml = "+JSON.parse(inveno.isSupportStorage ? localStorage.getItem('inveno_unsupport_xml') : null).time);
			(ls = JSON.parse(inveno.isSupportStorage ? localStorage.getItem('inveno_unsupport_xml') : null)) != null && (new Date().getTime() - ls.time < inveno.lsExpire) ? successTranscodeXml(ls.data) :
				jQuery.ajax({
					url: 'http://download.inveno.com/SDK/malacca_js/1.1/src/unsupportMedia.xml',
					dataType: "jsonp",
					jsonpCallback:"json4",
					success: function (data) {
						succsssXml(data);
					}
				})
		}else{
			(ls = JSON.parse(inveno.isSupportStorage?localStorage.getItem('inveno_success_xml'):null))!=null && (new Date().getTime() - ls.time < inveno.lsExpire) ? (inveno.adOpen=ls.adOpen,!ls.confOpen?permitXml(ls.cssData):''):
			jQuery.ajax({
				url: 'http://download.inveno.com/SDK/malacca_js/1.1/src/unsupportMedia.xml',
				dataType: "jsonp",
				jsonpCallback:"json4",
				success: function (data) {
					succsssXml(data);
				}
			})
		}
		return true;
	}
	!function mediaSupport(){

		//设置广告app 和 uid
		inveno.adPara.mUid = inveno.uid;//设置广告uid
		inveno.adPara.app = inveno.app;  //设置广告 channelId

		if(inveno.whichRes == 0){
			 add();
		}else if(inveno.whichRes == 2){
			window.jQuery && getXml()|| loadScript(inveno.jQAddress,getXml);
		}
	}();
}();

function Share(shareInfo) { //a 分享的内容包括标题等
	function b(a, b) { //添加回调函数后缀
		var c, d, e;
		for (d in b) {
			e = b[d],
				c = new RegExp("(" + d + "=)[^&]+", "i"),
				a.match(c) ? a = a.replace(c, "$1" + e) : a += -1 === a.indexOf("?") ? "?" + d + "=" + e : "&" + d + "=" + e;
		}
		return a
	}
	function c(a, b) {//替换掉url中的回调函数
		var c;
		for (var d in b)
			c = new RegExp(d + "=" + b[d], "g"),
				a = a.replace(c, "");
		return a
	}
	function f(a, b) { //创建 QQ js引入
		var c = document.createElement("script"),
			d = document.getElementsByTagName("body")[0];
		c.setAttribute("src", a),
			c.onload = c.onreadystatechange = function() {
				this.readyState && "loaded" != this.readyState && "complete" != this.readyState || (b && b(), c.onload = c.onreadystatechange = null, c.parentNode.removeChild(c))
			},
			d.appendChild(c)
	}
	function g(a) {//打开qq浏览器及qqzone
		var b = document.createElement("div");
		b.style.visibility = "hidden",
			b.innerHTML = '<iframe src="' + a + '" scrolling="no" width="1" height="1"></iframe>',
			document.body.appendChild(b), setTimeout(function() {
			b && b.parentNode && b.parentNode.removeChild(b)
		}, 5e3)
	}

	var homeShareUrl;
	shareInfo = shareInfo || {};
	this.url = shareInfo.url || document.location.href || "";
	homeShareUrl =  window.location.href.substr(0,window.location.href.lastIndexOf("/"));
	this.title = shareInfo.title || jQuery("title").text() + "-派媒体" || "",
		this.desc = shareInfo.desc || jQuery("meta[name=description]").attr("content") || this.title,
		//使用当前url下的share.png图片
		this.image = shareInfo.image || ("http://imgs.inveno.com/icon?id=5984951488922036500&quality=raw"),
		this.from = shareInfo.from || "派媒体",
		this.newsid = shareInfo.newsid || "",
		this.appList = {
			sinaweibo: ["kSinaWeibo", "SinaWeibo", 11, "\u65B0\u6D6A\u5FAE\u535A"],
			wechatfriends: ["kWeixin", "WechatFriends", 1, "\u5FAE\u4FE1\u597D\u53CB"],
			wechattimeline: ["kWeixinFriend", "WechatTimeline", "8", "\u5FAE\u4FE1\u670B\u53CB\u5708"],
			qq: ["kQQ", "QQ", "4", "QQ\u597D\u53CB"]
		};
	var h = {
			share: shareInfo.shareOnceCode || "000022_share_",
			shareback: shareInfo.sharebackOnceCode || "000022_shareback_"
		},
		i = navigator.userAgent.toLowerCase();
	this.device = {
		os: {
			version: 0,
			isiOS: i.indexOf("iphone") > -1 || i.indexOf("ipad") > -1 || i.indexOf("ios") > -1,
			isAndroid: i.indexOf("android") > -1 || i.indexOf("adr") > -1 || i.indexOf("linux;") > -1
		},
		browser: {
			version: 0,
			isQQ: i.indexOf("mqqbrowser/") > -1,
			isUC: i.indexOf("ucbrowser/") > -1,
			isWechat: i.indexOf("micromessenger") > -1,
			isSamsung: i.indexOf("samsungbrowser/") > -1,
			isSogou: "",
			isPinganWifi: i.indexOf("pawifi") > -1,
			isInveno: i.indexOf("inveno_sdk") > -1,
			isInvenoTranscode: i.indexOf("inveno_transcode") > -1
		}
	},
		this.getVersion = function(a) {
			var b = a.split(".");
			return parseFloat(b[0] + "." + b[1])
		},
		this.shareto = function(a) {
			var d, e = this.device,
				f = shareInfo.title || jQuery("title").text() + "-派媒体" || "",
				i = shareInfo.desc || (jQuery("p").text().length>25) ? jQuery("p").text().substring(0,25).trim()+"...":jQuery("p").text()|| f,j;
			if(inveno.whichRes == 0){
				//使用当前url下的share.png图片
				j = shareInfo.image || ("http://imgs.inveno.com/icon?id=5984951488922036500&quality=raw");
			}else if(inveno.whichRes == 2){
				j = jQuery("p>img").length>0 && jQuery(jQuery("p>img")[0]).attr("src") || ("http://imgs.inveno.com/icon?id=5984951488922036500&quality=raw");
			}
			var k = shareInfo.from || "派媒体",
				l = this.newsid,
				// d = e.browser.isUC ? b(this.url, {_once_: h.shareback + a + "_uc"}) : e.browser.isQQ ? b(this.url, {_once_: h.shareback + a + "_qq"}) : b(this.url, {_once_: h.shareback + a});
			url = this.url;
			((typeof articleurl != "undefined") && articleurl.length > 0) && (url = articleurl);
			d = e.browser.isUC ? b(url, {_once_: h.shareback + a + "_uc"}) : e.browser.isQQ ? b(url, {_once_: h.shareback + a + "_qq"}) : b(url, {_once_: h.shareback + a});
			if ("qq" == a) {
				// if(e.browser.isInveno){
				// 	window.Android.share(3, d, f, i,$("p.imgs").length>0 && $($("p.imgs")[0]).find("img").attr("data-url") || j);
				// }else{
				if(e.browser.isInvenoTranscode){
					window.InvenoTransCode.share(3, d, f, i,$("p.imgs").length>0 && $($("p.imgs")[0]).find("img").attr("data-url") || j);
				}else{
				window.location.href = b("mqqapi://share/to_fri?src_type=web&version=1&file_type=news", {
					share_id: "1101685683",
					title: Base64.encode(f),
					thirdAppDisplayName: Base64.encode("hotoday"),
					url: Base64.encode(d)
				});
				}
			}else if ("wechatfriends" == a || "wechattimeline" == a || "sinaweibo" == a){
				if (e.browser.isUC) {
					e.os.isiOS && "undefined" != typeof ucbrowser ? (a = this.appList[a][0],
						ucbrowser.web_share(f, f, d, a, "", " @" + k + " ", "")) : "undefined" != typeof ucweb ? (a = this.appList[a][1], ucweb.startRequest("shell.page_share", [f, f + " @" + k + " ", d, a, "", "", ""])) : console.log("UCBrowser native share bypass.");
				}else if (e.browser.isQQ) {
					var bLevel= {
						qq: {forbid: 0, lower: 1, higher: 2},
						uc: {forbid: 0, allow: 1}
					}
					var isqqBrowser = (navigator.appVersion.split("MQQBrowser/").length > 1) ? bLevel.qq.higher : bLevel.qq.forbid;
					a = this.appList[a][2];
					var o = {
						url: d,
						title: f,
						img_url: jQuery("p.imgs").length>0 && jQuery(jQuery("p.imgs")[0]).find("img").attr("data-url") || j,
						to_app: a
					};
					if((e.browser.version < 5.4 && e.os.isiOS) || ((e.browser.version < 5.3) && e.os.isAndroid)){
						isqqBrowser = bLevel.qq.forbid;
					}else {
						if ( e.browser.version < 5.4 && e.os.isAndroid) {
							isqqBrowser = bLevel.qq.lower;
						}
					}
					if (typeof(browser) != "undefined") {
						if (typeof(browser.app) != "undefined" && isqqBrowser == bLevel.qq.higher) {
							browser.app.share(o);
						}
					} else {
						if (typeof(window.qb) != "undefined" && isqqBrowser == bLevel.qq.lower) {
							window.qb.share(o);
						} else {
						}
					}
				}else if(e.browser.isInveno && "sinaweibo" != a){
					j = jQuery("p.imgs").length>0 && jQuery(jQuery("p.imgs")[0]).find("img").attr("data-url") || j;
					if ("wechatfriends" == a) {
						window.Android.share(0, d, f, i, j);
					} else if ("wechattimeline" == a) {
						window.Android.share(1, d, f, i, j);
					}
				}else if(e.browser.isInvenoTranscode && "sinaweibo" != a){
					j = jQuery("p.imgs").length>0 && jQuery(jQuery("p.imgs")[0]).find("img").attr("data-url") || j;
					if ("wechatfriends" == a) {
						window.InvenoTransCode.share(0, d, f, i, j);
					} else if ("wechattimeline" == a) {
						window.InvenoTransCode.share(1, d, f, i, j);
					}
				}else {
					j = jQuery("p.imgs").length>0 && jQuery(jQuery("p.imgs")[0]).find("img").attr("data-url") || j;
					 if (e.browser.isInvenoTranscode) {
					 	window.InvenoTransCode.share(2, d, f, i, j);
					 } else {
					"sinaweibo" == a && (window.location.href = b("http://service.weibo.com/share/share.php?",
						{
							title: encodeURIComponent(f),
							url: encodeURIComponent(d),
							appkey: "3735422408",
							pic: j,
							count: "n",
							size: "middle"
						}))
					 }
				}
			}
		},
		this.pinganWifiShareTo = function(a) {
			var c = b(this.url, {_once_: h.shareback + a + "_pinganwifi"});
			window.location.href = b("pawifishare://", {
				method: "sohuShare",
				shareType: a,
				title: Base64.encode(jQuery("title").text() || ""),
				url: Base64.encode(c),
				subtitle: Base64.encode(this.desc || ""),
				imgurl: Base64.encode(jQuery("p.imgs").length>0 && jQuery(jQuery("p.imgs")[0]).find("img").attr("data-url") ||this.image || "")
			})
		};
	var j = this;
	this.shareWechatByQQBrowser = function() {
		var a = window.location.href.match(/shareApp=(\w+)/i);
		if (a) {
			var b = a[1];
			jQuery.isFunction(history.replaceState) && (history.replaceState(null, document.title, location.href.replace(/shareApp=wechatfriends/g, "")),
				history.replaceState(null, document.title, location.href.replace(/shareApp=wechattimeline/g, ""))),
				j.shareto(b)
		}
	},
		this.init = function() {
			var a = this.device;
			if(a.browser.isQQ || a.browser.isUC || a.browser.isInveno){
				jQuery(".shareWx").addClass('sns').css("background-image","url(http://imgs.inveno.com/icon?id=8301946662876365240&quality=raw)");
				jQuery(".shareWxFriend").addClass('sns').css("background-image","url(http://imgs.inveno.com/icon?id=13038521408274032040&quality=raw)");
			}
			if(inveno.app == "tianyu" || inveno.app== "tianyuapk"){
				jQuery(".shareQQ").removeClass('sns').css("background-image","url(http://imgs.inveno.com/icon?id=8518510231433696891&quality=raw)");
			}
			a.browser.isQQ ? ("undefined" == typeof browser ? f("http://jsapi.qq.com/get?api=app.share", function() {
				j.shareWechatByQQBrowser()
			}) : j.shareWechatByQQBrowser(), a.browser.version = this.getVersion(i.split("mqqbrowser/")[1])) : a.browser.isUC && (a.browser.version = this.getVersion(i.split("ucbrowser/")[1])), a.os.isiOS && (a.os.version = parseInt(i.match(/\s*os\s*\d/gi)[0].split(" ")[2], 10))
		},
		this.init();
	for (var k = jQuery(".sns"), l = 0; l < k.length; l++){
		jQuery(k[l]).on("click", function() {
			var a = jQuery(this).attr("data-app");
			if (Statistics.addStatistics(j.device.browser.isUC ? h.share + a + "_uc" : j.device.browser.isQQ ? h.share + a + "_qq" : h.share + a), j.device.browser.isUC) {
				var img = jQuery("p.imgs").length>0? jQuery(jQuery("p.imgs")[0]):"";
				if(img){
					window.scrollTo(0,img.height()/2+img.offset().top-jQuery(window).height()/2);
				}
				setTimeout(function() {
					j.shareto(a)
				}, 500)
			} else{
				j.device.browser.isPinganWifi ? j.pinganWifiShareTo(a) : j.shareto(a)
			}
		});
	}
}


