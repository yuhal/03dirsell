<?php
function cate($var)
{
    //dump($var);
    $proall = M('user')->where(array('UE_accName' => $var, 'UE_Faccount' => '0', 'UE_check' => '1', 'UE_stop' => '1'))->count("UE_ID");
    return $proall;
}


function sfjhff($r)
{
    $a = array("未激活", "已激活");
    return $a[$r];
}


function getRand($proArr)
{
    $result = '';

    //概率数组的总概率精度
    $proSum = array_sum($proArr);

    //概率数组循环
    foreach ($proArr as $key => $proCur) {
        $randNum = mt_rand(1, $proSum);
        if ($randNum <= $proCur) {
            $result = $key;
            break;
        } else {
            $proSum -= $proCur;
        }
    }
    unset ($proArr);

    return $result;
}


function getpage($count, $pagesize = 10)
{
    $p = new Think\Page($count, $pagesize);
    $p->setConfig('header', '<li class="rows">共<b>%TOTAL_ROW%</b>条记录&nbsp;第<b>%NOW_PAGE%</b>页/共<b>%TOTAL_PAGE%</b>页</li>');
    $p->setConfig('prev', '上一页');
    $p->setConfig('next', '下一页');
    $p->setConfig('last', '末页');
    $p->setConfig('first', '首页');
    $p->setConfig('theme', '%FIRST%%UP_PAGE%%LINK_PAGE%%DOWN_PAGE%%END%%HEADER%');
    $p->lastSuffix = false;//最后一页不显示为总页数
    return $p;
}

function cx_user($var)
{
    //dump($var);
    $proall = M('user')->where(array('UE_account' => $var))->find();
    return $proall['ue_theme'];
}


function diffBetweenTwoDays($day1, $day2)
{
    $second1 = strtotime($day1);
    $second2 = strtotime($day2);

    if ($second1 < $second2) {
        $tmp = $second2;
        $second2 = $second1;
        $second1 = $tmp;
    }
    return ($second1 - $second2) / 86400;
}


function user_jj_lx($var)
{
    $proall = M('user_jj')->where(array('id' => $var))->find();//加入查询
    $result = M("userget")->where(array("varid" => $var))->find();//提现查询
    $ppdd = M("ppdd")->where(array("id" => $proall["r_id"]))->find();//配对信息
    $NowTime = date('Y-m-d', strtotime($proall['date']));//格式化加入时间
    $NowTime2 = date('Y-m-d', strtotime($ppdd["date"]));//格式化配对时间
    if (!empty($result)) {//如果已经提现，则计算加入日期到提现日的利息
        $NowTime3 = date("Y-m-d", strtotime($result["UG_getTime"]));//格式化提现时间
    } else {
        $nowtime3 = date('Y-m-d', time());//格式化当前日期
    }
    $diff1 = diffBetweenTwoDays($NowTime, $NowTime2);//计算加入时间到配对时间的天数
    $diff2 = diffBetweenTwoDays($NowTime2, $nowtime3);//计算配对时间到提现的天数
    if ($diff1 >= 10) {
        $diff1 = 10;
    }
    if ($diff2 >= 10) {
        $diff2 = 10;
    }
    //return $diff2;
    return ($proall['jb'] * $diff1 * (intval(C("lixi1")) / 1000)) + ($proall['jb'] * $diff2 * (intval(C("lixi2")) / 1000));
//
//    $proall = M('user_jj')->where(array('id' => $var))->find();
//    //date('Y-m-d H:i:s',$dayBegin);
//    $NowTime = $proall['date'];
//    $aab = strtotime($NowTime);
//    $NowTime = date('Y-m-d', $aab);
//    $NowTime2 = date('Y-m-d', time());
//    $diff = diffBetweenTwoDays($NowTime, $NowTime2);
//    if ($diff > 10) {
//        $diff = 10;
//    }
//    return $proall['jb'] * $diff * (intval(C("lixi1")) / 100);
}

