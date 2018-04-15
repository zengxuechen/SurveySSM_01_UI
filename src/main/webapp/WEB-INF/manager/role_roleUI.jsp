<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/res_jsp/base.jsp" %>
</head>
<body> 

	<%@ include file="/res_jsp/guest_top.jsp" %>
 	
 	<div id="mainDiv" class="borderDiv">
 		[创建角色]
 		<form action="manager/role/saveRole" method="post">
 			<table class="table table-bordered"> 
 				<tr>
 					<td>角色名称</td>
 					<td>
 						<input type="text" class="longInput" name="roleName"/>
 					</td>
 				</tr>
 				<tr>
 					<td colspan="2">
 						<input type="submit" value="保存">
 					</td>
 				</tr>
 			</table>
 		</form> 	 		 	
 	</div>

 	<%@ include file="/res_jsp/manager_bottom.jsp" %>
 	
</body>
</html>