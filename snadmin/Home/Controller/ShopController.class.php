<?php
namespace Home\Controller;
use Think\Controller;
class ShopController extends CommonController {
 //金币总共列表
public function jbzg_list() {
	
	
	
	
	
	
	
	
		$User = M ( 'shopsj' ); // 實例化User對象
		$count = $User->where ( array (
				'leixin' => 'jbzgq' 
		) )->count (); // 查詢滿足要求的總記錄數
		$page = new \Think\Page ( $count, 60 ); // 實例化分頁類 傳入總記錄數和每頁顯示的記錄數(25)
			
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
		$list = $User->where ( array (
				'leixin' => 'jbzgq' 

		) )->order ( 'id DESC' )->limit ( $page->firstRow . ',' . $page->listRows )->select ();
		$this->assign ( 'list', $list ); // 賦值數據集
		$this->assign ( 'page', $show ); // 賦值分頁輸出
	
	
	
	
	
	
	
		$userData = M ( 'user' )->where ( array (
				'UE_ID' => $_SESSION ['uid']
		) )->find ();
		$this->userData = $userData;
	
		$this->display ( 'index/jbzg_list' );
	}
	
	//钻石币月供列表
	public function zsbyg_list() {
	
	
	
	
	
	
	
	
		//////////////////----------
		$User = M ( 'info' ); // 實例化User對象
		
		if(I('get.type')==''){
			$map['zt']='0';
		}else{
			$map['IF_type']=I('get.type');
		}

		$count = $User->where ( $map )->count (); // 查詢滿足要求的總記錄數
		//$page = new \Think\Page ( $count, 3 ); // 實例化分頁類 傳入總記錄數和每頁顯示的記錄數(25)
		
		$p = getpage($count,100);
		
		$list = $User->where ( $map )->order ( 'IF_ID DESC' )->limit ( $p->firstRow, $p->listRows )->select ();
		$this->assign ( 'list', $list ); // 賦值數據集
		$this->assign ( 'page', $p->show() ); // 賦值分頁輸出
		/////////////////----------------
	
	
	
	
	
	
	
		$userData = M ( 'user' )->where ( array (
				'UE_ID' => $_SESSION ['uid']
		) )->find ();
		$this->userData = $userData;
	
		$this->display ( 'index/zsbyg_list' );
	}
	
	
	//留言列表
	public function ly_list() {
	
	
	
	
	
	
	
	
		//////////////////----------
		$User = M ( 'message' ); // 實例化User對象
	
		if(I('post.user')==''){
			$map['zt']='0';
		}else{
			$map['MA_userName']=I('post.user');
		}
		
		if(I('get.type')=='0'){
			$map['zt']='0';
		}elseif(I('get.type')=='1'){
			$map['zt']='1';
		}
		
		
	
		$count = $User->where ( $map )->count (); // 查詢滿足要求的總記錄數
		//$page = new \Think\Page ( $count, 3 ); // 實例化分頁類 傳入總記錄數和每頁顯示的記錄數(25)
	
		$p = getpage($count,100);
	//按每页显示100,MA_ID倒序 查询留言表,状态为0或者1,MA_userName等于post传来的user,查询全部;
		$list = $User->where ( $map )->order ( 'MA_ID DESC' )->limit ( $p->firstRow, $p->listRows )->select ();
		$this->assign ( 'list', $list ); // 賦值數據集
		$this->assign ( 'page', $p->show() ); // 賦值分頁輸出
		/////////////////----------------
	
	
	
	
		$thehost = "http://" . $_SERVER["HTTP_HOST"];
		$this->assign ( 'thehost', $thehost );
		//查询商城注册用户表UE_ID等于$_SESSON['uid'],返回一条;
		$userData = M ( 'user' )->where ( array (
				'UE_ID' => $_SESSION ['uid']
		) )->find ();
		$this->userData = $userData;
	
		$this->display ( 'index/ly_list' );
	}
	
	
	
	
	
	
  //钻石币月供列表修改2
	public function zsbyg_list_xg2() {
	
	
	//查询信息表IF_ID等于get传来的id,返回一条;
		$caution = M ( 'info' )->where ( array (
				'IF_ID'=> I('get.id') ,
		) )->find ();
	
	
		$this->caution=$caution;

		//查询商城注册用户表UE_ID等于$_SESSION['uid'],返回一条;
		$userData = M ( 'user' )->where ( array (
				'UE_ID' => $_SESSION ['uid']
		) )->find ();
		$this->userData = $userData;
	
		$this->display ( 'index/zsbyg_list_xg2' );
	}
	
