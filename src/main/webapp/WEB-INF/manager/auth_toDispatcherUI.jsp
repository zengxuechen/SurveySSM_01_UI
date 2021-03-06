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
 		[给权限分配资源] 	
 		<form action="manager/auth/doDispatcherAuth" method="post">
 			<input type="hidden" name="authId" value="${authId }"/>
	 		<table class="table table-bordered table-hover table-striped">
	 			<c:if test="${empty queryAllRes }">
	 				<tr>
		 				<td>
		 					没有可以分配的资源
		 				</td>
		 			</tr>
	 			</c:if>
	 			<c:if test="${!empty queryAllRes }">
		 			<c:forEach items="${queryAllRes }" var="res">
			 			<tr>
			 				<td>
			 					<input id="${res.resId }" type="checkbox" name="resList" value="${res.resId }"
			 						<c:forEach items="${currentAuthResList }" var="resId">
				 						<c:if test="${resId == res.resId }"> checked='checked'</c:if>
				 					</c:forEach>
			 					/>
			 					<label for="${res.resId }">${res.servletPath }</label>
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