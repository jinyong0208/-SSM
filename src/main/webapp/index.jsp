<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="static/ztree/css/demo.css">
<link rel="stylesheet" type="text/css" href="static/ztree/css/metroStyle/metroStyle.css">
<script type="text/javascript" src="static/ztree/js/jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="static/ztree/js/jquery.ztree.core.js"></script>
<script type="text/javascript" src="static/ztree/js/jquery.ztree.excheck.js"></script>
<script type="text/javascript" src="static/ztree/js/jquery.ztree.exedit.js"></script>
<script type="text/javascript">
	var setting={
			  /* view: {
				    dblClickExpand: false,//双击节点时，是否自动展开父节点的标识
				    showLine: true,//是否显示节点之间的连线
				    fontCss:{'color':'black','font-weight':'bold'},//字体样式函数
				    selectedMulti: false //设置是否允许同时选中多个节点
				  }, */
			check: {
				enable: true,
				chkStyle: "checkbox",
				chkboxType: { "Y": "p", "N": "s" }
			},
			edit: {
				enable: true,
				showRemoveBtn: false
			}
	};
	var zNodes=[
		{"name":"基础数据", "children":[
			{"id":"bm_base_fonds1", "name":"全宗设置", "target":"navtab", "url":"html/datagrid/bm_base_fonds.html"},
			{"id":"bm_base_fonds2", "name":"模板管理", "target":"navtab", "url":"html/datagrid/bm_base_fonds.html"},
			{"id":"bm_base_fonds3", "name":"数据字典", "target":"navtab", "url":"html/datagrid/bm_base_fonds.html"}
		]},
		{"name":"系统设置", open:true, "children":[
			{"id":"bm_base_fonds11", "name":"基本设置", "target":"navtab", "url":"html/datagrid/bm_base_fonds.html"},
			{"id":"bm_base_fonds22", "name":"安全设置", "target":"navtab", "url":"html/datagrid/bm_base_fonds.html"},
			{"id":"bm_base_fonds32", "name":"其他设置", "target":"navtab", "url":"html/datagrid/bm_base_fonds.html"}
		]}
	];
	$(document).ready(function(){
			$.fn.zTree.init($("#treeDemo"),setting,zNodes);
		});
</script>
</head>
<body>
	<div class="content_wrap">
	    <div class="zTreeDemoBackground left">
	        <ul id="treeDemo" class="ztree"></ul>
	    </div>
	</div>
</body>
</html>