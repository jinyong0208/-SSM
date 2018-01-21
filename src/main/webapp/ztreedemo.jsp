<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="static/ztree/css/demo.css">
<link rel="stylesheet" type="text/css"
	href="static/ztree/css/metroStyle/metroStyle.css">
<script type="text/javascript" src="static/ztree/js/jquery-1.4.4.min.js"></script>
<script type="text/javascript"
	src="static/ztree/js/jquery.ztree.core.js"></script>
<script type="text/javascript"
	src="static/ztree/js/jquery.ztree.excheck.js"></script>
<script type="text/javascript"
	src="static/ztree/js/jquery.ztree.exedit.js"></script>
<script type="text/javascript">
	var setting = {
		data : {
			key : {
				title : "title"
			},
			simpleData : {
				enable : true
			}
		}
	};
	function setTitle(node) {
		var zTree = $.fn.zTree.getZTreeObj("treeDemo");
		var nodes = node ? [ node ] : zTree.transformToArray(zTree.getNodes());
		for (var i = 0, l = nodes.length; i < l; i++) {
			var n = nodes[i];
			n.title = "[" + n.id + "] isFirstNode = " + n.isFirstNode
					+ ", isLastNode = " + n.isLastNode;
			zTree.updateNode(n);
		}
	}

	function count() {
		var zTree = $.fn.zTree.getZTreeObj("treeDemo"), hiddenCount = zTree
				.getNodesByParam("isHidden", true).length;
		$("#hiddenCount").text(hiddenCount);
	}

	function showNodes() {
		var zTree = $.fn.zTree.getZTreeObj("treeDemo"), nodes = zTree
				.getNodesByParam("isHidden", true);
		zTree.showNodes(nodes);
		setTitle();
		count();
	}

	function hideNodes() {
		var zTree = $.fn.zTree.getZTreeObj("treeDemo"), nodes = zTree
				.getSelectedNodes();
		if (nodes.length == 0) {
			alert("请至少选择一个节点");
			return;
		}
		zTree.hideNodes(nodes);
		setTitle();
		count();
	}
	var treeNodes = [];
	$(document).ready(function() {
		$(function() {
			var url = "";
			var right = document.getElementById("right").value;
			$.ajax({
				url : url,
				type : "POST",
				data : {
					right : right
				},
				async : false,
				success : function(data) {
					var msg = eval('(' + data + ')');
					$.each(msg, function(i, item) {
						$.each(item, function(ii, iit) {
							treeNodes.push({
								"id" : iit.id,
								"name" : iit.name,
								"pId" : iit.pId,
								"url" : iit.url,
								"target" : iit.target
							});
						});
					});
				}
			});
		});
		$.fn.zTree.init($("#treeDemo"), setting, treeNodes);

		$("#hideNodesBtn").bind("click", {

			type : "rename"

		}, hideNodes);

		$("#showNodesBtn").bind("click", {

			type : "icon"

		}, showNodes);

		setTitle();

		count();
	});
</script>
</head>
<body>
	<div>

		<table width="100%" height="100%">

			<tr height="10%">

				<td colspan="2"><marquee direction="right">

						<font color="#00FFFF" size="30px">浪潮内训图表</font>

					</marquee></td>

			</tr>

			<tr>

				<td rowspan="2" width="20%">
					<%--

                                               这就是要摆放zTree的地方

                                               --%>

					<div>

						<ul id="treeDemo" class="ztree"></ul>

					</div> <%--

                                               这就是存放权限right的hidden标签，在穿到后面的时候用到

                                               --%> <input type="hidden"
					name="right" id="right" value="${sessionScope.user.right }">
				</td>

				<td width="1000px" height="530px"
					style="padding: 0px; text-align: center;"><iframe src=""
						width="100%" height="100%" frameborder="0" name="mainF"
						scrolling="auto" style="margin: 0px;"></iframe></td>

			</tr>

		</table>

	</div>
</body>
</html>