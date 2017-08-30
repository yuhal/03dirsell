<?php

namespace Home\Controller;

use Think\Controller;

class CommonController extends Controller {
	
	public function _initialize() {
		header("Content-Type:text/html; charset=utf-8");
        $czmcsy = CONTROLLER_NAME . ACTION_NAME;//当前访问的控制器+方法
		$czmc = ACTION_NAME;//当前访问的方法
		//echo $czmc;die;
		
		
		//判断当前的管理员用户session信息是否存在	
		if (! isset ( $_SESSION ['adminuser'] )) {
			// $this->error('請先登錄!',U('Login/index'));
			
			$this->success('請先登錄','/admin.php/Home/Login');
			die;
		}
		//判断管理员的权限是否等于1
		if($_SESSION ['adminqx']<>'1'){
				
			if($czmc<>'main'&&$czmc<>'df1'&&$czmc<>'top'&&$czmc<>'left'&&$czmc<>'userlist'&&$czmc<>'team'&&$czmc<>'rggl'&&$czmc<>'getTreeso'&&$czmc<>'getTree'&&$czmc<>'get_childs'&&$czmc<>'getTreeInfo'&&$czmc<>'getTreeBaseInfo'&&$czmc<>'userbtc'&&$czmc<>'jbzs'){
				$this->error('您暂无权限操作!','/admin.php/Home/Index/df1');die;
				//echo '无权限';
			}
				
		}
		
		
		$this->checkAdminSession();
	
	//	$_SESSION['user_jb'] = 1;
	//	static $user_jb = "safsdf";
		// echo $_COOKIE['url'];die;
		

	}
	//检查管理员session的时间
	public function checkAdminSession() {
		//设置超时为10分
		$nowtime = time();
		$s_time = $_SESSION['logintime'];
		if (($nowtime - $s_time) > 6000000) {
		session_unset();
    	session_destroy();
			$this->error('当前用户登录超时，请重新登录', U('/admin.php/Home/Login/'));
		} else {
			$_SESSION['logintime'] = $nowtime;
		}
	}
	//判断验证码是否正确
	function check_verify($code) {
		$verify = new \Think\Verify ();
		return $verify->check ( $code );
	}
	
	//得到上级及多级的信息
	public function getTreeBaseInfo($id) {
		if (! $id)
			return;
		//查询商城注册用户表UE_account等于当前id,返回一条;
		$r = M ( "user" )->where ( array (
				'UE_account' => $id 
		) )->find ();
		if ($r)
			return array (
					"id" => $r ['ue_account'],
					"pId" => $r ['ue_accname'],
					"name" => $r ['ue_account'] . "[" .sfjhff($r['ue_check']).",". $r ['ue_truename'] . "," . $r ['ue_activetime'] . "]" 
			);
		return;
	}
	//奖励金
	function jlj3($a,$b,$c,$d,$e){
		//查询商城注册用户表UE_account等于$a,返回一条;
		$tgbz_user_xx=M('user')->where(array('UE_account'=>$a))->find();
		//查询提供帮助表id等于$e,返回一条;
		$ppddxx=M('tgbz')->where(array('id'=>$e))->find();		
		//查询提供帮助表id等于$e,返回一条;
		$peiduidate=M('tgbz')->where(array('id'=>$e))->find();
		
		$data2['user']=$a;
		$data2['r_id']=$ppddxx['id'];
		$data2['date']=$peiduidate['date'];
		$data2['note']='推荐奖'.C("jjtuijianrate").'%';
		$data2['jb']=$ppddxx['jb'];
		$data2['jj']=$b;
		$data2['leixin']=1;
		$data2['ds']=$d;
		M('user_jl')->add($data2);
		//添加用户提供帮助记录对应字段的数据
		return $tgbz_user_xx['zcr'];
	}
	//根据$id得到层级信息
	public function getTreeInfo($id) {
						
		static $trees = array ();
		$ids = self::get_childs ( $id );
		if (! $ids){
			return $trees;
		}

		$_SESSION['user_jb']++;
		//echo $_SESSION['user_jb'].'<br>';
		foreach ( $ids as $v ) {
			
			$trees [] = $this->getTreeBaseInfo ( $v );
			$this->getTreeInfo ( $v );
		
		}
		//if($_SESSION['user_jb']<'10'){
		
		
		//

		return $trees;
	}
	//得到下级
	public static function get_childs($id) {

		if (! $id)
			return null;
		
		$childs_id = array ();
		//查询商城注册用户表UE_accName等于$id,返回字段UE_account的信息;
		$childs = M ( "user" )->field ( "UE_account" )->where ( array (
				'UE_accName' => $id 
		) )->select ();
		
		foreach ( $childs as $v ) {
			$childs_id [] = $v ['ue_account'];
		}
		
		if ($childs_id)
			return $childs_id;
		return 0;
	}
	//得到层级信息
	public function getTree() {
		// if (!$this->uid) {
		//echo json_encode(array("status" => 1));
		
		// return ;
		// }
		//判断post传来的user1是否等于0
		if(I('post.user1')<>'0'){
			$getuser = I('post.user1');
		}else{
			$getuser = 'admin@qq.com';
		}
		//echo json_encode ( array ("status" => 1,"data" => $getuser ) );die;
		$base = $this->getTreeBaseInfo ( $getuser );
		$znote = $this->getTreeInfo ($getuser);
		$znote [] = $base;
		// dump($znote);die;
		/*
		 * $znote = array(array("id" => 1, "pId" => 0, "name"=>"1000001"), array("id" => 2, "pId" => 1, "name"=>"1000002"), array("id" => 3, "pId" => 2, "name"=>"1000003"), array("id" => 5, "pId" => 2, "name"=>"1000003"), array("id" => 4, "pId" => 1, "name"=>"1000004") );
		 */
		
		echo json_encode ( array ("status" => 0,"data" => $znote ) );
	}
	
