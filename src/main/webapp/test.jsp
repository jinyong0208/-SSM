<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="static/lib/ligerUI/skins/Aqua/css/ligerui-all.css"
	rel="stylesheet" type="text/css" />
<script src="static/lib/jquery/jquery-1.9.0.min.js"
	type="text/javascript"></script>
<script src="static/lib/ligerUI/js/core/base.js" type="text/javascript"></script>
<script src="static/lib/ligerUI/js/ligerui.all.js"
	type="text/javascript"></script>

<script type="text/javascript">
	$(function(){
		 $("#layout").ligerLayout({
             leftWidth: 190,
             height: '100%',
             heightDiff: -34,
             space: 4,
             onHeightChanged: f_heightChanged,
             onLeftToggle: function ()
             {
                 tab && tab.trigger('sysWidthChange');
             },
             onRightToggle: function ()
             {
                 tab && tab.trigger('sysWidthChange');
             }
         });

         var height = $(".l-layout-center").height();
	});
</script>
</head>
<body>
	<div id="layout" >
		<div positon="left" title="主要菜单" id="accordion">
			<div title="档案管理" class="l-scroll">
				<ul id="tree1" style="margin-top:3px;">
			</div>
		</div>
	</div>
</body>
</html>