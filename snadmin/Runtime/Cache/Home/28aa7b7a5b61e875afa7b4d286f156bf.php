<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>无标题文档</title>
    <link href="/sncss/css/style.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="/zTree_v3/css/zTreeStyle/zTreeStyle.css" type="text/css"/>
    <script type=text/javascript src="/zTree_v3/js/jquery.min.js"></script>
    <script type="text/javascript" src="/zTree_v3/js/jquery.ztree.core-3.5.js"></script>

    <script type=text/javascript>
        var setting = {
            view: {
                showLine: true
            },
            data: {
                simpleData: {
                    enable: true
                }
            }
        };

        var zNodes = [
            {id: 1, pId: 0, name: "父節點1 - 展開", open: true},
            {id: 11, pId: 1, name: "父節點11 - 摺疊"},
            {id: 111, pId: 11, name: "葉子節點111"},
            {id: 112, pId: 11, name: "葉子節點112"},
            {id: 113, pId: 11, name: "葉子節點113"},
            {id: 114, pId: 11, name: "葉子節點114"},
            {id: 12, pId: 1, name: "父節點12 - 摺疊"},
            {id: 121, pId: 12, name: "葉子節點121"},
            {id: 122, pId: 12, name: "葉子節點122"},
            {id: 123, pId: 12, name: "葉子節點123"},
            {id: 124, pId: 12, name: "葉子節點124"},
            {id: 13, pId: 1, name: "父節點13 - 沒有子節點", isParent: true},
            {id: 2, pId: 0, name: "父節點2 - 摺疊"},
            {id: 21, pId: 2, name: "父節點21 - 展開", open: true},
            {id: 211, pId: 21, name: "葉子節點211"},
            {id: 212, pId: 21, name: "葉子節點212"},
            {id: 213, pId: 21, name: "葉子節點213"},
            {id: 214, pId: 21, name: "葉子節點214"},
            {id: 22, pId: 2, name: "父節點22 - 摺疊"},
            {id: 221, pId: 22, name: "葉子節點221"},
            {id: 222, pId: 22, name: "葉子節點222"},
            {id: 223, pId: 22, name: "葉子節點223"},
            {id: 224, pId: 22, name: "葉子節點224"},
            {id: 23, pId: 2, name: "父節點23 - 摺疊"},
            {id: 231, pId: 23, name: "葉子節點231"},
            {id: 232, pId: 23, name: "葉子節點232"},
            {id: 233, pId: 23, name: "葉子節點233"},
            {id: 234, pId: 23, name: "葉子節點234"},
            {id: 3, pId: 0, name: "父節點3 - 沒有子節點", isParent: true}
        ];


        $(document).ready(function () {
            var $user1 = $('#user1').val();
            $.ajax({
                type: "post",
                dataType: "json",
                global: false,
                url: "/admin.php/Home/Common/getTree",
                data: {
                    user1: $user1
                },
                success: function (data, textStatus) {
                    if (data.status == 0) {
                        zNodes1 = data.data;
                        $.fn.zTree.init($("#treeDemo"), setting, zNodes1);
                    } else {
                        alert("您還沒有");
                    }

                    return;
                }

            });

            //$.fn.zTree.init($("#treeDemo"), setting, zNodes);
        });


        $(function () {


            $('#btn').click(function () {

                var $user = $('#user').val();
                $.ajax({
                    type: "post",
                    dataType: "json",
                    global: false,

                    url: "/admin.php/Home/Common/getTreeso",
                    data: {
                        user: $user
                    },
                    success: function (data, textStatus) {
                        if (data.status == 0) {
                            //alert(data.nr);

                            zNodes1 = data.data;
                            $.fn.zTree.init($("#treeDemo"), setting, zNodes1);
                        } else {
                            alert(data.data);
                        }

                        return;
                    }

                });


            })


        })


    </script>
</head>
<style>
    input {
        border: 1px #cccccc solid;
        height: 25px;
        line-height: 25px;
    }
</style>
<body>

<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a href="#">首页</a></li>
        <li><a href="#">奖金设定</a></li>
    </ul>
</div>

