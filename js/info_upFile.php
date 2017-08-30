<?php
header("Content-Type: text/html; charset=UTF-8");




if (trim($_GET["mudi"])=="upFileDeal"){
  require_once("check.php");
  require_once(SNADMININCFUN ."func_file.php");
  require_once(SNADMININCFUN ."func_image.php");

	$upPathMode=trim($_POST["upPath"]);
	$fileMode = $_POST["fileMode"];
	$fileFormName = $_POST["fileFormName"];
	$fileDir = $_POST["fileDir"];

/*
		// 获取上传图片配置
		$sysImgexe=$DB->Execute("select * from OT_sysImages");
			$isThumb				= $sysImgexe->fields["SI_isThumb"];
			$thumbW					= $sysImgexe->fields["SI_thumbW"];
			$thumbH					= $sysImgexe->fields["SI_thumbH"];
			$isWatermark			= $sysImgexe->fields["SI_isWatermark"];
			$watermarkPos			= $sysImgexe->fields["SI_watermarkPos"];
			$watermarkPadding		= $sysImgexe->fields["SI_watermarkPadding"];
			$watermarkFontContent	= $sysImgexe->fields["SI_watermarkFontContent"];
			$watermarkFontSize		= $sysImgexe->fields["SI_watermarkFontSize"];
			$watermarkFontColor		= $sysImgexe->fields["SI_watermarkFontColor"];
			$watermarkPath			= $sysImgexe->fields["SI_watermarkPath"];
		unset($sysImgexe);
*/
// 更新缓存文件--获取上传图片配置
if (! @include(SNDATA ."cache/systemcache/sysImages.php")){
	require_once(SNADMININCFUN ."func_cache.php");
	UpdateCache("OT_sysImages");
	die("
	<br /><br />
	<center>
		加载缓存文件失败，请重新刷新该页面。<a href='#' onclick='document.location.reload();'>点击刷新</a>
	</center>
	");
}
			$isThumb				= $sysImagesArr["SI_isThumb"];
			$thumbW					= $sysImagesArr["SI_thumbW"];
			$thumbH					= $sysImagesArr["SI_thumbH"];
			$isWatermark			= $sysImagesArr["SI_isWatermark"];
			$watermarkPos			= $sysImagesArr["SI_watermarkPos"];
			$watermarkPadding		= $sysImagesArr["SI_watermarkPadding"];
			$watermarkFontContent	= $sysImagesArr["SI_watermarkFontContent"];
			$watermarkFontSize		= $sysImagesArr["SI_watermarkFontSize"];
			$watermarkFontColor		= $sysImagesArr["SI_watermarkFontColor"];
			$watermarkPath			= $sysImagesArr["SI_watermarkPath"];



	//缩略图参数
	$isThumb2=trim($_POST["isThumb"]);
	$thumbW2=intval($_POST["thumbW"]);
	$thumbH2=intval($_POST["thumbH"]);
	//文字水印参数
	$isWatermark2=trim($_POST["isWatermark"]);
	$watermarkPos2=trim($_POST["watermarkPos"]);
	$watermarkPadding2=intval($_POST["watermarkPadding"]);
	$watermarkFontContent2=trim($_POST["watermarkFontContent"]);
	$watermarkFontSize2=intval($_POST["watermarkFontSize"]);
	$watermarkFontColor2=trim($_POST["watermarkFontColor"]);
	//图片水印
	$watermarkPath2=Trim($_POST["watermarkPath"]);
	$areaMode=Trim($_POST["areaMode"]);
		if ($isThumb2=="false"){$isThumb=$isThumb2;}
		if ($thumbW2>0){$thumbW=$thumbW2;}
		if ($thumbH2>0){$thumbH=$thumbH2;}
		if ($isWatermark2=="font" || $isWatermark2=="img"){$isWatermark=$isWatermark2;}
		if ($watermarkPos2!=""){$watermarkPos=$watermarkPos2;}
		if ($watermarkPadding2>0){$watermarkPadding=$watermarkPadding2;}
		if ($watermarkFontContent2!=""){$watermarkFontContent=$watermarkFontContent2;}
		if ($watermarkFontSize2>0){$watermarkFontSize=$watermarkFontSize2;}
		if ($watermarkFontColor2!=""){$watermarkFontColor=$watermarkFontColor2;}
		if ($watermarkPath2!=""){$watermarkPath=$watermarkPath2;}

//	response.write("<script languag='javascript'>alert('"& upPath &"')<//script>")
	switch ($upPathMode){ 
		case "link":
			$upPath=LINKFILEPATH.'img/';
			break;

		case "user":
			$upPath=USERFILEPATH.'img/';
			break;

		case "image":
			$upPath=IMAGEFILEPATH.'img/';
			break;
		
		case "info":
			$upPath=INFOFILEPATH.'img/';
			break;
			
		case "web":
			$upPath=WEBFILEPATH.'img/';
			break;
			
		case "case":
			$upPath=CASEFILEPATH.'img/';
			break;
			
		case "down":
			$upPath=DOWNFILEPATH.'img/';
			break;
			
		case "type":
			$upPath=TYPEFILEPATH.'img/';
			break;
		
		case "goods"://商品
			$upPath=GOODSFILEPATH.'img/';
			break;
			
		case "gtype"://商品分类
			$upPath=GTYPEFILEPATH.'img/';
			break;
			
		case "action"://商品活动
			$upPath=ACTIONFILEPATH.'img/';
			break;
			
		case "integral"://金币商品
			$upPath=INTEGRALFILEPATH.'img/';
			break;
			
		default:
			die("上传图片存放目录不存在！");
	}

	//打开用户表，并检测用户是否登陆
	OpenMemberexe("","login");
	CloseMemberexe();


	$fileArray=File_AddUploadPara($_FILES["upFile"]);
//		die($fileArray["ext"]);
	if (File_IsUploadType($fileArray["ext"],"imageSwf")){

		if (File_Upload($fileArray["tmp_name"],$upPath . $fileArray["newName"]) != false){
			$imgUrl=GetDirURL(true,1) . str_replace("../","",$upPath) . $fileArray["newName"];

			$record=array();
			$record["UF_time"]=$DB->DBTimeStamp(GetNowTime());
			$record["UF_type"]=$DB->qstr($upPathMode);
			$record["UF_oldName"]=$DB->qstr($fileArray["name"]);
			$record["UF_name"]=$DB->qstr($fileArray["newName"]);
			$record["UF_ext"]=$DB->qstr($fileArray["ext"]);
			$record["UF_size"]=filesize($upPath . $fileArray["newName"]);
				if ($imgInfo=getimagesize($upPath . $fileArray["newName"])){
			$record["UF_width"]=$imgInfo[0];
			$record["UF_height"]=$imgInfo[1];
				}

					if ($isThumb!="false"){
				// 生成缩略图
				$imgThumbArr=array();
				$imgThumbArr["imgPath"] = $upPath . $fileArray["newName"];
				$imgThumbArr["thumbWidth"] = $thumbW;
				$imgThumbArr["thumbHeight"] = $thumbH;
				$ttp=Image_CreateThumb($imgThumbArr);

			$record["UF_isThumb"]=1;
			$record["UF_thumbName"]=$DB->qstr($ttp['name']);
					}
				InsertSQL("OT_upFile",$record);

				if ($isWatermark=="font"){	//文字水印
			$imgWaterArr=array();
			$imgWaterArr["upLoadImg"]	= $upPath . $fileArray["newName"];
			$imgWaterArr["waterPos"]	= $watermarkPos;
			$imgWaterArr["waterPadding"]= $watermarkPadding;
			$imgWaterArr["waterText"]	= $watermarkFontContent;
			$imgWaterArr["textFont"]	= $watermarkFontSize;
			$imgWaterArr["textColor"]	= $watermarkFontColor;
			Image_CreateWatermark($imgWaterArr);
				}elseif ($isWatermark=="img"){	//图片水印
			$imgWaterArr=array();
			$imgWaterArr["upLoadImg"]	= $upPath . $fileArray["newName"];
			$imgWaterArr["waterImg"]	= $watermarkPath;
			Image_CreateWatermark($imgWaterArr);
				}

				if ($areaMode=="product"){
					// 生成缩略图
					$imgThumbArr2=array();
					$imgThumbArr2["imgPath"] = $upPath . $fileArray["newName"];
					$imgThumbArr2["thumbWidth"] = 385;
					$imgThumbArr2["thumbHeight"] = 0;
					$imgThumbArr2["thumbPrefix"] = "thumb2_";
					$ttp2=Image_CreateThumb($imgThumbArr2);
				}
				echo("
				<script language='javascript' type='text/javascript'>
				");
				
				if ($fileMode=="editor"){
					echo("
					opener.addform.upImg.value +=\"". $fileArray["newName"] ."|\";
					opener.FCKeditorAPI.GetInstance(\"". $fileFormName ."\").InsertHtml(\"<img src='". $imgUrl ."' border='0'>\");
					");
				}elseif ($fileMode=="input"){
					echo("
					opener.document.getElementById('". $fileFormName ."').value='". $fileArray["newName"] ."';
					");
				}elseif ($fileMode=="img"){
					echo("
					opener.document.getElementById('". $fileFormName ."').value='". $fileArray["newName"] ."';
					");
				}else{
					echo("
					opener.". $fileFormName .".value='". $imgUrl ."';
					");
				}
					//die();
				echo("
				window.close();
				</script>");		
		}else{
			die("
			<script language='javascript' type='text/javascript'>
			alert('上传失败，请重新上传（服务器最大上传限制". (get_cfg_var("upload_max_filesize")?get_cfg_var("upload_max_filesize"):"不允许上传附件") ."）');window.close();
			</script>
			");
		}

	} else {
		die("<script language=javascript>alert('上传失败！请选择图片格式的文件');window.close();</script>");
	}

	CloseConobj();
}
?>

<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
 xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en"
 -->
<html>
<head>
	<title>上传图片</title>
	<link rel="stylesheet" type="text/css" href="style.css" />
	<style>
	#webImgShow{
		filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale);
	}
	</style>
</head>

<body style="margin:8px;">

<script language='javascript' type='text/javascript'>
//检测表单
function CheckForm(form){
	var re= new RegExp("\.(gif|jpg)","ig");   
	if ( ! re.test(form.upFile.value))
	{alert("请选择GIF/JPG图片");return false;}

	initAd();
	return true;
}

//新的预览代码，支持 IE6、IE7。
function PreviewImg(imgFile){
    var webImgShow = document.getElementById("webImgShow");
		if (navigator.userAgent.indexOf('Firefox') >= 0){
	webImgShow.innerHTML="支持IE<br />暂不支持<br />火狐浏览器";
		}else{
    webImgShow.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgFile;
    webImgShow.style.width = "100px";
    webImgShow.style.height = "100px";
		}
}

</script>

<?php
require_once("tool/submitShow.inc");

	$URL="?mudi=selectFile";
	foreach($_GET as $key => $value){
		if ($key!="mudi" && $key!="upMode"){$URL .= "&amp;". $key ."=". $value;}
	}

?>
<div id="sponsorAdDiv" style="visibility:hidden">
<table style="width:250px; height:70px;" border='0' cellspacing='1' class="border1_1" bgcolor="#ACD6FF"><tr><td align='center'>
	<table style="width:100%; height:100%;"  border='0' cellspacing='0' summary=''>
	<tr><td align="center" class="font2_2">
		正在上传图片，请稍候......
	</td></tr>
	</table>
</td></tr></table>
</div>

<table style="height:10px;" cellpadding='0' cellspacing='0' summary=''><tr><td></td></tr></table>

<form name='addform' method='post' action="?mudi=upFileDeal" enctype="multipart/form-data" onSubmit="return CheckForm(this)">
<input type="hidden" name="upPath" value="<?php echo($_GET["upPath"]); ?>" />
<input type="hidden" name="fileMode" value="<?php echo($_GET["fileMode"]); ?>" />
<input type="hidden" name="fileFormName" value="<?php echo($_GET["fileFormName"]); ?>" />

<input type="hidden" name="isThumb" value="<?php echo($_GET["isThumb"]); ?>" />
<input type="hidden" name="thumbW" value="<?php echo($_GET["thumbW"]); ?>" />
<input type="hidden" name="thumbH" value="<?php echo($_GET["thumbH"]); ?>" />

<input type="hidden" name="isWatermark" value="<?php echo($_GET["isWatermark"]); ?>" />
<input type="hidden" name="watermarkPath" value="<?php echo($_GET["watermarkPath"]); ?>" />
<input type="hidden" name="watermarkPos" value="<?php echo($_GET["watermarkPos"]); ?>" />
<input type="hidden" name="watermarkPadding" value="<?php echo($_GET["watermarkPadding"]); ?>" />
<input type="hidden" name="watermarkFontContent" value="<?php echo($_GET["watermarkFontContent"]); ?>" />
<input type="hidden" name="watermarkFontSize" value="<?php echo($_GET["watermarkFontSize"]); ?>" />
<input type="hidden" name="watermarkFontColor" value="<?php echo($_GET["watermarkFontColor"]); ?>" />

<input type="hidden" name="areaMode" value="<?php echo($_GET["areaMode"]); ?>" />
<center style="padding-bottom:12px; display:none;">
	<span class='font1_1'>【上传图片】</span>
	<a href='info_upFile2.php<?php echo($URL); ?>' class='font3_1'>【上传文件】</a>
	<a href='info_upBigFile.php<?php echo($URL); ?>' class='font3_1'>【上传大文件】</a>
	<a href='info_upBigFile.php<?php echo($URL); ?>&upMode=more' class='font3_1'>【批量上传】</a>
	<a href='serverFile.php<?php echo($URL); ?>' class='font3_1'>【服务器文件】</a>
</center>
<table align='center' cellpadding="0" cellspacing="0" border="0" summary=''><tr><td>

	<fieldset><legend class='font2_2' style="font-size:14px;"><b>上传本地图片</b></legend>
	<table style="width:350px; height:100px;" border="0" align="center" summary=''>
	<tr style="height:30px;"> 
		<td class="font1_2">本地：</td>
		<td colspan="3" align="left">
			<input type="file" size='20' style='width:280px;' id="upFile" name="upFile" onChange="PreviewImg(this.value)" />
		</td>
	</tr>
	<tr style="height:40px;">
		<td colspan="4" align="center">
			<input type="image" src="images/button_upload.gif" /> 
		</td>
	</tr>
	</table>
	</fieldset>
</td>
<td style="padding-left:5px">
	<fieldset><legend class='font2_2' style="font-size:14px;"><b>预览图</b></legend>
	<table style="width:100px; height:100px;" border="0" align="center" summary=''>
	<tr><td><span id="webImgShow"></span></td></tr>
	</table>
	</fieldset>
</td></tr></table>
</form>

</body>
</html>