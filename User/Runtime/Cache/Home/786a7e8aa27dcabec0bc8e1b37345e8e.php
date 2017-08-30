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

<style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style></head>
<body>
<div id="header">
    <div class="color-line">
    </div>
    <div id="logo" class="light-version"><span class="text-primary">六星资本</span></div>
    <nav role="navigation">
        <div class="header-link hide-menu"><i><img src="/cssmmm/nav1.jpg"></i></div>
        <div class="small-logo">
			<td>
    <span style="color: #999;">推广链接：</span><input id="copy-num" style="display:none;" type="text" value="<?php echo ($tgurl); ?>" class="form-control">
    <button  type="button" onclick="jsCopy()">复制</button>
    </td>
        </div>
        <form role="search" class="navbar-form-custom" method="post" action="#">
            <div class="form-group" style="width:800px;">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td>
    <input type="text" style="width:150px;display:inline-block;" placeholder="<?php echo ($userData['ue_theme']); ?>,欢迎回来！" class="form-control" name="search">
    <span style="color: #999;">推广链接：</span><input id="copy-num" style="width:450px;display:inline-block;color: #999;" type="text" value="<?php echo ($tgurl); ?>" class="form-control">
    <button  type="button" onclick="jsCopy()">复制</button>
    </td>
   
  </tr>
</table> 
<script type="text/javascript">
     function jsCopy(){
        var e=document.getElementById("copy-num");//对象是copy-num1
        e.select(); //选择对象
        document.execCommand("Copy"); //执行浏览器复制命令
        alert("复制成功");
    }
</script>
            </div>
        </form>
		
        <div class="navbar-right">
            <ul class="nav navbar-nav no-borders">
                <li class="dropdown">
                    <a class="dropdown-toggle label-menu-corner" href="#" data-toggle="dropdown-menu">
                        <i><img src="/cssmmm/nav2.jpg"></i>
                        <span class="label label-success"></span>
                    </a>
                    
                    
                    <ul class="dropdown-menu hdropdown animated flipInX">
                        <li>
                           <a href="/web/index/lang/en/">
									<img src="/cssmmm/en.png">
									English
						  </a>
                        </li>
                        <li>
                             <a href="/web/index/lang/cn/">
									<img src="/cssmmm/cn.png">
									简体中文
							</a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="<?php echo U('/Home/Login/logout');?>">
                        <i><img src="/cssmmm/nav3.jpg"></i>
                    </a>
                </li>
            </ul>
        </div>
    </nav>
</div>
<aside id="menu">
    <div id="navigation">
        <div class="profile-picture">
           <a href="javascript:void(0);">
                <img src="/cssmmm/profile.jpg" class="img-circle m-b" alt="logo">
            </a>

            <div class="stats-label text-color">
                <span class="font-extra-bold font-uppercase"><?php echo ($userData['ue_theme']); ?></span>

                <div class="dropdown">
                    <a class="dropdown-toggle" href="#" data-toggle="dropdown">
                        <small class="text-muted"><?php echo ($userData['ue_account']); ?></small>
                    </a>
                    
                    <!--
                    
                    <ul class="dropdown-menu animated fadeInRight m-t-xs">
                        <li><a href="contacts.html">Contacts</a></li>
                        <li><a href="profile.html">Profile</a></li>
                        <li><a href="analytics.html">Analytics</a></li>
                        <li class="divider"></li>
                        <li><a href="login.html">Logout</a></li>
                    </ul>
                    -->
                    
                </div>


                <div id="sparkline1" class="small-chart m-t-sm"><canvas width="119" height="30" style="display: inline-block; width: 119px; height: 30px; vertical-align: top;"></canvas></div>
                <div>
                    <h4 class="font-extra-bold m-b-xs">
                        <?php echo ($userData['ue_money']); ?> Mavro
                    </h4>
                    <small class="text-muted">推荐人：<?php echo ($userData['ue_accname']); ?></small><br>
					<small class="text-muted">注册经理：<?php echo ($userData['zcr']); ?></small><br>
					 <small class="text-muted">级别：<?php echo ($userData['levelname']); ?></small><br>
                </div>
            </div>
        </div>

   <ul class="nav" id="side-menu">
				<li class="" id="l0">
								<a href="/">
									<i class="icon-home"></i> 
									<span class="title">
										首页											                                        									</span>
									<span class="selected"></span>								</a>							</li>
				  <li class="" id="l1">
								<a href="/Home/Index/reg/">
									<i class="icon-home"></i> 
									<span class="title">
										注册新会员											                                        									</span>
									<span class="selected"></span>								</a>	  </li>
				  <li class="" id="l2">
								<a href="/Home/Info/pin">
									<i class="icon-home"></i> 
									<span class="title">
										激活码管理											                                        									</span>
									<span class="selected"></span>								</a>	  </li>
									</if>
				<li class="" id="l3">
								<a href="/Home/Index/news/">
									<i class="icon-home"></i> 
									<span class="title">
										新闻公告								</span>
									<span class="selected"></span>								</a>	  </li>											
				<li class="" id="m2">
							<a href="javascript:;">
								<i class="icon-cogs"></i> 
								<span class="title">
									组织管理																		</span>
								<span class="selected"></span>
								<span class="fa arrow " style="background-image:url(/cssmmm/nav4.jpg)"></span>
							</a>
							<ul class="nav nav-second-level collapse">
																		<li id="l21">
											<a href="/Home/Myuser/">
												推荐列表																							</a>
										</li>										<li id="l23">
											<a href="/Home/Myuser/xzzh/">
												我的用户群																							</a>
										</li>							</ul>
	  </li>						<li class="" id="m3">
							<a href="javascript:;">
								<i class="icon-cogs"></i> 
								<span class="title">
									账号管理																		</span>
								<span class="selected"></span>
								<span class="fa arrow " style="background-image:url(/cssmmm/nav4.jpg)"></span>
							</a>
							<ul class="nav nav-second-level collapse">
																		<li id="l31">
											<a href="/Home/Info/">
												个人资料																							</a>										</li>										
																		<li id="l32">
											<a href="/Home/Info/xgmm/">
												更改密码																							</a>										</li>							
							</ul>
						</li><li class="" id="l41">
								<a href="/Home/Info/cwmx">
									<i class="icon-home"></i> 
									<span class="title">
										财务管理										                                        									</span>
									<span class="selected"></span>
								</a>
                                
                                
                              
							</li><li class="" id="l42">
								<a href="/Home/Myuser/lxwm/">
									<i class="icon-home"></i> 
									<span class="title">
										联系我们											                                        									</span>
									<span class="selected"></span>
								</a>
                                
                                
                              
							</li><li class="" id="l43">
								<a href="<?php echo U('/Home/Login/logout');?>">
									<i class="icon-home"></i> 
									<span class="title">
										退出											                                        									</span>
									<span class="selected"></span>
								</a>
                                
                                
                              
							</li>								</ul>
                </div>
