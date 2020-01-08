var articleurl;    //转码对应的url,给js分享用

!function () {
    //兼容性
    if(window.InvenoTransCodeReport){
       window.InvenoTransCode =  window.InvenoTransCodeReport;
    }
    window.InvenoTransCode && getArticleinfo(window.InvenoTransCode.getArticleinfo(window.location.href));

    function setFontSize() {
        var e = document.documentElement, baseFontSize = Math.max(e.getBoundingClientRect().width / 10, 32);
        e.style.fontSize = baseFontSize + "px";
    };

    function getArticleinfo(a) {
        setFontSize();
        a = JSON.parse(a);
        if (a.mUrl) {
            articleurl = a.mUrl;
        }

        var headHtml = '';
        headHtml += '<div class="head-container-sdk">';
        // alert("logo="+a.mIcon+" href="+a.mIcon_href+" background="+a.mIcon_background);
        if (a.mIcon) {
            if (a.mIcon_href) {
                headHtml += '<a href="' + a.mIcon_href + '" class="head-logo-href"><img src="' + a.mIcon + '" class="head-logo"></a>';
            } else {
                headHtml += '<img src="' + a.mIcon + '" class="head-logo">';
            }
        } else {
            headHtml += '<p class="head-no-logo-href" >';
        }

        if(a.mTitle){
            a.mTitle = (a.mTitle).replace(/[\s]+/g," ");
            document.title = a.mTitle; //update title
            headHtml += '<h2 class="article-title"><b>' + a.mTitle + '</b></h2>';
        }

        headHtml += '<div>';

        if(a.mSource){
            var oldSource = a.mSource;
            try{
                if((a.mSource).length > 6){
                   a.mSource = (a.mSource).substring(0,6) + '...';
                }
             }catch(e){
               a.mSource = oldSource;
             }

            headHtml += '<span class="head-info article-src">' + a.mSource + '</span>';
        }

        if(a.mTime){
            headHtml += '<span class="head-info public-time">' + a.mTime + '</span>';
        }

        headHtml += '<span class="footer-info skip-original-open">' + unescape('%u5F00%u542F%u539F%u6587')+ '</span>';
        headHtml += '</div>';
        headHtml += '</div>';

        $(".header_transocde").html(headHtml);
        //图片加载失败时隐藏
        $(".header_transocde img").error(function () {
            jQuery(this).hide();
        });

        if (a.mIcon_background) {
            $("img.head-logo").css("background-color", a.mIcon_background);
        }
        $(".skip-original-open").on("click", function () {
            window.InvenoTransCode && window.InvenoTransCode.openSource(a.mOrigUrl);
        });

        if (!a.mContent) {
            a.mContent = '<div class=\"content\"> \n <p style=\"\"> \n  <!--主图片 大于宽度320px即可--> <img alt=\"去黑痣不用激光手术 4个民间偏方外敷可祛除\" src=\"images/imgload.png\" style=\"\" data-url=\"http://img.xjlz365.com/news/img_list/2016083000276910.jpg\"> </p> \n <p> \n  <!--文章内容填写处 （必填）--> </p>\n <p> 几乎每一个人身上都会或多或少存在一些黑痣，或长在面部、或长在身上，而且黑痣的大小不一、颜色有深也有浅。黑痣是正常含有色素的痣细胞所构成的最常见的一种皮肤良性肿瘤，但这些黑痣一般不会对身体产生什么危害。可是有些黑痣会影响美观，所以有很多人会选择去除这些黑痣。</p> \n <p style=\"\"> <img src=\"images/imgload.png\" style=\"\" data-url=\"http://img.xjlz365.com/news/img_context/heizhimeinv2.jpg\"></p> \n <p> 如今，很多美容院都有祛除黑痣的项目，一般是采取激光祛痣的方法，一般收费较高。那有没有什么简单的方法能祛除黑痣呢？下面小编教大家几个民间小偏方，可以轻松祛除黑痣，效果也很好。</p> \n <p> <strong>方法一：</strong>根据黑痣的数量，准备花生、枸杞各适量，将二者同时烧焦捣碎，然后用酒精调匀，洁面后涂在黑痣上面包好，第二天洗去即可。一般连用半月可除去黑痣。</p> \n <p style=\"\"> <img src=\"images/imgload.png\" style=\"\" data-url=\"http://img.xjlz365.com/news/img_context/heizhiggg2.jpg\"></p> \n <p> <strong>方法二:</strong>准备鲜石灰10克、纯碱10克。将二者用酒精调匀，每天晚上洁面后涂到黑痣上，并用东西固定住，第二天洗去。连用七天后就可以消除黑痣。</p> \n <p> <strong>方法三</strong>：取苦枥子树皮1块、米汤1斤、鸡蛋清一个。将这三种东西放在容器中，煮开后放冷，然后涂在黑痣上面。每天晚上睡觉前涂抹，早上洗去，一般几天后就可除去黑痣。</p> \n <p style=\"\"> <img src=\"images/imgload.png\" style=\"\" data-url=\"http://img.xjlz365.com/news/img_context/heihzitoudoupian2.jpg\"></p> \n <p> <strong>方法四：</strong>准备新鲜土豆一个，将土豆切成薄片，睡觉前洗干净脸，轻轻的将土豆片敷在黑痣上即可，最好将土豆片固定住，早上的时候洗干净脸即可。大概进行两个礼拜黑痣就有可能去除。</p> \n <p style=\"\"> <img src=\"images/imgload.png\" style=\"\" data-url=\"http://img.xjlz365.com/news/img_context/heizhizuhou2.jpg\"></p> \n <p> 以上就是小编给大家推荐的祛除黑痣的民间小偏方，据验证都有一定的效果，想祛除黑痣的朋友不妨试试，如果担心没效果或对皮肤有伤害的话，可以在手臂等非面部的地方试一下，有效果了再祛除脸部的黑痣。</p> \n <p><strong><a href=\"\">[乡间郎中]</a>独家稿件，未经授权禁止转载。</strong></p> \n <p></p> \n</div>'
        }

        var old = a.mContent;
        try{
            a.mContent = (a.mContent).replace(/(<[^>]*>)[\s]*/g,"$1");
            a.mContent = (a.mContent).replace(/<figure[^>]*>/g,'<p>').replace(/<\/figure[^>]*>/g,'</p>');
            a.mContent = (a.mContent).replace(/<p[^>]*><\/p>/g,"");
            //replace SRC attr
            a.mContent = (a.mContent).replace(/(\bSRC\b[\s]*=)/g,'OLDSRC=');
            // <a>
            a.mContent = (a.mContent).replace(/<a[^>]*>/g,"").replace(/<\/a[^>]*>/g,"");
        }catch(e){
            console.log("---a.mContent---exception--"+e.message);
            a.mContent = old;
        }

        var contentshow = $(old);
        try{
             contentshow = $(a.mContent);
        }catch(e){
            contentshow = $(old);
            console.log("transcode--init-"+e.message);
        }finally{
             contentshow.find('img').addClass('scrollLoading');
             contentshow.find('img').parent().addClass('imgparent');
             contentshow.find('video').parent().addClass('videoparent');
             $('.transcode-container').html(contentshow);
        }

    }

     loadScript('http://download.inveno.com/SDK/malacca_js/1.1/src/inveno_default.min.1.0.js',function(){});
     loadVisibleAreaImg();
}();

