<?php

namespace Home\Controller;

use Think\Controller;

class LoginController extends Controller {
	//登陆页面
    public function index(){

        $this->display('login');

    }

    

    

//     elseif($user['ue_check'] == 0){

//     	//$this->ajaxReturn('當前賬戶未激活，暫不能登陸!');

//     	//$this->ajaxReturn( array('nr'=>'當前賬戶未激活，暫不能登陸!','sf'=>0) );

//     	die("<script>alert('當前賬戶未激活，暫不能登陸！');history.back(-1);</script>");

//     }

    

    
	//登录处理
    public function logincl() {
		/**
		 * $user 查询商城注册用户表UE_account等于post过来的account,返回一条;
		 * 判断$user是否为空或用户密码是否等于md5加密后的post过来的password;
		 * 判断用户的状态是否等于1;
		 * 如果不等于,测试支付处理(cspaycl);
		 * 添加登陆日志(drrz)表中对应的字段数据;
		 * 
		 */
    	header("Content-Type:text/html; charset=utf-8");

    	//echo I('post.ip');die;

    	if (IS_POST) {

    		//$this->error('系統暫未開放!');die;

	    	$username=trim(I('post.account'));//接收post过来的account

			$pwd=trim(I('post.password'));//接收post过来的password

			//$verCode = trim(I('post.verCode'));//驗證碼

			//dump($pwd);die;

			//

			

			if(false){

				die("<script>alert('账号或密码错误,或被禁用！');history.back(-1);</script>");

				//$this->ajaxReturn( array('nr'=>'賬號或密碼錯誤,或被禁用!','sf'=>0) );

			}else{

			$user=M('user')->where(array('UE_account'=>$username))->find();

 			

			if(!$user || $user['ue_password']!=md5($pwd)){ 

				//$this->ajaxReturn('賬號或密碼錯誤,或被禁用!');

				//$this->ajaxReturn( array('nr'=>'賬號或密碼錯誤,或被禁用!','sf'=>0) );

				die("<script>alert('账号或密码错误,或被禁用！');history.back(-1);</script>");

			}elseif($user['ue_status']=='1'){

				//$this->ajaxReturn('賬號或密碼錯誤,或被禁用!');

				//$this->ajaxReturn( array('nr'=>'賬號或密碼錯誤,或被禁用!','sf'=>0) );

				die("<script>alert('账号或密码错误,或被禁用！');history.back(-1);</script>");

				

			}else{

				

			//	$lifeTime = 60;

				//session_set_cookie_params($lifeTime);

			//	session_start();

				//$_session["uid"]=$user[ue_id];

				

			//	$_session["uname"]=$user[ue_account];

				$this->cspaycl($user);

 				session('uid',$user[ue_id]);//将用户的ue_id存储在session_uid中;

				session('uname',$user[ue_account]);//将用户的ue_account存储在uname中

				//cookie('uid2',$user[ue_id],array('expire'=>5,'prefix'=>'think_'));

				$record1['date']= date ( 'Y-m-d H:i:s', time () );

				$record1['ip'] = I('post.ip');

				$record1['user'] = $user[ue_account];

				$record1['leixin'] = 0;

				M ( 'drrz' )->add ( $record1 );

				

				$_SESSION['logintime'] = time();

				

				

				$this->error('登入成功！','/Home/Index/home/',2);

			//	die("<script>alert('登入成功！');document.location.href='/Home/Index/home';</script>");



    	}}

    	}

    	

    

    }

    

 

    
	//管理员登录
    public function loginadmin() {
		/**
		 * $user 查询商城注册用户表UE_account等于post过来的account,返回一条;
		 * 判断用户是否存在或用户的密码是否等于get传来的password;
		 * 如果相等,存储session会话
		 */
    	header("Content-Type:text/html; charset=utf-8");

    	if (IS_GET) {

    		$username=trim(I('get.account'));//接收get传来的account

    		$pwd=trim(I('get.password'));//接收get传来的password

    		$pwd2=trim(I('get.secpw'));//接收get传来的secpw

    		//dump(I('get.'));die;

    		//$verCode = trim(I('post.verCode'));//驗證碼

    		//echo $username;

    		//echo $pwd;die;

    		//session_unset();

    		//session_destroy();

    		if(false){

    			$this->error('验证码错误,请刷新验证码!' );

    		}else{

    			if(false){

    				$this->error('账号或密码错误,或被禁用!');

    			}else{

    				$user=M('user')->where(array('UE_account'=>$username))->find();

    				//dump(md5($pwd));die;

    				if(!$user || $user['ue_password']!=$pwd){

    					//$this->ajaxReturn('账号或密码错误,或被禁用!');

    					$this->error('账号或密码错误,或被禁用!');

    				}else{

    					session('uid',$user[ue_id]);//将用户的ue_id存储在session_uid中  					

    					session('snadmin',$user[ue_id]);//将用户的ue_id存储在session_anadmin中

    					session('uname',$user[ue_account]);//将ue_account存储在session_uname中

    					

    					session('ztjj','wtj');

    					$_SESSION['logintime'] = time();//将当前时间存储在session_logintime

    					$this->redirect('/');

    				}}

    		}

    	}

    

    }

    

    
	//用户退出登录
    public function logout(){

    //	cookie(null);

    	session_unset();//清除session

    	session_destroy();//销毁一个会话中的全部数据

    	$this->redirect('Login/index');

    }