</aside>


<!-- Main Wrapper -->
<div id="wrapper" style="min-height: 856px;">
<div class="normalheader">
        <div class="hpanel">
            <div class="panel-body">
                <a class="small-header-action" href="">
                    <div class="clip-header">
                        <i class="fa fa-arrow-up"></i>
                    </div>
                </a>

                <div id="hbreadcrumb" class="pull-right m-t-lg">
                    <ol class="hbreadcrumb breadcrumb">
                        <li><a href="">首页</a> </li>
                        <li class="active">
                            <span><a>注册新会员</a></span>
                        </li>
                    </ol>
                </div>
                <h2 class="font-light m-b-xs">
                    注册新会员                </h2>
              
            </div>
        </div>
    </div>
<div class="content">
<div class="row">
    <div class="col-lg-12">
        <div class="col-md-12">
            <div class="hpanel">
                <div class="panel-body">
                        <form action="<?php echo U('regadd');?>" id="loginForm" method="post">
                            <div class="row">
                             <div class="form-group col-lg-12">
                                <label>姓名</label>
                                <input type="" id="username" class="form-control" name="username"  maxlength="60" required="">
                            </div>
                             <div class="form-group col-lg-12">
                               <label>手机号码</label>
                                <input type="" id="" class="form-control" name="phone" maxlength="13"  required="">
                            </div>
                           <div class="form-group col-lg-6">
                             <label>登入用户名</label>
                                <input type="text" id="" class="form-control" name="email"  required="">
                            </div>
                            <div class="form-group col-lg-6">
                                <label>确认登入用户名</label>
                                <input type="text" id="" class="form-control" name="email_repeat"  required="">
                            </div>
                            
                            <div class="form-group col-lg-6">
                                <label>登入密码</label>
                                <input type="password" id="password" class="form-control" name="password"  min="6" required="">
                            </div>
                            <div class="form-group col-lg-6">
                                <label>确认登入密码</label>
                                <input type="password" id="password2" class="form-control" name="password2"  required="">
                            </div>
                            <div class="form-group col-lg-6">
                                <label>二级密码</label>
                                <input name="ejmm" type="password" class="form-control" id="password"  min="6" required="">
                            </div>
                            <div class="form-group col-lg-6">
                                <label>确认二级密码</label>
                                <input name="ejmm2" type="password" class="form-control" id="password2"  required="">
                            </div>
                              <div class="form-group col-lg-6">
                                <label>介绍人用户名</label>
                                 <div class="input-group"> <input type="text" value="<?php echo ($userData['ue_account']); ?>" id="pemail" class="form-control" name="pemail"  required=""> 
                                 <span class="input-group-btn"><input name="jhwjjc"  id="jhwjjc" type="button" class="btn btn-primary pemailcheck" value="检查"> </span></div>
                               <font id="alert_pemail"></font>
                            </div>
                            <div class="form-group col-lg-6">
                                <label>确认介绍人用户名</label>
                                 <div class="input-group"><input type="text" value="<?php echo ($userData['ue_account']); ?>" id="pemail_repeat" class="form-control" name="pemail_repeat"  required=""> 
                                 <span class="input-group-btn"> <input name="jhwjjc"  id="jhwjjc2" type="button" class="btn btn-primary pemailcheck" value="检查"> </span></div>
                        	 <font id="alert_pemail_repeat"></font>
                            </div>
                        <div class="form-group col-lg-12">
                                <label>激活码</label>
                                <input type="" value="<?php echo ($pin1["pin"]); ?>" id="lid" class="form-control" name="code"  required="">
<span style="color:#FF0000;">当前可用PIN码，可手动输入</span>
                            </div>
                              <div class="form-group col-lg-12">
                                <label>确认激活码</label>
                                <input type="" value="<?php echo ($pin1["pin"]); ?>" id="lid" class="form-control" name="code2"  required="">
								<span style="color:#FF0000;">当前可用PIN码，可手动输入</span>
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
								<input name="ip" type="text" id="ip" style="display:none;">
								<input name="重置" type="reset" class="btn btn-default" value="取消">
                            </div>
                        </form>
						
						
						<script src="http://pv.sohu.com/cityjson?ie=utf-8"></script>  
<script>

document.getElementById('ip').value= returnCitySN["cip"];

</script>
						
						<script>