	//留言列表处理2
	public function ly_list_cl() {
	
		
	//查询留言表MA_ID等于get传来的id,返回一条;
		$caution = M ( 'message' )->where ( array (
				'MA_ID'=> I('get.id') ,
		) )->find ();
	
	
		$this->caution=$caution;
	
	//查询商城注册用户表UE_ID等于$_SESSION['uid'],返回一条;
		$userData = M ( 'user' )->where ( array (
				'UE_ID' => $_SESSION ['uid']
		) )->find ();
		$this->userData = $userData;
	
		$this->display ( 'index/ly_list_cl' );
	}
	
	
    
	//修改钻石币月供列表
	public function zsbyg_list_xg() {
	
	
	
		
	
	
		
	//查询商城注册用户表UE_ID等于$_SESSION['uid'],返回一条;
		$userData = M ( 'user' )->where ( array (
				'UE_ID' => $_SESSION ['uid']
		) )->find ();
		$this->userData = $userData;
	
		$this->display ( 'index/zsbyg_list_xg' );
	}
	
	
	
	//金币总共列表修改处理
	public function jbzg_list_xgcl() {
	if(I('post.IF_type')<>''&&I('post.IF_theme')<>''&&$_POST['content']<>''){
		$data['IF_type']=I('post.IF_type');
		$data['IF_theme']=I('post.IF_theme');
		$data['IF_webImg']=I('post.face180');
		$data['IF_content']=$_POST['content'];
		$data['IF_time']=date ( 'Y-m-d H:i:s', time () );
	//添加信息表对应字段的数据
		if(M('info')->add($data)){
			$this->success('添加成功！');
		}else{
			$this->success('添加失敗！');
		}
		//$this->success('成功！');
	}else{
		$this->success('数据不完整！');
	}
	}
    
	
	
	//金币总共列表修改处理2
	public function jbzg_list_xgcl2() {
		if(I('post.IF_type')<>''&&I('post.IF_theme')<>''&&$_POST['content']<>''){
			$data['IF_type']=I('post.IF_type');
			$data['IF_theme']=I('post.IF_theme');
			$data['IF_webImg']=I('post.face180');
			$data['IF_content']=$_POST['content'];
			$data['IF_time']=date ( 'Y-m-d H:i:s', time () );
	//修改信息表IF_ID等于post传来的id,修改对应字段的数据
			if(M('info')->where(array('IF_ID'=>I('post.id')))->save($data)){
				$this->success('修改成功！');
			}else{
				$this->success('修改失敗！');
			}
			//$this->success('成功！');
		}else{
			$this->success('数据不完整！');
		}
	}
	
	
	//留言列表修改出来2
	public function ly_list_xgcl2() {
		
			
			$data['MA_reply']=$_POST['content'];
			$data['MA_replyTime']=date ( 'Y-m-d H:i:s', time () );
			$data['zt']='1';
		//修改留言表MA_ID等于post传来的id,修改对应字段的数据
			if(M('message')->where(array('MA_ID'=>I('post.id')))->save($data)){
				$this->success('处理成功！');
			}else{
				$this->success('处理失敗！');
			}
			//$this->success('成功！');
		
	}
	
	
	
	
	//钻石币月供列表修改处理
	public function zsbyg_list_xgcl() {
	
		$data['sjmc']=I('post.sjmc');
		$data['jyxm']=I('post.jyxm');
		$data['lxfs']=I('post.lxfs');
		$data['dz']=I('post.dz');
		$data['slt']=I('post.face180');
		$data['content']=I('post.content');
		$data['zt']=I('post.zt');
		$data['date']=date ( 'Y-m-d H:i:s', time () );
		$data['leixin']='zsbygq';
		//修改留言表MA_ID等于post传来的id,user等于$_SESSION['uname'],修改对应字段的数据
		if(M('shopsj')->where(array('id'=>I('post.id'),'user'=>$_SESSION['uname']))->save($data)){
			$this->success('修改成功！');
		}else{
			$this->success('修改失敗！');
		}
		//$this->success('成功！');
	
	}
	
	
	
	
	//钻石币月供列表删除
	public function zsbyg_list_del() {
	
	
  //删除信息表IF_ID等于get传来的id,删除一条或多条;	
		$caution = M ( 'info' )->where ( array (
				'IF_ID'=> I('get.id') ,
		) )->delete();
	
		if($caution){$this->success('刪除成功!');}else{$this->error('刪除失敗!');}
	
	}
	
	
	public function ly_list_del() {
	
	
	//删除信息表MA_ID等于get传来的id,删除一条或多条;
		$caution = M ( 'message' )->where ( array (
				'MA_ID'=> I('get.id') ,
		) )->delete();
	
		if($caution){$this->success('刪除成功!');}else{$this->error('刪除失敗!');}
	
	}
	
	
}