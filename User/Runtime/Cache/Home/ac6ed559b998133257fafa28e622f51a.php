<?php if (!defined('THINK_PATH')) exit();?>﻿
<div  align="center">
<div style="width:600px; height:200px;position:relative; border:5px solid #09F;">
<p style="text-align:center;">
<form action="<?php echo U('/Home/Login/mmzh2');?>" name="xgmm" id="xgmm" method="post">
  <p>輸入您的會員編號：
    <input name="user" type="text" id="user">
  </p>
<p>　　　輸入驗證碼：
  <input name="yzm" type="text" id="yzm"><br />

　　　　　　　　　<img src="/Home/login/verify" name="myHeader" id="myHeader" onClick="this.src='/Home/login/verify?'+Math.random();" /></p>
<p><input type="submit" value="確認提交" onclick="forgetCheck();"><input type="button" value="返回" onclick="javacsrtpt:document.location.href='index.php'"></p>
</form>
</div>
</div>