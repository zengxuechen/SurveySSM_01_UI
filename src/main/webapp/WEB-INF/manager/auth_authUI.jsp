<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/res_jsp/base.jsp" %>
</head>
<body> 

	<%@ include file="/res_jsp/manager_top.jsp" %>
 	
 	<div id="mainDiv" class="borderDiv">
 		[创建权限]
 		<form action="manager/auth/saveAuth" method="post">
 			<table class="formTable"> 
 				<tr>
 					<td>权限名称</td>
 					<td>
 						<input type="text" class="longInput" name="authName"/>
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