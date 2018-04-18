<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="/WEB-INF/error.jsp"%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/res_jsp/base.jsp" %>
</head>
<body> 

	<%@ include file="/res_jsp/guest_top.jsp" %>
 	
 	<div id="mainDiv" class="borderDiv">
 		
 		[管理员登录]
 		
 		<form action="manager/admin/login" method="post">
 			
 			<table class="table table-bordered">
 				<c:if test="${exception!=null }">
					<tr> 					
						<td colspan="2">
							${exception.message }
						</td>
					</tr>
				</c:if>			
 				<tr>
 					<td>账户</td>
 					<td>
 						<input type="text" name="adminName" class="longInput" value="SuperAdmin"/>
 					</td>
 				</tr>
 				<tr>
 					<td>密码</td>
 					<td>
 						<input type="password" name="adminPwd"  class="longInput" value="atguigu"/>
 					</td>
 				</tr>
 				<tr> 					
 					<td colspan="2">
 						<input type="submit" value="登录"/>
 					</td>
 				</tr>
 			
 			</table>
 		
 		</form>
 		 	
 	</div>
 	
 	
 	
</body>
</html>