$(function(){

$('#jhwjjc').click(function() { 

var $dfzh = $('#pemail').val();
var $action = '/Home/Myuser/xm';

//alert($action);
$.post($action,{dfzh:$dfzh},function(data){
//alert("asdf");
if(data.sf == 0){
document.getElementById('alert_pemail').innerHTML = data.nr;
//alert(data.nr);
}else{
//alert(data);
document.getElementById('alert_pemail').innerHTML = data;
}
});


}); 

$('#jhwjjc2').click(function() { 

var $dfzh = $('#pemail').val();
var $action = '/Home/Myuser/xm';

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

<!--table-->
<div class="row">
    <div class="col-lg-12">
    	 <div class="col-md-12">
        <div class="hpanel">
            <div class="panel-heading">
                <div class="panel-tools">
                    <a class="showhide"><i class="fa fa-chevron-up"></i></a>
                    <a class="closebox"><i class="fa fa-times"></i></a>
                </div>
                激活码使用记录</div>
            <div class="panel-body">
                <div class="table-responsive">
                 <div id="example_wrapper" class="dataTables_wrapper no-footer">
                   <div id="example_filter" class="dataTables_filter"><label></label>
                   </div><table id="example" cellpadding="1" cellspacing="1" class="table table-bordered table-striped cus_datatable dataTable no-footer" role="grid" aria-describedby="example_info">
                <thead>
                  <tr role="row"><th class="sorting_desc" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-sort="descending" aria-label="编号: activate to sort column ascending" style="width: 99px;">编号</th><th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="用户: activate to sort column ascending" style="width: 299px;">用户</th><th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="MMMPIN码: activate to sort column ascending" style="width: 284px;">MMM激活码</th><th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="新用户: activate to sort column ascending" style="width: 283px;">新用户</th><th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="注册时间: activate to sort column ascending" style="width: 254px;">注册时间</th></tr>
                </thead>
                <tbody>
				
				<?php if(is_array($list)): foreach($list as $key=>$v): ?><tr role="row" class="odd">
                      <td class="sorting_1"><?php echo ($v["ue_id"]); ?></td>
                      <td><?php echo ($v["zcr"]); ?></td>
                      <td><?php echo ($v["pin"]); ?></td>
                      <td><?php echo ($v["ue_account"]); ?></td>
                      <td><?php echo ($v["ue_regtime"]); ?></td>
                    </tr><?php endforeach; endif; ?>
					
					</tbody>
              </table>
                 <div class="dataTables_info" id="example_info" role="status" aria-live="polite"><?php echo ($page); ?></div>
                 </div>
                </div>

            </div>
            <div class="panel-footer">
                Table - 6 rows
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

<script>
    
   
</script>


<script>
    $(function () {
                
              $('.time_countdown').each(function()
            {
                var $this = $(this);
                var time = $this.data('time')+'';




                 var y = time.split(' ');
                  var ys  =  y[0].split('-');

                 var sd = y[1].split(':');

                 for (var i = 0; i < sd.length; i++) {
                     ys.push(sd[i]);
                 };

                 console.log(ys);

                var datez = new Date(ys[0],ys[1],ys[2],ys[3],ys[4],ys[5]).getTime();
                //datez = datez+172800000;


                var date = new Date(datez);
                    Y = date.getFullYear() + '/';
                    M = date.getMonth()+'/';
                    D = date.getDate() + ' ';
                    h = date.getHours() + ':';
                    m = date.getMinutes() + ':';
                    s = date.getSeconds(); 

                    dates = Y+M+D+h+m+s;
                    console.log(Y+M+D+h+m+s+'.......'); 

                $this.countdown(dates, function(event) {


                    $(this).text(
                            event.strftime('%-D 天 %-H 小时 %M 分钟 %S 秒')
                    );
                });

                datez = null;
            });   


           $("#canyuzhi").change(function(){

                //alert($(this).val());

                $("#regs").submit();


           });   


            var $from =  null;
            
            $(".cancel").click(function(){  
                $from = $(this).parents().eq(0);

           
                $div = $(this).parents().eq(2);
            
                
                //$("#myModa31").modal('toggle');
                var order_id = $(this).data('id');
                
                 swal({
                        title: "您确定要取消吗？",
                        text: "",
                        type: "warning",
                        showCancelButton: true,
                        confirmButtonColor: "#DD6B55",
                        confirmButtonText: "是的，我要取消",
                        cancelButtonText: "不，我不取消",
                        closeOnConfirm: false,
                        closeOnCancel: true },
                    function (isConfirm) {
                        if (isConfirm) {
                            $.post('/tu/cancel_provide_request',{order_id:order_id},function(data){
                                if(data){
                                    swal("已取消", "取消成功.", "success");
                                    $div.remove();
                                }
                            });
                            
                        } else {
                            swal("", "", "error");
                        }
                    });
            
            });
            
            
            $(".cancel2").click(function(){ 
                $from = $(this).parents().eq(0);
                $div = $(this).parents().eq(2);
                
                
                //$("#myModa31").modal('toggle');
                var order_id = $(this).data('id');
                
                 swal({
                        title: "您确定要取消吗？",
                        text: "",
                        type: "warning",
                        showCancelButton: true,
                        confirmButtonColor: "#DD6B55",
                        confirmButtonText: "是的，我要取消",
                        cancelButtonText: "不，我不取消",
                        closeOnConfirm: false,
                        closeOnCancel: true },
                    function (isConfirm) {
                        if (isConfirm) {
                            $.post('/tu/cancel_get_request',{order_id:order_id},function(data){
                                if(data){
                                    swal("已取消", "取消成功.", "success");
                                    $div.remove();
                            }
                            });
                            
                        } else {
                            swal("", "", "error");
                        }
                    });
            
            });
            
            
            
            
            $("#yes_cancel").click(function(){
            
                console.log($from);
                
                $("#wait").submit();
                //$from.submit();
            });
            
            

            
            /*$("#next32").click(function(){
                $("#myModa32").modal('toggle');
            });
            
            $("#next30").click(function(){
                $("#myModa30").modal('toggle');
            });*/
            
            
            
            
            $(".btngethelp").click(function(){
            $(".balance").val($(this).data("cp"));
            $(".sell").val($(this).data("cp"));
            $(".get_amount").val("");
            $("#wallet_type").val($(this).data("wallet_type"));
            $("#gethelpmodal").modal("toggle");
        });
         $(".get_amount").bind("change",function(){
                if(isNaN($(this).val())){
                $(this).val(0);
                }
            var ths=$(this).val();
            var mat=Math.floor(ths/10);
            $(this).val(mat*10);
            var amount=mat*10;
            var cp=parseInt($(".balance").val());
            var maxx=parseInt("2000");
            var min=parseInt("100");
            var getvalue=amount*7;
            $("#gh_amount").text(amount);
            $("#gh").text(getvalue);
            if(amount<=cp&&amount<=maxx&&amount>=min){
            $("#gh_amount").css("color","#00FF00");
            $("#gh").css("color","#00FF00");
            $('.btnconfirm').removeAttr("disabled");
            }else{
            $('.btnconfirm').attr('disabled',"true");
                $("#gh_amount").css("color","red");
                $("#gh").css("color","red");
                }
                 $("#amount_get").text(getvalue);
        });
            $(".btn_get_next").click(function () {
            //alert("ss");
                 var sstr = '';
                 $('.ckbox2').each(function(index, element) {
                if($(this).prop('checked')){
                        sstr+=$(this).val()+',';    
                    }
            });
            $("#payment_method2").val(sstr);
           $("#get_help").submit();
           //alert(1);
        });

        $("#select_fanshi").click(function(){

            var id = $("#comid").val();
            var status = $('.comfir:checked').val();

            $.post('/tu/updateStatus',{status:status,id:id},function(data){

                 if (data != 0) {

                     alert('操作成功!');
                    window.location.reload();
                }else
                {
                    alert('操作失败!');
                    window.location.reload();

                }

            });

        });


        $("#select_fanshi2").click(function(){

            var id = $("#completid").val();

            var status = $('.comfir2:checked').val();

            $("#pro_status").val(status);

            if(status == 1){
                $("#myModa25").modal('toggle');
            }else{

                $.post('/tu/cancel',{provide_status:status,id:id},function(data){

                    if(data != 0){

                        alert('操作成功');
                        window.location.reload();
                    }else{
                         alert('操作失败');
                        window.location.reload();
                    }

                });

            }

        });

        $("#select_fanshi3").click(function(){

            var id = $("#completid").val();

            $("#myModa25").modal('close');

        });







        
        
$('input:checkbox').each(function() {
        
        if ($(this).attr('checked') ==true) {
                alert($(this).val());
        }
});
        $(".addmsg").click(function(){

            var id = $(this).data('id');
            $("#orderid").text(id);

            $.post('/tu/showMsg',{id:id},function(data){

                var html = [];
                var htmlstr = null;

                console.log(eval(data));

                var data = eval(data);

                if(data){
                    for(var i= 0,len = data.length;i<len;i++){

                        html.push('<p>'+data[i].time+' , '+data[i].lid+'</p>');

                        html.push('<p>'+data[i].context+'</p>');

                    }
                    htmlstr = html.join('');
                    $("#msg").html(htmlstr);
                }else{
                    $("#msg").html('');
                }

            });


            $("#id").val($(this).data('id'));

            $("#mesg").focus();

        });

         $('.btn_next').click(function () {
             var str = '';
             $('.ckbox').each(function(index, element) {
                if($(this).prop('checked')){
                        str+=$(this).val()+','; 
                    }
            });
            
            $("#payment_method").val(str);
             
             var amount=$("#amount").val();
             $("#amountpay").text(amount*7);
         });

        $('.btnNext').click(function () {
            $("#provide_help").submit();
        });
        $(".btn_detail").click(function () {


            $("#expire_date").text($(this).data("expire_date"));
            $("#bank_number").text($(this).data("bank_number"));
            $("#bank_user").text($(this).data("bank_user"));
            $("#bank_name").text($(this).data("bank_name"));

            $("#wechat").text($(this).data("wechat"));

            $("#alipay").text($(this).data("alipay"));

            $("#order_id").text($(this).data('id'));
            $(".receiver_phone").text($(this).data("receiver_phone"));
            $("#sender_phone").text($(this).data("sender_phone"));
            $("#sender_lid").text($(this).data("sender_lid"));
            $("#receiver_lid").text($(this).data("receiver_lid"));
			 $(".receiver_wechat_contact").text($(this).data("receiver_wechat_contact"));
            $("#amount_order").text($(this).data('amount_order'));
			 $("#sender_wechat_contact").text($(this).data("sender_wechat_contact"));
            $("#sender_manager_lid").text($(this).data('sender_manager_lid'));
            $("#sender_manager_phone").text($(this).data('sender_manager_phone'));
			 $("#sender_manager_wechat_contact").text($(this).data('sender_manager_wechat_contact'));
            $("#receiver_manager_lid").text($(this).data('receiver_manager_lid'));
            $("#receiver_manager_phone").text($(this).data('receiver_manager_phone'));
			$(".receiver_manager_wechat_contact").text($(this).data('receiver_manager_wechat_contact'));


        });

        $(".provide_complete").click(function(){

            $("#expire_date2").text($(this).data("expire_date"));
            $("#bank_number2").text($(this).data("bank_number"));
            $("#bank_user2").text($(this).data("bank_user"));
            $("#bank_name2").text($(this).data("bank_name"));
            $("#mavro").text($(this).data('mavro'));
            $("#rmb").text(Number($(this).data('mavro'))*7);
            $("#comid").val($(this).data('id'));

        });


        $(".complete").click(function(){

            $("#completid").val($(this).data('id'));


        });



        var selec = $("#amount").val();
        var tt = selec * 7;
        $("#select").text(selec);
        $("#pay").text(tt);
        $("#amount").bind("change", function () {
            $("#select").text($("#amount").val());
            $("#pay").text($("#amount").val() * 7);
        });


        $("#ad").height($("#aa").css('height'));
        $("#bd").height($("#ba").css('height'));
        $("#cc").height($("#ca").css('height'));
    });

    //js timestamp -- data
    function formatDate(timestamp, accuracy) {
        var time = new Date(timestamp);
        var year = time.getFullYear();
        var month = time.getMonth() + 1;
        var date = time.getDate();
        var hour = time.getHours();
        var minute = time.getMinutes();
        var second = time.getSeconds();
        var result = "";

        switch (accuracy) {
            case "year":
            {
                result = year;
            }
                break;
            case "month":
            {
                result = year + "-" + month;
            }
                break;
            case "day":
            {
                result = year + "-" + month + "-" + date;
            }
                break;
            case "hour":
            {
                result = year + "-" + month + "-" + date + " " + hour + ":00";
            }
                break;
            case "minute":
            {
                result = year + "-" + month + "-" + date + " " + hour + ":" + minute;
            }
                break;
            case "second":
            {
                result = year + "-" + month + "-" + date + " " + hour + ":" + minute + ":" + second;
            }
                break;
            default:
                break;
        }
        return result;
    }


    try {
        var socket = io('http://174.139.194.157:1338');
    } catch (err) {
        console.log('server errr');
    }
    var $show = $("#show");

    var $total = $("#total");

    socket.on('num', function (data) {

        $total.html(data.num);

    });

    socket.on('show', function (data) {
        console.log(data);

        $total.html(data.num);

        var reallen = $show.find('div').length;

        if (reallen > 500) {

            $show.find('div').last().remove();

        }

        $show.prepend('<div><span>' + formatDate(Number(data.data.add_time) * 1000, 'second') + '   </span><span>   ' + data.data.city + ' 的会员做了一次操作</span></div>');

    });

</script>


<div class="modal fade" id="myModal6" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="color-line"></div>
                    <div class="modal-header">
                        <h4 class="modal-title">提供帮助</h4>

                        <p class="text-warning">申请完成后，请等待系统15-30日随机分配受善需求</p>
                    </div>
                    <form method="post" action="do_provide_request" id="provide_help">
                        <div class="modal-body" style="text-align:center">
                            <br>
                            <label class="col-sm-12 control-label">支付方式</label>

                            <div class="radio" align="left">
                            <input name="payment_method" type="hidden" id="payment_method">
                                <label> <input type="checkbox" value="0" class="ckbox" name="" checked="">银行支付</label><br>
                                <label> <input type="checkbox" value="1" class="ckbox" name="" checked="">支付宝支付</label><br>
                                <label> <input type="checkbox" value="2" class="ckbox" name="" checked="">微信支付</label><br>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-12 control-label">提供帮助金额</label>

                                <div class="col-sm-12">
                                    <select class="form-control m-b" name="amount" id="amount">
                                        <option value="100">100</option>
                                        <option value="300">300</option>
                                        <option value="500">500</option>
                                        <option value="700">700</option>
                                        <option value="1000" selected="">1000</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <font id="select" color="#00FF00">1000</font> MAVROx7=<font id="pay" color="#FF0000">7000</font>
                                人民币
                            </div>
                            <div class="form-group">
                                <h4>
                                    目前，每月增长30%
                                </h4>
                            </div>

                            <div class="icheckbox_square-green checked" style="position: relative;"><input type="checkbox" class="i-checks" name="i-checks" checked="" required="" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div>
                            警告，我已完全了解所有风险。我决定参与MMM,尊重MMM文化与传统。
                        </div>

                        <div class="modal-footer">

                            <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                            <button type="button" class="btn_next btn-warning btn-sm" data-dismiss="modal" data-toggle="modal" data-target="#myModal2">提供帮助</button>
                    
                </div></form>
            </div>
        </div>
    </div><div class="modal fade" id="myModal7" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="color-line"></div>
            <div class="modal-header">
                <h5 class="modal-title" id="title2">留言信息</h5>
                <small class="font-bold"></small>
            </div>
            <div class="modal-body" style="height:300px; overflow:auto">
                <p><strong>Order: R<span id="orderid"></span></strong></p>

                <p>你可以与这位参与者消息联系。</p>

                <p style="font-weight: bold;color: red;">ATTENTION!
                    注意：如对方要求提供银行账号，支付宝，微信支付以外的转账方式，请不要同意。</p>

                <hr>
                <div class="col-lg-12" id="msg">





                </div>

                <hr>

                <div class="col-lg-12">

                    <form action="addmessage" method="post">

                        <input name="id" value="" id="id" type="hidden">


                    <textarea rows="3" style="overflow: auto;resize: none;" cols="100" name="mesg" id="mesg">


                    </textarea>

                        <br>

                        <input type="submit" value="提交">

                    </form>

                </div>



            </div>
            <div class="modal-footer">
                <button type="button" class="btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div><div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="color-line"></div>
            <div class="modal-header">
                <h5 class="modal-title" id="title">确认申请</h5>
                <small class="font-bold"></small>
            </div>
            <div class="modal-body" style="height:300px;">
            <p><strong><font color="#FF0000" id="amountpay"></font> RMB  : 人民币</strong></p>
            <p>增长率为每日1% Mavro，最高30%  Mavro</p>
            <p>注意：您的申请如果需要被取消，可以在配对单产生之前提交取消申请。一旦配对单产生了，该施善申请将无法被取消。</p>
            <p><strong><font color="#FF0000">注意：请核实交易的资料，一旦完成申请，该交易是不能被取消或更改。</font></strong></p>

            </div>
            <div class="modal-footer">
            <!--
              <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
              -->
              <button type="button" class="btnNext btn-primary">确认</button>
            </div>
        </div>
    </div>
</div><div class="modal fade" id="myModa20" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="color-line"></div>
            <div class="modal-header">
                <h5 class="modal-title" id="title3">确认申请</h5>
                <small class="font-bold"></small>
            </div>
            <div class="modal-body" style="height:300px;">
                <p><strong><font color="#FF0000" id="amountpay2"></font> RMB  : 人民币</strong></p>
                <p>增长率为每日1% Mavro，最高30%  Mavro</p>
                <p>注意：您的申请如果需要被取消，可以在配对单产生之前提交取消申请。一旦配对单产生了，该施善申请将无法被取消。</p>
                <p><strong><font color="#FF0000">注意：请核实交易的资料，一旦完成申请，该交易是不能被取消或更改。</font></strong></p>

            </div>
            <div class="modal-footer">
                <!--
                  <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                  -->
                <button type="button" class="btnNext btn-primary">确认</button>
            </div>
        </div>
    </div>
</div><div class="modal fade" id="myModa21" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="color-line"></div>
            <div class="modal-header">
                <h5 class="modal-title" id="title21">确认汇款</h5>
                <small class="font-bold"></small>
            </div>
            <div class="modal-body" style="height:300px; overflow:auto">
                <p><strong>Order: R2723351</strong></p>

                <p>Member of the MMM has requested assistance in the amount of: <br>
                    <span id="mavro" style="font-weight: bold"></span> MYR<br>
                    <span id="rmb" style="font-weight: bold"></span> RMB

                </p>

                <p><strong>You have to provide help before <font id="expire_date2"></font>, according to bank details
                    provided further:</strong></p>

                <div style="border:1px solid #009">
                    <p>Type in full beneficiary bank details below: </p>

                    <p><strong>Beneficiary Bank: <font id="bank_name2"></font></strong></p>

                    <p><strong>Beneficiary Name:<font id="bank_user2"></font></strong></p>

                    <p><strong>Beneficiary Account No: <font id="bank_number2"></font></strong></p>

                    <p><strong>SWIFT code/BIC:</strong></p>

                    <p>Any additional information for sender: For fast confirmation, please sms to 0175027399 after
                        transfer made.</p>

                    <p>---------------------</p>

                    <p><font color="#FF0000">WARNING!</font> While making transfers, please pay your attention to the
                        purpose of the payment. Some banks require to specify the account number or the customers card
                        during transfer process. This is due to the fact that the money goes first to a single
                        correspondent account of the bank, and then distributed to clients accounts. In this case, you
                        can not write private translation! Pay attention to the recommendations of the recipients!</p>
                </div>
                <p>After you receive assistance you need to confirm it by clicking appropriate button.</p>

                <p>Never confirm payment before funds reception, as confirmation can not be reversed and the system will
                    believe, that you have received funds.</p>

                <p><font color="#FF0000">ATTENTION!!</font> Due to wishes of some banks we ask you not to mention about
                    MMM in a payment purpose and use standart formulate.</p>

                <p>At the request of some participants, which active use their own bank accounts for their personal
                    purposes. We ask you to add to total amount two last numbers of your order to make your transfer
                    identification more simple. For example for order R111111169 on transfer 3000 000 you can transfer
                    3000 069 MYR. Thank you.</p>

                <p><strong>Recepient:shukri025 0199816743 (******), phone: 0199816743045</strong></p>

                <p><strong>Sender: Des CK 0175027399 (******), phone: 017502739</strong></p>

                <p><font color="#FF0000">ATTENTION!!</font></p>

                <p>1) SENDER HAS TO PROVIDE HELP IN THE AMOUNT ASSIGNED.

                </p><p>IN CASE OF CASH TRANSFER, OR PERSONAL CARD USE (ONE, NOT LINKED TO THE SYSTEM) COMMISSIONS ARE PAID
                    BY SENDER; IN CASE OF TRANSFER MADE FORM A SYSTEM ACCOUNT, COMMISSIONS ARE PAID BY THE SYSTEM. YOU
                    WILL HAVE TO SHOW COMMISSIONS AMOUNT IN APPROPRIATE FIELD.</p>

                <p>2) IN CASE ORDER WAS NOT COMPLETED ON 14-03-15 16:05:01, YOUR ACCOUNT WILL BE BLOCKED AND YOU WILL
                    NOT BE ABLE TO USE THE SYSTEM. YOUR ORDER WOULD BE GIVEN (redirected) TO ANOTHER PARTICIPANT.</p>

                <p>P.S. In case if the request came not for the full amount indicated in the application. Do not worry!
                    Requests for remaining sum will be received within 10 days of the filing of your application.
                    :-))</p>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn-default" data-dismiss="modal">取消</button>
                <button type="button" class="btn-next btn-warning btn-sm" data-dismiss="modal">确认</button>
            </div>
        </div>
    </div>
