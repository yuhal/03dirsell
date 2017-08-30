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
      <div class="panel-body"> <a class="small-header-action" href="">
        <div class="clip-header"> <i class="fa fa-arrow-up"></i> </div>
        </a>
        <div id="hbreadcrumb" class="pull-right m-t-lg">
          <ol class="hbreadcrumb breadcrumb">
            <li><a href="">首页</a> </li>
            <li class="active"> <span><a>经理列表</a></span> </li>
          </ol>
        </div>
         <h2 class="font-light m-b-xs">推荐列表 </h2>
        
    </div>
  </div>
  <div class="content">
    <div class="row">
      <div class="col-lg-12">
            
            <div class="hpanel">
                <div class="panel-heading">
                  <div class="panel-tools"> 
<form action="<?php echo U('/Home/Myuser/index');?>" method="post">
                     <input name="user" id="seav" value="">

                      <input name="提交" type="submit" id="sea" value="查询">
</form>
                  


                    <a class="showhide"><i class="fa fa-chevron-up"></i></a> <a class="closebox"><i class="fa fa-times"></i></a> </div>
                  我推荐的用户</div>
                <div class="panel-body">
                  <div class="table-responsive">
                    <div id="example_wrapper" class="dataTables_wrapper no-footer"><div id="example_processing" class="dataTables_processing" style="display: none;">内容加载中..</div><table id="example" cellpadding="1" cellspacing="1" class="table table-bordered table-striped cus_datatable dataTable no-footer" role="grid" aria-describedby="example_info" style="width: 1295px;">
                      <thead>
                        <tr role="row"><th class="sorting_asc" rowspan="1" colspan="1" aria-label="用户ID" style="width: 77px;">用户ID</th><th class="sorting_disabled" rowspan="1" colspan="1" aria-label="昵称" style="width: 58px;">昵称</th><th class="sorting_disabled" rowspan="1" colspan="1" aria-label="级别" style="width: 58px;">级别</th><th class="sorting_disabled" rowspan="1" colspan="1" aria-label="邮箱" style="width: 187px;">邮箱</th><th class="sorting_disabled" rowspan="1" colspan="1" aria-label="推荐人" style="width: 187px;">推荐人</th>
                        <th class="sorting_disabled" rowspan="1" colspan="1" aria-label="注册经理" style="width: 198px;">注册人</th>
                        <th class="sorting_disabled" rowspan="1" colspan="1" aria-label="加入时间" style="width: 167px;">加入时间</th></tr>
                      </thead>
                      <tbody>
                       
                      
					  
					  
					  <?php if(is_array($list)): foreach($list as $key=>$v): ?><tr role="row" class="odd">
					  <td class="sorting_1"><?php echo ($v["ue_id"]); ?></td>
					  <td><?php echo ($v["ue_theme"]); ?></td>
					  <td>VIP会员</td>
					  <td><?php echo ($v["ue_account"]); ?></td>
					  <td><?php echo ($v["ue_accname"]); ?></td>
					  <td><?php echo ($v["zcr"]); ?></td>
					  <td><?php echo ($v["ue_regtime"]); ?></td>
					  </tr><?php endforeach; endif; ?>
					  </tbody>
                    </table>
                    <div class="dataTables_info" id="example_info" role="status" aria-live="polite"><?php echo ($page); ?></div>
                    </div>
                  </div>
                </div>   
              </div>
      </div>  
    </div>
    
    <!--table--> 
    
    <!--table end--> 
    
  </div>
<form method="post" action="user_profile" id="form_user">
<input type="hidden" name="user_email" id="user_email">
</form>
<!-- Vendor scripts --> 


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