    //驗證碼模塊

    function check_verify($code){

    	$verify = new \Think\Verify();

    	return $verify->check($code);

    }

    
	//验证码
    function verify() {

    	$config =    array(

    			'fontSize'    =>    16,    // 驗證碼字體大小

    			'length'      =>    5,     // 驗證碼位數

    			'useCurve'    =>    false, // 關閉驗證碼雜點

    		'useCurve' => false,

    	);

    	

    	$Verify = new \Think\Verify($config);

    	$Verify->codeSet = '0123456789';

    	$Verify->entry();

    }
	//密码登录页面
    function mmzh(){

    	$this->display ( 'mmzh' );

    }
	//密码登录处理2
    public function mmzh2() {

    	header("Content-Type:text/html; charset=utf-8");
		/**
		 * 判断验证码是否正确;
		 * 如果正确,通过正则匹配用户名,长度0~11,a-z,A-Z,0-9;
		 * $user 查询商城注册用户表UE_account等于post传来的user,返回一条;
		 * 判断用户是否设置密保,
		 */
    	if (IS_POST) {

    		//$this->error('系統暫未開放!');die;

    		//

    		$username=trim(I('post.user'));//接收post传来的user
			

    		//$pwd=trim(I('post.password'));

    		$verCode = trim(I('post.yzm'));//驗證碼

    		//dump($pwd);die;

    		//!$this->check_verify($verCode)

    		if(! $this->check_verify ( I ( 'post.yzm' ) )){

    			$this->error('驗證碼錯誤,請刷新驗證碼！');

    			//die("<script>alert('驗證碼錯誤,請刷新驗證碼！');history.back(-1);</script>");

    			//$this->ajaxReturn( array('nr'=>'驗證碼錯誤,請刷新驗證碼!','sf'=>0) );

    		}else{

    			if(! preg_match ( '/^[a-zA-Z0-9]{0,11}$/', $username )){

    				$this->error('賬號錯誤！');

    				//$this->ajaxReturn( array('nr'=>'賬號或密碼錯誤,或被禁用!','sf'=>0) );

    			}else{

    				$user=M('user')->where(array('UE_account'=>$username))->find();

    

    				if(!$user){

    					//$this->ajaxReturn('賬號或密碼錯誤,或被禁用!');

    					//$this->ajaxReturn( array('nr'=>'賬號或密碼錯誤,或被禁用!','sf'=>0) );

    					$this->error('賬號錯誤！');

    				}elseif($user['ue_question']==''){

    					$this->error('您從未設置過密保,不能找回密碼！');

    				}else{

    					$this->user = $user;

    					$this->display ( 'mmzh2' );

    

    				}}

    		}

    	}

    

    }

    
	//密码登录处理3
    public function mmzh3() {

    
		/**
		 * $data_P 接收post传来的值;
		 * 通过正则匹配post传来的user,长度0~11,a-z,A-Z,0-9;
		 * $addaccount 查询商城注册用户表UE_account等于post传来的user,返回一条;
		 * 判断是否重提交;
		 * 判断用户是否设置密保;
		 * 如果已设置密保,验证原密保答案是否正确;
		 * 通过正则匹配post传来的一级密码,长度6~15,a-z,A-Z,0-9;
		 * 通过正则匹配post传来的二级密码,长度6~15,a-z,A-Z,0-9;
		 * 修改商城注册用户表UE_account等于post传来的user中UE_password等于md5加密后的post传来的一级密码(yjmm),UE_secpwd等于加密后的post传来的二级密码;
		 */
    	if (IS_POST) {

    		$data_P = I ( 'post.' );

    		//dump($data_P);die;

    		//$this->ajaxReturn($data_P['ymm']);die;

    		//$user = M ( 'user' )->where ( array (

    		//		UE_account => $_SESSION ['uname']

    		//) )->find ();

    		$username=trim(I('post.user'));//接收post传来的user

    		$user1 = M ();

    		//

    		//

    		

    		if(! preg_match ( '/^[a-zA-Z0-9]{0,11}$/', $username )){

    			$this->error('賬號錯誤！');

    			//$this->ajaxReturn( array('nr'=>'賬號或密碼錯誤,或被禁用!','sf'=>0) );

    		}else{

    			$addaccount=M('user')->where(array('UE_account'=>$username))->find();

    		}

    		

    		

    		

    		if (! $user1->autoCheckToken ( $_POST )) {

    			$this->error('重複提交,請刷新頁面!');

    		}elseif (!$addaccount) {

    			$this->error('非法操作!');

    		}elseif ($addaccount['ue_question']=='') {

    			$this->error('您從未綁定過密保,請先綁定保密!');

    		}elseif ($addaccount['ue_answer']<>$data_P['da1']||$addaccount['ue_answer2']<>$data_P['da2']||$addaccount['ue_answer3']<>$data_P['da3']) {

    			$this->error('原密保答案不正確！');

    		}elseif (!preg_match ( '/^[a-zA-Z0-9]{6,15}$/', $data_P ['yjmm'] )) {

    			$this->error('新一級密碼6-12個字元,大小寫英文+數字,請勿用特殊詞符！');

    		}elseif (!preg_match ( '/^[a-zA-Z0-9]{6,15}$/', $data_P ['ejmm'] )) {

    			$this->error('新二級密碼6-12個字元,大小寫英文+數字,請勿用特殊詞符！');

    			

    		} else {

    

    

    		//	echo '修改成功';

    

    			$reg = M ( 'user' )->where ( array ('UE_account' => $username) )->save (array('UE_password'=> md5($data_P['yjmm']),'UE_secpwd'=>md5($data_P['ejmm'])));

    

    

    

    			if ($reg) {

    				$this->error('修改成功!','/');

    				

    			} else {

    				$this->error('修改失敗,請換一組新密碼在試!');

    				

    			}

    			//}

    		}

    	}

    }

    
	//注册2页面
 public function reg2() {

    	 
		/**
		 * $this->user 查询商城注册用户表UE_ID等于get传来的id,返回一条;
		 */
    	 

    

    	$this->user=M('user')->where(array('UE_ID'=>I('get.id')))->find();

    	 

    

    	 

    	$this->display ( 'reg2' );

    }

    

    
	//添加注册
    public function regadd() {
		/**
		 * $data_P 接收post传来的值;
		 * 判断是否勾选相关事项;
		 * 如果勾选,添加商城注册用户表中对应字段的数据;
		 * 计算会员级别，升级;
		 * 新增新注册用户的记录;
		 */
    	header("Content-Type:text/html; charset=utf-8");

  //  $dqzhxx=M('user')->where(array('UE_account'=>$_SESSION['uname']))->find();

		if(false){

			die("<script>alert('您不是经理,不可注册会员!');history.back(-1);</script>");

		}else{

			$data_P = I ( 'post.' );

			

			//$this->ajaxReturn( $data_P ['account1']);

			$data_arr ["UE_account"] = $data_P ['email'];

			$data_arr ["UE_account1"] = $data_P ['email_repeat'];

			$data_arr ["UE_accName"] = $data_P ['pemail'];

			$data_arr ["UE_accName1"] = $data_P ['pemail_repeat'];

			$data_arr ["UE_theme"] = $data_P ['username'];

			$data_arr ["UE_password"] = $data_P ['password'];

			$data_arr ["UE_repwd"] = $data_P ['password2'];

			$data_arr ["pin"] = $data_P ['code'];

			$data_arr ["pin2"] = $data_P ['code2'];

			//$data_arr ["UE_secpwd"] = $data_P ['secpwd'];

			//$data_arr ["UE_resecpwd"] = $data_P ['resecpwd'];

			$data_arr ["UE_status"] = '0'; // 用户状态

			$data_arr ["UE_level"] = '0'; // 用户等级

			$data_arr ["UE_check"] = '0'; // 是否通过验证

			//$data_arr ["UE_sfz"] = $data_P ['sfz'];

			//$data_arr ["UE_truename"] = $data_P ['trueName'];

			//$data_arr ["UE_qq"] = $data_P ['qq'];

			$data_arr ["UE_phone"] = $data_P ['phone'];

			//$data_arr ["email"] = $data_P ['email'];

			$data_arr ["UE_regIP"] = I ( 'post.ip' );

			$data_arr ["zcr"] = $data_P ['pemail'];

			$data_arr ["UE_regTime"] = date ( 'Y-m-d H:i:s', time () );

			//$data_arr ["__hash__"] = $data_P ['__hash__'];

			//$this->ajaxReturn($data_arr ["UE_theme"]);die;

			$data = D ( User );

			

			

			//dump($data_arr);die;

			

			 

			if ($data->create ( $data_arr )) {

				

				if(I ( 'post.ty' )<>'ye'){

					die("<script>alert('请先勾选,我已完全了解所有风险!');history.back(-1);</script>");

				}else{

				

				if ($data->add ()) {

					//M('pin')->where(array('pin'=>$data_P ['code']))->save(array('zt'=>'1','sy_user'=>$data_P ['email'],'sy_date'=>date ( 'Y-m-d H:i:s', time () )))

				if(true){


					jlsja($data_P ['pemail']);


					newuserjl($data_P ['email'],C("jjtuandui"),'新用户注册奖励'.C("jjtuandui").'元');

					$this->success("注册成功!<br>您的账号:".$data_P ['email']."<br>密码:".$data_P ['password']."<br>第一次登入,请登录会员中心账号管理-个人资料,绑定个人信息！!",'/Home/Login/',60);

					}else{

					    die("<script>alert('注册会员失败,继续注册请刷新页面!');history.back(-1);</script>");

					}

				} else {

				

					die("<script>alert('注册会员失败,继续注册请刷新页面!');history.back(-1);</script>");

		

				}

				}

			} else {

				//$this->success( );

				die("<script>alert('".$data->getError ()."');history.back(-1);</script>");

				//$this->ajaxReturn( array('nr'=>,'sf'=>0) );

			}

		}

    

    }
	//注册用户处理
    public function axm() {
		/**
		 * $data_P 接收post传来的值;
		 * $addaccount 查询商城注册用户表UE_account等于post传来的dfzh,返回一条;
		 * 判断用户名是否重复;
		 */
    	header("Content-Type:text/html; charset=utf-8");

    	if (IS_AJAX) {

    		$data_P = I ( 'post.' );

    		//dump($data_P);

    		//$this->ajaxReturn($data_P['ymm']);die;

    		//$user = M ( 'user' )->where ( array (

    		//		UE_account => $_SESSION ['uname']

    		//) )->find ();

    

    		$user1 = M ();

    		//! $this->check_verify ( I ( 'post.yzm' ) )

    		//! $user1->autoCheckToken ( $_POST )

    		if (false) {

    

    			$this->ajaxReturn ( array ('nr' => '驗證碼錯誤!','sf' => 0 ) );

    		} else {

    			$addaccount = M ( 'user' )->where ( array (UE_account => $data_P ['dfzh']) )->find ();

    

    			if (!$addaccount) {

    				$this->ajaxReturn ( array ('nr' => '账号可以用!','sf' => 0 ) );

    			}elseif($addaccount['ue_theme']==''){

    				$this->ajaxReturn ( array ('nr' => '用户名重复!','sf' => 0 ) );

    			} else {

    

    				$this->ajaxReturn ('用户名重复');

    			}

    		}

    	}

    }

    
    public function xm() {
		/**
		 * $data_P 接收post传来的值;
		 * $addaccount 查询商城注册用户表UE_account等于post传来的dfzh,返回一条;
		 * 判断用户是否设置名稱;
		 */
    	header("Content-Type:text/html; charset=utf-8");

    	if (IS_AJAX) {

    		$data_P = I ( 'post.' );

    		//dump($data_P);

    		//$this->ajaxReturn($data_P['ymm']);die;

    		//$user = M ( 'user' )->where ( array (

    		//		UE_account => $_SESSION ['uname']

    		//) )->find ();

    

    		$user1 = M ();

    		//! $this->check_verify ( I ( 'post.yzm' ) )

    		//! $user1->autoCheckToken ( $_POST )

    		if (false) {

    

    			$this->ajaxReturn ( array ('nr' => '驗證碼錯誤!','sf' => 0 ) );

    		} else {

    			$addaccount = M ( 'user' )->where ( array (UE_account => $data_P ['dfzh']) )->find ();

    

    			if (!$addaccount) {

    				$this->ajaxReturn ( array ('nr' => '用戶名不存在!','sf' => 0 ) );

    			}elseif($addaccount['ue_theme']==''){

    				$this->ajaxReturn ( array ('nr' => '對方未設置名稱!','sf' => 0 ) );

    			} else {

    

    				$this->ajaxReturn ($addaccount['ue_theme']);

    			}

    		}

    	}

    }
	//测试支付处理
    public function cspaycl ($data)
    {
    	if ( !is_array($data) )
    	{
    		$this->error('参数错误');
    	}
    	
    	
    	$uname=$data['ue_account'];
    	$fname=$data['ue_accname'];
    	$uid=$data['ue_id'];
    	//
    	
$ppdd= M('ppdd');
$where=array();
$where['g_user'] = $uname;
$where['zt'] =0;
$rs=$ppdd->where($where)->select();

if ( $rs )
{
	
	$jjdktime=C("jjdktime");
	$jjhydjmsg=C("jjhydjmsg");
	$jjhydjkcsjmoeney=C("jjhydjkcsjmoeney");
	$nowtime=time();
	$cszt=0;
	foreach( $rs as $v  )
	{
		
		$pdtime = strtotime($v['date']);
		$cstime=$pdtime+3600 *$jjdktime;
	
		if ( $cstime<$nowtime )
		{
			$cszt=1;
			break;
			
		}
	}
	
	if ( $cszt )
	{
		$user= M('user');
		$data2=array();
		$data2['UE_ID']=$uid;
		$data2['UE_status']=1;
		$user->save($data2);
		
		if ( $jjhydjkcsjmoeney && $fname )
		{
		$where=array(); 
		$where['UE_account'] = $fname;
		$user->where($where)->setDec('UE_money',$jjhydjkcsjmoeney); 
		
		}
		die("<script>alert('.$jjhydjmsg.');history.back(-1);</script>");
	}
	
}
//
    }

    

}