function user_jj_lx_jerry($var)
{
    $tgbz = M('tgbz')->where(array('id' => $var))->find();//加入查询
    $NowTime = date('Y-m-d', strtotime($tgbz['date']));//格式化加入时间
    $NowTime2 = date('Y-m-d', time());//格式化当前日期
    $diff1 = diffBetweenTwoDays($NowTime, $NowTime2);//计算加入时间到配对时间的天数
    if ($diff1 >= 10) {
        $diff1 = 10;
    }
    //return $diff2;
    return $tgbz['jb'] * $diff1 * (intval(C("lixi1")) / 100);
}


function user_jj_ts($var)
{

    $proall = M('user_jj')->where(array('id' => $var))->find();

    //date('Y-m-d H:i:s',$dayBegin);
    $NowTime = $proall['date'];
    $aab = strtotime($NowTime);
    $NowTime = date('Y-m-d', $aab);
    $result = M("userget")->where(array("varid" => $var))->getField("UG_getTime");
    if (!empty($result)) {
        $NowTime2 = date("Y-m-d", strtotime($result));
    } else {
        $NowTime2 = date('Y-m-d', time());
    }
    $day1 = $NowTime;
    $day2 = $NowTime2;
    $diff = diffBetweenTwoDays($day1, $day2);
    if ($diff > 10) {
        $diff = 10;
    }
    //$diff = $diff/100;
    return $diff;

}

function user_jj_ts_jerry($var)
{

    $proall = M('tgbz')->where(array('id' => $var))->find();

    //date('Y-m-d H:i:s',$dayBegin);
    $NowTime = $proall['date'];
    $aab = strtotime($NowTime);
    $NowTime = date('Y-m-d', $aab);
    $NowTime2 = date('Y-m-d', time());
    $day1 = $NowTime;
    $day2 = $NowTime2;
    $diff = diffBetweenTwoDays($day1, $day2);
    if ($diff > 10) {
        $diff = 10;
    }
    //$diff = $diff/100;
    return $diff;

}

function user_tgbz_jerry($id)
{
    $result = M("userget")->where(array("varid" => $id))->find();
    if ($result) {
        return "已转出";
    } else {
        return "未转出";
    }
}

function user_jj_tx($var)
{

    $proall = M('tgbz')->where(array('id' => $var))->find();

    //date('Y-m-d H:i:s',$dayBegin);
    $NowTime = $proall['date'];
    $aab = strtotime($NowTime);
    $NowTime = date('Y-m-d', $aab);
    $NowTime2 = date('Y-m-d', time());


    $day1 = $NowTime;
    $day2 = $NowTime2;
    return $diff = diffBetweenTwoDays($day1, $day2);

}


function user_jj_sj($var)
{

    $proall = M('tgbz')->where(array('id' => $var))->find();

    $user = M('user')->where(array(UE_account => $proall ['user']))->find();
    return $user['ue_phone'];

}


function user_jj_tx1($var)
{

    $proall = M('jsbz')->where(array('id' => $var))->find();

    //date('Y-m-d H:i:s',$dayBegin);
    $NowTime = $proall['date'];
    $aab = strtotime($NowTime);
    $NowTime = date('Y-m-d', $aab);
    $NowTime2 = date('Y-m-d', time());


    $day1 = $NowTime;
    $day2 = $NowTime2;
    return $diff = diffBetweenTwoDays($day1, $day2);

}


function user_jj_sj1($var)
{

    $proall = M('jsbz')->where(array('id' => $var))->find();

    $user = M('user')->where(array(
        UE_account => $proall ['user']
    ))->find();
    return $user['ue_phone'];

}

/**
 * 查询用户提供帮助奖金状态
 * @param string $var
 * @return int  
 */
function user_jj_zt($var)
{

    $proall = M('user_jj')->where(array('id' => $var))->find();
    $proall2 = M('ppdd')->where(array('id' => $proall['r_id']))->find();
    //date('Y-m-d H:i:s',$dayBegin);
    $NowTime = $proall['date'];
    $aab = strtotime($NowTime);
    $NowTime = date('Y-m-d', $aab);
    $NowTime2 = date('Y-m-d', time());


    $day1 = $NowTime;
    $day2 = $NowTime2;
    $diff = diffBetweenTwoDays($day1, $day2);
    if ($diff >= 0 && $proall2['zt'] == '2') {
        return '1';
    } else {
        return '0';;
    }
}


