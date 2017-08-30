<?php

namespace Home\Controller;

use Think\Controller;

class MyuserController extends CommonController {
	// 首頁	
	public function index() {
		
		$suser = I ( 'post.user' );//接收post传来的user
	
		
		if($suser==''){//判断post传来的user是否为空;
			$map['UE_accName']=$_SESSION['uname'];
		}else{
			$map['UE_account']=$suser;
		}
		
		
		//////////////////----------
		$User = M ( 'user' ); // 實例化User對象
		
		
		$count = $User->where ( $map )->count (); // 查詢滿足要求的總記錄數
		//$page = new \Think\Page ( $count, 3 ); // 實例化分頁類 傳入總記錄數和每頁顯示的記錄數(25)
		
		$p = getpage($count,10);
				//$list 按每页10条倒序查询商品注册用户表UE_accName等于$_SESSION['uname'],UE_account等于post传来的user,返回全部;
		$list = $User->where ( $map )->order ( 'UE_ID DESC' )->limit ( $p->firstRow, $p->listRows )->select ();
		$this->assign ( 'list', $list ); // 賦值數據集
		$this->assign ( 'page', $p->show() ); // 賦值分頁輸出
		/////////////////----------------
		//dump($list);die;
				//$userData 查询商品注册用户表UE_id等于$_SESSION['uid'],返回一条;
		$userData = M ( 'user' )->where ( array (
				'UE_ID' => $_SESSION ['uid'] 
		) )->find ();
		$this->userData = $userData;
		$this->display ( 'wdzh' );
	}
	
		//返回记录
	public function fhjl() {
	
		$User = M ( 'userget' ); // 實例化User對象
	//	$suser = I ( 'post.user', '', '/^[a-zA-Z0-9]{6,12}$/' );
	
		$map ['UG_account'] = $_SESSION ['uname'];
		$map ['UG_dataType'] = 'fuhuojl';
	
		//dump($map ['UE_accName']);die;
	
		//	$map ['UG_dataType'] = array('IN',array('mrfh','tjj','kdj','mrldj','glj'));
	
		// 		if (! empty ( $date1 ) && ! empty ( $date2 )) {
		// 			$map ['UG_getTime'] = array (
		// 					array (
		// 							'gt',
		// 							$date1
		// 					),
		// 					array (
		// 							'lt',
		// 							$date2
		// 					),
		// 					'and'
		// 			);
		// 		}
	
		//$map  = array('tjj','kdj','glj');
		//	$map['UE_Faccount']  = $_SESSION ['uname']
		//$ljtc1 = M('userget')->where(array('UG_account'=>$_SESSION ['uname'],'UG_dataType'=>array('IN',$map)))->sum('UG_money');
	
		$count = $User->where ($map )->count (); // 查詢滿足要求的總記錄數
		$page = new \Think\Page ( $count, 20 ); // 實例化分頁類 傳入總記錄數和每頁顯示的記錄數(25)
	
		// $page->lastSuffix=false;
		$page->setConfig ( 'header', '<li class="rows">共<b>%TOTAL_ROW%</b>條記錄    第<b>%NOW_PAGE%</b>頁/共<b>%TOTAL_PAGE%</b>頁</li>' );
		$page->setConfig ( 'prev', '上一頁' );
		$page->setConfig ( 'next', '下一頁' );
		$page->setConfig ( 'last', '末頁' );
		$page->setConfig ( 'first', '首頁' );
		$page->setConfig ( 'theme', '%FIRST% %UP_PAGE% %LINK_PAGE% %DOWN_PAGE% %END% %HEADER%' );
		;
	
		$show = $page->show (); // 分頁顯示輸出
		// 進行分頁數據查詢 注意limit方法的參數要使用Page類的屬性
		$list = $User->where ($map)->order ( 'UG_ID DESC' )->limit ( $page->firstRow . ',' . $page->listRows )->select ();
		//	dump($list);die;
		$this->assign ( 'list', $list ); // 賦值數據集
		$this->assign ( 'page', $show ); // 賦值分頁輸出
	
			//userData 查询商城注册用户表UE_ID等于$_SESSION['uid'],返回一条;
		$userData = M ( 'user' )->where ( array (
				'UE_ID' => $_SESSION ['uid']
		) )->find ();
		$this->userData = $userData;
		$this->display ( 'fhjl' );
	}
	
	
		//一级会员
	public function yjhhy() {
	
		$User = M ( 'user' ); // 實例化User對象
		$suser = I ( 'post.user', '', '/^[a-zA-Z0-9]{6,12}$/' );//接收post传来的user，正则匹配长度6~12,a-z,A-Z,0-9;
	
		$map ['UE_accName'] = $_SESSION ['uname'];
		$map ['zcr'] = $_SESSION ['uname'];
		$map ['UE_theme'] = $_SESSION ['uname'];
		$map ['_logic'] = 'OR';
	
		//dump($map ['UE_accName']);die;
	
		//	$map ['UG_dataType'] = array('IN',array('mrfh','tjj','kdj','mrldj','glj'));
	
		// 		if (! empty ( $date1 ) && ! empty ( $date2 )) {
		// 			$map ['UG_getTime'] = array (
		// 					array (
		// 							'gt',
		// 							$date1
		// 					),
		// 					array (
		// 							'lt',
		// 							$date2
		// 					),
		// 					'and'
		// 			);
		// 		}
	
		//$map  = array('tjj','kdj','glj');
		//	$map['UE_Faccount']  = $_SESSION ['uname']
		//$ljtc1 = M('userget')->where(array('UG_account'=>$_SESSION ['uname'],'UG_dataType'=>array('IN',$map)))->sum('UG_money');
	
		$count = $User->where (array(array($map ),array('UE_check'=>1)))->count (); // 查詢滿足要求的總記錄數
		$page = new \Think\Page ( $count, 20 ); // 實例化分頁類 傳入總記錄數和每頁顯示的記錄數(25)
	
		// $page->lastSuffix=false;
		$page->setConfig ( 'header', '<li class="rows">共<b>%TOTAL_ROW%</b>條記錄    第<b>%NOW_PAGE%</b>頁/共<b>%TOTAL_PAGE%</b>頁</li>' );
		$page->setConfig ( 'prev', '上一頁' );
		$page->setConfig ( 'next', '下一頁' );
		$page->setConfig ( 'last', '末頁' );
		$page->setConfig ( 'first', '首頁' );
		$page->setConfig ( 'theme', '%FIRST% %UP_PAGE% %LINK_PAGE% %DOWN_PAGE% %END% %HEADER%' );
		;
	
		$show = $page->show (); // 分頁顯示輸出
		// 進行分頁數據查詢 注意limit方法的參數要使用Page類的屬性		
		$list = $User->where ( array(array($map ),array('UE_check'=>1)))->order ( 'UE_ID DESC' )->limit ( $page->firstRow . ',' . $page->listRows )->select ();
		//	dump($list);die;
		$this->assign ( 'list', $list ); // 賦值數據集
		$this->assign ( 'page', $show ); // 賦值分頁輸出
	
		//$userData 查询商城注册用户表UE_ID等于$_SESSION['uid'],返回一条;
		$userData = M ( 'user' )->where ( array (
				'UE_ID' => $_SESSION ['uid']
		) )->find ();
		$this->userData = $userData;
		$this->display ( 'yjhhy' );
	}
	