</div><div class="modal fade" id="myModa22" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="color-line"></div>
            <div class="modal-header">
                <h5 class="modal-title" id="title22">确认申请</h5>
                <small class="font-bold"></small>
            </div>
            <div class="modal-body" style="height:300px;">
                <p><strong><font color="#FF0000" id="amountpay22"></font> RMB  : 人民币</strong></p>
                <p>增长率为每日1% Mavro，最高30%  Mavro</p>
                <p>注意：您的申请如果需要被取消，可以在配对单产生之前提交取消申请。一旦配对单产生了，该施善申请将无法被取消。</p>
                <p><strong><font color="#FF0000">注意：请核实交易的资料，一旦完成申请，该交易是不能被取消或更改。</font></strong></p>

            </div>
            <div class="modal-footer">
                <!--
                  <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                  -->
                <button type="button" class="btn-primary" data-dismiss="modal">确认</button>
            </div>
        </div>
    </div>
</div><div class="modal fade" id="myModa23" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">

            <div class="color-line"></div>
            <div class="modal-header">
                <h5 class="modal-title" id="title23">请选择</h5>
                <small class="font-bold"></small>
            </div>
            <div class="modal-body" style="height:300px;">

                <input type="radio" class="comfir" value="1" name="comfir">确认收款<br>
                <input type="radio" class="comfir" value="2" name="comfir">假的汇款单<br>
                <!--<input type="radio" class="comfir" value="3" name="comfir"/>延长付款24小时<br>-->

                <input type="hidden" value="" id="comid">

            </div>
            <div class="modal-footer">
                <!--
                  <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                  -->
                <button type="button" class="btn-primary" data-dismiss="modal" id="select_fanshi">确认</button>
            </div>



        </div>
    </div>