function user_jj_zt_z($var)
{

    if (user_jj_zt($var) == '1') {
        return '可以提现';
    } else {
        return '不可提现';
    }
}

function user_jj_pipei_z($var)
{
    $proall = M('ppdd')->where(array('id' => $var))->find();
    if ($proall['zt'] == '0') {
        return '未打款';
    } elseif ($proall['zt'] == '1') {
        return '已打款';
    } elseif ($proall['zt'] == '2') {
        return '交易成功';
    }
}


function user_jj_pipei_z2($var)
{
    $proall = M('ppdd')->where(array('id' => $var))->find();
    if ($proall['zt'] == '0') {
        return '未发放';
    } elseif ($proall['zt'] == '1') {
        return '未发放';
    } elseif ($proall['zt'] == '2') {
        return '已发放';
    }
}


function jlj($a, $b, $c)
{
    jlsja($a);
    $tgbz_user_xx = M('user')->where(array('UE_account' => $a))->find();
    //echo $ppddxx['p_id'];die;
    if ($tgbz_user_xx['sfjl'] == 1) {
        $money = $b;
        $accname_zq = M('user')->where(array('UE_account' => $tgbz_user_xx['ue_account']))->find();
        M('user')->where(array('UE_account' => $tgbz_user_xx['ue_account']))->setInc('jl_he', $money);
        $accname_xz = M('user')->where(array('UE_account' => $tgbz_user_xx['ue_account']))->find();

		
        $record3 ["UG_account"] = $tgbz_user_xx['ue_account']; // 登入轉出賬戶
        $record3 ["UG_type"] = 'jb';
        $record3 ["UG_allGet"] = $accname_zq['jl_he']; // 金幣
        $record3 ["UG_money"] = '+' . $money; //
        $record3 ["UG_balance"] = $accname_xz['jl_he']; // 當前推薦人的金幣餘額
        $record3 ["UG_dataType"] = 'jlj'; // 金幣轉出
        $record3 ["UG_note"] = $c; // 推薦獎說明
        $record3["UG_getTime"] = date('Y-m-d H:i:s', time()); //操作時間
        $reg4 = M('userget')->add($record3);
    }
    return $tgbz_user_xx['zcr'];

}


function jlj2($a, $b, $c, $d, $e)
{
    $tgbz_user_xx = M('user')->where(array('UE_account' => $a))->find();
    if ($tgbz_user_xx['sfjl'] == 1) {
        $ppddxx = M('ppdd')->where(array('id' => $e))->find();
        $peiduidate = M('tgbz')->where(array('id' => $ppddxx['p_id'], 'user' => $ppddxx['p_user']))->find();
        $data2['user'] = $a;
        $data2['r_id'] = $ppddxx['id'];
        $data2['date'] = $peiduidate['date'];
        $data2['note'] = '经理奖第' . $d . '代';
        $data2['jb'] = $ppddxx['jb'];
        $data2['jj'] = $b;
        $data2['ds'] = $d;
        M('user_jl')->add($data2);
    }
    return $tgbz_user_xx['zcr'];
}

function jlj3($a, $b, $c, $d, $e)
{
    $tgbz_user_xx = M('user')->where(array('UE_account' => $a))->find();
    $ppddxx = M('ppdd')->where(array('id' => $e))->find();
    $peiduidate = M('tgbz')->where(array('id' => $ppddxx['p_id'], 'user' => $ppddxx['p_user']))->find();
    $data2['user'] = $a;
    $data2['r_id'] = $ppddxx['id'];
    $data2['date'] = $peiduidate['date'];
    $data2['note'] = '推荐奖10%';
    $data2['jb'] = $ppddxx['jb'];
    $data2['jj'] = $b;
    $data2['ds'] = $d;
    M('user_jl')->add($data2);
    return $tgbz_user_xx['zcr'];
}

/**
 * 新注册用户的记录
 * @param string $user
 * @param string $b
 * @param string $c
 */
function newuserjl($user, $b, $c)
{

    $data2['user'] = $user;
    $data2['r_id'] = '0';
    $data2['date'] = date('Y-m-d H:i:s',time());
    $data2['note'] = $c;
    $data2['jb'] = $b;
    $data2['jj'] = $b;
    $data2['ds'] = '0';
    M('user_jl')->add($data2);
	M('user')->where(array(UE_account => $user))->setInc('UE_money', $b);
}

