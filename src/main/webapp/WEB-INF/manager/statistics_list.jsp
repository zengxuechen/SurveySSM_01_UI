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
 		
 		[统计调查]
 		<table class="table table-bordered table-hover table-striped">

 			<c:if test="${empty page.list }">
 				<tr>
	 				<td>暂时没有需要统计的调查</td>
	 			</tr> 				
 			</c:if>
 			
 			<c:if test="${!empty page.list }">
 				<tr>
	 				<td>ID</td>
	 				<td>调查名称</td>
	 				<td colspan="2">操作</td>
	 			</tr> 
	 			<c:forEach items="${page.list }" var="survey">
		 			<tr>
		 				<td>${survey.surveyId }</td>
		 				<td>${survey.surveyName }</td>
		 				<td><a href="manager/statistics/showSummary/${survey.surveyId }">统计大纲</a></td>
		 				<td><a href="manager/statistics/exportExcel/${survey.surveyId }">导出Excel文件</a></td>
		 			</tr>	
	 			</c:forEach>	
	 			
	 			<tr>
	 				<td colspan="4">
	 					<c:set var="targetUrl" value="manager/statistics/showAllAvailable" scope="page"></c:set>
	 					<%@ include file="/res_jsp/navigator.jsp" %>
	 				</td>
	 			</tr>
	 					
 			</c:if>
 			
 		
 		</table>
 	</div>

 	
 	
</body>
</html>