</div><div class="modal fade" id="myModa24" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">

            <div class="color-line"></div>
            <div class="modal-header">
                <h5 class="modal-title" id="title24">请选择</h5>
                <small class="font-bold"></small>
            </div>
            <div class="modal-body" style="height:300px;">

                <input type="radio" class="comfir2" value="1" name="comfir2">我完成打款<br>
                <input type="radio" class="comfir2" value="2" name="comfir2">延迟24小时打款<br>

                <input type="hidden" value="" id="comid2">

            </div>
            <div class="modal-footer">
                <!--
                  <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                  -->
                <button type="button" class="btn-primary" data-dismiss="modal" id="select_fanshi2">确认</button>
            </div>
        </div>
    </div>
</div><div class="modal fade" id="myModa25" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">

            <div class="color-line"></div>
            <div class="modal-header">
                <h5 class="modal-title" id="title25">请完成操作</h5>
                <small class="font-bold"></small>
            </div>
            <form class="" method="post" id="pfrom" enctype="multipart/form-data" action="updateStatus2">
                <div class="modal-body" style="height:300px;">

                    <p>上传打款图片</p>
                    <p><input type="file" name="file">
                        <span style="color: red">
                            图片限制大小为2M
                        </span>
                    </p>

                    <p>留言</p>

                    <input type="hidden" name="completid" id="completid">
                    <input type="hidden" name="pro_status" id="pro_status">

                    <textarea rows="4" class="form-control" name="content" style="width: 100%;"></textarea>

                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn-primary" id="select_fanshi3">确认</button>
                </div>

            </form>
        </div>
    </div>