	public function getTreeso() {
		/**
		 * 判断post传来的user是否等于空
		 * 正则匹配post传来的user,长度1,120,a-z,A-Z,0-9;
		 */
		if(I('post.user')<>''){
		
		if(! preg_match ( '/^[a-zA-Z0-9@.]{1,120}$/', I('post.user') )){
			
			echo json_encode ( array ("status" => 1,"data" => '用戶名格式不對!' ) );
			
		}else{
		//查询商城注册用户表UE_account等于post传来的user,返回一条;
		if(!M('user')->where(array('UE_account'=>I('post.user')))->find()){
			echo json_encode ( array ("status" => 1,"data" => '用戶不存在!' ) );
		}else{
			 
			
						$base = $this->getTreeBaseInfo ( I('post.user') );
		$znote = $this->getTreeInfo ( I('post.user') );
		$znote [] = $base;
		echo json_encode ( array ("status" => 0,"data" => $znote ) );
			
		
		}
		}
		}else{
			
			//echo json_encode ( array ("status" => 0,'nr'=>I('post.user')) );die;
			// if (!$this->uid) {
			// echo json_encode(array("status" => 1));
			// return ;
			// }
			//die;
			$base = $this->getTreeBaseInfo ('admin@qq.com');
			$znote = $this->getTreeInfo ('admin@qq.com');
			$znote [] = $base;
			// dump($znote);die;
			/*
			 * $znote = array(array("id" => 1, "pId" => 0, "name"=>"1000001"), array("id" => 2, "pId" => 1, "name"=>"1000002"), array("id" => 3, "pId" => 2, "name"=>"1000003"), array("id" => 5, "pId" => 2, "name"=>"1000003"), array("id" => 4, "pId" => 1, "name"=>"1000004") );
			*/
			
			echo json_encode ( array ("status" => 0,"data" => $znote ) );
			
		}
	}
	
	
	
	//上传图片
	public function uploadFace() {
	
		//if (!$this->isPost()) {
		//	$this->error('页面不存在');
		//}
		//echo 'asdfsaf';die;
		$upload = $this->_upload('Pic');
		$this->ajaxReturn($upload);
	}
	
	
	
	
	//上传
	Private function _upload ($path) {
		import('ORG.Net.UploadFile');	//引入ThinkPHP文件上传类
		$obj = new \Think\Upload();	//实例化上传类
		$obj->maxSize = 2000000;	//图片最大上传大小
		$obj->savePath =  $path . '/';	//图片保存路径
		$obj->saveRule = 'uniqid';	//保存文件名
		$obj->uploadReplace = true;	//覆盖同名文件
		$obj->allowExts = array('jpg','jpeg','png','gif');	//允许上传文件的后缀名
	
		$obj->autoSub = true;	//使用子目录保存文件
		$obj->subType = 'date';	//使用日期为子目录名称
		$obj->dateFormat = 'Y_m';	//使用 年_月 形式
		//$obj->upload();die;
		$info   =   $obj->upload();
		if (!$info) {
			return array('status' => 0, 'msg' => $obj->getErrorMsg());
		} else {
			foreach($info as $file){
				$pic = $file['savepath'].$file['savename'];
			}
			//$pic =  $info[0][savename];
			//echo $pic;die;
			return array(
					'status' => 1,
					'path' => $pic
			);
		}
	}
	
	
}