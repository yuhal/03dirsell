<?php 
if(!empty($_GET[submit])) 
{ 
$path="uploadfiles/pic/"; //�ϴ�·�� 
//echo $_FILES["filename"]["type"]; 

if(!file_exists($path)) 
{ 
//����Ƿ��и��ļ��У����û�оʹ��������������Ȩ�� 
mkdir("$path", 0700); 
}//END IF 

//�����ϴ����ļ���ʽ 
$tp = array("image/gif","image/pjpeg","image/png"); 
//����ϴ��ļ��Ƿ��������ϴ������� 

if(!in_array($_FILES["filename"]["type"],$tp)) 
{ 
echo "��ʽ����"; 
exit; 
}//END IF 

if($_FILES["filename"]["name"]) 
{ 
$file1=$_FILES["filename"]["name"]; 
$file2 = $path.time().$file1; 
$flag=1; 
}//END IF 

if($flag) $result=move_uploaded_file($_FILES["filename"]["tmp_name"],$file2); 

//�ر�ע�����ﴫ�ݸ�move_uploaded_file�ĵ�һ������Ϊ�ϴ����������ϵ���ʱ�ļ� 
if($result) 
{ 
//echo "�ϴ��ɹ�!".$file2; 
echo "<script language='javascript'>"; 
echo "alert(\"�ϴ��ɹ���\");"; 
//echo " location='add_aaa.php?pname=$file2'"; 
echo "</script>"; 

echo("<input type=\"button\" name=\"Submit\" value=\"ȷ��\" onClick=\"window.opener.setFile('".$file2."');window.close();\">");
echo "ͼƬ���ƣ�".$file2;
}//END IF 

} else {
echo "file is null!";
}
?>