function jlj4($a, $b)
{
    $tgbz_user_xx = M('user')->where(array('UE_account' => $a))->find();

    M('user')->where(array(UE_account => $a))->setInc('tj_he1', $b);


    return $tgbz_user_xx['zcr'];
}

function jlj5($a, $b)
{
    $tgbz_user_xx = M('user')->where(array('UE_account' => $a))->find();
    if ($tgbz_user_xx['sfjl'] == 1) {
        M('user')->where(array(UE_account => $a))->setInc('jl_he1', $b);
    }

    return $tgbz_user_xx['zcr'];
}

function datedqsj($var)
{
$jjdktime=C("jjdktime");

    $NowTime = $var;
    $aab = strtotime($NowTime);
    //$aab2 = $aab + 86400 + 86400;
$aab2 = $aab + 3600 *$jjdktime;

    return date('Y-m-d H:i:s', $aab2);;

}

function hk($var)
{


    return $var . 'RMB';

}

function datedqsj2($var)
{


    $NowTime = $var;
    $aab = strtotime($NowTime);
    $aab2 = $aab + 86400 + 86400;
    $bba3 = date('Y-m-d H:i:s', time());
    $bba4 = strtotime($bba3);

    if ($aab2 > $bba4) {
        return "style='display:none;'";
    }
}

function datedqsj3($var)
{


    $NowTime = $var;
    $aab = strtotime($NowTime);
    $aab2 = $aab + 86400 + 86400;
    $bba3 = date('Y-m-d H:i:s', time());
    $bba4 = strtotime($bba3);

    if ($aab2 > $bba4) {
        return "style='display:none;'";
    }
}

//===2015/11/30 星期一 QQ54885782 可以计算会员级别，升级
function jlsja($var)
{

	/*
    $zctj = 0;
    $zctjuser = M('user')->where(array('UE_accName' => $var))->select();
    foreach ($zctjuser as $value) {
        $tgbztj1 = M('ppdd')->where(array('p_user' => $value['ue_account'], 'zt' => '2'))->sum('jb');
        if ($tgbztj1 >= 700) {
            $zctj++;
        }
    }

    $tgbztj = M('ppdd')->where(array('p_user' => $var, 'zt' => '2'))->sum('jb');

    if ($zctj >= 10 && $tgbztj >= 7000) {
        M('user')->where(array('UE_account' => $var))->save(array('sfjl' => 1));
    }*/
}
//===2015/12/1 QQ54885782 add
function mmtjrennumadd($var)
{
	M('user')->where(array('UE_account' => $var))->setInc('tj_num',1);
	$zctjuser = M('user')->where(array('UE_account' => $var))->select();
	foreach ($zctjuser as $value) {
		if($value['ue_accname']<>''){
			mmtjrennumadd($value['ue_accname']);
		}else{
			return true;
		}
	}
}
/**
 * 判断当前用户的等级,并记录登录次数
 * @param int $var 
 */
function accountaddlevel($var){
	$usermm=M('user')->where(array('UE_account'=>$var))->find();
	$numtemparr = explode(',',C("jjaccountnum"));
	$nametemparr = explode(',',C("jjaccountlevel"));
	$levelnum=0;
	foreach($numtemparr as $k=>$num){
		if($usermm['tj_num']>=$num){
			$levelnum=$k;
		}
	}
	$levelname = $nametemparr[$levelnum];
	M('user')->where(array('UE_account' => $var))->save(array('levelname' => $levelname));
}