		//用户群页面
	public function xzzh() {
	
		//////////////////----------
		$User = M ( 'tgbz' ); // 實例化User對象
		
		$map['user_tjr']=$_SESSION['uname'];
		$count = $User->where ( $map )->count (); // 查詢滿足要求的總記錄數
		//$page = new \Think\Page ( $count, 3 ); // 實例化分頁類 傳入總記錄數和每頁顯示的記錄數(25)
		
		$p = getpage($count,10);
				//$list 按每页10条倒序查询提供帮助(tgbz)表user_tjr等于$_SESSION['uname'],返回全部;
		$list = $User->where ( $map )->order ( 'id DESC' )->limit ( $p->firstRow, $p->listRows )->select ();
		$this->assign ( 'list', $list ); // 賦值數據集
		$this->assign ( 'page', $p->show() ); // 賦值分頁輸出
		/////////////////----------------
		
		
		
		//////////////////----------
		$User = M ( 'jsbz' ); // 實例化User對象
		
		$map1['user_tjr']=$_SESSION['uname'];
		$count1 = $User->where ( $map1 )->count (); // 查詢滿足要求的總記錄數
		//$page = new \Think\Page ( $count, 3 ); // 實例化分頁類 傳入總記錄數和每頁顯示的記錄數(25)
		
		$p1 = getpage($count1,100);
				//$list 按每页10条倒序查询接受帮助(jsbz)帮助表user_tjr等于$_SESSION['uname'],返回全部;
		$list1 = $User->where ( $map1 )->order ( 'id DESC' )->limit ( $p1->firstRow, $p1->listRows )->select ();
		$this->assign ( 'list1', $list1 ); // 賦值數據集
		$this->assign ( 'page1', $p1->show() ); // 賦值分頁輸出
		/////////////////----------------
		
		
		
		
		$this->display ( 'xzzh' );
	}	//删除用户
	public function zhdel() {		/**		 * 正则匹配get传来的id,长度1-10,0-9;		 * $userinfo 查询商城注册用户表UE_ID等于get传来的id,UE_check=0,返回一条;		 * 判断推荐人账号是否等于用户名,ue_theme是否等于用户名,注册人是否等于用户名;		 * 如果不等,删除商城注册用户表UE_ID等于get传来的id,删除一条;		 * 		 */
		if (!preg_match ( '/^[0-9]{1,10}$/', I ('get.id') )) {
			$this->success('非法操作,將凍結賬號!');
		}else{
			$userinfo = M ( 'user' )->where ( array ('UE_ID' => I ('get.id'),'UE_check'=>0) )->find ();
			//dump(I ('get.id'));
			//dump($userinfo['ue_accname']);die;
			if ($userinfo['ue_accname']<>$_SESSION ['uname']&&$userinfo['ue_theme']<>$_SESSION ['uname']&&$userinfo['zcr']<>$_SESSION ['uname']) {
				$this->success('非法操作,將凍結賬號!');
			}else{
				$reg = M ( 'user' )->where(array ('UE_ID' => I ('get.id')))->delete();
				if ($reg) {
					$this->success('刪除成功!');
				}else {
					$this->success('刪除失敗!');
				}
			}
		}
	}
	
	
		//激活
	public function jihuo() {		/**		 * $otconfig 查询系统管理表SYS_ID等于1,返回一条;		 * $user 查询商城注册用户表UE_accoutn等于$_SESSION['uname'],返回一条;		 * 正则匹配get传来的wjbhname,长度6~12,a-z,A-Z,0-9;		 * 判断钻石卡总数(zsjbh)是否小于钻石卡开单数量(a_kd_asb);		 * $wjbhname 查询商城注册用户表UE_account等于wjbhname,返回一条;		 * 判断用户是否激活;		 */
			$otconfig = M ( 'system' )->where ( array (
				'SYS_ID' => 1
		) )->find ();
			
			$data_P = I ( 'get.' );
			//當前賬號信息
			$user = M ( 'user' )->where ( array ('UE_account' => $_SESSION ['uname'] ) )->find ();
			$user1 = M ();
			// dump(I ( 'post.yzm' ));die;
			// 
			//dump($user ['zsbhe']);die;
			if (! preg_match ( '/^[a-zA-Z0-9]{6,12}$/', $data_P ['wjbhname'] )) {
				$this->success ( '玩家用戶名格式不對!');
			
			}  elseif ($user ['zsbhe'] < $otconfig['a_kd_zsb']) {
				$this->success ( '餘額不足!');
				
			} else {
				//要激活賬號信息
				$wjbhname = M ( 'user' )->where ( array ('UE_account' => $data_P ['wjbhname'] ) )->find ();
				//報單中心信息
				//$bdzxname = M ( 'user' )->where ( array ('UE_account' => $data_P ['bdzxname'] ) )->find ();
				//報單中心許可權
				//$bdzx_rs = M ( 'user' )->where ( array ('UE_accName' => $data_P ['bdzxname'],'UE_Faccount'=>'0','UE_check'=>'1','UE_stop'=>'1' ) )->count("UE_ID");
				//dump($bdzx_rs)
				//echo ($bdzx_rs);die;
				if (! $wjbhname) {
					$this->success ( '需激活用戶不存在或已激活!');
				} elseif ($wjbhname ['ue_check'] == 1) {
					$this->success ( '用戶名已經激活過了!');
					
				} else {
					//寫入數據開始
					$date_dq = date ( 'Y-m-d H:i:s', time () );					//设置商城注册用户表钻石卡用户激活的数量
					$reg10 = M('user')->where(array ('UE_account' => $_SESSION ['uname'] ) )->setDec('zsbhe',$otconfig['a_kd_zsb']);					//设置商城注册用户表的金额;
					M('user')->where(array ('UE_account' => $data_P ['wjbhname'] ) )->setDec('UE_money',50);					//$user 查询商城注册用户表UE_account等于$_SESSION['uname'],返回一条;
					$user = M ('user' )->where ( array ('UE_account' => $_SESSION ['uname'] ) )->find ();					
					$note1="為新用戶".$wjbhname ['ue_account']."激活成功";
					$record1["UG_account"]	= $_SESSION ['uname'];
					$record1["UG_type"]  	= 'zsb';
					$record1["zsb"] 	= $otconfig['a_kd_zsb']-$otconfig['a_kd_zsb']*2; //金幣
					//$record1["UG_allGet"]	= '1500'; //推薦獎金總的
					$record1["zsbhe"]	= $user['zsbhe']; //當前推薦人的金幣餘額
					$record1["UG_dataType"]	= 'tjfy'; //當前開單人的金幣餘額
					$record1["UG_note"]		= $note1; //推薦獎說明
					$record1["UG_getTime"]		= $date_dq; //操作時間
					$reg1 = M ( 'userget' )->add ( $record1 );					//添加商城登陆表中所对应字段的数据;
					
					
					
					
					$note2="網路維護費";
					$record2["UG_account"]	= $data_P ['wjbhname'];
					$record2["UG_type"]  	= 'jb';
					$record2["UG_money"] 	= 50-100; //金幣
					//$record1["UG_allGet"]	= '1500'; //推薦獎金總的
					$record2["UG_balance"]	= 50-100; //當前推薦人的金幣餘額
					$record2["UG_dataType"]	= 'whf'; //當前開單人的金幣餘額
					$record2["UG_note"]		= $note1; //推薦獎說明
					$record2["UG_getTime"]		= $date_dq; //操作時間
					M ( 'userget' )->add ( $record2 );					//添加商城登陆表中所对应字段的数据;
					
									//修改商品注册用户表UE_accout等于wjbname中UE_check=1,UE_activeTime等于当前时间,jihouser等于$_SESSION['uname'];
					$reg14=M('user')->where(array('UE_account'=>$data_P ['wjbhname']))->save(array('UE_check'=>'1','UE_activeTime'=>$date_dq,'jihuouser'=>$_SESSION ['uname']));
					
					if($reg10 && $reg1 && $reg14){
					$this->success( '激活成功!' );
					}else{
						$this->success ( '激活失敗!');
					}
				}
			
		}
	}
	
