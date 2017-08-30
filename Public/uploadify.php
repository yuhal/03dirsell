<?php
$file=$_FILES['Filedata'];
$path = isset($_REQUEST['path'])&&!empty($_REQUEST['path'])?daddslashes($_REQUEST['path']):'';
if(!$file['tmp_name']||!$file['name']||!$file['size']){
    return false;
}
$path=!empty($path)&&'/'!=substr($path,-1,1)?$path.'/':$path;
$save_name=addslashes($file['name']);
if(!move_uploaded_file($file['tmp_name'],$path.$save_name)){
    WriteErrMsg('文件上传过程中发生错误,请重新上传');
}