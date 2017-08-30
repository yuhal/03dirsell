<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<!-- saved from url=(http://www.sixstaredu.com) -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
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
<script src="/cssmmm/jquery.countdown.js"></script>
<!-- App scripts -->
<script src="/cssmmm/homer.js"></script>
<script src="/cssmmm/alert.js"></script>
<script src="/cssmmm/charts.js"></script>
<script type="text/javascript" src="/cssmmm/socket.io.js"></script>
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
<div id="wrapper">

    <div class="content">
        <div class="row">
            <div class="col-md-12">
                <img src="/cssmmm/MMM-banner.jpg" width="100%" style="margin-bottom: 20px;">
            </div>
        </div>


        <div class="row">
                    
            

            <div class=" col-xs-12 col-sm-12 col-md-6">
                <div class="hpanel">
                    
                        <div class="text-center">
                           
							<button class="btn btn-success btn-lg" data-uid="1001864" data-toggle="modal" data-target="#myModal6"><strong>申请提供帮助</strong></button>
                        </div>
                    
                </div>
            </div>
 <div class="col-xs-12 col-sm-12 col-md-6">
                
  <div class="hpanel">
                 
 <div class="text-center">
         
           <button class="btn btn-warning btn-lg btngethelp" data-wallet_type="cp" data-uid="1001864" data-toggle="modal" data-min="100" data-max="2000" data-cp="0"><strong>申请接受帮助</strong></button>
                          
                        </div>
                    </div>
                </div>
          
    
           
         
            <div class="col-md-3 hide">
                <div class="hpanel" id="ad">
                    <div class="panel-body">
                        <div class="text-center" style="overflow:auto" id="bd">
                            <h2 class="m-b-xs" id="total">0</h2>

                            <div>
                                <div class="small" id="show">

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
<style>
.mmmstyle{margin:0px;padding:0px;width:100%;float:left;}
.mmmstyle li{margin:0px;width:20%;text-align:center;float:left;list-style:none;font-size:16px;}
</style>
		<div class="row" id="context11">
			<div class="col-md-10" style="width:100%;">
				<div class="panel-body" style="border:1px solid #e4e5e7;background:#fff;margin-bottom:20px;">
					<ul class="mmmstyle">
						<!-- <li>当前级别：<?php echo ($mm001); ?></li>
						<li>你当前的团队人数：<?php echo ($mm002); ?></li>
						<li>当前可申请的金额：<?php echo ($mm003); ?></li> -->
						<li>当前等待援助人数：<?php echo ($mm004); ?></li>
						<li>&nbsp;</li>
						<li>&nbsp;</li>
						
						<li>当前提供援助人数：<?php echo ($mm005); ?></li>
				
					</ul>
					
				</div>
				
			</div>
		</div>

    <div class="row" id="context">
        <!-- group left start-->
        <div class="col-md-9">
            <div class="hpanel">
                <div class="panel-body list">
                    <div class="table-responsive project-list">
                        <table class="table table-striped">
                            <thead>
                            <tr>

                                <th colspan="3"></th>
                                <th></th>
                                <th></th>
                                <th></th>
                                <th></th>
                                <th></th>
                                <th></th>
                                <th></th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody>

                            <!--compley-->
                            <?php if(is_array($list3)): foreach($list3 as $key=>$v3): ?><tr style="background-color: #f9f9f9;">
                                    <td>
                                        


                                                                                
                                                                               <i><?php if($v3["zt"] == 0): ?><img src="/cssmmm/zt1.jpg"><?php endif; ?>
											<?php if($v3["zt"] == 1): ?><img src="/cssmmm/zt2.jpg"><?php endif; ?>
											<?php if($v3["zt"] == 2): ?><img src="/cssmmm/zt3.jpg"><?php endif; ?></i>    
                                        <p style="margin-top: 5px;"><strong>R<?php echo ($v3["id"]); ?></strong></p>

                                        <!--<input   fa-exclamation-circle type="checkbox" class="i-checks" checked>-->                                    </td>
                                    <td>匹配状态<br>
											<?php if($v3["zt"] == 0): ?>(待付款)<?php endif; ?>
											<?php if($v3["zt"] == 1): ?>(已付款)<?php endif; ?>
											<?php if($v3["zt"] == 2): ?><font color="#017F01">(交易成功)</font><?php endif; ?></td>
                                    <td>接受帮助(G<?php echo ($v3["g_id"]); ?>)
                                        <br>
                                      <small>配对时间<?php echo ($a1=$v3["date"]); ?><div style="display: none"><?php echo ($aab=$v3["p_user"]); ?></div></small><br>
									  <?php if($v3["zt"] == 0): ?><small style="font-size:14px;font-weight:bold;color:#090;">剩余收款时间：<span data="<?php echo (datedqsj($a1,$aaa1)); ?>" class="countdownbox"></span><div style="display: none"><?php echo ($aab=$v3["p_user"]); ?></div></small><?php endif; ?>
									  <?php if($v3["zt"] == 1): ?><small>汇款时间<?php echo ($aa1=$v3["date_hk"]); ?><div style="display: none"><?php echo ($aab=$v3["p_user"]); ?></div></small><br>
									  <small style="font-size:14px;font-weight:bold;color:#090;">剩余确认时间：<span data="<?php echo (datedqsj($aa1,$aaa1)); ?>" class="countdownbox"></span><div style="display: none"><?php echo ($aab=$v3["p_user"]); ?></div></small><?php endif; ?>
                                    </td>
                                    <td><?php echo (cx_user($v3["p_user"])); ?></td>
                                    <td><?php if($v3["zffs1"] == 1): ?>银行<?php endif; ?>
		  <?php if($v3["zffs2"] == 1): ?>支付宝<?php endif; ?>
		  <?php if($v3["zffs3"] == 1): ?>微信<?php endif; ?></td>
                                    <td>&gt;</td>
                                    <td><?php echo ($v3["jb"]); ?>人民币<br>
                                        <?php if($v3["pic"] == '0'): ?><a href="/Home/Index/home_ddxx_pic_no" target="_blank"><i class="fa fa-file-image-o" style="font-size: 20px;background-image:url(/cssmmm/nav8.jpg);background-repeat: no-repeat;"></i></a><?php else: ?><a href="<?php echo ($v3["pic"]); ?>" target="_blank"><i class="fa fa-file-image-o" style="font-size: 20px;background-image:url(/cssmmm/nav8.jpg);background-repeat: no-repeat;"></i></a><?php endif; ?></td>
                                    <td>&gt;</td>
                                    <td>YOU</td>
                                    <td></td>
                              <td>
                                        <input style="width:80px;" name="btn1" id="btn3<?php echo ($v3["id"]); ?>" type="button" value=" 留　言 " class="btn btn-info btn-xs addmsg" data-toggle="modal" data-id="8802104" data-target="#myModal7"><br>
										<input style="width:80px;" name="btn1" id="btn4<?php echo ($v3["id"]); ?>" type="button" value="详细资料" class="btn_detail btn-primary btn-xs" data-toggle="modal" id="btn12" data-target="#myModal5" ><br>

<?php if($v3["zt"] == 1): if($v3["ts_zt"] == '3'): ?>48小时未确认收款,<br>
已被投诉,请联系对<br>
方取消投诉!

<?php else: ?>
<input style="width:80px;" name="btn23" id="btn23<?php echo ($v3["id"]); ?>" type="button" value="确认收款" class="btn_detail btn-primary btn-xs" data-toggle="modal"  data-target="#myModa23"><?php endif; ?>
<script>
$(function(){
$('#btn23<?php echo ($v3["id"]); ?>').click(function(){
$("#mainframe188",parent.document.body).attr("src","/Home/Index/home_ddxx_gcz/id/<?php echo ($v3["id"]); ?>/") 
$("#mainframe188").reload();
})
})
</script><?php endif; ?>

<?php if($v3["zt"] == 0): ?><span <?php echo (datedqsj2($a1,$aa2)); ?>>
<input style="width:120px;" name="btn23" id="btn23<?php echo ($v3["id"]); ?>" type="button" value="48小时未打款投诉" class="btn_detail btn-primary btn-xs" data-toggle="modal"  data-target="#myModa23"></span>
<script>
$(function(){
$('#btn23<?php echo ($v3["id"]); ?>').click(function(){
$("#mainframe188",parent.document.body).attr("src","/Home/Index/home_ddxx_g_wdk/id/<?php echo ($v3["id"]); ?>/") 
$("#mainframe188").reload();
})
})
</script><?php endif; ?>


                                       
                              </td>
                              </tr>
								<script>
$(function(){



$('#btn4<?php echo ($v3["id"]); ?>').click(function(){
$("#mainframe11",parent.document.body).attr("src","/Home/Index/home_ddxx/id/<?php echo ($v3["id"]); ?>/") 
$("#mainframe11").reload();
})


$('#btn3<?php echo ($v3["id"]); ?>').click(function(){
$("#mainframe12",parent.document.body).attr("src","/Home/Index/home_ddxx_ly/id/<?php echo ($v3["id"]); ?>/") 
$("#mainframe12").reload();
})
})


</script><?php endforeach; endif; ?>
								
								
								
								<?php if(is_array($list2)): foreach($list2 as $key=>$v2): ?><tr style="background-color: #fff;">


                                    <td>
                                       


                                                                                
                                                                                 <i><?php if($v2["zt"] == 0): ?><img src="/cssmmm/zt1.jpg"><?php endif; ?>
											<?php if($v2["zt"] == 1): ?><img src="/cssmmm/zt2.jpg"><?php endif; ?>
											<?php if($v2["zt"] == 2): ?><img src="/cssmmm/zt3.jpg"><?php endif; ?></i> 
                                        <p style="margin-top: 5px;"><strong>R<?php echo ($v2["id"]); ?></strong></p>
                                        <!--<input type="checkbox" class="i-checks" checked>-->                                    </td>

                                    <td width="100px;">匹配状态<br>
											<?php if($v2["zt"] == 0): ?>(待付款)<?php endif; ?>
											<?php if($v2["zt"] == 1): ?>(已付款)<?php endif; ?>
											<?php if($v2["zt"] == 2): ?><font color="#017F01">(交易成功)</font><?php endif; ?></td>
                                    <td>提供帮助(P<?php echo ($v2["p_id"]); ?>)
                                        <br>
                                        <small>配对时间<?php echo ($a1=$v2["date"]); ?><div style="display: none"><?php echo ($aab=$v2["g_user"]); ?></div></small><br>	
										 <?php if($v2["zt"] == 0): ?><small style="font-size:14px;font-weight:bold;color:#090;">剩余打款时间：<span data="<?php echo (datedqsj($a1,$aa1)); ?>" class="countdownbox"></span><div style="display: none"><?php echo ($aab=$v3["p_user"]); ?></div></small><?php endif; ?>	
										  <?php if($v2["zt"] == 1): ?><small>汇款时间<?php echo ($aa1=$v2["date_hk"]); ?><div style="display: none"><?php echo ($aab=$v2["p_user"]); ?></div></small><br>
									  <small style="font-size:14px;font-weight:bold;color:#090;">剩余确认时间：<span data="<?php echo (datedqsj($aa1,$aaa1)); ?>" class="countdownbox"></span><div style="display: none"><?php echo ($aab=$v2["p_user"]); ?></div></small><?php endif; ?>
										 																											                                     </td>

                                    <td>YOU</td>
                                    <td><?php if($v2["zffs1"] == 1): ?>银行<?php endif; ?>
		  <?php if($v2["zffs2"] == 1): ?>支付宝<?php endif; ?>
		  <?php if($v2["zffs3"] == 1): ?>微信<?php endif; ?></td>
                                    <td>&gt;</td>
                                    <td><?php echo ($v2["jb"]); ?>人民币
                                        <br>
                                        <?php if($v2["pic"] == '0'): ?><a href="/Home/Index/home_ddxx_pic_no" target="_blank"><i class="fa fa-file-image-o" style="font-size: 20px;background-image:url(/cssmmm/nav8.jpg);background-repeat: no-repeat;"></i></a><?php else: ?><a href="<?php echo ($v2["pic"]); ?>" target="_blank"><i class="fa fa-file-image-o" style="font-size: 20px;background-image:url(/cssmmm/nav8.jpg);background-repeat: no-repeat;"></i></a><?php endif; ?></td>
                                    <td><?php echo (cx_user($v2["g_user"])); ?></td>
                                    <td><?php if($v2["zffs1"] == 1): ?>银行<?php endif; ?>
		  <?php if($v2["zffs2"] == 1): ?>支付宝<?php endif; ?>
		  <?php if($v2["zffs3"] == 1): ?>微信<?php endif; ?></td>
		  <td></td>
                                    <td>
									<input style="width:80px;" name="btn2" id="btn2<?php echo ($v2["id"]); ?>" type="button" value="留　言" class="btn btn-info btn-xs addmsg" data-toggle="modal" data-id="8802104" data-target="#myModal7"><br>
									<input style="width:80px;" name="btn" id="btn<?php echo ($v2["id"]); ?>" type="button" value="详细资料" class="btn_detail btn-primary btn-xs" data-toggle="modal"  data-target="#myModal5">
									<br>
									
									<?php if($v2["zt"] == '0'): if($v2["ts_zt"] == '1'): ?>48小时未汇款<br>
请联系对方取<br>
消投诉!
									
									<?php else: ?>
									<input style="width:80px;" name="btn3" id="btn33<?php echo ($v2["id"]); ?>" type="button" value="确认已付款" class="btn_detail btn-primary btn-xs" data-toggle="modal"  data-target="#myModa24">
									<script>
$(function(){
$('#btn33<?php echo ($v2["id"]); ?>').click(function(){
$("#mainframe13",parent.document.body).attr("src","/Home/Index/home_ddxx_pcz/id/<?php echo ($v2["id"]); ?>/") 
$("#mainframe13").reload();
})
})


</script><?php endif; endif; ?>
									
									
									<?php if($v2["zt"] == 1): if($v2["ts_zt"] == '2'): ?>你已被对方投诉请与<br>
对方取得联系!
									<?php else: ?>
									<span <?php echo (datedqsj3($aa1,$aa2)); ?>>
									
									<input style="width:120px;" name="btn3" id="btn33<?php echo ($v2["id"]); ?>" type="button" value="48小时未确认投诉" class="btn_detail btn-primary btn-xs" data-toggle="modal"  data-target="#myModa24"></span>
									
									<script>
$(function(){
$('#btn33<?php echo ($v2["id"]); ?>').click(function(){
$("#mainframe13",parent.document.body).attr("src","/Home/Index/home_ddxx_g_wqr/id/<?php echo ($v2["id"]); ?>/") 
$("#mainframe13").reload();
})
})


</script><?php endif; endif; ?>
									
                           </td>
                                </tr>
								<script>
$(function(){



$('#btn<?php echo ($v2["id"]); ?>').click(function(){
$("#mainframe11",parent.document.body).attr("src","/Home/Index/home_ddxx/id/<?php echo ($v2["id"]); ?>/") 
$("#mainframe11").reload();
})


$('#btn2<?php echo ($v2["id"]); ?>').click(function(){
$("#mainframe12",parent.document.body).attr("src","/Home/Index/home_ddxx_ly/id/<?php echo ($v2["id"]); ?>/") 
$("#mainframe12").reload();
})





})


</script><?php endforeach; endif; ?>
								
								                      <!--compley-->
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <!-- group left end-->
        <!--group list start-->
        
        
        <div class="col-md-3">
        
            
                <div class="col-md-12">
                    <div class="hpanel">
                        <div class="panel-body no-padding">
                          <div class="list-group ">
						  
						  
						  
						  <?php if(is_array($list)): foreach($list as $key=>$v): ?><div class="col-md-12" style="border-top:#ccc 1px solid;">
                                        <a class="list-group-item " href="">
                                            <h5 class="list-group-item-heading">申请提供帮助(p<?php echo ($v["id"]); ?>)</h5>
                                        </a>

                                        <div style=" margin-left:2em; margin-bottom:1em; margin-right:1em">
                                            <font>参与者:<?php echo ($v["user_nc"]); ?></font><br>
                                            <font>金额:<?php echo (hk($v["jb"])); ?></font><br>
                                            <font>日期:<?php echo ($v["date"]); ?></font><br>
                                            <font>状态:
											<?php if($v["zt"] == 0): ?>等待中<?php endif; ?>
											<?php if($v["zt"] == 1): ?>匹配成功<?php endif; ?>
											</font><br><?php if($v["zt"] == 1): ?><font>确认状态:<font color="#7CCD7C">
											<?php if($v["qr_zt"] == 0): ?>未确认<?php endif; ?>
											<?php if($v["qr_zt"] == 1): ?>已确认<?php endif; ?>
											</font></font><?php endif; ?>
											<?php if($v["zt"] == 0): ?><div style="">
                                               <!--<form method="post" id="wait" action="/tu/cancel_provide_request"> -->

                                                
												<a href="javascript:if(confirm(' 确定要取消此定单吗?'))location='/Home/Index/tgbz_del/id/<?php echo ($v["id"]); ?>/'"  class="btn btn-danger btn-xs">取消</a>                                             
											   <!--<button type="button" class="btn btn-info btn-xs" style="float:right">详细资料>></button> -->
                                            <!--</form>-->
                                            </div><?php endif; ?><br>
										
                                            <div style="">
                                               <!--<form method="post" id="wait" action="/tu/cancel_provide_request"> -->

                                                                                                <!--<button type="button" class="btn btn-info btn-xs" style="float:right">详细资料>></button> -->
                                            <!--</form>-->
                                            </div>
                                        </div>
                              </div><?php endforeach; endif; ?>
							  
							  
                            </div>
                        </div>
                    </div>
                </div>

            
                <div class="col-md-12">
                    <div class="hpanel">
                        <div class="panel-body no-padding">
                            <div class="list-group ">
							
							
							<?php if(is_array($list1)): foreach($list1 as $key=>$b): ?><div class="col-md-12" style="border-top:#ccc 1px solid;">
                                        <a class="list-group-item " href="">
                                            <h5 class="list-group-item-heading">申请接受帮助(G<?php echo ($b["id"]); ?>)</h5>
                                        </a>

                                        <div style=" margin-left:2em; margin-bottom:1em; margin-right:1em">
                                            <font>参与者:<?php echo ($b["user_nc"]); ?></font><br>
                                            <font>金额:<?php echo (hk($b["jb"])); ?></font><br>
                                            <font>钱包:
											<?php if($b["qb"] == 0): ?>Mavro钱包<?php endif; ?>
											<?php if($b["qb"] == 1): ?>经理奖钱包<?php endif; ?>
											<?php if($b["qb"] == 2): ?>推荐奖钱包<?php endif; ?>
											</font><br>
                                             
                                                                                         
                                            <font>日期:<?php echo ($b["date"]); ?></font><br>
                                            <font>状态:
											<?php if($b["zt"] == 0): ?>等待中<?php endif; ?>
											<?php if($b["zt"] == 1): ?>配对成功<?php endif; ?>
											
											</font><br><?php if($b["zt"] == 1): ?><font>确认状态:<font color="#7CCD7C">
											
											<?php if($b["qr_zt"] == 0): ?>未确认<?php endif; ?>
											<?php if($b["qr_zt"] == 1): ?>已确认<?php endif; ?>
											
											</font></font><?php endif; ?>
											<?php if($b["zt"] == 0): ?><div style="">
                                               <!--<form method="post" id="wait" action="/tu/cancel_provide_request"> -->

                                               <a href="javascript:if(confirm(' 确定要取消此定单吗?'))location='/Home/Index/jsbz_del/id/<?php echo ($b["id"]); ?>/'"  class="btn btn-danger btn-xs">取消</a>                                                <!--<button type="button" class="btn btn-info btn-xs" style="float:right">详细资料>></button> -->
                                            <!--</form>-->
                                            </div><?php endif; ?>
											
											<br>                                            <div style="">
                                                <!-- <form method="post" action="/tu/cancel_get_request">-->
                                                                                                 <!--<button type="button" class="btn btn-info btn-xs" style="float:right">详细资料>></button>-->
                                            <!-- </form>-->
                                            </div>
                                        </div>

                                     </div><?php endforeach; endif; ?>
									 
									 
									 
                            </div>

                        </div>
                    </div>
                </div>        
        
        </div>


        <!--group list end-->
    </div>



        
</div>
<!-- Vendor scripts -->




<!-- Vendor scripts -->





















































<!--gethelp modal-->
  
</div>

<!--gethelp modal end-->









<script>
    $(function () {
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
        var tt = selec * 6;
        $("#select").text(selec);
        $("#pay").text(tt);
        $("#amount").bind("change", function () {
            $("#select").text($("#amount").val());
            $("#pay").text($("#amount").val() * 6);
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

                        <p class="text-warning">申请完成后，请等待系统1-30日随机分配受善需求</p>
                    </div>
                    <form method="post" action="/Home/Index/tgbzcl" id="provide_help">
                        <div class="modal-body" style="text-align:center">
                            <br>
                            <label class="col-sm-12 control-label">支付方式</label>

                            <div class="radio" align="left">
                          
                                <label> <input type="checkbox" value="1" class="ckbox" name="zffs1" checked="">银行支付</label><br>
                                <label> <input type="checkbox" value="1" class="ckbox" name="zffs2" checked="">支付宝支付</label><br>
                                <label> <input type="checkbox" value="1" class="ckbox" name="zffs3" checked="">微信支付</label><br>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-12 control-label">提供帮助金额</label>

                                <div class="col-sm-12">
                                    <input type="text" class="form-control get_amount" placeholder="输入<?php echo ($jj01s); ?>-<?php echo ($jj01m); ?>" name="amount" id="amount" autocomplete="off" required>
                                </div>
                            </div>
                           <!-- <div class="form-group">
                                <font id="select" color="#00FF00">1000</font> MAVROx6=<font id="pay" color="#FF0000">7000</font>
                                人民币
                            </div>-->
                            <div class="form-group">
                                <h4>
                                    目前，每月增长50%-300%
                                </h4>
                            </div>

                            <div class="icheckbox_square-green checked" style="position: relative;"><input type="checkbox" class="i-checks" name="i-checks" checked="" required style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div>
                            警告，我已完全了解所有风险。我决定参与六星资本,尊重六星资本文化与传统。
                        </div>

                        <div class="modal-footer">

                            <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                           <!-- <button type="button" class="btn_next btn-warning btn-sm" data-dismiss="modal" data-toggle="modal" data-target="#myModal2">提供帮助</button>-->
							<input name="jhwjjc"  id="jhwjjc" type="submit" class="btn_next btn-warning btn-sm" value="提供帮助">
                    
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
                <iframe src='' id="mainframe12" width="830px;" height="350px;" ></iframe>


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
            <div class="modal-body" style="height:400px; overflow:auto">
              <iframe src='' id="mainframe188" width="830px;" height="350px;" ></iframe>
            </div>
            <div class="modal-footer">
                
                  <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <!--  
                <button type="button" class="btn-primary" data-dismiss="modal" id="select_fanshi">确认</button>-->
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
            <div class="modal-body" style="height:400px; overflow:auto">
              <iframe src='' id="mainframe13" width="830px;" height="350px;" ></iframe>
            </div>
            <div class="modal-footer">
                
                  <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                 
                <!--<button type="button" class="btn-primary" data-dismiss="modal" id="select_fanshi2">确认</button> -->
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
                    
                    <p>温馨提醒六星资本会员 ，为保证系统运行流畅 ，确保配对成功会员收付款及时到账 ，请不确定会员在配对成功前提前点击取消键 ，以免耽误收款会员的等待期 。接收帮助款的会员也请保持电话畅通 ，收到款后及时点确认键 。感谢所有六星资本慈善互助会员的爱心互助。</p>
                    
                    
                    <br>
                    <br>
                    
                    <p>六星资本系统启</p>
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

<p>六星资本 客服</p>
                    
                    
                    
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
                    
                 <p>您在4月11号过后所注册的会员必须重新输入，六星资本激活码已经发到你后台，对你造成的不便，向你表达歉意。</p>

                 <p>六星资本 客服</p>
                    
                    
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
            <div class="modal-body" style="height:400px; overflow:auto">
              <iframe src='' id="mainframe11" width="830px;" height="350px;" ></iframe>
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
                    <form method="post" action="/Home/Index/jsbzcl" id="get_help">
                        <div class="modal-body" style="text-align:center">
                        <input type="hidden" value="" id="wallet_type" name="wallet_type">
                          
                          <div class="input-group m-b"><span class="input-group-addon">可出售余额</span> <input type="text" placeholder="" class="form-control" value="<?php echo ($userData['ue_money']); ?>RMB" readonly></div>
                          <!-- <div class="input-group m-b"><span class="input-group-addon">最低出售数量</span> <input type="text" class="form-control" value="<?php echo (hk(100,$a)); ?>" readonly></div> -->
                          <div class="input-group m-b"><span class="input-group-addon">最低出售数量</span> <input type="text" class="form-control" value="<?php echo ($jj01s); ?>RMB" readonly></div>
                            <br>
                            <label class="col-sm-12 control-label">接受帮助支付方式</label>

                            <div class="radio" align="left">
                            
                                <label> <input type="checkbox" value="1" class="ckbox2" name="zffs1" checked="">银行支付</label><br>
                                <label> <input type="checkbox" value="1" class="ckbox2" name="zffs2" checked="">支付宝支付</label><br>
                                <label> <input type="checkbox" value="1" class="ckbox2" name="zffs3" checked="">微信支付</label><br>
                            </div>

                            <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control get_amount" placeholder="输入RMB,<?php echo ($jj01s); ?>起,<?php echo ($jj01); ?>的倍数" name="get_amount" autocomplete="off" required>
                           
                        </div>
                                
                            </div>
                            <!--<div class="form-group">
                                <font id="gh_amount"></font> MAVROx7=<font id="gh"></font>
                                人民币
                            </div>-->
                            <div class="form-group">
                                <h4>
                                </h4>
                            </div>

                            <div class="icheckbox_square-green checked" style="position: relative;"><input type="checkbox" class="i-checks" name="i-checks" checked="" required style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div>
                            警告，我已完全了解所有风险。我决定参与六星资本,尊重六星资本文化与传统。
                        </div>

                        <div class="modal-footer">

                            <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                            <input name="jhwjjc"  id="jhwjjc" type="submit" class="btn_next btn-warning btn-sm" value="接受帮助">
                    
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