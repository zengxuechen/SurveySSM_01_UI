<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/res_jsp/base.jsp" %>
</head>
<body> 

	<%@ include file="/res_jsp/guest_top.jsp" %>
 	
 	<div id="mainDiv" class="borderDiv">
 		[更新包裹]
 		
 		<form:form action="guest/bag/updateBag" method="post" modelAttribute="bag">
 		
 			<form:hidden path="bagId"/>
 			<form:hidden path="surveyId"/>
 			
 			<table class="formTable">
 				<tr>
 					<td>包裹名称</td>
 					<td>
 						<form:input path="bagName" cssClass="longInput"/>
 					</td>
 				</tr>
 				<tr>
 					<td colspan="2"> 
 						<input type="submit" value="更新">
 					</td>
 				</tr>
 			</table>

 		</form:form> 	
 	</div>

 	<%@ include file="/res_jsp/guest_bottom.jsp" %>
 	
</body>
</html>