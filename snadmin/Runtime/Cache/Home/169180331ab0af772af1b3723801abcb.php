<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="/sncss/css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">表单</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>提现记录</span></div>
      <form id="form1" name="form1" method="post" action="/admin.php/Home/Index/tixiancl">
	  <input name="id"  type="hidden" class="dfinput" value="<?php echo ($userdata['id']); ?>" />
    <ul class="forminfo">
	<li><label>會員</label><input name="UG_account" disabled="true " type="text" class="dfinput" value="<?php echo ($userdata['ug_account']); ?>" /><i>不可修改</i></li>
	<li><label>提现金额</label><input name="TX_money" disabled="true " type="text" class="dfinput" value="<?php echo ($userdata['tx_money']); ?>"/><i>不可修改</i></li>
	<li><label>支付方式</label><input name="zffs" disabled="true " type="hidden" class="dfinput" value="<?php echo ($userdata['zffs']); ?>"/><input name="zffs22" disabled="true " type="text" class="dfinput" value="<?php if($userdata['zffs'] == 1): ?>银行支付<?php endif; if($userdata['zffs'] == 2): ?>支付宝支付<?php endif; if($userdata['zffs'] == 3): ?>微信支付<?php endif; ?>"/><i>不可修改</i></li>

    <li><label>状态</label><cite><input name="status" type="radio" value="0" <?php if($userdata['status'] == 0): ?>checked="checked"<?php endif; ?> />等待处理&nbsp;&nbsp;&nbsp;&nbsp;<input name="status" type="radio" value="1" <?php if($userdata['status'] == 1): ?>checked="checked"<?php endif; ?>/>完成</cite></li>
    <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认保存"/></li>
    </ul>
      </form>
    
    </div>


</body>

</html>