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
 		设置部门
 		<form action="manager/departmentHandler/saveCompany" method="post">
 			<input type="hidden" name="userId" value="${userId }"/>
	 		<table class="table table-bordered table-hover table-striped">
	 			<c:if test="${empty departmentList }">
	 				<tr>
		 				<td>
		 					没有部门可供选择，请先添加
		 				</td>
		 			</tr>
	 			</c:if>
	 			<c:if test="${!empty departmentList }">
		 			<c:forEach items="${departmentList }" var="department">
			 			<tr>
			 				<td>
			 					<input id="${department.id }" type="radio" name="departmentId" value="${department.id }"
			 						<c:forEach items="${currentIdList }" var="id">
				 						<c:if test="${id == department.id }"> checked='checked'</c:if>
				 					</c:forEach>
			 					/>
			 					<label for="${department.id }">${department.departmentNameCn }</label>
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