<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>JQuery easyui demo</title>

<link rel="stylesheet" type="text/css"
	href="jquery-easyui-1.4.1/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="jquery-easyui-1.4.1/themes/icon.css">
<script type="text/javascript" src="jquery-easyui-1.4.1/jquery.min.js"></script>
<script type="text/javascript"
	src="jquery-easyui-1.4.1/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="jquery-easyui-1.4.1/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
	function open_menu(titleName, menuUrl) {
		if ($("#tt").tabs("exists", titleName)) {
			$("#tt").tabs("select", titleName);
		} else {
			$('#tt').tabs('add', {
				title : titleName,
				href : menuUrl,
				closable : true
			});
		}
	}
</script>
</head>

<body class="easyui-layout">
	<div id="cc" class="easyui-layout" style="width: 100%;heith:100%; min-height: 600px;">
		<div data-options="region:'north',border:false" style="height: 100px;">
			<img alt="logo" src="images/logo.png" style="padding: 20px 0 0 20px;">
		</div>
		<div data-options="region:'west',title:'菜单',split:true"
			style="width: 200px;">
			<div id="aa" class="easyui-accordion"
				data-options="fit:true,border:false">
				<div title="用户管理" data-options="iconCls:'icon-save',selected:true"
					style="overflow: auto; padding: 10px;">
					<a id="btn" href="javascript:void(0);" class="easyui-linkbutton"
						data-options="plain:true" onclick="open_menu('用户管理','users.jsp')">用户管理</a>
				</div>
				<div title="新闻管理" data-options="iconCls:'icon-reload'"
					style="padding: 10px;">
					<a href="javascript:void(0);" class="easyui-linkbutton"
						data-options="plain:true" onclick="open_menu('新闻管理','news.jsp')">新闻管理</a><br />
					<a href="javascript:void(0);" class="easyui-linkbutton"
						data-options="plain:true" >新闻管理2</a>
				</div>
				<div title="系统管理" data-options="iconCls:'icon-reload'"
					style="padding: 10px;">
					<a href="javascript:void(0);" class="easyui-linkbutton"
						data-options="plain:true">修改密码</a> <br>
						<a href="javascript:void(0);"
						class="easyui-linkbutton" data-options="plain:true">刷新系统缓存</a>
				</div>
			</div>
		</div>

		<div data-options="region:'center',border:false,plain:true">
			<div id="tt" class="easyui-tabs" fit=true>
				<div title="首页" style="text-align: center; font-size: 24px;">
					<p>欢迎来到NETBOY后台管理系统</p>
				</div>
			</div>
		</div>
	</div>
	<div style="height: 80px; text-align: center; font-size: 12px;">
		<p>版权所有,&copy;2016-2018</p>
	</div>
</body>
</html>