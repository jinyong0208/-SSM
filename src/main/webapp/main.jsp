<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="<%=path%>/static/easyui/jquery.min.js" charset="UTF-8"></script>
<script type="text/javascript" src="<%=path%>/static/easyui/jquery.easyui.min.js" charset="UTF-8"></script>
<script type="text/javascript" src="<%=path%>/static/easyui/locale/easyui-lang-zh_CN.js" charset="UTF-8"></script>
<link rel="stylesheet" type="text/css" href="<%=path%>/static/easyui/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css" href="<%=path%>/static/easyui/themes/default/icon.css" />
</head>
<body>
<div id="pox" class="easyui-dialog" title="My Dialog" style="width: 500px;height: 300px;"></div>
</body>
</html>