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
 		[设计调查]
 		<br>
 		<table class="dataTable">
 			<tr>
 				<td colspan="4">调查基本信息</td>
 			</tr>
 			<tr>
 				<td><img src="${survey.logoPath}"/></td>
 				<td>${survey.surveyName }</td>
 				<td><a href="guest/bag/addUI/${survey.surveyId}">创建包裹</a></td>
 				<td><a href="guest/bag/toAdjustUI/${survey.surveyId}">调整包裹顺序</a></td>
 			</tr>
 		</table>
 		
 		<table class="dataTable">
 		
 			<tr>
 				<td colspan="2">基本信息</td>
 			</tr>
 			<tr>
 				<td>包裹名称</td>
 				<td>基本操作</td> 				
 			</tr>
 			<c:if test="${empty survey.bagSet }"> 				
 				<tr>
	 				<td colspan="2">尚未创建包裹</td>			
	 			</tr>
 			</c:if>
 			<c:if test="${!empty survey.bagSet }">
 				<c:forEach items="${survey.bagSet }" var="bag">
		 			<tr>
		 				<td>${bag.bagName }</td>
		 				<td>
		 					<a href="guest/bag/removeBag/${bag.bagId }/${survey.surveyId}">删除包裹</a>
		 					<a href="guest/bag/editBagUI/${bag.bagId }">更新包裹</a>
		 					<a href="guest/question/toAddUI/${bag.bagId}/${survey.surveyId}">创建问题</a>
		 					<a href="#">深度删除包裹</a>
		 					<a href="guest/bag/toMoveOrCopyPage/${bag.bagId}/${survey.surveyId}">移动/复制包裹</a>
		 				</td> 				
		 			</tr>
		 			
		 			<tr>
		 				<td></td>
		 				<td>
		 					<table class="dataTable">
		 						<c:if test="${empty bag.questionSet }">
		 							<tr>
		 								<td>尚未创建问题</td>
		 							</tr>
		 						</c:if>
		 						<c:if test="${!empty bag.questionSet }">
			 						<tr>
			 							<td>问题详情</td>
			 							<td>问题操作</td>
			 						</tr>
			 						<c:forEach items="${bag.questionSet }" var="question">
				 						<tr>
				 							<td>
				 								${question.questionName }
				 								<c:if test="${question.questionType==0 }">
				 									<c:forEach items="${question.optionsArr }" var="option">
				 										<input type="radio">${option }
				 									</c:forEach>
				 								</c:if>
				 								
				 								<c:if test="${question.questionType==1 }">
				 									<c:forEach items="${question.optionsArr }" var="option">
				 										<input type="checkbox">${option }
				 									</c:forEach>
				 								</c:if>
				 								
				 								<c:if test="${question.questionType==2 }">
				 										<input type="text" class="longInput">
				 								</c:if>
				 							</td>
				 							<td>
				 								<a href="guest/question/removeQuestion/${question.questionId}/${survey.surveyId}">删除问题</a>
				 								<a href="guest/question/toEidtUI/${question.questionId}/${survey.surveyId}">更新问题</a>
				 							</td>
				 						</tr>
			 						</c:forEach>
		 						</c:if>
		 					</table>
		 				</td>
		 			</tr>
		 			
	 			</c:forEach>
 			</c:if>
 		
 		
 			<tr>
 				<td colspan="2">
 					<a href="guest/survey/completeSurvey/${survey.surveyId}">完成调查</a>
 				</td>
 			</tr>
 		</table>
 		 	
 	</div>

 	<%@ include file="/res_jsp/guest_bottom.jsp" %>
 	
</body>
</html>