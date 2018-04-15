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
 		
 		[用户登录]
 		
 		<form action="guest/user/login" method="post">
 			
 			<table class="table table-bordered">
 				<c:if test="${exception!=null }">
					<tr> 					
						<td colspan="2">
							${exception.message }
						</td>
					</tr>
				</c:if>			
 				<tr>
 					<td>用户名</td>
 					<td>
 						<input type="text" name="userName" class="longInput" value="test"/>
 					</td>
 				</tr>
 				<tr>
 					<td>密码</td>
 					<td>
 						<input type="password" name="userPwd"  class="longInput" value="123123"/>
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
 	
 	<%@ include file="/res_jsp/guest_bottom.jsp" %>
 	
</body>
</html>