<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="static/ztree/js/jquery-1.4.4.min.js"></script>
</head>
<body>
	<div>
		<table>
			<thead>
				<tr>
					<th>编号</th>
					<th>姓名</th>
					<th>性别</th>
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>
	</div>
	<script type="text/javascript">
		$(function(){
			$.ajax({
				url:"${pageContext.request.contextPath}/Person",
				//data:""
				success:function(result){
					//console.log(result);
					bulid_person(result);
				}
			});
		});
		function bulid_person(result){
			$.each(result,function(index,item){
				var personId=$("<td></td>").append(item.id);
				var personName=$("<td></td>").append(item.name);
				var personSex=$("<td></td>").append(item.sex);
				$("<tr></tr>").append(personId).append(personName).append(personSex).appendTo("table tbody");
			});
		}
	</script>
</body>
</html>