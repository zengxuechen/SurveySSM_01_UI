<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
 		<table class="table">
	 		<tr>
				<td>职位编号</td>
				<td>职位名称</td>
			</tr>
 			<c:if test="${empty positionList }"> 				
 				<tr><td>尚未添加职位</td></tr>
 			</c:if>

            <c:if test="${!empty positionList  && fn:length(positionList) > 0}">
            	<c:forEach items="${positionList}" var="position">
					<tr>
						<td>${position.id }</td>
						<td>${position.positionName }</td>
					</tr>
				</c:forEach>
            </c:if>
            <tr><td colspan="3"></td></tr>
 		</table>
 		
 	</div>
 	
	
 	<%@ include file="/res_jsp/guest_bottom.jsp" %>
 	
</body>
</html>