$(document).ready(function(){

  $(window).scroll(function() {
    loadVisibleAreaImg();
  });
});


//可见区域时加载图片(图片懒加载，减缓服务器压力)
function loadVisibleAreaImg () {
    var wHeight = window.innerHeight || document.documentElement.clientHeight || 500;//可视区域的高度,default 500px
    wHeight = wHeight < 200 ? 500 :wHeight;
    wHeight = wHeight + 200; //提前屏幕200px加载.

    jQuery(".scrollLoading").each(function (index, item) {
        //isAnimation: 0 ---未初始化，未给src赋值, 1-----已给src赋值，并且图片加载成功.2---------已给src赋值，图片没有加载成功(网络问题)
        var isAnimation = jQuery(this).attr("isanimation");
        if (isAnimation == 1) { 			//已播放动画  并为src赋值   则不再进入
            return;
        }

        var boundTop = 0;
        try{
            var bound = jQuery(this)[0].getBoundingClientRect();
            boundTop = bound ? bound.top : 0; //当前图片距离顶部的高度
        }catch(e){
            boundTop = 0;
        }

        if(wHeight  >= boundTop){
            var srcValue = jQuery(this).attr("data-url");
            if(srcValue != null && srcValue != ""){
                  jQuery(this).attr("src", srcValue);
                  jQuery(this).load(function () {
                  //图片宽度小于200px时，不适应屏幕宽度(按照原图处理)。否则，小图会被强制拉大.
                  if (jQuery(this).width() < 200) {
                       jQuery(this).attr("style", "width: auto");
                  }else {
                       jQuery(this).attr("style", "width: 100%");
                  }

                  if (jQuery(this).attr("isanimation") != 2) {
                      jQuery(this).attr("isanimation", 1); //已给src赋值，并且图片加载成功
                  }});

                  jQuery(this).error(function () {
                    //jQuery(this).attr("src", "images/load_fail.png");
                    jQuery(this).hide();
                    jQuery(this).attr("isanimation", 1); //已给src赋值，图片没有加载成功(网络问题)
                 });
            }
        }else{
            return false; //跳出循环
        }
    });
};

function loadScript(e, t) {
    var a, i = document.head;
    a = document.createElement("script"),
        a.type = "text/javascript",
        a.charset = "utf-8",
        a.src = e,
        i.insertBefore(a, i.firstChild),
    t && a.addEventListener("load", function () {
        t();
    }, !1)
}


!function () {
    var lastTime = 0;
    var vendors = ['ms', 'moz', 'webkit', 'o'];
    for (var x = 0; x < vendors.length && !window.requestAnimationFrame; ++x) {
        window.requestAnimationFrame = window[vendors[x] + 'RequestAnimationFrame'];
        window.cancelAnimationFrame = window[vendors[x] + 'CancelAnimationFrame'] || window[vendors[x] + 'CancelRequestAnimationFrame'];
    }
    if (!window.requestAnimationFrame) window.requestAnimationFrame = function (callback, element) {
        var currTime = new Date().getTime();
        var timeToCall = Math.max(0, 16 - (currTime - lastTime));
        var id = window.setTimeout(function () {
            callback(currTime + timeToCall);
        }, timeToCall);
        lastTime = currTime + timeToCall;
        return id;
    };
    if (!window.cancelAnimationFrame) window.cancelAnimationFrame = function (id) {
        clearTimeout(id);
    };
}();
