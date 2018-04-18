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
 		[创建账号]
 		<form action="manager/admin/saveAdmin" method="post">
 			<table class="table table-bordered"> 
 				<c:if test="${exception!=null }">
	 				<tr>
	 					<td colspan="2">${exception.message}</td>
	 				</tr>
 				</c:if>
 				<tr>
 					<td>账号</td>
 					<td>
 						<input type="text" class="longInput" name="adminName"/>
 					</td>
 				</tr>
 				<tr>
 					<td>密码</td>
 					<td>
 						<input type="password" class="longInput" name="adminPwd" />
 					</td>
 				</tr>
 				<tr>
 					<td>确认密码</td>
 					<td>
 						<input type="password" class="longInput" name="adminPwdConfirm"/>
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

 	
 	
</body>
</html>