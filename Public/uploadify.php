<?php
$file=$_FILES['Filedata'];
$path = isset($_REQUEST['path'])&&!empty($_REQUEST['path'])?daddslashes($_REQUEST['path']):'';
if(!$file['tmp_name']||!$file['name']||!$file['size']){
    return false;
}
$path=!empty($path)&&'/'!=substr($path,-1,1)?$path.'/':$path;
$save_name=addslashes($file['name']);
if(!move_uploaded_file($file['tmp_name'],$path.$save_name)){
    WriteErrMsg('�ļ��ϴ������з�������,�������ϴ�');
}