		//激活2	操作同上(jihuo)
	public function jihuo2() {
		$otconfig = M ( 'system' )->where ( array (
				'SYS_ID' => 1
		) )->find ();
			
		$data_P = I ( 'get.' );
		//當前賬號信息
		$user = M ( 'user' )->where ( array ('UE_account' => $_SESSION ['uname'] ) )->find ();
		$user1 = M ();
		// dump(I ( 'post.yzm' ));die;
		//
		//dump($user ['zsbhe']);die;
		if (! preg_match ( '/^[a-zA-Z0-9]{6,12}$/', $data_P ['wjbhname'] )) {
		$this->success ( '玩家用戶名格式不對!');
		
		}  elseif ($user ['ue_money'] < 1000) {
				$this->success ( '金币餘額不足!');
	
			} else {
		//要激活賬號信息
		$wjbhname = M ( 'user' )->where ( array ('UE_account' => $data_P ['wjbhname'] ) )->find ();
				//報單中心信息
				//$bdzxname = M ( 'user' )->where ( array ('UE_account' => $data_P ['bdzxname'] ) )->find ();
				//報單中心許可權
				//$bdzx_rs = M ( 'user' )->where ( array ('UE_accName' => $data_P ['bdzxname'],'UE_Faccount'=>'0','UE_check'=>'1','UE_stop'=>'1' ) )->count("UE_ID");
				//dump($bdzx_rs)
				//echo ($bdzx_rs);die;
				if (! $wjbhname) {
				$this->success ( '需激活用戶不存在或已激活!');
				} elseif ($wjbhname ['ue_check'] == 1) {
				$this->success ( '用戶名已經激活過了!');
						
				} else {
					//寫入數據開始
				$date_dq = date ( 'Y-m-d H:i:s', time () );
				$reg10 = M('user')->where(array ('UE_account' => $_SESSION ['uname'] ) )->setDec('UE_money',1000);
				M('user')->where(array ('UE_account' => $data_P ['wjbhname'] ) )->setDec('UE_money',50);
					$user = M ('user' )->where ( array ('UE_account' => $_SESSION ['uname'] ) )->find ();
						$note1="為新用戶".$wjbhname ['ue_account']."激活成功";
								$record1["UG_account"]	= $_SESSION ['uname'];
					$record1["UG_type"]  	= 'jb';
				$record1["UG_money"] 	= "-1000"; //金幣
						//$record1["UG_allGet"]	= '1500'; //推薦獎金總的
				$record1["UG_balance"]	= $user['ue_money']; //當前推薦人的金幣餘額
					$record1["UG_dataType"]	= 'tjfy'; //當前開單人的金幣餘額
						$record1["UG_note"]		= $note1; //推薦獎說明
				$record1["UG_getTime"]		= $date_dq; //操作時間
				$reg1 = M ( 'userget' )->add ( $record1 );
					
					
					
			
				$note2="網路維護費";
				$record2["UG_account"]	= $data_P ['wjbhname'];
				$record2["UG_type"]  	= 'jb';
				$record2["UG_money"] 	= 50-100; //金幣
				//$record1["UG_allGet"]	= '1500'; //推薦獎金總的
				$record2["UG_balance"]	= 50-100; //當前推薦人的金幣餘額
				$record2["UG_dataType"]	= 'whf'; //當前開單人的金幣餘額
				$record2["UG_note"]		= $note1; //推薦獎說明
						$record2["UG_getTime"]		= $date_dq; //操作時間
						M ( 'userget' )->add ( $record2 );
							
	
						$reg14=M('user')->where(array('UE_account'=>$data_P ['wjbhname']))->save(array('UE_check'=>'1','UE_activeTime'=>$date_dq,'jihuouser'=>$_SESSION ['uname']));
									
					if($reg10 && $reg1 && $reg14){
						$this->success( '激活成功!' );
				}else{
				$this->success ( '激活失敗!');
				}
				}
		
				}
				}
		//选择重置密码
	public function xzczmm() {
		/**		 * $userData 查询商城注册用户表UE_ID等于$_SESSION['uid'],返回一条;		 */
		$userData = M ( 'user' )->where ( array (
				'UE_ID' => $_SESSION ['uid']
		) )->find ();
		$this->xzzhname = I('get.name');
		$this->display ( 'xzczmm' );
	}	//易购商城
	public function ygsc() {
	
		$userData = M ( 'user' )->where ( array (
				'UE_ID' => $_SESSION ['uid']
		) )->find ();
		$this->xzzhname = I('get.name');
		$this->display ( 'ygsc' );
	}	//选择重置密码处理
	public function xzczmmcl() {
	
		if (IS_AJAX) {			
			$data_P = I ( 'post.' );//接收post传来的值;
			
			//dump($data_P);die;
			//$this->ajaxReturn($data_P['ymm']);die;
			//$user = M ( 'user' )->where ( array (
			//		UE_account => $_SESSION ['uname']
			//) )->find ();
				
			$user1 = M ();
			//! $this->check_verify ( I ( 'post.yzm' ) )
			//! $user1->autoCheckToken ( $_POST )			//判断验证码是否正确
			if (! $this->check_verify ( I ( 'post.yzm' ) )) {
					
				$this->ajaxReturn ( array ('nr' => '驗證碼錯誤!','sf' => 0 ) );			//正则匹配post传来的username,长度6~12,a-z,A-Z,0-9;
			}elseif (!preg_match ( '/^[a-zA-Z0-9]{6,12}$/', $data_P ['username'] )) {
				$this->ajaxReturn ( array ('nr' => '用戶名格式不對！','sf' => 0 ) );			//正则匹配post传来yjmm,长度6~15,a-z,A-Z,0-9;
			}elseif (!preg_match ( '/^[a-zA-Z0-9]{6,15}$/', $data_P ['yjmm'] )) {
				$this->ajaxReturn ( array ('nr' => '新密碼6-12個字元,大小寫英文+數字,請勿用特殊詞符！','sf' => 0 ) );			//正则匹配post传来的yjmmqr,长度6~15,a-z,A-Z,0-9;
			}elseif (!preg_match ( '/^[a-zA-Z0-9]{6,15}$/', $data_P ['yjmmqr'] )) {
				$this->ajaxReturn ( array ('nr' => '新密碼6-12個字元,大小寫英文+數字,請勿用特殊詞符！','sf' => 0 ) );			//正则匹配post传来的ejmm,长度6~15,a-z,A-Z,0-9;
			}elseif (!preg_match ( '/^[a-zA-Z0-9]{6,15}$/', $data_P ['ejmm'] )) {
				$this->ajaxReturn ( array ('nr' => '新二級密碼6-12個字元,大小寫英文+數字,請勿用特殊詞符！','sf' => 0 ) );			//正则匹配post传来的ejmmqr,长度6~15,a-z,A-Z,0-9;
			}elseif (!preg_match ( '/^[a-zA-Z0-9]{6,15}$/', $data_P ['ejmmqr'] )) {
				$this->ajaxReturn ( array ('nr' => '新二級密碼6-12個字元,大小寫英文+數字,請勿用特殊詞符！','sf' => 0 ) );			//判断一级密码两次输入是否一致
			}elseif ($data_P ['yjmm']<>$data_P ['yjmmqr']) {
				$this->ajaxReturn ( array ('nr' => '新密碼兩次輸入不一致!','sf' => 0 ) );			//判断二级密码两次输入是否一致
			}elseif ($data_P ['ejmm']<>$data_P ['ejmmqr']) {
				$this->ajaxReturn ( array ('nr' => '新二級密碼兩次輸入不一致!','sf' => 0 ) );
			} else {			//$addacount 查询商城注册用户表UE_account等于post传来的username,返回一条;
				$addaccount = M ( 'user' )->where ( array ('UE_account' => $data_P ['username']) )->find ();
				//判断父帐号是否等于$_SESSION['uname'];
				if ($addaccount['ue_faccount']<>$_SESSION['uname']) {
					$this->ajaxReturn ( array ('nr' => '非法操作,將凍結賬號!','sf' => 0 ) );			//令牌验证防止重复提交
				}elseif(! $user1->autoCheckToken ( $_POST )){
					$this->ajaxReturn ( array ('nr' => '新勿重複提交,請刷新頁面!','sf' => 0 ) );
				} else {
					//dump($data_P ['username']);die;			//修改商城注册用户表UE_account等于post传来的username中UE_password等于md5加密后的post传来的一级密码(yjmm),UE_secpwd等于post传来的二级密码;
 					$reg = M ( 'user' )->where (array ('UE_account' => $data_P ['username']))->save (array('UE_password'=>md5($data_P['yjmm']),'UE_secpwd'=> md5($data_P['ejmm'])));
	
	
	
 					if ($reg) {
 						$this->ajaxReturn ( '修改成功!' );
 					} else {
 						$this->ajaxReturn ( '修改失敗!' );
 					}
				}
			}
		}
	}	//联系我们
	public function lxwm() {
	
		$User = M ( 'message' ); // 實例化User對象
		//$suser = I ( 'post.user', '', '/^[a-zA-Z0-9]{6,12}$/' );
		
			$map ['MA_userName'] = $_SESSION ['uname'];



		//dump($map ['UE_accName']);die;
	
		//	$map ['UG_dataType'] = array('IN',array('mrfh','tjj','kdj','mrldj','glj'));
	
		// 		if (! empty ( $date1 ) && ! empty ( $date2 )) {
		// 			$map ['UG_getTime'] = array (
		// 					array (
		// 							'gt',
		// 							$date1
		// 					),
		// 					array (
		// 							'lt',
		// 							$date2
		// 					),
		// 					'and'
		// 			);
		// 		}
	
		//$map  = array('tjj','kdj','glj');
		//	$map['UE_Faccount']  = $_SESSION ['uname']
		//$ljtc1 = M('userget')->where(array('UG_account'=>$_SESSION ['uname'],'UG_dataType'=>array('IN',$map)))->sum('UG_money');
			//查询留言表中的MA_userName等于$_SESSION['uname']的数据记录数
		$count = $User->where ( $map )->count (); // 查詢滿足要求的總記錄數
		//dump($var)	
		$page = new \Think\Page ( $count, 12 ); // 實例化分頁類 傳入總記錄數和每頁顯示的記錄數(25)
	
		// $page->lastSuffix=false;	
		$page->setConfig ( 'header', '<li class="rows">共<b>%TOTAL_ROW%</b>條記錄    第<b>%NOW_PAGE%</b>頁/共<b>%TOTAL_PAGE%</b>頁</li>' );
		$page->setConfig ( 'prev', '上一頁' );
		$page->setConfig ( 'next', '下一頁' );
		$page->setConfig ( 'last', '末頁' );
		$page->setConfig ( 'first', '首頁' );
		$page->setConfig ( 'theme', '%FIRST% %UP_PAGE% %LINK_PAGE% %DOWN_PAGE% %END% %HEADER%' );
		;
	
		$show = $page->show (); // 分頁顯示輸出
		// 進行分頁數據查詢 注意limit方法的參數要使用Page類的屬性
		$list = $User->where ( $map )->order ( 'MA_ID DESC' )->limit ( $page->firstRow . ',' . $page->listRows )->select ();
		//dump($list);die;
		$this->assign ( 'list', $list ); // 賦值數據集
		$this->assign ( 'page', $show ); // 賦值分頁輸出
	
	
		$userData = M ( 'user' )->where ( array (
				'UE_ID' => $_SESSION ['uid']
		) )->find ();
		$this->userData = $userData;
		$this->display ( 'lxwm' );
	}
		//联系我们处理
	public function lxwmcl() {
	
		if (IS_POST) {
			$data_P = I ( 'post.' );
			//dump($data_P);die;
			//$this->ajaxReturn($data_P['ymm']);die;
			//$user = M ( 'user' )->where ( array (
			//		UE_account => $_SESSION ['uname']
			//) )->find ();
	
			$user1 = M ();
			//! $this->check_verify ( I ( 'post.yzm' ) )
			//! $user1->autoCheckToken ( $_POST )			//判断psot传来的留言标题长度必须要<190或>1
			if (strlen($data_P['lybt']) > 190 || strlen($data_P['lybt']) < 1) {
				die("<script>alert('留言标题不能为空！');history.back(-1);</script>");
							//判断post传来的留言内容长度必须要>1
			} elseif ( strlen($data_P['lynr']) < 1) {
				die("<script>alert('留言內容不能为空！');history.back(-1);</script>");
				
			}else {
				
					 
				$record['MA_type']		= 'message';
				$record['MA_userName']	= $_SESSION['uname'];
				$record['pic']	= $data_P['face180'];
				$record['MA_otherInfo']	= $data_P['otlylx'];
				$record['MA_theme']		= $data_P['lybt'];
				$record['MA_note']		= $data_P['lynr'];
				$record['MA_time']		= date ( 'Y-m-d H:i:s', time () );;
									//添加留言表对应字段的数据;
				$reg = M ( 'message' )->add ( $record );
					
	
					 
	
					if ($reg) {
						die("<script>alert('留言成功！');history.back(-1);</script>");
						
					} else {
						die("<script>alert('留言失败！');history.back(-1);</script>");
						
					}
				
			}
		}
	}//联系我们记录删除
	public function lxwmdel() {		/**		 * 正则匹配get来的id长度,1-10,0-9;		 * $userinfo 查询留言表MA_ID等于get传来的id,返回一条;		 * 判断留言用户名是否等于$_SESSION['uname'];		 * 如果相等,删除MA_ID等于get传来的id;		 */
		if (!preg_match ( '/^[0-9]{1,10}$/', I ('get.id') )) {
			$this->success('非法操作,將凍結賬號!');
		}else{
			$userinfo = M ( 'message' )->where ( array ('MA_ID' => I ('get.id')) )->find ();
			//dump(I ('get.id'));
			//dump($userinfo['ue_accname']);die;
			if ($userinfo['ma_username']<>$_SESSION ['uname']) {
				$this->success('非法操作,將凍結賬號!');
			}else{
				$reg = M ( 'message' )->where(array ('MA_ID' => I ('get.id')))->delete();
				if ($reg) {
					$this->success('刪除成功!');
				}else {
					$this->success('刪除失敗!');
				}
			}
		}
	}	//联系我们修改
	public function lxwmx() {
		/**		 * 正则匹配get传来的id,长度1-10,0-9;		 * $data 查询留言表MA_ID等于get传来的id,MA_userName等于$_SESSION['uname'],返回一条;		 */
		if (!preg_match ( '/^[0-9]{1,10}$/', I ('get.id') )) {
			$this->success('非法操作,將凍結賬號!');
		}else{
			$id = I ( 'get.id' );
		$data = M ( 'message' )->where ( array (
				'MA_ID' => $id,
				'MA_userName'=>$_SESSION['uname']
		) )->find ();
		//dump($data);die;
		$this->data = $data;
		$this->display ( 'lxwmx' );
		}
	}	//一级收帮
	public function yjsb() {

		$User = M ( 'user' ); // 實例化User對象
		//$suser = I ( 'post.user', '', '/^[a-zA-Z0-9]{6,12}$/' );
		//if($suser==''){
			$map ['zbzh'] = $_SESSION ['uname'];
			$map ['zbqx'] = '1';
			$map ['UE_money'] = array('egt','100');
		//}else{
			//$map ['UE_accName'] = $suser;
		//}
		//dump($map ['UE_accName']);die;
		
		//	$map ['UG_dataType'] = array('IN',array('mrfh','tjj','kdj','mrldj','glj'));
		
		// 		if (! empty ( $date1 ) && ! empty ( $date2 )) {
		// 			$map ['UG_getTime'] = array (
		// 					array (
		// 							'gt',
		// 							$date1
		// 					),
		// 					array (
		// 							'lt',
		// 							$date2
		// 					),
		// 					'and'
		// 			);
		// 		}
		
		//$map  = array('tjj','kdj','glj');
		//	$map['UE_Faccount']  = $_SESSION ['uname']
		//$ljtc1 = M('userget')->where(array('UG_account'=>$_SESSION ['uname'],'UG_dataType'=>array('IN',$map)))->sum('UG_money');
		
		$count = $User->where ( $map )->count (); // 查詢滿足要求的總記錄數
		$page = new \Think\Page ( $count, 12 ); // 實例化分頁類 傳入總記錄數和每頁顯示的記錄數(25)
		
		// $page->lastSuffix=false;
		$page->setConfig ( 'header', '<li class="rows">共<b>%TOTAL_ROW%</b>條記錄    第<b>%NOW_PAGE%</b>頁/共<b>%TOTAL_PAGE%</b>頁</li>' );
		$page->setConfig ( 'prev', '上一頁' );
		$page->setConfig ( 'next', '下一頁' );
		$page->setConfig ( 'last', '末頁' );
		$page->setConfig ( 'first', '首頁' );
		$page->setConfig ( 'theme', '%FIRST% %UP_PAGE% %LINK_PAGE% %DOWN_PAGE% %END% %HEADER%' );
		;
		
		$show = $page->show (); // 分頁顯示輸出
		// 進行分頁數據查詢 注意limit方法的參數要使用Page類的屬性
		$list = $User->where ( $map )->order ( 'UE_ID DESC' )->limit ( $page->firstRow . ',' . $page->listRows )->select ();
		$this->assign ( 'list', $list ); // 賦值數據集
		$this->assign ( 'page', $show ); // 賦值分頁輸出
		
		
		$userData = M ( 'user' )->where ( array (
				'UE_ID' => $_SESSION ['uid']
		) )->find ();
		$this->userData = $userData;

			$this->display ( 'yjsb' );
		
	}
		//一级驻帮处理
	public function yjzbcl() {
		//判断post传来的id是否等于1
 		if (I ('post.id')<>1 ) {
 			$this->success('非法操作,將凍結賬號!');
 		}else {
 			
 			$user = M('user');
 			$map ['zbzh'] = $_SESSION ['uname'];
 			$map ['zbqx'] = '1';
 			$map ['UE_money'] = array('egt','100');
 						//查询商城注册用户表驻帮用户(zbzh)等于$_SESSION['uname'],驻帮权限等于1,UE_money等100中ue_account列的数据
 			$sbname=$user->where($map)->getField('ue_account',true);			//判断查询的总记录数是否等于0
 			if(count($sbname)==0){
 				$this->success( '目前沒有可代收幣賬號!' );
 			}else{
 			$xlhaaa = 0 ;
 			$moneyhe = 0 ;			//遍历$sbname数组
 			foreach($sbname as $val){
 				$xlhaaa = $xlhaaa + 1 ;				//查询商城注册用户表UE_account等于$val中ue_money列的数据;
 				$zbzqye=$user->where(array('UE_account'=>$val))->getField('ue_money');				//查询UE_account等于$_SESSION['uname']中ue_money列的数据;
 				$dqzhye=$user->where(array('UE_account'=>$_SESSION['uname']))->getField('ue_money');				//返回不大于 value 的最接近的整数;
 				$jiabi = floor($zbzqye/100)*100;
 				$moneyhe += $jiabi;
 								//设置商城注册用户表UE_account等于$val中UE_money等于$jiabi;
 				$reg6 = $user->where(array ('UE_account' => $val ) )->setDec('UE_money',$jiabi);				//设置商城注册用户表UE_account等于$_SESSION['uname'] 中UE_money等于$jiabi;
 				$reg1 = $user->where(array ('UE_account' => $_SESSION['uname'] ) )->setInc('UE_money',$jiabi);
 				
 				$date_dq = date ( 'Y-m-d H:i:s', time () );
 				$record1 ["UJ_usercount"] = $val; // 登入的賬戶
 				$record1 ["UJ_payaccount"] = $val; // 轉出賬戶
 				$record1 ["UJ_addaccount"] = $_SESSION['uname']; // 轉入賬戶
 				$record1 ["UJ_JBcount"] = $jiabi; // 轉出轉入數量
 				$record1 ["UJ_note"] = '一鍵轉幣'; // 備註
 				$record1 ["UJ_style"] = '轉出'; // 類型
 				$record1 ["UJ_balance"] = $zbzqye-$jiabi; // 餘額
 				$record1 ["UJ_dataType"] = 'zs'; // 轉賬類型			
 				$record1 ["UJ_time"] = date ( 'Y-m-d H:i:s', time () ); // 轉賬類型				//添加用户交易信息表对应字段的数据;
 				$reg2 = M ( 'userjyinfo' )->add ( $record1 );
 					
 				$record2 ["UJ_usercount"] = $_SESSION['uname']; // 登入的賬戶
 				$record2 ["UJ_payaccount"] = $val; // 轉出賬戶
 				$record2 ["UJ_addaccount"] = $_SESSION['uname']; // 轉入賬戶
 				$record2 ["UJ_JBcount"] = $jiabi; // 轉出轉入數量
 				$record2 ["UJ_note"] = '一鍵轉幣'; // 備註
 				$record2 ["UJ_style"] = '轉入'; // 類型
 				$record2 ["UJ_balance"] = $dqzhye+$jiabi; // 餘額
 				$record2 ["UJ_dataType"] = 'zs'; // 轉賬類型
 				$record2 ["UJ_time"] = date ( 'Y-m-d H:i:s', time () ); // 轉賬類型				//添加用户交易信息表对应字段的数据;
 				$reg3 = M ( 'userjyinfo' )->add ( $record2 );
 					
 				$note3 = "玩家" . $val . "一鍵轉幣" . $jiabi . "個，轉入成功";
 				$record3 ["UG_account"] = $_SESSION['uname']; // 登入轉出賬戶
 				$record3 ["UG_type"] = '轉入';
 				$record3 ["UG_money"] = $jiabi; // 金幣
 				$record3 ["UG_allGet"] = $jiabi; //
 				$record3 ["UG_balance"] = $dqzhye+$jiabi; // 當前推薦人的金幣餘額
 				$record3 ["UG_dataType"] = 'jbzr'; // 金幣轉出
 				$record3 ["UG_note"] = $note3; // 推薦獎說明
 				$record3["UG_getTime"]		= $date_dq; //操作時間				//添加商城登录用户表对应字段的数据;
 				$reg4 = M ( 'userget' )->add ( $record3 );
 					
 				$note4 = "給玩家" . $_SESSION['uname'] . "轉賬金幣" . $jiabi . "個，提交成功";
 				$record4 ["UG_account"] = $val; // 登入轉出賬戶
 				$record4 ["UG_type"] = '轉出';
 				$record4 ["UG_money"] = $jiabi; // 金幣
 				$record4 ["UG_allGet"] = $jiabi; //
 				$record4 ["UG_balance"] = $zbzqye-$jiabi; // 當前推薦人的金幣餘額
 				$record4 ["UG_dataType"] = 'jbzc'; // 金幣轉出
 				$record4 ["UG_note"] = $note4; // 推薦獎說明
 				$record4["UG_getTime"]		= $date_dq; //操作時間				//添加商城登录用户表对应字段的数据;
 				$reg5 = M ( 'userget' )->add ( $record4 );
 				
 			}
 			if ($reg6 && $reg1 && $reg2 && $reg3 && $reg4 && $reg5) {
 				$this->success( "恭喜一鍵轉幣成功!共轉出".$xlhaaa."個賬號,金額總數為".$moneyhe."個金幣",'',10);
 			} else {
 				$this->success( '轉賬失敗!' );
 			}
 			
 			
 			}
 			
 			
 			
 			
 			
 			
// 			$id = I ( 'get.id' );
// 			$data = M ( 'message' )->where ( array (
// 					'MA_ID' => $id,
// 					'MA_userName'=>$_SESSION['uname']
// 			) )->find ();
// 			//dump($data);die;
// 			$this->data = $data;
// 			$this->display ( 'lxwmx' );
         //   $this->success('一鍵收幣成功');
 		}
	}	//分红
	public function fh() {
			//查询商城注册用户表UE_ID等于$_SESSION['uid'],返回一条;
		$userData = M ( 'user' )->where ( array (
				'UE_ID' => $_SESSION ['uid']
		) )->find ();		//查询系统管理表SYS_ID等于1,返回一条;
		$otconfig = M ( 'system' )->where ( array (
				'SYS_ID' => 1
		) )->find ();
		
		$this->userData = $userData;
		$this->otconfig = $otconfig;
		$this->display ( 'fh' );
	}
		//分红处理
	public function fhcl() {		//查询系统管理表SYS_ID等于1,返回一条;
		$otconfig = M ( 'system' )->where ( array (
				'SYS_ID' => 1
		) )->find ();
			
		//$data_P = I ( 'post.' );
		//當前賬號信息		//查询商城注册用户表UE_account等于$_SESSION['uname'],返回一条;
		$user = M ( 'user' )->where ( array ('UE_account' => $_SESSION ['uname'] ) )->find ();
		$user1 = M ();
		// dump(I ( 'post.yzm' ));die;
		//
		//dump($user ['zsbhe']);die;		//判断总数是否小于复活数
		if ($user ['zsbhe'] < $otconfig['a_fuhuo']) {
				$this->success ( '餘額不足!');
	
			} else {
		//要激活賬號信息
		//$wjbhname = M ( 'user' )->where ( array ('UE_account' => $data_P ['wjbhname'] ) )->find ();
				//報單中心信息
				//$bdzxname = M ( 'user' )->where ( array ('UE_account' => $data_P ['bdzxname'] ) )->find ();
				//報單中心許可權
				//$bdzx_rs = M ( 'user' )->where ( array ('UE_accName' => $data_P ['bdzxname'],'UE_Faccount'=>'0','UE_check'=>'1','UE_stop'=>'1' ) )->count("UE_ID");
				//dump($bdzx_rs)
				//echo ($bdzx_rs);die;			//判断当前分红的状态是否等于0
				if ($user ['ue_stop'] <> 0) {
				$this->success ( '您的賬號未出局,不需要復活!');
						
				} else {
					//寫入數據開始
				$date_dq = date ( 'Y-m-d H:i:s', time () );			//设置商城注册用户表UE_account等于$_SESSION['uname']中zsbhe等于激活数(a_fuhuo);
				$reg10 = M('user')->where(array ('UE_account' => $_SESSION ['uname'] ) )->setDec('zsbhe',$otconfig['a_fuhuo']);			//查询商城注册用户表UE_account等于$_SESSION['uname'],返回一条;
				$user = M ('user' )->where ( array ('UE_account' => $_SESSION ['uname'] ) )->find ();
				$note1="賬號復活成功";
						$record1["UG_account"]	= $_SESSION ['uname'];
						$record1["UG_type"]  	= 'zsb';
						$record1["zsb"] 	= $otconfig['a_fuhuo']-$otconfig['a_fuhuo']*2; //金幣
						//$record1["UG_allGet"]	= '1500'; //推薦獎金總的
						$record1["zsbhe"]	= $user['zsbhe']; //當前推薦人的金幣餘額
								$record1["UG_dataType"]	= 'tjfy'; //當前開單人的金幣餘額
					$record1["UG_note"]		= $note1; //推薦獎說明
						$record1["UG_getTime"]		= $date_dq; //操作時間
						$reg1 = M ( 'userget' )->add ( $record1 );				//添加商城登陆用户表对应字段的数据;
						
						
						$note1="復活記錄";
						$record1["UG_account"]	= $_SESSION ['uname'];
						$record1["UG_type"]  	= '復活記錄';
						$record1["zsb"] 	= $otconfig['a_fuhuo']; //金幣
						//$record1["UG_allGet"]	= '1500'; //推薦獎金總的
						$record1["zsbhe"]	= $user['zsbhe']; //當前推薦人的金幣餘額
						$record1["UG_dataType"]	= 'fuhuojl'; //當前開單人的金幣餘額
						$record1["UG_note"]		= $note1; //推薦獎說明
						$record1["UG_getTime"]		= $date_dq; //操作時間
						$reg1 = M ( 'userget' )->add ( $record1 );				//添加商城登陆用户表对应字段的数据;
							
	
									$reg14=M('user')->where(array('UE_account'=>$_SESSION ['uname']))->save(array('UE_stop'=>'1'));
										
									if($reg10 && $reg1 && $reg14){
									$this->success( '復活成功!',U('/Home/Myuser/fhjl'));
									}else{
						$this->success ( '復活失敗!');
									}
									}
										
									}
	}
	
	
	
