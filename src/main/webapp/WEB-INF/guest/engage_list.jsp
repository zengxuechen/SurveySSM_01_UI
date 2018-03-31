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
 		[显示可以参与的所有调查] 
 		<br>	
 		<table class="dataTable">
 			
 			<c:if test="${empty page.list }"> 				
 				<tr>
	 				<td>没有可以参与的调查</td>
	 			</tr>
 			</c:if>
 			<c:if test="${!empty page.list }">
	 			<tr>
	 				<td>Logo</td>
	 				<td>调查名称</td>
	 				<td>操作</td>
	 			</tr>
	 			
	 			<c:forEach items="${page.list }" var="survey">
		 			<tr> 
		 				<td><img src="${survey.logoPath }"/></td>
		 				<td>${survey.surveyName }</td>
		 				<td>
		 					<a href="guest/engage/entry/${survey.surveyId }">参与调查</a>
		 				</td>
		 			</tr>
	 			</c:forEach>
	 			
	 			<tr>
	 				<td colspan="3">
	 					<c:set var="targetUrl" value="guest/engage/showAllAvailableSurvey" scope="page"></c:set>
						<%@ include file="/res_jsp/navigator.jsp" %>	 				
	 				</td>
	 			</tr>
 			</c:if>
 			
 			
 		</table>
 	</div>

 	<%@ include file="/res_jsp/guest_bottom.jsp" %>
 	
</body>
</html>