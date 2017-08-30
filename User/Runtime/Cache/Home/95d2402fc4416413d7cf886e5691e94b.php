<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<!-- saved from url=(http://www.sixstaredu.com) -->
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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

    <style type="text/css">.jqstooltip {
        position: absolute;
        left: 0px;
        top: 0px;
        visibility: hidden;
        background: rgb(0, 0, 0) transparent;
        background-color: rgba(0, 0, 0, 0.6);
        filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);
        -ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";
        color: white;
        font: 10px arial, san serif;
        text-align: left;
        white-space: nowrap;
        padding: 5px;
        border: 1px solid white;
        z-index: 10000;
    }

    .jqsfield {
        color: white;
        font: 10px arial, san serif;
        text-align: left;
    }</style>
</head>
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
    <div class="content animate-panel">
        <div class="row">
            <div class="col-lg-4 animated-panel zoomIn" style="-webkit-animation-delay: 0.2s;">
                <div class="hpanel">
                    <div class="panel-body text-center h-200">
                        <h2>钱包</h2>

                        <h1 class="m-xs"><?php echo ($userdata["ue_money"]); ?></h1>

                        <h3 class="font-extra-bold no-margins text-success">
                            Mavro
                        </h3>

                        <button class="btn btn-info btngethelp" data-wallet_type="cp" data-uid="1219076"
                                data-toggle="modal" data-min="100" data-max="Array" data-cp="0" id="qbid">接受帮助
                        </button>
						&nbsp; &nbsp;
						<button class="btn btn-info" data-toggle="modal" data-min="100" data-max="Array" data-cp="0" id="txbt">提现</button>

                    </div>

                </div>
            </div>
            <div class="col-lg-4">
                <div class="hpanel">
                    <div class="panel-body text-center h-200">

                        <h2 class="m-xs">经理奖钱包</h2>

                        <div>

                            <p class="small text-danger">待定 ：<span id="red_mbonus"><?php echo ($userdata["jl_he1"]); ?></span></p>


                            <p class="small text-success">流动：<?php echo ($userdata["jl_he"]); ?></p>


                            <button class="btn btn-info btngethelp" data-wallet_type="cp" data-uid="1219076" id="qbid1"
                                    data-toggle="modal" data-min="100" data-max="Array" data-cp="0">接受帮助
                            </button>
                        </div>


                    </div>

                </div>
            </div>
            <div class="col-lg-4">
                <div class="hpanel">
                    <div class="panel-body text-center h-200">
                        <h2 class="m-xs">推荐奖钱包</h2>

                        <div>

                            <p class="small text-danger">待定 ：<span id="red_pbonus"><?php echo ($userdata["tj_he1"]); ?></span></p>


                            <p class="small text-success">流动：<?php echo ($userdata["tj_he"]); ?></p>


                            <button class="btn btn-info btngethelp" data-wallet_type="cp" id="qbid2" data-uid="1219076"
                                    data-toggle="modal" data-min="100" data-max="Array" data-cp="0">接受帮助
                            </button>
                        </div>

                    </div>

                </div>
            </div>


        </div>

        <!--table-->
        <div class="row hide">
            <div class="col-lg-12 animated-panel zoomIn" style="-webkit-animation-delay: 0.5s;">
                <div class="col-md-12">
                    <div class="hpanel">
                        <div class="panel-heading">
                            <div class="panel-tools"><a class="showhide"><i class="fa fa-chevron-up"></i></a> <a
                                    class="closebox"><i class="fa fa-times"></i></a></div>
                            经理奖钱包记录
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <div id="example_wrapper" class="dataTables_wrapper no-footer">
                                    <div class="dataTables_length" id="example_length"><label>显示 <select
                                            name="example_length" aria-controls="example" class="">
                                        <option value="10">10</option>
                                        <option value="25">25</option>
                                        <option value="50">50</option>
                                        <option value="100">100</option>
                                    </select> 行</label></div>
                                    <div id="example_filter" class="dataTables_filter"><label>查询:<input type="search"
                                                                                                        class=""
                                                                                                        placeholder=""
                                                                                                        aria-controls="example"></label>
                                    </div>
                                    <table id="example" cellpadding="1" cellspacing="1"
                                           class="table table-bordered table-striped example cus_datatable dataTable no-footer"
                                           role="grid" aria-describedby="example_info">
                                        <thead>
                                        <tr role="row">
                                            <th class="sorting_desc" tabindex="0" aria-controls="example" rowspan="1"
                                                colspan="1" aria-sort="descending"
                                                aria-label="编号: activate to sort column ascending" style="width: 0px;">
                                                编号
                                            </th>
                                            <th class="sorting" tabindex="0" aria-controls="example" rowspan="1"
                                                colspan="1" aria-label="日期: activate to sort column ascending"
                                                style="width: 0px;">日期
                                            </th>
                                            <th class="sorting" tabindex="0" aria-controls="example" rowspan="1"
                                                colspan="1" aria-label="说明: activate to sort column ascending"
                                                style="width: 0px;">说明
                                            </th>
                                            <th class="sorting" tabindex="0" aria-controls="example" rowspan="1"
                                                colspan="1" aria-label="原余额: activate to sort column ascending"
                                                style="width: 0px;">原余额
                                            </th>
                                            <th class="sorting_disabled" rowspan="1" colspan="1"
                                                aria-label="+收入/-支出 (Mavro)" style="width: 0px;">+收入/-支出 (Mavro)
                                            </th>
                                            <th class="sorting" tabindex="0" aria-controls="example" rowspan="1"
                                                colspan="1" aria-label="新余额: activate to sort column ascending"
                                                style="width: 0px;">新余额
                                            </th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr class="odd">
                                            <td valign="top" colspan="6" class="dataTables_empty">没有记录</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                    <div class="dataTables_info" id="example_info" role="status" aria-live="polite">
                                        没有记录
                                    </div>
                                    <div class="dataTables_paginate paging_simple_numbers" id="example_paginate"><a
                                            class="paginate_button previous disabled" aria-controls="example"
                                            data-dt-idx="0" tabindex="0" id="example_previous">上一页</a><span></span><a
                                            class="paginate_button next disabled" aria-controls="example"
                                            data-dt-idx="1" tabindex="0" id="example_next">下一页</a></div>
                                </div>
                            </div>
                        </div>
                        <div class="panel-footer"> Table - 6 rows</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12 animated-panel zoomIn" style="-webkit-animation-delay: 0.6s;">
                <div class="col-md-12">
                    <div class="hpanel">
                        <div class="panel-heading">
                            <div class="panel-tools"><a class="showhide"><i class="fa fa-chevron-up"></i></a> <a
                                    class="closebox"><i class="fa fa-times"></i></a></div>
                            提供帮助钱包
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <div id="example_wrapper" class="dataTables_wrapper no-footer">
                                    <div class="dataTables_length" id="example_length"><label></label></div>
                                    <table id="example" cellpadding="1" cellspacing="1"
                                           class="table table-bordered table-striped example cus_datatable dataTable no-footer"
                                           role="grid" aria-describedby="example_info">
                                        <thead>
                                        <tr role="row">
                                            <th class="sorting_desc" tabindex="0" aria-controls="example" rowspan="1"
                                                colspan="1" aria-sort="descending"
                                                aria-label="编号: activate to sort column ascending">编号
                                            </th>
                                            <th class="sorting" tabindex="0" aria-controls="example" rowspan="1"
                                                colspan="1" aria-label="日期: activate to sort column ascending">日期
                                            </th>
                                            <th class="sorting" tabindex="0" aria-controls="example" rowspan="1"
                                                colspan="1" aria-label="说明: activate to sort column ascending"
                                                style="width: 131px;">说明
                                            </th>
                                            <th class="sorting" tabindex="0" aria-controls="example" rowspan="1"
                                                colspan="1" aria-label="原余额: activate to sort column ascending">金额
                                            </th>
                                            <th class="sorting_disabled" rowspan="1" colspan="1"
                                                aria-label="+收入/-支出 (Mavro)">利息
                                            </th>
                                            <th class="sorting" tabindex="0" aria-controls="example" rowspan="1"
                                                aria-label="新余额: activate to sort column ascending">天数
                                            </th>
                                            <th class="sorting" tabindex="0" aria-controls="example" rowspan="1"
                                                aria-label="新余额: activate to sort column ascending">提现
                                            </th>

                                            <th class="sorting" tabindex="0" aria-controls="example" rowspan="1"
                                                aria-label="新余额: activate to sort column ascending">是否转出
                                            </th>
                                            <th class="sorting" tabindex="0" aria-controls="example" rowspan="1"
                                                colspan="1" aria-label="新余额: activate to sort column ascending">匹配编号
                                            </th>
                                            <th class="sorting" tabindex="0" aria-controls="example" rowspan="1"
                                                aria-label="新余额: activate to sort column ascending">匹配状态
                                            </th>
                                        </tr>
                                        </thead>
                                        <tbody>

                                        <?php if(is_array($v_list)): foreach($v_list as $key=>$v): ?><tr role="row" class="odd">
                                                <td class="sorting_1"><?php echo ($aab=$v["id"]); ?></td>
                                                <td><?php echo ($v["date"]); ?></td>
                                                <td>提供帮助</td>
                                                <td><?php echo ($v["jb"]); ?></td>
                                                <td><?php echo (user_jj_lx_jerry($aab,$ztrs)); ?></td>
                                                <td><?php echo (user_jj_ts_jerry($aab,$ztrs3)); ?></td>
                                                <td>
                                                    <?php if($v["zt"] == '0'): ?>(不可提现)
                                                        <?php else: ?>
                                                        已转出<?php endif; ?>
                                                </td>
                                                <td><?php echo (user_tgbz_jerry($aab,$v["id"])); ?></td>
                                                <td>未匹配</td>
                                                <td>排队中</td>
                                            </tr><?php endforeach; endif; ?>
                                        <?php if(is_array($list1)): foreach($list1 as $key=>$v): ?><tr role="row" class="odd">
                                                <td class="sorting_1"><?php echo ($aab=$v["id"]); ?></td>
                                                <td><?php echo ($v["date"]); ?></td>
                                                <td><?php echo ($v["note"]); ?></td>
                                                <td><?php echo ($v["jb"]); ?></td>
                                                <td><?php echo (user_jj_lx($aab,$ztrs)); ?></td>
                                                <td><?php echo (user_jj_ts($aab,$ztrs3)); ?></td>
                                                <td>
                                                    <?php if($v["zt"] == '0'): ?>(<?php echo (user_jj_zt_z($aab,$ztrs1)); ?>) <a
                                                            href="javascript:if(confirm('转出提现后将停止此次帮助利息,确定要转出吗?'))location='/Home/Info/tgbz_tx_cl/id/<?php echo ($v["id"]); ?>/'">点击确认提款</a>
                                                        <?php else: ?>
                                                        已转出<?php endif; ?>
                                                </td>
                                                <td>
                                                    <?php if($v["zt"] == '0'): ?>未转出<?php endif; ?>
                                                    <?php if($v["zt"] == '1'): ?>已转出<?php endif; ?>
                                                </td>
                                                <td>R<?php echo ($bbh=$v["r_id"]); ?></td>
                                                <td><?php echo (user_jj_pipei_z($bbh,$ztrs2)); ?></td>
                                            </tr><?php endforeach; endif; ?>
                                    </table>
                                    <div class="dataTables_paginate paging_simple_numbers" id="example_paginate">
                                        <?php echo ($page1); ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel-footer"> Table - 6 rows</div>
                    </div>
                </div>
            </div>


            <div class="col-lg-12 animated-panel zoomIn" style="-webkit-animation-delay: 0.6s;">
                <div class="col-md-12">
                    <div class="hpanel">
                        <div class="panel-heading">
                            <div class="panel-tools"><a class="showhide"><i class="fa fa-chevron-up"></i></a> <a
                                    class="closebox"><i class="fa fa-times"></i></a></div>
                            奖金钱包
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <div id="example_wrapper" class="dataTables_wrapper no-footer">
                                    <div class="dataTables_length" id="example_length"><label></label></div>
                                    <table id="example" cellpadding="1" cellspacing="1"
                                           class="table table-bordered table-striped example cus_datatable dataTable no-footer"
                                           role="grid" aria-describedby="example_info">
                                        <thead>
                                        <tr role="row">
                                            <th class="sorting_desc" tabindex="0" aria-controls="example" rowspan="1"
                                                colspan="1" aria-sort="descending"
                                                aria-label="编号: activate to sort column ascending">编号
                                            </th>
                                            <th class="sorting" tabindex="0" aria-controls="example" rowspan="1"
                                                colspan="1" aria-label="日期: activate to sort column ascending">日期
                                            </th>
                                            <th class="sorting" tabindex="0" aria-controls="example" rowspan="1"
                                                colspan="1" aria-label="说明: activate to sort column ascending"
                                                style="width: 131px;">说明
                                            </th>
                                            <th class="sorting" tabindex="0" aria-controls="example" rowspan="1"
                                                colspan="1" aria-label="原余额: activate to sort column ascending">匹配金额
                                            </th>
                                            <th class="sorting_disabled" rowspan="1" colspan="1"
                                                aria-label="+收入/-支出 (Mavro)">奖金
                                            </th>
                                            <th class="sorting" tabindex="0" aria-controls="example" rowspan="1"
                                                colspan="1" aria-label="新余额: activate to sort column ascending">匹配编号
                                            </th>
                                            <th class="sorting" tabindex="0" aria-controls="example" rowspan="1"
                                                aria-label="新余额: activate to sort column ascending">发放状态
                                            </th>
                                            <th class="sorting" tabindex="0" aria-controls="example" rowspan="1"
                                                aria-label="新余额: activate to sort column ascending">交易状态
                                            </th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <?php if(is_array($list2)): foreach($list2 as $key=>$d): ?><tr role="row" class="odd">
                                                <td class="sorting_1"><?php echo ($aab=$d["id"]); ?></td>
                                                <td><?php echo ($d["date"]); ?></td>
                                                <td><?php echo ($d["note"]); ?></td>
                                                <td><?php echo ($d["jb"]); ?></td>
                                                <td><?php echo ($d["jj"]); ?></td>
                                                <td>P<?php echo ($bbh=$d["r_id"]); ?></td>
                                                <td><?php echo (user_jj_pipei_z2($bbh,$ztrs3)); ?></td>
                                                <td><?php echo (user_jj_pipei_z($bbh,$ztrs2)); ?></td>
                                            </tr><?php endforeach; endif; ?>
                                    </table>
                                    <div class="dataTables_paginate paging_simple_numbers" id="example_paginate">
                                        <?php echo ($page1); ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel-footer"> Table - 6 rows</div>
                    </div>
                </div>
            </div>


        </div>

        <div class="row">
            <div class="col-lg-12 animated-panel zoomIn" style="-webkit-animation-delay: 0.7s;">
                <div class="col-md-12">
                    <div class="hpanel">
                        <div class="panel-heading">
                            <div class="panel-tools"><a class="showhide"><i class="fa fa-chevron-up"></i></a> <a
                                    class="closebox"><i class="fa fa-times"></i></a></div>
                            互助钱包记录
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <div id="example_wrapper" class="dataTables_wrapper no-footer">
                                    <div class="dataTables_length" id="example_length"><label></label></div>
                                    <table id="example" cellpadding="1" cellspacing="1"
                                           class="table table-bordered table-striped example cus_datatable dataTable no-footer"
                                           role="grid" aria-describedby="example_info">
                                        <thead>
                                        <tr role="row">
                                            <th class="sorting_desc" tabindex="0" aria-controls="example" rowspan="1"
                                                colspan="1" aria-sort="descending"
                                                aria-label="编号: activate to sort column ascending" style="width: 89px;">
                                                编号
                                            </th>
                                            <th class="sorting" tabindex="0" aria-controls="example" rowspan="1"
                                                colspan="1" aria-label="日期: activate to sort column ascending"
                                                style="width: 233px;">日期
                                            </th>
                                            <th class="sorting" tabindex="0" aria-controls="example" rowspan="1"
                                                colspan="1" aria-label="说明: activate to sort column ascending"
                                                style="width: 235px;">说明
                                            </th>
                                            <th class="sorting" tabindex="0" aria-controls="example" rowspan="1"
                                                colspan="1" aria-label="原余额: activate to sort column ascending"
                                                style="width: 134px;">原余额
                                            </th>
                                            <th class="sorting_disabled" rowspan="1" colspan="1"
                                                aria-label="+收入/-支出 (Mavro)" style="width: 274px;">+收入/-支出 (Mavro)
                                            </th>
                                            <th class="sorting" tabindex="0" aria-controls="example" rowspan="1"
                                                colspan="1" aria-label="新余额: activate to sort column ascending"
                                                style="width: 136px;">新余额
                                            </th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <?php if(is_array($list)): foreach($list as $key=>$b): ?><tr role="row" class="odd">
                                                <td class="sorting_1"><?php echo ($b["ug_id"]); ?></td>
                                                <td><?php echo ($b["ug_gettime"]); ?></td>
                                                <td><?php echo ($b["ug_note"]); ?></td>
                                                <td><?php echo ($b["ug_allget"]); ?></td>
                                                <td><?php echo ($b["ug_money"]); ?></td>
                                                <td><?php echo ($b["ug_balance"]); ?></td>
                                            </tr><?php endforeach; endif; ?>

                                        </tbody>
                                    </table>
                                    <div class="dataTables_paginate paging_simple_numbers" id="example_paginate">
                                        <?php echo ($page); ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel-footer"> Table - 6 rows</div>
                    </div>
                </div>
            </div>
        </div>



        <div class="row">
            <div class="col-lg-12 animated-panel zoomIn" style="-webkit-animation-delay: 0.7s;">
                <div class="col-md-12">
                    <div class="hpanel">
                        <div class="panel-heading">
                            <div class="panel-tools"><a class="showhide"><i class="fa fa-chevron-up"></i></a> <a
                                    class="closebox"><i class="fa fa-times"></i></a></div>
                            提现记录
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <div id="example_wrapper" class="dataTables_wrapper no-footer">
                                    <div class="dataTables_length" id="example_length"><label></label></div>
                                    <table id="example" cellpadding="1" cellspacing="1"
                                           class="table table-bordered table-striped example cus_datatable dataTable no-footer"
                                           role="grid" aria-describedby="example_info">
                                        <thead>
                                        <tr role="row">
                                            <th class="sorting_desc" tabindex="0" aria-controls="example" rowspan="1"
                                                colspan="1" aria-sort="descending"
                                                aria-label="编号: activate to sort column ascending" style="width: 89px;">
                                                编号
                                            </th>
                                            <th class="sorting" tabindex="0" aria-controls="example" rowspan="1"
                                                colspan="1" aria-label="日期: activate to sort column ascending"
                                                style="width: 233px;">日期
                                            </th>
                                            <th class="sorting" tabindex="0" aria-controls="example" rowspan="1"
                                                colspan="1" aria-label="提现金额: activate to sort column ascending"
                                                style="width: 134px;">提现金额
                                            </th>
                                            <th class="sorting" tabindex="0" aria-controls="example" rowspan="1"
                                                colspan="1" aria-label="支付方式: activate to sort column ascending"
                                                style="width: 134px;">支付方式
                                            </th>
                                            <th class="sorting" tabindex="0" aria-controls="example" rowspan="1"
                                                colspan="1" aria-label="状态: activate to sort column ascending"
                                                style="width: 136px;">状态
                                            </th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <?php if(is_array($txlist)): foreach($txlist as $key=>$b): ?><tr role="row" class="odd">
                                                <td class="sorting_1"><?php echo ($b["id"]); ?></td>
                                                <td><?php echo ($b["addtime"]); ?></td>
                                                <td><?php echo ($b["tx_money"]); ?></td>
                                                <td><?php if($b["zffs"] == 1): ?>银行支付<?php endif; if($b["zffs"] == 2): ?>支付宝支付<?php endif; if($b["zffs"] == 3): ?>微信支付<?php endif; ?></td>
												<td><?php if($b["status"] == 0): ?>等待处理<?php endif; if($b["status"] == 1): ?>完成<?php endif; ?></td>
                                            </tr><?php endforeach; endif; ?>

                                        </tbody>
                                    </table>
                                    <div class="dataTables_paginate paging_simple_numbers" id="example_paginate">
                                        <?php echo ($txpage); ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel-footer"> Table - 6 rows</div>
                    </div>
                </div>
            </div>
        </div>





        <div class="row hide">
            <div class="col-lg-12 animated-panel zoomIn" style="-webkit-animation-delay: 0.8s;">
                <div class="col-md-12">
                    <div class="hpanel">
                        <div class="panel-heading">
                            <div class="panel-tools"><a class="showhide"><i class="fa fa-chevron-up"></i></a> <a
                                    class="closebox"><i class="fa fa-times"></i></a></div>
                            等待记录
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <div id="example2_wrapper" class="dataTables_wrapper no-footer">
                                    <div class="dataTables_length" id="example2_length"><label>显示 <select
                                            name="example2_length" aria-controls="example2" class="">
                                        <option value="10">10</option>
                                        <option value="25">25</option>
                                        <option value="50">50</option>
                                        <option value="100">100</option>
                                    </select> 行</label></div>
                                    <div id="example2_filter" class="dataTables_filter"><label>查询:<input type="search"
                                                                                                         class=""
                                                                                                         placeholder=""
                                                                                                         aria-controls="example2"></label>
                                    </div>
                                    <table id="example2" cellpadding="1" cellspacing="1"
                                           class="table table-bordered table-striped cus_datatable dataTable no-footer"
                                           role="grid" aria-describedby="example2_info">
                                        <thead>
                                        <tr role="row">
                                            <th class="sorting_desc" tabindex="0" aria-controls="example2" rowspan="1"
                                                colspan="1" aria-sort="descending"
                                                aria-label="编号: activate to sort column ascending" style="width: 0px;">
                                                编号
                                            </th>
                                            <th class="sorting_disabled" rowspan="1" colspan="1" aria-label="日期"
                                                style="width: 0px;">日期
                                            </th>
                                            <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1"
                                                colspan="1" aria-label="说明: activate to sort column ascending"
                                                style="width: 0px;">说明
                                            </th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr role="row" class="odd">
                                            <td class="sorting_1">125991</td>
                                            <td>2015-06-26 12:05:31</td>
                                            <td>将获得 来自 <span style="font-weight: bold;">p</span> 的推荐奖 <span
                                                    style="color: red;">100</span></td>
                                        </tr>
                                        <tr role="row" class="even">
                                            <td class="sorting_1">125975</td>
                                            <td>2015-06-26 12:03:30</td>
                                            <td>将获得 来自 <span style="font-weight: bold;">q</span> 的推荐奖 <span
                                                    style="color: red;">100</span></td>
                                        </tr>
                                        <tr role="row" class="odd">
                                            <td class="sorting_1">96181</td>
                                            <td>2015-06-21 13:51:09</td>
                                            <td>将获得 来自 <span style="font-weight: bold;">风雨过后4</span> 的推荐奖 <span
                                                    style="color: red;">100</span></td>
                                        </tr>
                                        <tr role="row" class="even">
                                            <td class="sorting_1">78804</td>
                                            <td>2015-06-17 18:14:48</td>
                                            <td>将获得 来自 <span style="font-weight: bold;">坚持 主</span> 的推荐奖 <span
                                                    style="color: red;">100</span></td>
                                        </tr>
                                        <tr role="row" class="odd">
                                            <td class="sorting_1">70288</td>
                                            <td>2015-06-15 22:21:50</td>
                                            <td>将获得 来自 <span style="font-weight: bold;">俞</span> 的推荐奖 <span
                                                    style="color: red;">100</span></td>
                                        </tr>
                                        <tr role="row" class="even">
                                            <td class="sorting_1">70268</td>
                                            <td>2015-06-15 22:17:49</td>
                                            <td>将获得 来自 <span style="font-weight: bold;">公主1</span> 的推荐奖 <span
                                                    style="color: red;">100</span></td>
                                        </tr>
                                        <tr role="row" class="odd">
                                            <td class="sorting_1">63908</td>
                                            <td>2015-06-14 12:05:01</td>
                                            <td>将获得 来自 <span style="font-weight: bold;">风雨过后3</span> 的推荐奖 <span
                                                    style="color: red;">100</span></td>
                                        </tr>
                                        <tr role="row" class="even">
                                            <td class="sorting_1">47106</td>
                                            <td>2015-06-09 18:53:40</td>
                                            <td>将获得 来自 <span style="font-weight: bold;">风雨过后2</span> 的推荐奖 <span
                                                    style="color: red;">100</span></td>
                                        </tr>
                                        <tr role="row" class="odd">
                                            <td class="sorting_1">46616</td>
                                            <td>2015-06-09 16:38:37</td>
                                            <td>将获得 来自 <span style="font-weight: bold;">蜕变</span> 的推荐奖 <span
                                                    style="color: red;">100</span></td>
                                        </tr>
                                        </tbody>
                                    </table>
                                    <div class="dataTables_info" id="example2_info" role="status" aria-live="polite">共 9
                                        行记录。显示 1 至 9 行记录
                                    </div>
                                    <div class="dataTables_paginate paging_simple_numbers" id="example2_paginate"><a
                                            class="paginate_button previous disabled" aria-controls="example2"
                                            data-dt-idx="0" tabindex="0" id="example2_previous">上一页</a><span><a
                                            class="paginate_button current" aria-controls="example2" data-dt-idx="1"
                                            tabindex="0">1</a></span><a class="paginate_button next disabled"
                                                                        aria-controls="example2" data-dt-idx="2"
                                                                        tabindex="0" id="example2_next">下一页</a></div>
                                </div>
                            </div>
                        </div>
                        <div class="panel-footer"> Table - 6 rows</div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--table end-->

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

        $('.time_countdown').each(function () {
            var $this = $(this);
            var time = $this.data('time') + '';


            var y = time.split(' ');
            var ys = y[0].split('-');

            var sd = y[1].split(':');

            for (var i = 0; i < sd.length; i++) {
                ys.push(sd[i]);
            }
            ;

            console.log(ys);

            var datez = new Date(ys[0], ys[1], ys[2], ys[3], ys[4], ys[5]).getTime();
            //datez = datez+172800000;


            var date = new Date(datez);
            Y = date.getFullYear() + '/';
            M = date.getMonth() + '/';
            D = date.getDate() + ' ';
            h = date.getHours() + ':';
            m = date.getMinutes() + ':';
            s = date.getSeconds();

            dates = Y + M + D + h + m + s;
            console.log(Y + M + D + h + m + s + '.......');

            $this.countdown(dates, function (event) {


                $(this).text(
                        event.strftime('%-D 天 %-H 小时 %M 分钟 %S 秒')
                );
            });

            datez = null;
        });


        $("#canyuzhi").change(function () {

            //alert($(this).val());

            $("#regs").submit();


        });


        var $from = null;

        $(".cancel").click(function () {
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
                        closeOnCancel: true
                    },
                    function (isConfirm) {
                        if (isConfirm) {
                            $.post('/tu/cancel_provide_request', {order_id: order_id}, function (data) {
                                if (data) {
                                    swal("已取消", "取消成功.", "success");
                                    $div.remove();
                                }
                            });

                        } else {
                            swal("", "", "error");
                        }
                    });

        });


        $(".cancel2").click(function () {
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
                        closeOnCancel: true
                    },
                    function (isConfirm) {
                        if (isConfirm) {
                            $.post('/tu/cancel_get_request', {order_id: order_id}, function (data) {
                                if (data) {
                                    swal("已取消", "取消成功.", "success");
                                    $div.remove();
                                }
                            });

                        } else {
                            swal("", "", "error");
                        }
                    });

        });


        $("#yes_cancel").click(function () {

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


        $(".btngethelp").click(function () {
            $(".balance").val($(this).data("cp"));
            $(".sell").val($(this).data("cp"));
            $(".get_amount").val("");
            $("#wallet_type").val($(this).data("wallet_type"));
            $("#gethelpmodal").modal("toggle");
        });

        $("#txbt").click(function () {
            $("#gethelpmodal222").modal("toggle");
        });

        $(".get_amount").bind("change", function () {
            if (isNaN($(this).val())) {
                $(this).val(0);
            }
            var ths = $(this).val();
            var mat = Math.floor(ths / 10);
            $(this).val(mat * 10);
            var amount = mat * 10;
            var cp = parseInt($(".balance").val());
            var maxx = parseInt("2000");
            var min = parseInt("100");
            var getvalue = amount * 7;
            $("#gh_amount").text(amount);
            $("#gh").text(getvalue);
            if (amount <= cp && amount <= maxx && amount >= min) {
                $("#gh_amount").css("color", "#00FF00");
                $("#gh").css("color", "#00FF00");
                $('.btnconfirm').removeAttr("disabled");
            } else {
                $('.btnconfirm').attr('disabled', "true");
                $("#gh_amount").css("color", "red");
                $("#gh").css("color", "red");
            }
            $("#amount_get").text(getvalue);
        });
        $(".btn_get_next").click(function () {
            //alert("ss");
            var sstr = '';
            $('.ckbox2').each(function (index, element) {
                if ($(this).prop('checked')) {
                    sstr += $(this).val() + ',';
                }
            });
            $("#payment_method2").val(sstr);
            $("#get_help").submit();
            //alert(1);
        });

        $("#select_fanshi").click(function () {

            var id = $("#comid").val();
            var status = $('.comfir:checked').val();

            $.post('/tu/updateStatus', {status: status, id: id}, function (data) {

                if (data != 0) {

                    alert('操作成功!');
                    window.location.reload();
                } else {
                    alert('操作失败!');
                    window.location.reload();

                }

            });

        });


        $("#select_fanshi2").click(function () {

            var id = $("#completid").val();

            var status = $('.comfir2:checked').val();

            $("#pro_status").val(status);

            if (status == 1) {
                $("#myModa25").modal('toggle');
            } else {

                $.post('/tu/cancel', {provide_status: status, id: id}, function (data) {

                    if (data != 0) {

                        alert('操作成功');
                        window.location.reload();
                    } else {
                        alert('操作失败');
                        window.location.reload();
                    }

                });

            }

        });

        $("#select_fanshi3").click(function () {

            var id = $("#completid").val();

            $("#myModa25").modal('close');

        });


        $('input:checkbox').each(function () {

            if ($(this).attr('checked') == true) {
                alert($(this).val());
            }
        });
        $(".addmsg").click(function () {

            var id = $(this).data('id');
            $("#orderid").text(id);

            $.post('/tu/showMsg', {id: id}, function (data) {

                var html = [];
                var htmlstr = null;

                console.log(eval(data));

                var data = eval(data);

                if (data) {
                    for (var i = 0, len = data.length; i < len; i++) {

                        html.push('<p>' + data[i].time + ' , ' + data[i].lid + '</p>');

                        html.push('<p>' + data[i].context + '</p>');

                    }
                    htmlstr = html.join('');
                    $("#msg").html(htmlstr);
                } else {
                    $("#msg").html('');
                }

            });


            $("#id").val($(this).data('id'));

            $("#mesg").focus();

        });

        $('.btn_next').click(function () {
            var str = '';
            $('.ckbox').each(function (index, element) {
                if ($(this).prop('checked')) {
                    str += $(this).val() + ',';
                }
            });

            $("#payment_method").val(str);

            var amount = $("#amount").val();
            $("#amountpay").text(amount * 7);
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

        $(".provide_complete").click(function () {

            $("#expire_date2").text($(this).data("expire_date"));
            $("#bank_number2").text($(this).data("bank_number"));
            $("#bank_user2").text($(this).data("bank_user"));
            $("#bank_name2").text($(this).data("bank_name"));
            $("#mavro").text($(this).data('mavro'));
            $("#rmb").text(Number($(this).data('mavro')) * 7);
            $("#comid").val($(this).data('id'));

        });


        $(".complete").click(function () {

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





<div class="modal fade" id="gethelpmodal222" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="color-line"></div>
            <div class="modal-header">
                <h4 class="modal-title">申请提现</h4>

                <p class="text-warning"></p>
            </div>
            <form name="forma66" method="post" action="/Home/Index/mmtixian" id="get_tx">
                <div class="modal-body" style="text-align:center">
                    <div class="input-group m-b">
						<span class="input-group-addon">可提现金额</span> <input type="text" class="form-control" name="mmall" value="<?php echo ($userdata["ue_money"]); ?>" readonly></div>
                    <div class="input-group m-b">
						<span class="input-group-addon">最低提现金额</span> <input type="text" class="form-control" name="txthemin" value="<?php echo ($txthemin); ?>" readonly></div>
                    </br>
                    <label class="col-sm-12 control-label">提现支付方式</label>

                    <div class="radio" align="left">
                        <label> <input type="radio" value="1" class="ckbox2" name="zffs" checked="">银行支付</label><br>
                        <label> <input type="radio" value="2" class="ckbox2" name="zffs" >支付宝支付</label><br>
                        <label> <input type="radio" value="3" class="ckbox2" name="zffs" >微信支付</label><br>
                    </div>

                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control get_amount" placeholder="最低<?php echo ($txthemin); ?>起,<?php echo ($txthebeishu); ?>的倍数" name="get_amount" autocomplete="off" required="">
                        </div>

                    </div>
                </div>

                <div class="modal-footer">

                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <input type='submit' class="btn-warning btn-sm" value="申请提现">
            </form>
        </div>
    </div>
</div>








<!--gethelp modal-->
<div class="modal fade" id="gethelpmodal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="color-line"></div>
            <div class="modal-header">
                <h4 class="modal-title">接受帮助</h4>

                <p class="text-warning"></p>
            </div>
            <form name="forma1" method="post" action="/Home/Index/jsbzcl" id="get_help">
                <div class="modal-body" style="text-align:center">
                    <input type="hidden" value="" id="wallet_type" name="wallet_type"></input>

                    <div class="input-group m-b"><span class="input-group-addon">MAVRO</span> <input type="text"
                                                                                                     placeholder=""
                                                                                                     id="aab1"
                                                                                                     class="form-control balance"
                                                                                                     readonly></div>
                    <div class="input-group m-b"><span class="input-group-addon">可出售MAVRO</span> <input type="text"
                                                                                                        placeholder=""
                                                                                                        id="aab2"
                                                                                                        class="form-control sell"
                                                                                                        readonly></div>
                    <div class="input-group m-b"><span class="input-group-addon">最低出售数量</span> <input type="text"
                                                                                                      class="form-control"
                                                                                                      id="aab3"
                                                                                                      value="500"
                                                                                                      readonly></div>
                    </br>
                    <label class="col-sm-12 control-label">接受帮助 支付方式</label>

                    <div class="radio" align="left">

                        <label> <input type="checkbox" value="0" class="ckbox2" name="zffs1" checked="">银行支付</label><br>
                        <label> <input type="checkbox" value="1" class="ckbox2" name="zffs2"
                                       checked="">支付宝支付</label><br>
                        <label> <input type="checkbox" value="2" class="ckbox2" name="zffs3" checked="">微信支付</label><br>
                    </div>

                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control get_amount" placeholder="RMB1000起,500的倍数"
                                   name="get_amount" autocomplete="off" required="" id="get_amount">

                        </div>

                    </div>
                    <!-- <div class="form-group">
                         <font id="gh_amount"></font> MAVROx7=<font id="gh"></font>
                         人民币                            </div>-->
                    <div class="form-group">
                        <h4>
                        </h4>
                    </div>

                    <input type="checkbox" class="i-checks" name="i-checks" checked required>
                    警告，我已完全了解所有风险。我决定参与MMM,尊重MMM文化与传统。
                </div>

                <div class="modal-footer">

                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <input type='submit' class="btn-warning btn-sm" value="接受帮助">
            </form>
        </div>
    </div>
</div>
</div>
</div>


<script>
    $(function () {
        $('#qbid').click(function () {

//$("#aab1").text("Set Lbl Value"); 
            document.forma1.action = "/Home/Index/jsbzcl";
            document.getElementById("aab1").value = "<?php echo ($userdata["ue_money"]); ?>";
            document.getElementById("aab2").value = "<?php echo ($userdata["ue_money"]); ?>";
            document.getElementById("aab3").value = "1000";
            document.getElementById("get_amount").placeholder = "RMB1000起,500的倍数";
            document.getElementById("wallet_type").value = "0";
////==================

        })
    })


</script>

<script>
    $(function () {
        $('#qbid1').click(function () {

            document.forma1.action = "/Home/Index/jsbzcl1";
            document.getElementById("aab1").value = "<?php echo ($userdata["jl_he"]); ?>";
            document.getElementById("aab2").value = "<?php echo ($userdata["jl_he"]); ?>";
            document.getElementById("aab3").value = "10000";
            document.getElementById("get_amount").placeholder = "RMB10000起,500的倍数";
            document.getElementById("wallet_type").value = "0";
////==================

        })
    })


</script>
<script>
    $(function () {
        $('#qbid2').click(function () {

//$("#aab1").text("Set Lbl Value"); 
            document.forma1.action = "/Home/Index/jsbzc2";
            document.getElementById("aab1").value = "<?php echo ($userdata["tj_he"]); ?>";
            document.getElementById("aab2").value = "<?php echo ($userdata["tj_he"]); ?>";
            document.getElementById("aab3").value = "5000";
            document.getElementById("get_amount").placeholder = "RMB5000起,500的倍数";
            document.getElementById("wallet_type").value = "0";
////==================

        })
    })


</script>

</body>
</html>