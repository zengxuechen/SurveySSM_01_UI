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
 		[给管理员分配角色] 	
 		<form action="manager/admin/doDispatcherRole" method="post">
 			<input type="hidden" name="adminId" value="${adminId }"/>
	 		<table class="table table-bordered table-hover table-striped">
	 			<c:if test="${empty allRoleList }">
	 				<tr>
		 				<td>
		 					没有可以分配的角色
		 				</td>
		 			</tr>
	 			</c:if>
	 			<c:if test="${!empty allRoleList }">
		 			<c:forEach items="${allRoleList }" var="role">
			 			<tr>
			 				<td>
			 					<input id="${role.roleId }" type="checkbox" name="roleList" value="${role.roleId }"
			 						<c:forEach items="${currentIdList }" var="roleId">
				 						<c:if test="${roleId == role.roleId }"> checked='checked'</c:if>
				 					</c:forEach>
			 					/>
			 					<label for="${role.roleId }">${role.roleName }</label>
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

 	
 	
</body>
</html>