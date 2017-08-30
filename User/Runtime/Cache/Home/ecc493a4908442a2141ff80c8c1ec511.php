<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html class="login-bg"><head>
	<title>六星资本</title>
    
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
    <!-- bootstrap -->
    <link href="/css/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="/css/bootstrap/bootstrap-responsive.css" rel="stylesheet" />
    <link href="/css/bootstrap/bootstrap-overrides.css" type="text/css" rel="stylesheet" />
	<script src="/kinmage/jquery-1.9.1.min.js"></script>
 <script src="http://pv.sohu.com/cityjson?ie=utf-8"></script> 
 
    <!-- global styles -->
    <link rel="stylesheet" type="text/css" href="/css/layout.css" />
    <link rel="stylesheet" type="text/css" href="/css/elements.css" />
    <link rel="stylesheet" type="text/css" href="/css/icons.css" />

    <!-- libraries -->
    <link rel="stylesheet" type="text/css" href="/css/lib/font-awesome.css" />
    
    <!-- this page specific styles -->
    <link rel="stylesheet" href="/css/compiled/signin.css" type="text/css" media="screen" />


<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>


    <!-- background switcher -->
    <!--<div class="bg-switch visible-desktop">
        <div class="bgs">
            <a href="#" data-img="landscape.jpg" class="bg active">
                <img src="img/bgs/landscape.jpg" />
            </a>
            <a href="#" data-img="blueish.jpg" class="bg">
                <img src="img/bgs/blueish.jpg" />
            </a>            
            <a href="#" data-img="7.jpg" class="bg">
                <img src="img/bgs/7.jpg" />
            </a>
            <a href="#" data-img="8.jpg" class="bg">
                <img src="img/bgs/8.jpg" />
            </a>
            <a href="#" data-img="9.jpg" class="bg">
                <img src="img/bgs/9.jpg" />
            </a>
            <a href="#" data-img="10.jpg" class="bg">
                <img src="img/bgs/10.jpg" />
            </a>
            <a href="#" data-img="11.jpg" class="bg">
                <img src="img/bgs/11.jpg" />
            </a>
        </div>
    </div>-->


    <div class="row-fluid login-wrapper">
        <a href="index.html">
            <img class="logo" src="/img/logo-white.png" />
        </a>
 <form name="logFrm" id="logFrm" action="<?php echo U('/Home/Login/logincl');?>" method="post">
			<input name="ip" id="ip" type="hidden" value="">
        <div class="span4 box">
          <div class="content-wrap">
                <h6>會員登入</h6>
                <input name="account" type="text" class="span12" value="" placeholder="用戶名" />
                <input name="password" type="password" class="span12" value="" placeholder="密碼" />
                <button type="submit" class="btn-glow primary login" id="btn">確認登入</button></div>
        </div>
</form>
        <div class="span4 no-account">
            <p style="color:#FFFFFF;">2016 六星资本  All Right Reserved</p>
            <!-- <a href="signup.html">Sign up</a>-->
        </div>
    </div>

	<!-- scripts -->
    <script src="/js/jquery-latest.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script src="/js/theme.js"></script>

    <!-- pre load bg imgs -->
    <script type="text/javascript">
        $(function () {
            // bg switcher
            var $btns = $(".bg-switch .bg");
            $btns.click(function (e) {
                e.preventDefault();
                $btns.removeClass("active");
                $(this).addClass("active");
                var bg = $(this).data("img");

                $("html").css("background-image", "url('/img/bgs/" + bg + "')");
            });

        });
    </script>

</body>
</html>