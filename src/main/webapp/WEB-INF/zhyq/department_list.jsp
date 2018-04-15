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
				<td>部门编号</td>
				<td>部门名称</td>
			</tr>
 			<c:if test="${empty departmentList }"> 				
 				<tr><td>尚未添加部门</td></tr>
 			</c:if>

            <c:if test="${!empty departmentList  && fn:length(departmentList) > 0}">
            	<c:forEach items="${departmentList}" var="department">
					<tr>
						<td>${department.id }</td>
						<td>${department.departmentName }</td>
					</tr>
				</c:forEach>
            </c:if>
            <tr><td colspan="3"></td></tr>
 		</table>
 		
 		<button onclick="javascript:history.back()">返回</button> 
 	</div>
 	
	
 	<%@ include file="/res_jsp/guest_bottom.jsp" %>
 	
</body>
</html>