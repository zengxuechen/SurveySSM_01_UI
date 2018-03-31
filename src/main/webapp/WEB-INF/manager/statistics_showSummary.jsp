<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/res_jsp/base.jsp" %>
</head>
<body> 

	<%@ include file="/res_jsp/manager_top.jsp" %>
 	
 	<div id="mainDiv" class="borderDiv">
 		[统计大纲:${survey.surveyName }]
 		 
 		 <table class="dataTable">
 		 	<tr>
 		 		<td colspan="3">包裹列表</td>
 		 	</tr>

 		 	<c:forEach items="${survey.bagSet }" var="bag">
	 		 	<tr>
	 		 		<td>${bag.bagName}</td>
	 		 		<td colspan="2">问题统计信息</td>
	 		 	</tr>
	 		 		<tr>
	 		 			<td></td>
	 		 			<td>
	 		 				<table class="dataTable">
		 		 				<c:forEach items="${bag.questionSet }" var="question">
			 		 					<tr>
			 		 						<td>${question.questionName }</td>
			 		 						<c:if test="${question.questionType==0 || question.questionType==1 }">
				 		 						<td>
			 		 								<!-- 待解决：
			 		 								<img alt="" src="res_static/summary.jpg"> -->
			 		 								<a target="_blank" href="manager/statistics/showChart/${question.questionId}">查看统计图表</a>
				 		 						</td>
			 		 						</c:if>
			 		 						<c:if test="${question.questionType==2}">
				 		 						<td>
			 		 								<a href="manager/statistics/showText/${question.questionId}">显示简答题答案列表</a>
				 		 						</td>
			 		 						</c:if>
			 		 					</tr>
					 		 	</c:forEach>
	 		 				</table>
	 		 			</td>
	 		 		</tr>
 		 	</c:forEach>
 		 </table>
 		 
 	</div>

 	<%@ include file="/res_jsp/manager_bottom.jsp" %>
 	
</body>
</html>