function fftuijianmoney($var,$money,$level){
	$tjratearr = explode(',',C("jjtuijianratenew"));
	$tjmoney = ($money*$tjratearr[$level-1])/100;
	$accname_zq=M('user')->where(array('UE_account'=>$var))->find();
	M('user')->where(array('UE_account'=>$var))->setInc('tj_he',$tjmoney);
	$accname_xz=M('user')->where(array('UE_account'=>$var))->find();

			$note3 = "推荐奖".$tjratearr[$level-1]."%";
			$record3 ["UG_account"] = $var; // 登入转出账户
			$record3 ["UG_type"] = 'jb';
			$record3 ["UG_allGet"] = $accname_zq['tj_he']; // 金币
			$record3 ["UG_money"] = '+'.$tjmoney; //
			$record3 ["UG_balance"] = $accname_xz['tj_he']; // 当前推荐人的金币馀额
			$record3 ["UG_dataType"] = 'tjj'; // 金币转出
			$record3 ["UG_note"] = $note3; // 推荐奖说明
			$record3["UG_getTime"] = date ( 'Y-m-d H:i:s', time () ); //操作时间
			$reg4 = M ( 'userget' )->add ( $record3 );

	jsaccountmoney($var,$money,$accname_xz['levelname']);
	if($accname_xz['ue_accname']<>''){
		fftuijianmoney($accname_xz['ue_accname'],$money,$level+1);
	}else{
		return true;
	}

}

function jsaccountmoney($account,$money,$levelname){
	if(C("jjaccountflag")=='1'){
		$accountratearr = explode(',',C("jjaccountrate"));
		$nametemparr = explode(',',C("jjaccountlevel"));
		$levelnum=0;
		foreach($nametemparr as $k=>$name){
			if($levelname==$name){
				$levelnum=$k;
			}
		}
		$levelrate = $accountratearr[$levelnum];
		$jjmoney = ($money*$levelrate)/100;

			$accname_zq = M('user')->where(array('UE_account' => $account))->find();
			M('user')->where(array('UE_account' => $account))->setInc('jl_he', $jjmoney);
			$accname_xz = M('user')->where(array('UE_account' => $account))->find();

			$note = '经理级别奖'.$levelrate.'%';
			$record3 ["UG_account"] = $account; // 登入轉出賬戶
			$record3 ["UG_type"] = 'jb';
			$record3 ["UG_allGet"] = $accname_zq['jl_he']; // 金幣
			$record3 ["UG_money"] = '+' . $jjmoney; //
			$record3 ["UG_balance"] = $accname_xz['jl_he']; // 當前推薦人的金幣餘額
			$record3 ["UG_dataType"] = 'jlj'; // 金幣轉出
			$record3 ["UG_note"] = $note; // 推薦獎說明
			$record3["UG_getTime"] = date('Y-m-d H:i:s', time()); //操作時間
			$reg4 = M('userget')->add($record3);
	}
}
//===end

function lkdsjfsdfj($var1, $jb)
{

    $ppddxx['p_user'] = $var1;
    $ppddxx['jb'] = $jb;
    //经理奖金订单
    $tgbz_user_xx = M('user')->where(array('UE_account' => $ppddxx['p_user']))->find();//充值人详细
    jlj4($tgbz_user_xx['ue_accname'], $ppddxx['jb'] * 0.1);

    if ($tgbz_user_xx['zcr'] <> '') {
        $zcr2 = jlj5($tgbz_user_xx['zcr'], $ppddxx['jb'] * 0.05);
        if ($zcr2 <> '') {
            $zcr3 = jlj5($zcr2, $ppddxx['jb'] * 0.03);
            //echo $ppddxx['p_user'].'sadfsaf';die;
            if ($zcr3 <> '') {
                $zcr4 = jlj5($zcr3, $ppddxx['jb'] * 0.01);
                if ($zcr4 <> '') {
                    $zcr5 = jlj5($zcr4, $ppddxx['jb'] * 0.005);
                    if ($zcr5 <> '') {
                        $zcr6 = jlj5($zcr5, $ppddxx['jb'] * 0.003);
                        if ($zcr6 <> '') {
                            $zcr7 = jlj5($zcr6, $ppddxx['jb'] * 0.001);
                            if ($zcr7 <> '') {
                                $zcr8 = jlj5($zcr7, $ppddxx['jb'] * 0.0005);
                                if ($zcr8 <> '') {
                                    $zcr9 = jlj5($zcr8, $ppddxx['jb'] * 0.0003);

                                    if ($zcr9 <> '') {
                                        jlj5($zcr9, $ppddxx['jb'] * 0.0001);


                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    //经理奖金订单

}


?>