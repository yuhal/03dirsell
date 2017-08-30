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
                        <li class="active"> <span><a>联系我们</a></span> </li>
                    </ol>
                </div>
                <h2 class="font-light m-b-xs"> 联系我们</h2>
                <small>

                    在这里，你可以提交你所面对的疑难，您的请求我们将会尽快的处理。我们的服务时间是在周一至周五，北京/香港时间 9:00 到 17:00。
                </small> </div>
        </div>
    </div>


    <div class="content">

        <div class="row">
            <div class="col-md-5">
                <div class="hpanel" id="aa">

                    <div class="col-lg-12">
                        <div class="hpanel">
                            <div class="panel-heading">
                                <div class="panel-tools">
                                    <a class="showhide"><i class="fa fa-chevron-up"></i></a>
                                    <a class="closebox"><i class="fa fa-times"></i></a>
                                </div>
                                提交问题
                            </div>
                            <div class="panel-body">
                                <form action="<?php echo U('Home/Myuser/lxwmcl');?>" name="xgmm" id="xgmm" method="post">


                                   


                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">问题</label>

                                        <div class="col-sm-9">

                                            <select class="form-control m-b" name="otlylx" id="otlylx">
                                                <option value="系统错误">系统错误</option>
                                                <option value="参与者拒绝汇款">参与者拒绝汇款</option>
                                                <option value="经理操作不合理">经理操作不合理</option>
                                                <option value="接款者不愿意确认收款">接款者不愿意确认收款</option>
                                                <option value="汇款时，对方银行资料与系统提供的有差别">汇款时，对方银行资料与系统提供的有差别</option>
                                                <option value="参与者账号被封锁了">参与者账号被封锁了</option>
                                                <option value="未确认收款">未确认收款</option>
                                                <option value="错误的操作">错误的操作</option>
                                                <option value="无法接受手机短信">无法接受手机短信</option>
                                                <option value="无法提交提供帮助申请">无法提交提供帮助申请</option>
                                                <option value="无法提交接收帮助申请">无法提交接收帮助申请</option>
                                                <option value="系统显示的金额有误">系统显示的金额有误</option>
                                                <option value="更换邮箱">更换邮箱</option>
                                                <option value="更换手机号码">更换手机号码</option>
                                                <option value="举报诈骗行为">举报诈骗行为</option>
                                                <option value="无法更新汇款状态">无法更新汇款状态</option>
                                                <option value="无法更新接款状态">无法更新接款状态</option>
                                                <option value="未获得款项">未获得款项</option>
                                                <option value="我需要更换我的经理">我需要更换我的经理</option>
                                            </select>

                                        </div>
                                    </div>
<br>
<br>

                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">标题</label>

                                        <div class="col-sm-9">
                                            <input type="text" required="" name="lybt" id="lybt" class="form-control">

                                        </div>
                                    </div>
<br>
<br>

                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">内容</label>

                                        <div class="col-sm-9">
<br>

                                            <textarea rows="4" required="" name="lynr" id="lynr" class="form-control" style="width: 100%;"></textarea>

                                        </div>
                                    </div>
<br>
<br>

                               
                                      <link rel="stylesheet" type="text/css" href="/js/xz/css.css" />
					 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 


            <div style="font-size:9pt;">
              <div align="center">&nbsp;<br>
                  <br>
                
                <a class="btn btn-primary btn-sm" id="btn">上传图片</a>　　　　
              
                <br>
                  <br>
                
              </div>
              <ul id="ul_pics" class="ul_pics clearfix"></ul>
            </div>
      <script type="text/javascript" src="/js/xz/jquery.js"></script>
        <script type="text/javascript" src="/plupload/plupload.full.min.js"></script>
        <script type="text/javascript" src="/js/xz/sucaihuo.js"></script>
                               
                                    <div class="form-group">
                                        <div class="col-sm-8 col-sm-offset-2">
<br>
<br>

                                           
											<input name="" class="btn btn-primary pull-right" type="submit" id="btn" value="提交">
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>


                </div>
            </div>                                <div class="col-md-7">
                <div class="hpanel">
                    <div class="panel-heading">
                        <div class="panel-tools">
                            <a class="showhide"><i class="fa fa-chevron-up"></i></a>
                            <a class="closebox"><i class="fa fa-times"></i></a>
                        </div>
                        问题记录
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <div id="example_wrapper" class="dataTables_wrapper no-footer"><div class="dataTables_length" id="example_length"><label>显示 <select name="example_length" aria-controls="example" class=""><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> 行</label></div><div id="example_filter" class="dataTables_filter"><label>查询:<input type="search" class="" placeholder="" aria-controls="example"></label></div><table cellpadding="1" id="example" cellspacing="1" class="table table-bordered table-striped cus_datatable dataTable no-footer" role="grid" aria-describedby="example_info">
                                <thead>
                                <tr role="row"><th class="sorting_desc" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-sort="descending" aria-label="编号: activate to sort column ascending" style="width: 61px;">留言时间</th>
                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="时间: activate to sort column ascending" style="width: 61px;">留言标题</th><th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="问题类别: activate to sort column ascending" style="width: 104px;">问题类别</th><th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="发件人: activate to sort column ascending" style="width: 83px;">留言内容</th><th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="状态: activate to sort column ascending" style="width: 62px;">回复时间</th><th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="操作: activate to sort column ascending" style="width: 62px;">回复内容</th></tr>
                                </thead>
                                <tbody>
								
								
								<?php if(is_array($list)): foreach($list as $key=>$v): ?><tr role="row" class="odd">
                      <td class="sorting_1"><?php echo ($v["ma_time"]); ?></td>
                      <td><?php echo ($v["ma_theme"]); ?></td>
                      <td><?php echo ($v["ma_otherinfo"]); ?></td>
                      <td><?php echo ($v["ma_note"]); ?></td>
                      <td><?php echo ($v["ma_replytime"]); ?></td>
					  <td><?php echo ($v["ma_reply"]); ?></td>
                    </tr><?php endforeach; endif; ?>
								</tbody>
                            </table>
                              <div class="dataTables_paginate paging_simple_numbers" id="example_paginate"><?php echo ($page); ?></div></div>
                        </div>

                    </div>

                </div>

            </div>

        </div>
    </div>






    <form>
    </form>







</div>




</body></html>