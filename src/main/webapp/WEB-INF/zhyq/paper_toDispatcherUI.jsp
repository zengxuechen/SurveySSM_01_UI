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
 		设置试题	
 		<form action="manager/customerTestHandler/saveCustomerTestPaperIds" method="post">
 			<input type="hidden" name="userId" value="${userId }"/>
	 		<table class="table table-bordered table-hover table-striped">
	 			<c:if test="${empty paperList }">
	 				<tr>
		 				<td>
		 					没有试题可以选择
		 				</td>
		 			</tr>
	 			</c:if>
	 			<c:if test="${!empty paperList }">
		 			<c:forEach items="${paperList }" var="paper">
			 			<tr>
			 				<td>
			 					<input id="${paper.id }" type="checkbox" name="testPaperIds" value="${paper.id }"
			 						<c:forEach items="${currentIdList }" var="id">
				 						<c:if test="${id == paper.id }"> checked='checked'</c:if>
				 					</c:forEach>
			 					/>
			 					<label for="${paper.id }">${paper.testPaperName }</label>
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