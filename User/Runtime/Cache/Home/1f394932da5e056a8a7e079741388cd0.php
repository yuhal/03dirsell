<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<!-- saved from url=(http://www.sixstaredu.com) -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
<script type="text/javascript" src="/js/jquery-2.1.1.min.js"></script>
    <!-- Page title -->
    <title>六星资本</title>

    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->

    <!-- Vendor styles -->
    <link rel="stylesheet" href="/assets/vendor/fontawesome/css/font-awesome.css">
    <link rel="stylesheet" href="/assets/vendor/metisMenu/dist/metisMenu.css">
    <link rel="stylesheet" href="/assets/vendor/animate.css/animate.css">
    <link rel="stylesheet" href="/assets/vendor/bootstrap/dist/css/bootstrap.css">
    <link rel="stylesheet" href="/assets/vendor/sweetalert/lib/sweet-alert.css">
    <link rel="stylesheet" href="/assets/vendor/toastr/build/toastr.min.css">
    

    <!-- App styles -->
    <link rel="stylesheet" href="/assets/fonts/pe-icon-7-stroke/css/pe-icon-7-stroke.css">
    <link rel="stylesheet" href="/assets/fonts/pe-icon-7-stroke/css/helper.css">
    <link rel="stylesheet" href="/assets/styles/style.css">

<style type="text/css">
.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}#wrapper {
}
</style>
</head>
<body style="background-image:url(/img/bgs/landscape.jpg)">



<!-- Main Wrapper -->
<div >
<div >
        <div class="hpanel">
            <div class="panel-body">
                <a class="small-header-action" href="">
                    <div class="clip-header">
                        <i class="fa fa-arrow-up"></i>
                    </div>
                </a>

                <div id="hbreadcrumb" class="pull-right m-t-lg">
                    <ol class="hbreadcrumb breadcrumb">
                        <li><a href="/">首页</a> </li>
                        <li class="active">
                            <span><a>注册新用户</a></span>
                        </li>
                    </ol>
                </div>
                <h2 class="font-light m-b-xs">
                    六星资本-注册新用户                </h2>
              
            </div>
        </div>
    </div>
<div class="content">
<div class="row">
    <div class="col-lg-12">
        <div class="col-md-12">
            <div class="hpanel">
                <div class="panel-body" style="width:100%;margin:0px auto;">
                        <form action="<?php echo U('regadd');?>" id="loginForm" method="post">
                            <div class="row">
                             <div class="form-group col-lg-12">
                                <label>昵称</label>
                                <input type="" value="" id="username" class="form-control" name="username" autocomplete="off" maxlength="60" required="">
                            </div>
                             <div class="form-group col-lg-12">
                               <label><font color="red">*</font>手机号码</label>
                                <input type="" value="" id="" class="form-control" name="phone" maxlength="13"  required="">
                            </div>
                            
                            <div class="form-group col-lg-6">
                                <label>登入密码</label>
                                <input type="password" value="" id="password" class="form-control" name="password" autocomplete="off" min="6" required="">
                            </div>
                            <div class="form-group col-lg-6">
                                <label>确认登入密码</label>
                                <input type="password" value="" id="password2" class="form-control" name="password2" autocomplete="off" required="">
                            </div>

                           <div class="form-group col-lg-6">
                             <label>登入邮箱</label>
                                <input type="email" value="" id="" class="form-control" name="email" autocomplete="off" required="">
                            </div>

                            <div class="form-group col-lg-6">
                                <label><font color="red">*</font>推荐人邮箱</label>
                                 <div class="input-group"><input type="email" value="<?php echo ($tjmail); ?>" id="pemail_repeat" class="form-control" name="pemail_repeat" autocomplete="off" required=""> 
                                 <span class="input-group-btn"> <input name="jhwjjc"  id="jhwjjc2" type="button" class="btn btn-primary pemailcheck" value="检查"> </span></div>
                        	 <font id="alert_pemail_repeat"></font>
                            </div>
                             <div class="form-group col-lg-12">
                                <label><font color="red">*</font>激活码</label>
                                <input type="" value="" id="lid" class="form-control" name="code" autocomplete="off" required="">
                            </div>
                            <div class="checkbox col-lg-12">
                                <div class="icheckbox_square-green checked" style="position: relative;"></div>
                              <input name="ty" type="checkbox" id="ty" value="ye" checked>
                              我已完全了解所有风险。
                            </div>
                            </div>
                            <div class="text-center">
                                <button class="btn btn-success">注册</button>
                                <!--<button class="btn btn-default">取消</button>-->
								<input name="重置" type="reset" class="btn btn-default" value="取消">
                            </div>
                        </form><script>









$(function(){


$('#jhwjjc2').click(function() { 

var $dfzh = $('#pemail_repeat').val();
var $action = '/Home/Reg/xm';

//alert($action);
$.post($action,{dfzh:$dfzh},function(data){
//alert("asdf");
if(data.sf == 0){
document.getElementById('alert_pemail_repeat').innerHTML = data.nr;
//alert(data.nr);
}else{
//alert(data);
document.getElementById('alert_pemail_repeat').innerHTML = data;
}
});


}); 

})


</script>
                </div>
            </div>
        </div>
    </div>
</div>


</div>

</div>

<!--gethelp modal end-->




<script src="/cssmmm/jquery.min.js"></script>
<script src="/cssmmm/jquery-ui.min.js"></script>
<script src="/cssmmm/jquery.slimscroll.min.js"></script>
<script src="/cssmmm/bootstrap.min.js"></script>
<script src="/cssmmm/jquery.flot.js"></script>
<script src="/cssmmm/jquery.flot.resize.js"></script>
<script src="/cssmmm/jquery.flot.pie.js"></script>
<script src="/cssmmm/curvedLines.js"></script>
<script src="/cssmmm/index.js"></script>
<script src="/cssmmm/metisMenu.min.js"></script>
<script src="/cssmmm/icheck.min.js"></script>
<script src="/cssmmm/jquery.peity.min.js"></script>
<script src="/cssmmm/index(1).js"></script>
<script src="/cssmmm/sweet-alert.min.js"></script>
<script src="/cssmmm/toastr.min.js"></script>
<script src="/cssmmm/jquery.countdown.min.js"></script>


<!-- App scripts -->
<script src="/cssmmm/homer.js"></script>
<script src="/cssmmm/alert.js"></script>
<script src="/cssmmm/charts.js"></script>
<script type="text/javascript" src="/cssmmm/socket.io.js"></script>



</body></html>