</div><div class="modal fade" id="myModa33" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">

            <div class="color-line"></div>
            <div class="modal-header">
                <h5 class="modal-title">通告</h5>
                <small class="font-bold"></small>
            </div>
           
                <div class="modal-body" style="height:300px;">
                    
                    <p>温馨提醒MMM会员 ，为保证系统运行流畅 ，确保配对成功会员收付款及时到账 ，请不确定会员在配对成功前提前点击取消键 ，以免耽误收款会员的等待期 。接收帮助款的会员也请保持电话畅通 ，收到款后及时点确认键 。感谢所有MMM慈善互助会员的爱心互助。</p>
                    
                    
                    <br>
                    <br>
                    
                    <p>MMM系统启</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn-primary" data-dismiss="modal" id="next32">关闭</button>
                </div>

           
        </div>
    </div>
</div><div class="modal fade" id="myModa36" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">

            <div class="color-line"></div>
            <div class="modal-header">
                <h5 class="modal-title">通告</h5>
                <small class="font-bold"></small>
            </div>
           
                <div class="modal-body" style="height:auto;">
                    
                    <p>各位会员大家好, </p>
<p>请在 4月24号 登录的时候重新设置交易密码。一旦设置了交易密码，就无法再次被修改，请把交易密码安全的记录下来,谢谢。</p>

