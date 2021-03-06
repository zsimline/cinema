﻿<!DOCTYPE HTML>
<html>

<head>
    <meta charset="utf-8" />
    <title>找不到主页</title>
    <link href="/static/css/404.css" rel="stylesheet" type="text/css" />
    <script src="https://cdn.staticfile.org/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript">
    if (!window.jQuery) {
        var script = document.createElement('script');
        script.src = "/static/js/jquery.min.js";
        document.body.appendChild(script);
    }
    $(function() {
        var h = $(window).height();
        $('body').height(h);
        $('.mianBox').height(h);
        centerWindow(".tipInfo");
    });

    //2.将盒子方法放入这个方，方便法统一调用
    function centerWindow(a) {
        center(a);
        //自适应窗口
        $(window).bind('scroll resize',
            function() {
                center(a);
            });
    }

    //1.居中方法，传入需要剧中的标签
    function center(a) {
        var wWidth = $(window).width();
        var wHeight = $(window).height();
        var boxWidth = $(a).width();
        var boxHeight = $(a).height();
        var scrollTop = $(window).scrollTop();
        var scrollLeft = $(window).scrollLeft();
        var top = scrollTop + (wHeight - boxHeight) / 2;
        var left = scrollLeft + (wWidth - boxWidth) / 2;
        $(a).css({
            "top": top,
            "left": left
        });
    }
    </script>
</head>

<body>
    <div class="mianBox">
        <img src="/static/images/404/yun0.png" alt="" class="yun yun0" />
        <img src="/static/images/404/yun1.png" alt="" class="yun yun1" />
        <img src="/static/images/404/yun2.png" alt="" class="yun yun2" />
        <img src="/static/images/404/bird.png" alt="" class="bird" />
        <img src="/static/images/404/san.png" alt="" class="san" />
        <div class="tipInfo">
            <div class="in">
                <div class="textThis">
                    <h2>页面未找到</h2>
                    <p><span>页面自动<a id="href" style="cursor: pointer;"onclick="history.back()">跳转</a></span><span>等待<b id="wait">6</b>秒</span></p>
                    <script type="text/javascript">
                    (function() {
                        var wait = document.getElementById('wait'),
                            href = document.getElementById('href').href;
                        var interval = setInterval(function() {
                            var time = --wait.innerHTML;
                            if (time <= 0) {

                                clearInterval(interval);
                                history.back();
                            };
                        }, 1000);
                    })();
                    </script>
                </div>
            </div>
        </div>
    </div>
</body>

</html>

