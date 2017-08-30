<?php

namespace Home\Controller;

use Think\Controller;

class InfoController extends CommonController
{
    // 首頁
    public function index()
    {
        $userData = M('user')->where(array('UE_ID' => $_SESSION ['uid']))->find();
        $this->userData = $userData;


        $ip = M('drrz')->where(array('user' => $_SESSION ['uname'], 'leixin' => 0))->order('id DESC')->limit(2)->select();

        $this->bcip = $ip[0];
        $this->scip = $ip[1];
        $this->display('grsz');
    }
	//修改密码页面
    public function xgmm()
    {
        $userData = M('user')->where(array(
            'UE_ID' => $_SESSION ['uid']
        ))->find();
        $this->userData = $userData;
        $this->display('xgmm');
    }
	//修改密码页面
    public function xgmme()
    {
        $userData = M('user')->where(array(
            'UE_ID' => $_SESSION ['uid']
        ))->find();
        $this->userData = $userData;
        $this->display('xgmme');
    }
	//绑定密保页面
    public function bdmb()
    {
        $userData = M('user')->where(array(
            'UE_ID' => $_SESSION ['uid']
        ))->find();
        $this->userData = $userData;
        if ($userData['ue_question'] == '') {
            $this->display('bdmb');
        } else {
            $this->display('xgmb');
        }
    }
	//修改密保页面
    public function xgmb()
    {
        $userData = M('user')->where(array(
            'UE_ID' => $_SESSION ['uid']
        ))->find();
        $this->userData = $userData;
        $this->display('xgmb');
    }
	//添加收款账号页面
    public function addskzh()
    {
        $userData = M('user')->where(array(
            'UE_ID' => $_SESSION ['uid']
        ))->find();
        $this->userData = $userData;
        $this->display('addskzh');
    }
	//收款账号
    public function skzh()
    {
    	/**
		 * $userData 查询商城用户注册登录表中$_SESSION['uid'],返回一条;
		 * $caution 查询用户详细信息表中$_SESSION['uid'],返回一条;
		 */	
        $userData = M('user')->where(array(
            'UE_ID' => $_SESSION ['uid']
        ))->find();
        $caution = M('userinfo')->where(array(
            'UI_userID' => $_SESSION ['uid']
        ))->order('UI_ID DESC')->select();
        $this->caution = $caution;
        //dump($caution);die;
        $this->userData = $userData;
        $this->display('skzh');
    }
	//收款账号删除
    public function skzhdl()
    {
    	/**
		 * 正则匹配出get过来的id是否在0~9区间,并且字符串长度在1~10之间;
		 * $userinfo 查询用户详细信息表中UI_ID等于I(get.id),返回一条;
		 * 判断当前session_uid是否等于get用户详情表的id;
		 * 如果不相等，删除用户详情表中UI_ID等于I(get.id)的数据;
		 */	
        if (!preg_match('/^[0-9]{1,10}$/', I('get.id'))) {        
            $this->success('非法操作,將凍結賬號!');
        } else {
            $userinfo = M('userinfo')->where(array('UI_ID' => I('get.id')))->find();
            if ($userinfo['+
            
            
            
            '] <> $_SESSION ['uid']) {
                $this->success('非法操作,將凍結賬號!');
            } else {
                $reg = M('userinfo')->where(array('UI_ID' => I('get.id')))->delete();
                if ($reg) {
                    $this->success('刪除成功!');
                } else {
                    $this->success('刪除失敗!');
                }
            }
        }
    }
	//二级密码
    public function ejmm()
    {
        $this->display('ejmm');
    }
	//二级密码处理
    public function ejmmcl()
    {
    	/**
		 * $data_p 接收post过来的值;
		 * $addaccount 查询商城用户注册登录表中UE_account等于$_SESSION['uname']，返回一条;
		 * 判断用户的二级密码是否等于post过来的二级密码;
		 * 如果等于,用session存储二级密码
		 */
        //echo $_SESSION['url'];die;
        if (IS_POST) {
            $data_P = I('post.');
            $addaccount = M('user')->where(array(UE_account => $_SESSION ['uname']))->find();
            //dump($addaccount['ue_secpwd']);
            //dump(md5($data_P['ejmmqr']));
            //die;
            if ($addaccount['ue_secpwd'] <> md5($data_P['ejmmqr'])) {
                $this->error('二級密碼不正確!');
            } else {
                $_SESSION['ejmmyz'] = $addaccount['ue_secpwd'];
                //	echo ;die;
                $this->success('驗證成功', $_SESSION['url']);
            }
        }
    }
	//修改资料处理
    public function xgzlcl()
    {
    	/**
		 * $data_p 接收post过来的值;
		 * $userxx 查询商城用户注册登录表中UE_account等于$_SESSION['uname'],返回一条;
		 * $tgbztj 查询表ppdd符合p_user等于$_SESSION['uname'],zt等于2的数据字段中(jb)金币的总数;
		 * $userxx 查询商城用户注册登录表中UE_account等于$_SESSION['uname'],返回一条;
		 * 判断用户的二级密码是否等于md5加密后post过来的二级密码;
		 * 如果等于,修改商品用户注册表中E_account等于$_SESSION['uname']的中对应的字段数据;
		 */
        if (IS_POST) {
            $data_P = I('post.');
            $userxx = M('user')->where(array('UE_account' => $_SESSION['uname']))->find();
            $tgbztj = M('ppdd')->where(array('p_user' => $_SESSION['uname'], 'zt' => '2'))->sum('jb');
            //$tgbztj>=600||$userxx['sfjl']==1

            if (false) {
                $this->success('提供帮助成功后不可修改个人信息和经理人不可自行修改资料!');
            } else {
                $userxx = M('user')->where(array('UE_account' => $_SESSION['uname']))->find();

                //dump($userxx);die;

                if ($userxx['ue_secpwd'] <> md5($data_P['trade_pwd2'])) {
                    die("<script>alert('二级密码输入有误！');history.back(-1);</script>");
                } else {

                    $data_up['weixin'] = $data_P['wechat'];

                    $data_up['zfb'] = $data_P['alipay'];
                    $data_up['yhmc'] = $data_P['bank_name'];
                    //$data_up['zhxm'] = $data_P['bank_user'];
                    $data_up['yhzh'] = $data_P['bank_number'];
                    //$data_up['khzh'] = $data_P['khzh'];
                    $data_up['UE_phone'] = $data_P['phone'];
                    $reg = M('user')->where(array('UE_account' => $_SESSION['uname']))->save($data_up);


                    if ($reg) {
                        die("<script>alert('修改成功！');history.back(-1);</script>");
                    } else {
                        die("<script>alert('修改失败！');history.back(-1);</script>");
                    }
                }

            }
        }
    }

	//修改一级密码处理
    public function xgyjmmcl()
    {
		/**
		 * $data_p 接收post过来的值;
		 * 通过正则匹配新密码(xmm),字符长度15,数字或字母;
		 * 判断新密码两次输入是否一致;
		 * 判断新密码是否与原密码一致;
		 * $addacount 查询商城注册用户表UE_account等于$_SESSION['uname'],返回一条;
		 * 判断用户密码是否等于md5加密后post过来的密码;
		 * 如果等于,修改商城注册用户表UE_account等于$_SESSION['uname']中UE_passowrd等于md5加密后的新密码;
		 */
        if (IS_AJAX) {
            $data_P = I('post.');
            //dump($data_P);die;
            //$this->ajaxReturn($data_P['ymm']);die;
            //$user = M ( 'user' )->where ( array (
            //		UE_account => $_SESSION ['uname']
            //) )->find ();

            $user1 = M();
            //! $this->check_verify ( I ( 'post.yzm' ) )
            //! $user1->autoCheckToken ( $_POST )
            if (!preg_match('/^[a-zA-Z0-9]{1,15}$/', $data_P ['xmm'])) {
                $this->ajaxReturn(array('nr' => '新密碼6-12個字元,大小寫英文+數字,請勿用特殊詞符！', 'sf' => 0));
            } elseif ($data_P['xmm'] <> $data_P['xmmqr']) {
                $this->ajaxReturn(array('nr' => '新密碼兩次輸入不一致!', 'sf' => 0));
            } elseif ($data_P['ymm'] == $data_P['xmm']) {
                $this->ajaxReturn(array('nr' => '原密碼和新密碼不能相同!', 'sf' => 0));
            } else {
                $addaccount = M('user')->where(array(UE_account => $_SESSION ['uname']))->find();

                if ($addaccount['ue_password'] <> md5($data_P['ymm'])) {
                    $this->ajaxReturn(array('nr' => '原密碼不正確!', 'sf' => 0));
                } else {

                    $reg = M('user')->where(array(
                        'UE_ID' => $_SESSION ['uid']
                    ))->save(array('UE_password' => md5($data_P['xmm'])));


                    if ($reg) {
                        $this->ajaxReturn(array('nr' => '修改成功!', 'sf' => 0));
                    } else {
                        $this->ajaxReturn(array('nr' => '修改失敗!', 'sf' => 0));
                    }
                }
            }
        }
    }
	//添加收款账号处理
    public function addskzhcl()
    {
		/**
		 * $data_p 接收post过来的值;
		 * 判断post过来的验证码是否正确;
		 * 通过判断字符串长度<13或>6来判断收款方式(skfs);
		 * 通过正则匹配收款账号(skzh),长度6~30,数字;
		 * 通过判断字符串长度<60或>6来判断开户行(khh);
		 * 通过令牌验证防止重复提交;
		 * $addccount 查询商城注册用户表UE_account等于$_SESSION['uname'],返回一条;
		 * 添加商城注册用户表中对应字段数据;
		 */
        if (IS_AJAX) {
            $data_P = I('post.');
            //dump($data_P);
            //$this->ajaxReturn($data_P['ymm']);die;
            //$user = M ( 'user' )->where ( array (
            //		UE_account => $_SESSION ['uname']
            //) )->find ();

            $user1 = M();
            //! $this->check_verify ( I ( 'post.yzm' ) )
            //! $user1->autoCheckToken ( $_POST )
            if (!$this->check_verify(I('post.yzm'))) {

                $this->ajaxReturn(array('nr' => '驗證碼錯誤!', 'sf' => 0));
            } elseif (strlen($data_P['skfs']) > 13 || strlen($data_P['skfs']) < 6) {
                $this->ajaxReturn(array('nr' => '請選擇收款方式!', 'sf' => 0));
            } elseif (!preg_match('/^[0-9]{6,30}$/', $data_P ['skzh'])) {
                $this->ajaxReturn(array('nr' => '收款賬號為數字6-30位！', 'sf' => 0));
            } elseif (strlen($data_P['khh']) > 60 || strlen($data_P['khh']) < 6) {
                $this->ajaxReturn(array('nr' => '開戶支行中文字數2-20字!', 'sf' => 0));
            } else {

                //	if ($addaccount['ue_password']<>md5($data_P['ymm'])) {
                //	$this->ajaxReturn ( array ('nr' => '原密碼不正確!','sf' => 0 ) );
                if (!$user1->autoCheckToken($_POST)) {
                    $this->ajaxReturn(array('nr' => '新勿重複提交,請刷新頁面!', 'sf' => 0));
                } else {
                    $addaccount = M('user')->where(array(UE_account => $_SESSION ['uname']))->find();

                    $data_up['UI_userID'] = $_SESSION ['uid'];
                    $data_up['UI_time'] = date('Y-m-d H:i:s', time());
                    $data_up['UI_realName'] = $addaccount['ue_truename'];
                    $data_up['UI_payaccount'] = $data_P['skzh'];
                    $data_up['UI_payStyle'] = $data_P ['skfs'];
                    $data_up['UI_isindex'] = I('post.sfqy', 0, '/^[1]{1}$/');
                    $data_up['UI_opendress'] = $data_P ['khh'];
                    $reg = M('userinfo')->add($data_up);
                    //	$reg = M ( 'user' )->where ( array (
                    //			'UE_ID' => $_SESSION ['uid']
                    //	) )->save (array('UE_password'=>md5($data_P['xmm'])));

                    //dump($data_up);

                    if ($reg) {
                        $this->ajaxReturn('添加成功!');
                    } else {
                        $this->ajaxReturn('添加失敗!');
                    }
                }
            }
        }
    }
	//修改二级密码处理
    public function xgejmmcl()
    {
		/**
		 * $data_p 接收post过来的值;
		 * 通过正则匹配post过来的新二级密码(xejmm),长度1,15,数字,字母;
		 * 判断新二级密码两次输入是否一致;
		 * 判断新二级密码与元二级密码是否一致;
		 * $addaccount 查询商城注册用户表UE_account等于$_SESSION['uname'],返回一条;
		 * 判断二级密码是否等于md5加密后的post过来的原二级密码;
		 * 如果相等,修改商城注册用户表UE_ID等于$_SESSION['uid']中UE_secpwd等于md5加密后的新二级密码;
		 */
        if (IS_POST) {
            $data_P = I('post.');
            //dump($data_P);die;
            //$this->ajaxReturn($data_P['ymm']);die;
            //$user = M ( 'user' )->where ( array (
            //		UE_account => $_SESSION ['uname']
            //) )->find ();

            $user1 = M();
            //! $this->check_verify ( I ( 'post.yzm' ) )
            //! $user1->autoCheckToken ( $_POST )
            if (!preg_match('/^[a-zA-Z0-9]{1,15}$/', $data_P ['xejmm'])) {
                //$this->ajaxReturn ( array ('nr' => '新二级密碼6-12個字元,大小寫英文+數字,請勿用特殊詞符！','sf' => 0 ) );
                die("<script>alert('新二级密碼6-12個字元,大小寫英文+數字,請勿用特殊詞符！');history.back(-1);</script>");
            } elseif ($data_P['xejmm'] <> $data_P['xejmmqr']) {
                //$this->ajaxReturn ( array ('nr' => '新二级密碼兩次輸入不一致!','sf' => 0 ) );
                die("<script>alert('新二级密碼兩次輸入不一致！');history.back(-1);</script>");
            } elseif ($data_P['yejmm'] == $data_P['xejmm']) {
                //$this->ajaxReturn ( array ('nr' => '原二级密碼和新密碼不能相同!','sf' => 0 ) );
                die("<script>alert('原二级密碼和新密碼不能相同！');history.back(-1);</script>");
            } else {
                $addaccount = M('user')->where(array(UE_account => $_SESSION ['uname']))->find();

                if ($addaccount['ue_secpwd'] <> md5($data_P['yejmm'])) {
                    //$this->ajaxReturn ( array ('nr' => '原二级密碼不正確!','sf' => 0 ) );
                    die("<script>alert('原二级密碼不正確！');history.back(-1);</script>");
                } else {

                    $reg = M('user')->where(array(
                        'UE_ID' => $_SESSION ['uid']
                    ))->save(array('UE_secpwd' => md5($data_P['xejmm'])));


                    if ($reg) {
                        //$this->ajaxReturn ( array ('nr' => '修改成功!','sf' => 0 ));
                        die("<script>alert('修改成功!');history.back(-1);</script>");
                    } else {
                        //$this->ajaxReturn ( array ('nr' => '修改失敗!','sf' => 0 ) );
                        die("<script>alert('修改失敗！');history.back(-1);</script>");
                    }
                }
            }
        }
    }
	//绑定密保添加
    public function bdmbadd()
    {
		/**
		 * $data_p 接收post过来的值;
		 * 判断验证码是否正确;
		 * 判断选择的密保问题;
		 * 判断密保问题是不为空;
		 * 判读问题格式,长度<60;
		 * 判断答案字符,20>长度>1;
		 * 通过令牌验证防止重复提交;
		 * $addacount 查询商城注册用户表UE_account等于$_SESSION['uname'],返回一条;
		 * 判断当前是否已经设置过密保;
		 * 如果没有设置,添加商城注册用户表中对应的字段,完成添加密保;
		 */
        if (IS_AJAX) {
            $data_P = I('post.');
            //dump($data_P);die;
            //$this->ajaxReturn($data_P['ymm']);die;
            //$user = M ( 'user' )->where ( array (
            //		UE_account => $_SESSION ['uname']
            //) )->find ();

            $user1 = M();
            //! $this->check_verify ( I ( 'post.yzm' ) )
            //! $user1->autoCheckToken ( $_POST )
            if (!$this->check_verify(I('post.yzm'))) {

                $this->ajaxReturn(array('nr' => '驗證碼錯誤!', 'sf' => 0));
            } elseif ($data_P['wt1'] == '0' || $data_P['wt2'] == '0' || $data_P['wt3'] == '0') {
                $this->ajaxReturn(array('nr' => '請選擇問題!', 'sf' => 0));
            } elseif ($data_P['wt1'] == $data_P['wt2'] || $data_P['wt1'] == $data_P['wt3'] || $data_P['wt2'] == $data_P['wt3']) {
                $this->ajaxReturn(array('nr' => '密保問題不能相同!', 'sf' => 0));
            } elseif (strlen($data_P['wt1']) > 60 || strlen($data_P['wt2']) > 60 || strlen($data_P['wt3']) > 60) {
                $this->ajaxReturn(array('nr' => '問題格式不對!', 'sf' => 0));
            } elseif (strlen($data_P['da1']) > 20 || strlen($data_P['da2']) > 20 || strlen($data_P['da3']) > 20) {
                $this->ajaxReturn(array('nr' => '答案1-10個字！', 'sf' => 0));
            } elseif (strlen($data_P['da1']) < 1 || strlen($data_P['da2']) < 1 || strlen($data_P['da3']) < 1) {
                $this->ajaxReturn(array('nr' => '答案1-10個字！', 'sf' => 0));
            } elseif (!$user1->autoCheckToken($_POST)) {
                $this->ajaxReturn(array('nr' => '新勿重複提交,請刷新頁面!', 'sf' => 0));
            } else {
                $addaccount = M('user')->where(array(UE_account => $_SESSION ['uname']))->find();

                if ($addaccount['ue_question'] <> '') {
                    $this->ajaxReturn(array('nr' => '您已經設置過密保!', 'sf' => 0));
                    //}elseif(false){
                    //	$this->ajaxReturn ( array ('nr' => '新勿重複提交,請刷新頁面!','sf' => 0 ) );
                } else {


                    $data_up['UE_question'] = $data_P['wt1'];
                    $data_up['UE_question2'] = $data_P['wt2'];
                    $data_up['UE_question3'] = $data_P['wt3'];
                    $data_up['UE_answer'] = $data_P['da1'];
                    $data_up['UE_answer2'] = $data_P ['da2'];
                    $data_up['UE_answer3'] = $data_P ['da3'];


                    $reg = M('user')->where(array(
                        'UE_ID' => $_SESSION ['uid']
                    ))->save($data_up);


                    if ($reg) {
                        $this->ajaxReturn(array('nr' => '綁定成功!', 'sf' => 0));
                    } else {
                        $this->ajaxReturn(array('nr' => '綁定失敗!', 'sf' => 0));
                    }
                }
            }
        }
    }
	//修改密保添加
    public function xgmbadd()
    {
		/**
		 * $data_p 接收post过来的值;
		 * $addacount 查询商城注册用户表UE_account等于$_SESSION['uname'],返回一条;
		 * 判断当前是否已经绑定过密保;
		 * 判断验证码是否正确;
		 * 判断原密保问题是否等于post过来的答案;
		 * 判断原密保问题是否等于post过来的新密保的问题;
		 * 判读新密保问题格式,长度<60;
		 * 判断新密保答案字符,20>长度>1;
		 * 通过令牌验证防止重复提交;
		 * 修改商城注册用户表中对应的字段,完成修改密保;
		 */
        if (IS_AJAX) {
            $data_P = I('post.');
            //dump($data_P);die;
            //$this->ajaxReturn($data_P['ymm']);die;
            //$user = M ( 'user' )->where ( array (
            //		UE_account => $_SESSION ['uname']
            //) )->find ();

            $user1 = M();
            //! $this->check_verify ( I ( 'post.yzm' ) )
            //! $user1->autoCheckToken ( $_POST )
            $addaccount = M('user')->where(array(UE_account => $_SESSION ['uname']))->find();
            if (!$this->check_verify(I('post.yzm'))) {
                $this->ajaxReturn(array('nr' => '驗證碼錯誤!', 'sf' => 0));
            } elseif ($addaccount['ue_question'] == '') {
                $this->ajaxReturn(array('nr' => '您從未綁定過密保,請先綁定保密!', 'sf' => 0));
            } elseif ($addaccount['ue_answer'] <> $data_P['yda1'] || $addaccount['ue_answer2'] <> $data_P['yda2'] || $addaccount['ue_answer3'] <> $data_P['yda3']) {
                $this->ajaxReturn(array('nr' => '原密保答案不正確!', 'sf' => 0));
            } elseif ($data_P['wt1'] == '0' || $data_P['wt2'] == '0' || $data_P['wt3'] == '0') {
                $this->ajaxReturn(array('nr' => '請選擇新保密問題!', 'sf' => 0));
            } elseif ($data_P['wt1'] == $data_P['wt2'] || $data_P['wt1'] == $data_P['wt3'] || $data_P['wt2'] == $data_P['wt3']) {
                $this->ajaxReturn(array('nr' => '新保密問題不能相同!', 'sf' => 0));
            } elseif (strlen($data_P['wt1']) > 60 || strlen($data_P['wt2']) > 60 || strlen($data_P['wt3']) > 60) {
                $this->ajaxReturn(array('nr' => '新保密問題格式不對!', 'sf' => 0));
            } elseif (strlen($data_P['da1']) > 20 || strlen($data_P['da2']) > 20 || strlen($data_P['da3']) > 20) {
                $this->ajaxReturn(array('nr' => '新保密答案1-10個字！', 'sf' => 0));
            } elseif (strlen($data_P['da1']) < 1 || strlen($data_P['da2']) < 1 || strlen($data_P['da3']) < 1) {
                $this->ajaxReturn(array('nr' => '新保密答案1-10個字！', 'sf' => 0));
            } elseif (false) {
                $this->ajaxReturn(array('nr' => '新勿重複提交,請刷新頁面!', 'sf' => 0));
            } else {


                //if ($addaccount['ue_question']<>'') {
                //	$this->ajaxReturn ( array ('nr' => '您已經設置過密保!','sf' => 0 ) );
                //}elseif(false){
                //	$this->ajaxReturn ( array ('nr' => '新勿重複提交,請刷新頁面!','sf' => 0 ) );
                //} else {


                $data_up['UE_question'] = $data_P['wt1'];
                $data_up['UE_question2'] = $data_P['wt2'];
                $data_up['UE_question3'] = $data_P['wt3'];
                $data_up['UE_answer'] = $data_P['da1'];
                $data_up['UE_answer2'] = $data_P ['da2'];
                $data_up['UE_answer3'] = $data_P ['da3'];


                $reg = M('user')->where(array(
                    'UE_ID' => $_SESSION ['uid']
                ))->save($data_up);


                if ($reg) {
                    $this->ajaxReturn(array('nr' => '修改成功!', 'sf' => 0));
                } else {
                    $this->ajaxReturn(array('nr' => '修改失敗!', 'sf' => 0));
                }
                //}
            }
        }
    }
	//财务明细
    public function cwmx()
    {
		/**
		 * $result 倒序查询提供帮助钱包表user等于$_SESSION['uname'],zt等于0的数据;
		 * $count1  查詢提供帮助奖金表滿足user等于$_SESSION['uname']要求的总计录数;
		 * $list1 按每页10条数据,倒序查询提供帮助奖金表user等于$_SESSION['uname'],返回全部;
		 * $count2  查詢提供帮助记录表滿足user等于$_SESSION['uname']要求的总计录数;
		 * $list2 按每页10条数据,倒序查询提供帮助记录表user等于$_SESSION['uname'],返回全部;
		 * $count 查询商城用户注册登录表滿足UG_account等于$_SESSION['uname']要求的总计录数;
		 * $list 按每页10条数据,倒序查询商城用户注册登录表UG_account等于$_SESSION['uname'],返回全部;
		 * $count 查询提现表user等于$_SESSION['uname'],zt等于0的数据;
		 * $list 按每页10条数据,倒序查询提现表user等于$_SESSION['uname'],返回全部;
		 * $userdata 查询商城用户注册表UE_account等于$_SESSION['uname'],zt等于0的数据;
		 * $fenhong1 查询商城用户注册登录表UE_account等于$_SESSION['uname'],UG_dataType等于tjj中UG_money的总和;
		 * $fenhong2 查询商城用户注册登录表UE_account等于$_SESSION['uname'],UG_dataType等于jlj中UG_money的总和;
		 */
//jerry
        $tgbz = M("tgbz");
        $result = $tgbz->where(array("user" => $_SESSION['uname'], "zt" => 0))->order('id DESC')->select();
        $this->v_list = $result;
        //jerry

        //////////////////----------
        $User = M('user_jj'); // 實例化User對象

        $map1['user'] = $_SESSION['uname'];
        $count1 = $User->where($map1)->count(); // 查詢滿足要求的總記錄數
        //$page = new \Think\Page ( $count, 3 ); // 實例化分頁類 傳入總記錄數和每頁顯示的記錄數(25)

        $p1 = getpage($count1, 10);

        $list1 = $User->where($map1)->order('id DESC')->limit($p1->firstRow, $p1->listRows)->select();
        $this->assign('list1', $list1); // 賦值數據集
        $this->assign('page1', $p1->show()); // 賦值分頁輸出
        /////////////////----------------

        //////////////////----------
        $User = M('user_jl'); // 實例化User對象

        $map2['user'] = $_SESSION['uname'];
        $count2 = $User->where($map2)->count(); // 查詢滿足要求的總記錄數
        //$page = new \Think\Page ( $count, 3 ); // 實例化分頁類 傳入總記錄數和每頁顯示的記錄數(25)

        $p2 = getpage($count2, 10);

        $list2 = $User->where($map2)->order('id DESC')->limit($p2->firstRow, $p2->listRows)->select();
        $this->assign('list2', $list2); // 賦值數據集
        $this->assign('page2', $p2->show()); // 賦值分頁輸出
        /////////////////----------------


        //////////////////----------
        $User = M('userget'); // 實例化User對象

        $map['UG_account'] = $_SESSION['uname'];
        $count = $User->where($map)->count(); // 查詢滿足要求的總記錄數
        //$page = new \Think\Page ( $count, 3 ); // 實例化分頁類 傳入總記錄數和每頁顯示的記錄數(25)

        $p = getpage($count, 10);

        $list = $User->where($map)->order('UG_ID DESC')->limit($p->firstRow, $p->listRows)->select();
        $this->assign('list', $list); // 賦值數據集
        $this->assign('page', $p->show()); // 賦值分頁輸出
        /////////////////----------------



        //////////////////----------
        $User = M('tixian'); // 實例化User對象

        $map['UG_account'] = $_SESSION['uname'];
        $count = $User->where($map)->count(); // 查詢滿足要求的總記錄數
        //$page = new \Think\Page ( $count, 3 ); // 實例化分頁類 傳入總記錄數和每頁顯示的記錄數(25)

        $p = getpage($count, 10);

        $txlist = $User->where($map)->order('id DESC')->limit($p->firstRow, $p->listRows)->select();
		//echo "<pre>";print_r($txlist);exit;
        $this->assign('txlist', $txlist); // 賦值數據集
        $this->assign('txpage', $p->show()); // 賦值分頁輸出
        /////////////////----------------


        $userdata = M('user')->where(array(
            UE_account => $_SESSION ['uname']
        ))->find();

        $this->userdata = $userdata;


        $fenhong1 = M('userget')->where(array('UG_account' => $_SESSION ['uname'], 'UG_dataType' => 'tjj'))->sum('UG_money');

        if ($fenhong1 == '') {
            $fenhong1 = '0';
        }
        //$fenhong2='600';
        $this->fenhong1 = $fenhong1;


        $fenhong2 = M('userget')->where(array('UG_account' => $_SESSION ['uname'], 'UG_dataType' => 'jlj'))->sum('UG_money');

        if ($fenhong2 == '') {
            $fenhong2 = '0';
        }
        //$fenhong2='600';
        $this->fenhong2 = $fenhong2;

		$this->txstatus = C("txstatus");
		$this->txthemin = C("txthemin");
		$this->txrate = C("txrate");
		$this->txthemax = C("txthemax");
		$this->txthebeishu = C("txthebeishu");

        $this->display('cwmx');
    }
	//提供帮助_提现_处理
    public function tgbz_tx_cl()
    {
		/**
		 * 判断get过来的id是否为空;
		 * $count1 查询商城用户登陆表结束时间>=UG_gettime>=等于开始时间,UG_account等于当前用户名,UG_datatype等于提供帮助(tgbz)的总记录数;
		 * 判断一天内总记录数是否等于5;
		 * 如果不等,$count2 查询商城用户登陆表结束时间>=UG_gettime>=等于开始时间,UG_account等于当前用户名,UG_datatype等于提供帮助(tgbz)的总记录数;
		 * 判断一月内总记录数是否>=60;
		 * 如果<60,$proall 查询用户提供帮助奖金表id等于get过来的id,返回一条;
		 * 判断用户提供帮助奖金状态是否等于0或用户状态是否等于1;
		 * 如果不等于,$user_zq 查询商城用户注册表UE_ID等于$_SESSION['uid'],返回一条数据;
		 * 设置商城用户注册表UE_ID等于$_SESSION['uid']中UE_money等于用户金币;
		 * $user_xz 查询商城用户注册表UE_ID等于$_SESSION['uid'],返回一条数据;
		 * 修改商城用户奖金表id等于get过来的id中状态(zt)等于1;
		 * 添加商城登录用户表中对应字段的数据;
		 */
        if (I('get.id') <> '') {

            ////////////////////
            $uname = $_SESSION['uname'];//当前用户名
            $starttime = date('Y-m-d 00:00:01', time());//开始时间
            $endtime = date('Y-m-d 23:59:59', time());//结束时间
            $count1 = M("userget")->where("UG_getTime>='$starttime' and UG_getTime<='$endtime' and UG_account='$uname' and UG_dataType='tgbz'")->count();
            if ($count1 == 5) {
                die("<script>alert('提现失败，每天只允许提现五次！');history.back(-1);</script>");
            } else {
                $starttime = date('Y-m-1 00:00:01', time());//开始时间
                $endtime = date('Y-m-31 23:59:59', time());//结束时间
                $count2 = M("userget")->where("UG_getTime>='$starttime' and UG_getTime<='$endtime' and UG_account='$uname' and UG_dataType='tgbz'")->count();
                if ($count2 >= 60) {
                    die("<script>alert('提现失败，每月只允许提现60次！');history.back(-1);</script>");
                } else {
                    $varid = I('get.id');
                    $proall = M('user_jj')->where(array('id' => $varid))->find();
                    if (user_jj_zt($varid) == '0' || $proall['zt'] == '1') {
                        die("<script>alert('转出失败,时间没有大于15天或交易未完成！');history.back(-1);</script>");
                    } else {

                        $lx_he = user_jj_lx($varid) + $proall['jb'];//改变用户奖金类型
						$lx_he = $lx_he+$lx_he*C("lixi2")/100;//计算用户金币
                        $user_zq = M('user')->where(array('UE_ID' => $_SESSION['uid']))->find();
                        M('user')->where(array('UE_ID' => $_SESSION['uid']))->setInc('UE_money', $lx_he);
                        $user_xz = M('user')->where(array('UE_ID' => $_SESSION['uid']))->find();
                        M('user_jj')->where(array('id' => $varid))->save(array('zt' => '1'));

                        $note3 = "提供帮助本金加利息";
                        $record3["UG_account"] = $_SESSION['uname']; // 登入轉出賬戶
                        $record3["UG_type"] = 'jb';
                        $record3["UG_allGet"] = $user_zq['ue_money']; // 金幣
                        $record3["UG_money"] = '+' . $lx_he; //
                        $record3["UG_balance"] = $user_xz['ue_money']; // 當前推薦人的金幣餘額
                        $record3["UG_dataType"] = 'tgbz'; // 金幣轉出
                        $record3["UG_note"] = $note3; // 推薦獎說明
                        $record3["UG_getTime"] = date('Y-m-d H:i:s', time()); //操作時間
                        $record3["varid"] = $varid;
                        $reg4 = M('userget')->add($record3);

                        die("<script>alert('提现转出成功.请刷新查看你的账户余额！');history.back(-1);</script>");
                        //echo $lx_he;
                    }//
                }
            }


///////////////////////////
        }

    }
	//激活码转账页面
    public function pin()
    {
		/**
		 * $count1 查询商城注册用户表user等于$_SESSION['uname']的总记录数;
		 * $list1 按每页10条倒序查询商城注册用户表user等于$_SESSION['uname'],返回全部;
		 */
        //////////////////----------
        $User = M('pin'); // 實例化User對象

        $map1['user'] = $_SESSION['uname'];
        $count1 = $User->where($map1)->count(); // 查詢滿足要求的總記錄數
        //$page = new \Think\Page ( $count, 3 ); // 實例化分頁類 傳入總記錄數和每頁顯示的記錄數(25)

        $p1 = getpage($count1, 10);

        $list1 = $User->where($map1)->order('id DESC')->limit($p1->firstRow, $p1->listRows)->select();
        $this->assign('list1', $list1); // 賦值數據集
        $this->assign('page1', $p1->show()); // 賦值分頁輸出
        /////////////////----------------

        $this->pin_zs = M('pin')->where(array('user' => $_SESSION['uname'], 'zt' => 0))->count() + 0;


        $this->display('pin');
    }

	//算法
    public function aab()
    {


        $arr = array(1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
        $p = 0;
        $tj = count($arr);

        //$tj1=$tj;
        //$bba=array_slice($arr,0,1);
        //dump($bba);
        //die;
        //0,4


        for ($m = 0; $m < $tj; $m++) {


            for ($p = 2; $p + $m < $tj; $p++) {
                if ($tj - $m < $p) {
                    break;
                }//1,4  5
                $bba = array_slice($arr, $m, 2);

                //echo $arr[$p].'</br>';
                $bba[] = $arr[$p + $m];

                foreach ($bba as $var)
                    echo $var . '+';

                //dump($bba);
                echo '=' . array_sum($bba) . '<br/>';
                //$bba=array();
            }
            //$tj1--;
            //$a=
            //$tj2=$tj1-1;
            //echo '------------<br>';


        }


        //die;


        for ($m = 0; $m < $tj; $m++) {


            for ($p = 2; $p <= $tj; $p++) {
                if ($tj - $m < $p) {
                    break;
                }//1,4  5
                $bba = array_slice($arr, $m, $p);
                // dump($bba);
                foreach ($bba as $var)
                    echo $var . '+';

                echo '=' . array_sum($bba) . '<br/>';
                //$bba=array();
            }
            //$tj1--;
            //$a=
            //$tj2=$tj1-1;
            //echo '------------<br>';


        }


        die;


        sort($arr); //保证初始数组是有序的
        $last = count($arr) - 1; //$arr尾部元素下标
        $x = $last;
        $count = 1; //组合个数统计
        echo implode(',', $arr), "\n"; //输出第一种组合
        echo "<br/>";
        while (true) {
            $y = $x--; //相邻的两个元素
            if ($arr[$x] < $arr[$y]) { //如果前一个元素的值小于后一个元素的值
                $z = $last;
                while ($arr[$x] > $arr[$z]) { //从尾部开始，找到第一个大于 $x 元素的值
                    $z--;
                }
                /* 交换 $x 和 $z 元素的值 */
                list($arr[$x], $arr[$z]) = array($arr[$z], $arr[$x]);
                /* 将 $y 之后的元素全部逆向排列 */
                for ($i = $last; $i > $y; $i--, $y++) {
                    list($arr[$i], $arr[$y]) = array($arr[$y], $arr[$i]);
                }
                echo implode(',', $arr), "\n"; //输出组合
                echo "<br/>";
                $x = $last;
                $count++;
            }
            if ($x == 0) { //全部组合完毕
                break;
            }
        }
        echo '组合个数： ', $count, "\n";
        //输出结果为：3628800个


        die;


        $xypipeije = 16;
        $data = array(1, 2, 3, 4, 5, 6, 7, 8);
        $tj = count($data);
        $sf_tcpp = '0';

        for ($m = 0; $m < $tj; $m++) {

            for ($p = 0; $p < $tj - $m; $p++) {
                $data1[$m][$p] = $data[$m];

            }
        }
        $adsfdsaf = $data1[0];
        dump($adsfdsaf);
        die;

        for ($v = 0; $v < $tj; $v++) {

            for ($c = 0; $c < $tj; $c++) {
                echo $data[$v] + $data[$c + 1] . '<br>';

            }
        }

        die;


        for ($b = 0; $b < $tj; $b++) {


            if ($sf_tcpp == '1') {
                break;
            }
            $tj_j = $tj - 1;
            echo '===========<br>';
            for ($i = 0; $i < $tj; $i++) {
                if ($b < $i) {
                    $pipeihe = $data[$b] + $data[$tj_j];
                    if ($pipeihe == $xypipeije) {
                        echo $data[$b] . '+' . $data[$tj_j] . '<br>';
                        $sf_tcpp = '1';
                        break;
                    }


                    $tj_j--;
                }
            }
        }


    }


}