<p>MMM 客服</p>
                    
                    
                    
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn-primary" data-dismiss="modal" id="next35">下一条</button>
                </div>

           
        </div>
    </div>
</div><div class="modal fade" id="myModa35" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">

            <div class="color-line"></div>
            <div class="modal-header">
                <h5 class="modal-title">消息提醒</h5>
                <small class="font-bold"></small>
            </div>
           
                <div class="modal-body" style="height:auto;">
                    
                 <p>您在4月11号过后所注册的会员必须重新输入，MMM激活码已经发到你后台，对你造成的不便，向你表达歉意。</p>

                 <p>MMM 客服</p>
                    
                    
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn-primary" data-dismiss="modal" id="next34">关闭</button>
                </div>

           
        </div>
    </div>
</div><div class="modal fade" id="myModa31" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="color-line"></div>
            <div class="modal-header">
                <h5 class="modal-title" id="title31">确认取消</h5>
                <small class="font-bold"></small>
            </div>
            <div class="modal-body" style="height:300px;">
                <p>您确定要取消吗？</p>
            </div>
            <div class="modal-footer">
                <!--
                  <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                  -->
                  <button type="button" class="btn-primary" data-dismiss="modal">关闭</button>
                <button type="button" class="btn-primary" id="yes_cancel" data-dismiss="modal">确认</button>
            </div>
        </div>
    </div>
