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
 		[给角色分配权限] 	
 		<form action="manager/role/doDispatcherRole" method="post">
 			<input type="hidden" name="roleId" value="${roleId }"/>
	 		<table class="table table-bordered table-hover table-striped">
	 			<c:if test="${empty allAuthList }">
	 				<tr>
		 				<td>
		 					没有可以分配的权限
		 				</td>
		 			</tr>
	 			</c:if>
	 			<c:if test="${!empty allAuthList }">
		 			<c:forEach items="${allAuthList }" var="auth">
			 			<tr>
			 				<td>
			 					<input id="${auth.authId }" type="checkbox" name="authList" value="${auth.authId }"
			 						<c:forEach items="${currentIdList }" var="authId">
				 						<c:if test="${authId == auth.authId }"> checked='checked'</c:if>
				 					</c:forEach>
			 					/>
			 					<label for="${auth.authId }">${auth.authName }</label>
			 				</td>
			 			</tr>
		 			</c:forEach>		 			
	 			</c:if>
	 			<tr>
	 				<td colspan="1">
	 					<input type="submit" value="OK"/>
	 				</td>
	 			</tr>
	 			
	 		</table>	
 		</form> 	 	
 	</div>

 	<%@ include file="/res_jsp/manager_bottom.jsp" %>
 	
</body>
</html>