<div class="rightinfo">
    <div class="tools"></div>
    <table class="tablelist">
        <form action="<?php echo U('Home/Index/jjset');?>" method="post">
            <thead>
            <tr>
                <th width="15%">仅需互助</th>
                <th width="85%"><input name="jj01s" value="<?php echo ($jj01s); ?>" type="" />元 — <input name="jj01m" value="<?php echo ($jj01m); ?>" type="" />元 必须<input name="jj01" value="<?php echo ($jj01); ?>" type="" />元的整倍数</th>
            </tr>
            <tr>
                <th width="15%">新用户注册奖励</th>
                <th width="85%"><input name="jjtuandui" value="<?php echo ($jjtuandui); ?>" type="number" />元</th>
            </tr>
            <tr>
                <th width="15%">分红天数</th>
                <th width="85%"><input name="jjfhdays" value="<?php echo ($jjfhdays); ?>" type="number" />天</th>
            </tr>
            <tr>
                <th width="15%">冻结天数</th>
                <th width="85%"><input name="jjdjdays" value="<?php echo ($jjdjdays); ?>" type="number" />天</th>
            </tr>
            <tr>
                <th width="15%">匹配天数</th>
                <th width="85%"><input name="jjppdays" value="<?php echo ($jjppdays); ?>" type="number" />天</th>
            </tr>
            <tr>
                <th width="15%">配对模式</th>
                <th width="85%">
					<select name="jjppms">
						<option <?php if($jjppms == 1): ?>selected<?php endif; ?> value="1">自动匹配</option>
						<option <?php if($jjppms == 0): ?>selected<?php endif; ?> value="0">手动匹配</option>
					</select>
				</th>
            </tr>

            <tr>
                <th width="15%">单个账号月投资额度封顶</th>
                <th width="85%"><input name="jjthemmax" value="<?php echo ($jjthemmax); ?>" type="number" />元</th>
            </tr>
            <tr style="display:none;">
                <th width="15%">推荐奖</th>
                <th width="85%"><input name="jjtuijianrate" value="<?php echo ($jjtuijianrate); ?>" type="number" />%</th>
            </tr>
            <tr>
                <th width="15%">推荐奖</th>
                <th width="85%"><input name="jjtuijianratenew" value="<?php echo ($jjtuijianratenew); ?>" style="width:300px;" type="" />% 用,号分隔</th>
            </tr>
            <tr>
                <th width="15%">经理代数奖</th>
                <th width="85%"><input name="jjjldsrate" value="<?php echo ($jjjldsrate); ?>" style="width:300px;" type="" />% 用,号分隔</th>
            </tr>
            <tr>
                <th width="15%">开启会员级别奖励</th>
                <th width="85%">
					<select name="jjaccountflag">
						<option <?php if($jjaccountflag == 1): ?>selected<?php endif; ?> value="1">开启</option>
						<option <?php if($jjaccountflag == 0): ?>selected<?php endif; ?> value="0">关闭</option>
					</select>
				</th>
            </tr>
            <tr>
                <th width="15%">会员级别</th>
                <th width="85%"><input name="jjaccountlevel" value="<?php echo ($jjaccountlevel); ?>" style="width:300px;" type="" />用,号分隔 (从低到高)</th>
            </tr>
            <tr>
                <th width="15%">会员升级下线人数</th>
                <th width="85%"><input name="jjaccountnum" value="<?php echo ($jjaccountnum); ?>" style="width:300px;" type="" />用,号分隔 (从低到高)</th>
            </tr>
            <tr>
                <th width="15%">会员级别奖金比率</th>
                <th width="85%"><input name="jjaccountrate" value="<?php echo ($jjaccountrate); ?>" style="width:300px;" type="" />% 用,号分隔</th>
            </tr>
            <tr>
                <th width="15%">打款时间</th>
                <th width="85%"><input name="jjdktime" value="<?php echo ($jjdktime); ?>" type="number" />小时</th>
            </tr>
             <tr>
                <th width="15%">超时未打款冻结提示语</th>
                <th width="85%"><input name="jjhydjmsg" value="<?php echo ($jjhydjmsg); ?>" type="text" size="100"/></th>
            </tr>
             <tr>
                <th width="15%">超时未打款扣除上级金额</th>
                <th width="85%"><input name="jjhydjkcsjmoeney" value="<?php echo ($jjhydjkcsjmoeney); ?>" type="number" />元</th>
            </tr>
            <tr>
                <th></th>
                <th><input name="submit" value="提交" type="submit"/></th>
            </tr>
            </thead>
        </form>
    </table>

</div>
</body>
</html>