	//認購(认购)
	public function rg() {
	
				//查询系统管理表SYS_ID等于1,返回一条;	
		$otconfig = M ( 'system' )->where ( array (
				'SYS_ID' => 1
		) )->find ();
		$this->otconfig =$otconfig;
	
		$User = M ( 'userjyinfo' ); // 實例化User對象
		
	$map ['UJ_usercount'] = $_SESSION ['uname'];
	$map ['UJ_dataType'] = 'rg';
	
	
	
		//查询商城注册用户表UJ_usercount等于$_SESSION['uname'],UJ_dataType等于认证(rg)的总记录数;
	$count = $User->where ( $map )->count (); // 查詢滿足要求的總記錄數
	//dump($var)
	$page = new \Think\Page ( $count, 12 ); // 實例化分頁類 傳入總記錄數和每頁顯示的記錄數(25)
	
	// $page->lastSuffix=false;
	$page->setConfig ( 'header', '<li class="rows">共<b>%TOTAL_ROW%</b>條記錄    第<b>%NOW_PAGE%</b>頁/共<b>%TOTAL_PAGE%</b>頁</li>' );
	$page->setConfig ( 'prev', '上一頁' );
	$page->setConfig ( 'next', '下一頁' );
	$page->setConfig ( 'last', '末頁' );
	$page->setConfig ( 'first', '首頁' );
	$page->setConfig ( 'theme', '%FIRST% %UP_PAGE% %LINK_PAGE% %DOWN_PAGE% %END% %HEADER%' );
	;
	
	$show = $page->show (); // 分頁顯示輸出
	// 進行分頁數據查詢 注意limit方法的參數要使用Page類的屬性
	$list = $User->where ( $map )->order ( 'UJ_ID DESC' )->limit ( $page->firstRow . ',' . $page->listRows )->select ();
	
	//dump($list);die;
	
	$this->assign ( 'list', $list ); // 賦值數據集
	$this->assign ( 'page', $show ); // 賦值分頁輸出
	
		//查询商城注册用户表UE_ID等于$_SESSION['uid'];
		$userData = M ( 'user' )->where ( array (
				'UE_ID' => $_SESSION ['uid']
		) )->find ();
		$this->userData = $userData;
		$this->display ( 'rg' );
	}
		//认证处理
	public function rgcl() {
	
		if (IS_AJAX) {
			$data_P = I ( 'post.' );
			//dump($data_P);die;
			//$this->ajaxReturn($data_P['ymm']);die;		//查询商城注册用户表UE_account等于$_SESSSION['uname'],返回一条;
			$user = M ( 'user' )->where ( array (
					UE_account => $_SESSION ['uname']
			) )->find ();		//查询系统管理表SYS_ID等于1,返回一条;
			$otconfig = M ( 'system' )->where ( array (
					'SYS_ID' => 1
			) )->find ();
			$user1 = M ();
					//判断post传来的类型(leixin)是否等于钻石币(zsb)
			if( $data_P['leixin']=='zsb'){
			//! $this->check_verify ( I ( 'post.yzm' ) )
			//! $user1->autoCheckToken ( $_POST )
			//dump($data_P['lxfs']);die;
			//$zkbsl = $data_P ['mcsl'] +$data_P ['mcsl'] *$otconfig['a_sxf'];	
			if ($user['btbdz']=='0') {
				$this->ajaxReturn ( array ('nr' => '您暫無認購許可權!','sf' => 0 ) );		//正则匹配post传来的mrsl,长度3-10,0-9;
			}elseif (! preg_match ( '/^[0-9.]{3,10}$/', $data_P ['mrsl'] )) {
				$this->ajaxReturn ( array ('nr' => '認購鑽石幣金額必須是大於500,並且是500倍數!','sf' => 0 ) );		//判断post传来的mrsl是否是500的倍数并不为空;
			}elseif ($data_P ['mrsl'] % 500 > 0 ||$data_P ['mrsl']=='') {
				$this->ajaxReturn ( array ('nr' => '認購鑽石幣金額必須是大於500,並且是500倍數!','sf' => 0 ) );
			} else {
	            $btbsl=$data_P ['mrsl']*$otconfig['a_zsbhuilv'];
	          //  dump($btbsl);die;
				//$this->ajaxReturn ( '認購鑽石幣成功!' );
				$record["UJ_usercount"]	    = $_SESSION ['uname'];//登入的賬戶
				$record["UJ_JBcount"] 	    = $data_P ['mrsl'];	//賣出的數量
				$record["UJ_style"]	        = 'rgzsb';      //類型
				$record["UJ_balance"]	    = $btbsl;      //餘額
				$record["UJ_note"]         = $user['btbdz'];
				$record["UJ_dataType"]      = 'rg';
				$record["UJ_jbmcStage"]      = '0';
				$record ["UJ_time"] = date ( 'Y-m-d H:i:s', time () );
				$reg = M ( 'userjyinfo' )->add ( $record );		//添加用户交易信息表对应字段的数据
	            
			if ($reg) {
						$this->ajaxReturn ( array ('nr' => '認購成功!','sf' => 0 ) );
					} else {
						$this->ajaxReturn ( array ('nr' => '認購失敗!','sf' => 0 ) );
					}
	
			}
		}else{
			if ($user['btbdz']=='') {
				$this->ajaxReturn ( array ('nr' => '您暫無認購許可權!','sf' => 0 ) );
			}elseif (! preg_match ( '/^[0-9.]{3,10}$/', $data_P ['mrsl'] )) {
				$this->ajaxReturn ( array ('nr' => '銀幣認購金額必須是大於100,並且是100倍數!','sf' => 0 ) );
			}elseif ($data_P ['mrsl'] % 100 > 0 ||$data_P ['mrsl']=='') {
				$this->ajaxReturn ( array ('nr' => '銀幣金額必須是大於100,並且是100倍數!','sf' => 0 ) );
			} else {
				$btbsl=$data_P ['mrsl']*$otconfig['a_ybhuilv'];
				//  dump($btbsl);die;
				//$this->ajaxReturn ( '認購鑽石幣成功!' );
				$record["UJ_usercount"]	    = $_SESSION ['uname'];//登入的賬戶
				$record["UJ_JBcount"] 	    = $data_P ['mrsl'];	//賣出的數量
				$record["UJ_style"]	        = 'rgyb';      //類型
				$record["UJ_balance"]	    = $btbsl;      //餘額
				$record["UJ_note"]         = $user['btbdz'];
				$record["UJ_dataType"]      = 'rg';
				$record["UJ_jbmcStage"]      = '0';
				$record ["UJ_time"] = date ( 'Y-m-d H:i:s', time () );
				$reg = M ( 'userjyinfo' )->add ( $record );		//添加用户交易信息表对应字段的数据
				 
				if ($reg) {
					$this->ajaxReturn ( array ('nr' => '認購成功!','sf' => 0 ) );
				} else {
					$this->ajaxReturn ( array ('nr' => '認購失敗!','sf' => 0 ) );
				}
			
			}
		}
			
		}
	}	
	public function team() {
		$this->display("team");
	}
	
		//姓名
	public function xm() {
	
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
			} else {				//查询商城注册用户表UE_account等于post传来的账户,返回一条数据;
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
	
	
	
	
}