</div><div class="modal fade" id="myModal5" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="color-line"></div>
            <div class="modal-header">
                <h5 class="modal-title" id="title">详细的订单信息</h5>
                <small class="font-bold"></small>
            </div>
            <div class="modal-body" style="height:300px; overflow:auto">
                <p><strong>订单号码:R<span id="order_id"></span></strong></p>

                <p>MMM会员请求援助总金额为:<font id="amount_order" color="#FF0000"></font>人民币</p>
                <p><strong>你必须在<font id="expire_date"></font>之前根据银行提供进一步的细节：</strong></p>

                <div style="border:1px solid #009">
                    <p>输入完整的受益人银行资料如下：</p>

                    <p><strong>受益人银行:<font id="bank_name"></font></strong></p>

                    <p><strong>受益人姓名:<font id="bank_user"></font></strong></p>

                    <p><strong>受益人账户号码: <font id="bank_number"></font></strong></p>

                     <p><strong>受益人微信号: <font id="wechat"></font></strong></p>

                      <p><strong>受益人支付宝: <font id="alipay"></font></strong></p>

                   

                    <p>发送者的附加信息：为了更快速的确认，请在转账后发送 <font class="receiver_phone" color="#0000FF"></font></p>

                    <p>---------------------</p>

                    <p><font color="#FF0000">警告!</font>当转账时，请注意付款的用途，有的银行在转账时是要求指定的账号或者用户卡的。这是由于这笔货币会先转到代理银行中，之后再转到客户账户上。这种情况，你不可以人工翻译！请注意收件人的建议！</p>
                </div>
                <p>在提供帮助后，请按“我提供的帮助”按钮并附上付款确认文件(支票扫描、收据扫描或网上交易操作屏幕截图)放在一个新窗口上。</p>

                <p>在收到资金之前不要确认支付，因为确认了就不能撤销了，系统会默认你已经收到钱了！</p>

                <p><font color="#FF0000">注意!</font>由于一些银行希望我们要求你不能提及到关于MMM的支付目的，使用非标准的方式来表达即可！</p>

                <p>应一些参与者有效使用自己银行账号用于个人用途的要求，我们要求你增加订单总额最后两个数字，使你的转账身份识别更简单。例如订单R111111169转账3000.000，你可以转账3000.069人民币。谢谢。</p>
                <p><strong>接收者:<font id="receiver_lid"></font>, 手机号:<font class="receiver_phone"></font>,联系微信:<font class="receiver_wechat_contact"></font></strong></p>
                <p><strong>接收者经理:<font id="receiver_manager_lid"></font>,接收者经理手机号:<font id="receiver_manager_phone"></font>,联系微信:<font class="receiver_manager_wechat_contact"></font></strong></p>

                <p><strong>发送者:<font id="sender_lid"></font>, 手机号:<font id="sender_phone"></font>,联系微信:<font id="sender_wechat_contact"></font></strong></p>
				
                <p><strong>发送者经理:<font id="sender_manager_lid"></font>,发送者经理手机号:<font id="sender_manager_phone"></font>,联系微信:<font id="sender_manager_wechat_contact"></font></strong></p>

                <p><font color="#FF0000">注意！</font></p>

                <p>1)发送者必须提供指定的帮助金额

                </p><p>假如汇款或个人用户卡（一张没有连接系统），佣金由发送者支付；假如转账来自一个系统账户，佣金有系统支付。你将在适当的界面上显示出佣金总额。</p>

                <p>2)万一订单在<font id="expire_date"></font>还没有完成，你的账号将被封锁并不能再使用该系统。你的订单将给（转移）另一个参与者。</p>

                <p>附：万一请求没有全额显示在应用程序上，不要紧张！请求余额将在10天内全部接受回归你的应用程序中。
                    :-))</p>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div><div class="modal fade" id="gethelpmodal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="color-line"></div>
                    <div class="modal-header">
                        <h4 class="modal-title">接受帮助</h4>

                        <p class="text-warning"></p>
                    </div>
                    <form method="post" action="do_get_request" id="get_help">
                        <div class="modal-body" style="text-align:center">
                        <input type="hidden" value="" id="wallet_type" name="wallet_type">
                          <div class="input-group m-b"><span class="input-group-addon">MAVRO</span> <input type="text" placeholder="" class="form-control balance" readonly=""></div>
                          <div class="input-group m-b"><span class="input-group-addon">可出售MAVRO</span> <input type="text" placeholder="" class="form-control sell" readonly=""></div>
                          <div class="input-group m-b"><span class="input-group-addon">最低出售数量</span> <input type="text" class="form-control" value="100" readonly=""></div>
                            <div class="input-group m-b"><span class="input-group-addon">剩余出售限额</span> <input type="text" placeholder="" class="form-control" value="2000" readonly=""></div>
                            <br>
                            <label class="col-sm-12 control-label">接受帮助支付方式</label>

                            <div class="radio" align="left">
                            <input name="payment_method2" type="hidden" id="payment_method2">
                                <label> <input type="checkbox" value="0" class="ckbox2" name="" checked="">银行支付</label><br>
                                <label> <input type="checkbox" value="1" class="ckbox2" name="" checked="">支付宝支付</label><br>
                                <label> <input type="checkbox" value="2" class="ckbox2" name="" checked="">微信支付</label><br>
                            </div>

                            <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control get_amount" placeholder="输入MAVRO" name="get_amount" autocomplete="off" required="">
                            <span class="input-group-btn">
                                <button type="button" class="btn btn-primary">检查
                                </button>
                            </span>
                        </div>
                                
                            </div>
                            <div class="form-group">
                                <font id="gh_amount"></font> MAVROx7=<font id="gh"></font>
                                人民币
                            </div>
                            <div class="form-group">
                                <h4>
                                </h4>
                            </div>

                            <div class="icheckbox_square-green checked" style="position: relative;"><input type="checkbox" class="i-checks" name="i-checks" checked="" required="" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div>
                            警告，我已完全了解所有风险。我决定参与MMM,尊重MMM文化与传统。
                        </div>

                        <div class="modal-footer">

                            <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                            <button type="button" class="btnconfirm btn-warning btn-sm" data-toggle="modal" data-dismiss="modal" data-target="#get_help_comfirm" disabled="">接受帮助</button>
                    
                </div></form>
            </div>
        </div>
    </div><div class="modal fade" id="get_help_comfirm" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="color-line"></div>
            <div class="modal-header">
                <h5 class="modal-title" id="title">确认申请</h5>
                <small class="font-bold"></small>
            </div>
            <div class="modal-body" style="height:300px;">
            <p><strong>您将会获得<font color="00FF00" id="amount_get"></font> RMB  : 人民币</strong></p>
            <p></p>
            <p>注意：您的申请如果需要被取消，可以在配对单产生之前提交取消申请。一旦配对单产生了，该申请将无法被取消。</p>
            <p><strong><font color="#FF0000">注意：请核实交易的资料，一旦完成申请，该交易是不能被取消或更改。</font></strong></p>

            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
              <button type="button" class="btn_get_next btn-primary">确认</button>
              
            </div>
        </div>
    </div>
</div><div><div class="sweet-overlay" tabindex="-1"></div><div class="sweet-alert" tabindex="-1"><div class="icon error"><span class="x-mark"><span class="line left"></span><span class="line right"></span></span></div><div class="icon warning"> <span class="body"></span> <span class="dot"></span> </div> <div class="icon info"></div> <div class="icon success"> <span class="line tip"></span> <span class="line long"></span> <div class="placeholder"></div> <div class="fix"></div> </div> <div class="icon custom"></div> <h2>Title</h2><p>Text</p><button class="cancel" tabindex="2">Cancel</button><button class="confirm" tabindex="1">OK</button></div></div></body></html>