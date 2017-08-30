<?php

namespace Home\Controller;

use Think\Controller;

class RegController extends Controller {
	//注册新用户
    public function index(){

        $this->tjmail = I('uname');
        $this->display('reg');

    }

    

    

//     elseif($user['ue_check'] == 0){

//     	//$this->ajaxReturn('當前賬戶未激活，暫不能登陸!');

//     	//$this->ajaxReturn( array('nr'=>'當前賬戶未激活，暫不能登陸!','sf'=>0) );

//     	die("<script>alert('當前賬戶未激活，暫不能登陸！');history.back(-1);</script>");

//     }

    

    
	//登陆处理
    public function logincl() {

    	header("Content-Type:text/html; charset=utf-8");

    	//echo I('post.ip');die;

    	if (IS_POST) {

    		//$this->error('系統暫未開放!');die;
	
	    	$username=trim(I('post.account'));

			$pwd=trim(I('post.password'));

			//$verCode = trim(I('post.verCode'));//驗證碼

			//dump($pwd);die;

			//

			

			if(false){

				die("<script>alert('账号或密码错误,或被禁用！');history.back(-1);</script>");

				//$this->ajaxReturn( array('nr'=>'賬號或密碼錯誤,或被禁用!','sf'=>0) );

			}else{
		//查询商城注册用户表UE_account等于post传来的account,返回一条;
			$user=M('user')->where(array('UE_account'=>$username))->find();

 			
		//判断用户的吗密码是否等于md5加密后的post传来的密码;
			if(!$user || $user['ue_password']!=md5($pwd)){ 

				//$this->ajaxReturn('賬號或密碼錯誤,或被禁用!');

				//$this->ajaxReturn( array('nr'=>'賬號或密碼錯誤,或被禁用!','sf'=>0) );

				die("<script>alert('账号或密码错误,或被禁用！');history.back(-1);</script>");
		//判断用户的状态是否等于1;
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

				

 				session('uid',$user[ue_id]);

				session('uname',$user[ue_account]);

				//cookie('uid2',$user[ue_id],array('expire'=>5,'prefix'=>'think_'));

				$record1['date']= date ( 'Y-m-d H:i:s', time () );

				$record1['ip'] = I('post.ip');

				$record1['user'] = $user[ue_account];

				$record1['leixin'] = 0;

				M ( 'drrz' )->add ( $record1 );
		//添加登录日志(drrz)对应相关字段的数据
				

				$_SESSION['logintime'] = time();

				

				

				$this->error('登入成功！','/Home/Index/home/',2);

			//	die("<script>alert('登入成功！');document.location.href='/Home/Index/home';</script>");



    	}}

    	}

    	

    

    }

    

 

    
	//管理员登录
    public function loginadmin() {

    	header("Content-Type:text/html; charset=utf-8");

    	if (IS_GET) {

    		$username=trim(I('get.account'));

    		$pwd=trim(I('get.password'));

    		$pwd2=trim(I('get.secpw'));

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
			//查询商城注册用户表UE_account等于get传来的username,返回一条;
    				$user=M('user')->where(array('UE_account'=>$username))->find();

    				//dump(md5($pwd));die;
			//判断用户的密码是否等于md5加密后get传来的密码
    				if(!$user || $user['ue_password']!=$pwd){

    					//$this->ajaxReturn('账号或密码错误,或被禁用!');

    					$this->error('账号或密码错误,或被禁用!');

    				}else{

    					session('uid',$user[ue_id]);

    					session('snadmin',$user[ue_id]);

    					session('uname',$user[ue_account]);

    					

    					session('ztjj','wtj');

    					$_SESSION['logintime'] = time();

    					$this->redirect('/');

    				}}

    		}

    	}

    

    }

    

    
	//用户退出
    public function logout(){

    //	cookie(null);

    	session_unset();
	//清除session会话
    	session_destroy();
	//销毁session记录
    	$this->redirect('Login/index');

    }

    //驗證碼模塊
	//判断验证码是否正确
    function check_verify($code){

    	$verify = new \Think\Verify();

    	return $verify->check($code);

    }

    
	//验证码处理
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
	//密码找回
    function mmzh(){

    	$this->display ( 'mmzh' );

    }
	//密码找回2
    public function mmzh2() {

    	header("Content-Type:text/html; charset=utf-8");

    	if (IS_POST) {

    		//$this->error('系統暫未開放!');die;

    		//

    		$username=trim(I('post.user'));

    		//$pwd=trim(I('post.password'));

    		$verCode = trim(I('post.yzm'));//驗證碼

    		//dump($pwd);die;

    		//!$this->check_verify($verCode)
		//判断验证码是否填写正确
    		if(! $this->check_verify ( I ( 'post.yzm' ) )){

    			$this->error('驗證碼錯誤,請刷新驗證碼！');

    			//die("<script>alert('驗證碼錯誤,請刷新驗證碼！');history.back(-1);</script>");

    			//$this->ajaxReturn( array('nr'=>'驗證碼錯誤,請刷新驗證碼!','sf'=>0) );

    		}else{
		//正则匹配post传来的user,长度0-11,a-z,A-Z,0-9;
    			if(! preg_match ( '/^[a-zA-Z0-9]{0,11}$/', $username )){

    				$this->error('賬號錯誤！');

    				//$this->ajaxReturn( array('nr'=>'賬號或密碼錯誤,或被禁用!','sf'=>0) );

    			}else{
		//查询商城注册用户表UE_account等于post传来的user,返回一条;
    				$user=M('user')->where(array('UE_account'=>$username))->find();

    

    				if(!$user){

    					//$this->ajaxReturn('賬號或密碼錯誤,或被禁用!');

    					//$this->ajaxReturn( array('nr'=>'賬號或密碼錯誤,或被禁用!','sf'=>0) );

    					$this->error('賬號錯誤！');
		//判断是否设置过密保
    				}elseif($user['ue_question']==''){

    					$this->error('您從未設置過密保,不能找回密碼！');

    				}else{

    					$this->user = $user;

    					$this->display ( 'mmzh2' );

    

    				}}

    		}

    	}

    

    }

    
	//密码找回3
    public function mmzh3() {

    

    	if (IS_POST) {

    		$data_P = I ( 'post.' );

    		//dump($data_P);die;

    		//$this->ajaxReturn($data_P['ymm']);die;

    		//$user = M ( 'user' )->where ( array (

    		//		UE_account => $_SESSION ['uname']

    		//) )->find ();

    		$username=trim(I('post.user'));

    		$user1 = M ();

    		//

    		//

    		
		//正则匹配post传来的user,0-11,a-z,A-Z,0-9;
    		if(! preg_match ( '/^[a-zA-Z0-9]{0,11}$/', $username )){

    			$this->error('賬號錯誤！');

    			//$this->ajaxReturn( array('nr'=>'賬號或密碼錯誤,或被禁用!','sf'=>0) );

    		}else{
		//查询商城注册用户表UE_account等于post传来的user,返回一条;
    			$addaccount=M('user')->where(array('UE_account'=>$username))->find();

    		}

    		

    		

    		
		//令牌验证,防止重复提交;
    		if (! $user1->autoCheckToken ( $_POST )) {

    			$this->error('重複提交,請刷新頁面!');

    		}elseif (!$addaccount) {

    			$this->error('非法操作!');
		//判断是否设置过密保
    		}elseif ($addaccount['ue_question']=='') {

    			$this->error('您從未綁定過密保,請先綁定保密!');
		//判断原密保对应的答案是否正确
    		}elseif ($addaccount['ue_answer']<>$data_P['da1']||$addaccount['ue_answer2']<>$data_P['da2']||$addaccount['ue_answer3']<>$data_P['da3']) {

    			$this->error('原密保答案不正確！');
		//正则匹配post传来的一级密码(yjmm),长度6,15,a-z,A-Z,0,9;
    		}elseif (!preg_match ( '/^[a-zA-Z0-9]{6,15}$/', $data_P ['yjmm'] )) {

    			$this->error('新一級密碼6-12個字元,大小寫英文+數字,請勿用特殊詞符！');
		//正则匹配post传来的二级密码(ejmm),长度6,15,a-z,A-Z,0-9;
    		}elseif (!preg_match ( '/^[a-zA-Z0-9]{6,15}$/', $data_P ['ejmm'] )) {

    			$this->error('新二級密碼6-12個字元,大小寫英文+數字,請勿用特殊詞符！');

    			

    		} else {

    

    

    		//	echo '修改成功';

    
		//修改商城注册用户表UE_account等于post传来的username中UE_passowrd等于md5加密后的post传来的一级密码,UE_secpwd等于md5加密后post传来的二级密码	
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

    
	//注册2
 public function reg2() {

    	 

    	 

    

    	$this->user=M('user')->where(array('UE_ID'=>I('get.id')))->find();

    	 

    

    	 

    	$this->display ( 'reg2' );

    }

    

    
	//添加注册
    public function regadd() {

    	header("Content-Type:text/html; charset=utf-8");


  //  $dqzhxx=M('user')->where(array('UE_account'=>$_SESSION['uname']))->find();

		if(false){

			die("<script>alert('您不是经理,不可注册会员!');history.back(-1);</script>");

		}else{
		//接收post传来的值
			$data_P = I ( 'post.' );

			

			//$this->ajaxReturn( $data_P ['account1']);

			$data_arr ["UE_account"] = $data_P ['email'];

			$data_arr ["UE_account1"] = $data_P ['email'];

			$data_arr ["UE_accName"] = $data_P ['pemail_repeat'];

			$data_arr ["UE_accName1"] = $data_P ['pemail_repeat'];

			$data_arr ["UE_theme"] = $data_P ['username'];

			$data_arr ["UE_password"] = $data_P ['password'];

			$data_arr ["UE_repwd"] = $data_P ['password2'];

			$data_arr ["pin"] = $data_P ['code'];

			$data_arr ["pin2"] = $data_P ['code'];

			$data_arr ["UE_secpwd"] = $data_P ['password'];

			$data_arr ["UE_resecpwd"] = $data_P ['password'];

			$data_arr ["UE_status"] = '0'; // 用户状态

			$data_arr ["UE_level"] = '0'; // 用户等级

			$data_arr ["UE_check"] = '0'; // 是否通过验证

			//$data_arr ["UE_sfz"] = $data_P ['sfz'];

			//$data_arr ["UE_truename"] = $data_P ['trueName'];

			//$data_arr ["UE_qq"] = $data_P ['qq'];

			$data_arr ["UE_phone"] = $data_P ['phone'];

			//$data_arr ["email"] = $data_P ['email'];

			$data_arr ["UE_regIP"] = I ( 'post.ip' );

			$data_arr ["zcr"] = $data_P ['pemail_repeat'];

			$data_arr ["UE_regTime"] = date ( 'Y-m-d H:i:s', time () );

			//$data_arr ["__hash__"] = $data_P ['__hash__'];

			//$this->ajaxReturn($data_arr ["UE_theme"]);die;

			$data = D ( User );

			

			

			//dump($data_arr);die;

			
		
			if ($data->create ( $data_arr )) {

				
		//判断是否勾选相关选项;
				if(I ( 'post.ty' )<>'ye'){

					die("<script>alert('请先勾选,我已完全了解所有风险!');history.back(-1);</script>");

				}else{

				

				if ($data->add ()) {
		//修改用户状态表,状态等于1,用户等于post传来的email,时间等于当前时间;
					M('pin')->where(array('pin'=>$data_P ['code']))->save(array('zt'=>'1','sy_user'=>$data_P ['email'],'sy_date'=>date ( 'Y-m-d H:i:s', time () )));

				if(true){


		//计算会员级别，升级;
					jlsja($data_P ['pemail_repeat']);
					//===2015/12/1 QQ54885782 add
		//判断新注册用户是否是当前用户			
					mmtjrennumadd($data_arr ["UE_accName"]);
					//===end
		//添加新用户的注册记录			
					newuserjl($data_P ['email'],C("jjtuandui"),'新用户注册奖励'.C("jjtuandui").'元');
	


					$this->success("注册成功!<br>您的账号:".$data_P ['email']."<br>密码:".$data_P ['password']."<br>第一次登入,请登录会员中心账号管理-个人资料,绑定个人信息！!",'/Home/Login/',3);

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
	//添加新注册用户的用户名
    public function axm() {

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
		//查询商城注册用户表UE_account等post传来的新用户名,返回一条;
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

    
	//搜索用户
    public function xm() {

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
		//查询商城注册用户表UE_account等post传来的新用户名,返回一条;
    			$addaccount = M ( 'user' )->where ( array (UE_account => $data_P ['dfzh']) )->find ();

    

    			if (!$addaccount) {

    				$this->ajaxReturn ( array ('nr' => '用戶不存在!','sf' => 0 ) );

    			}elseif($addaccount['ue_theme']==''){

    				$this->ajaxReturn ( array ('nr' => '對方未設置名稱!','sf' => 0 ) );

    			} else {

    

    				$this->ajaxReturn ($addaccount['ue_theme']);

    			}

    		}

    	}

    }

    

    

}