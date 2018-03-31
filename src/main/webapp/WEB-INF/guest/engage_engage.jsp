<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="atguigu" uri="http://www.atguigu.com/survey"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/res_jsp/base.jsp" %>
</head>
<body> 

	<%@ include file="/res_jsp/guest_top.jsp" %>
 	
 	
 	<div id="mainDiv" class="borderDiv">
 		[参与调查] 	
 		<form action="guest/engage/engage" method="post">
 			<input type="hidden" name="currentIndex" value="${currentIndex }"/>
 			
 			<input type="hidden" name="bagId" value="${currentBag.bagId }">
 			
	 		<table class="dataTable">
	 			<tr>
	 				<td colspan="2">调查信息</td>
	 			</tr>
	 			<tr>
	 				<td>Logo</td>
	 				<td>调查名称</td>
	 			</tr>
	 			
	 			<tr>
	 				<td><img src="${currentSurvey.logoPath }"/></td>
	 				<td>${currentSurvey.surveyName }</td>
	 			</tr>
	 		</table>
	 		
	 		<table class="dataTable">
	 			<tr>
	 				<td colspan="">当前包裹：${currentBag.bagName }</td>
	 			</tr>
	 			<tr>
	 				<td>	
	 						<!-- ①约定
								【1】name属性值：'q'+questionId
								【2】value属性值：遍历选项的索引 -->
	 					
						<c:forEach items="${currentBag.questionSet }" var="question">
							${question.questionName } 
							
							<c:if test="${question.questionType == 0 }">
								<c:forEach items="${question.optionsArr }" var="option" varStatus="myStatus">
								
									<input type="radio" 
											name="q${question.questionId }" 
											value="${myStatus.index}" 
											id="label${question.questionId }${myStatus.index}"
											<atguigu:redisplay paramName="q${question.questionId }" 
															   questionType="${question.questionType}" 
															   currentValue="${myStatus.index}"/>
											/>
											
									<label for="label${question.questionId }${myStatus.index}">${option }</label>
									
								</c:forEach>
							</c:if>
							
							<c:if test="${question.questionType == 1 }">
								<c:forEach items="${question.optionsArr }" var="option" varStatus="myStatus">
								
									<input type="checkbox" 
											name="q${question.questionId }" 
											value="${myStatus.index}" 
											id="label${question.questionId }${myStatus.index}"
											<atguigu:redisplay paramName="q${question.questionId }" 
															   questionType="${question.questionType}" 
															   currentValue="${myStatus.index}"/>		
									/>
											
									<label for="label${question.questionId }${myStatus.index}">${option }</label>
									
								</c:forEach>
							</c:if>
							
							<c:if test="${question.questionType == 2 }">							
									<input type="text" 
												class="longInput" 
												name="q${question.questionId}"
												value="<atguigu:redisplay paramName="q${question.questionId }" 
															   questionType="${question.questionType}" />"
												/>${option }							
							</c:if>
							<br>
						</c:forEach>
					</td>
	 			</tr>
	 			
	 			<tr>
	 				<td>
	 					<c:if test="${currentIndex > 0 }">
							<input type="submit" name="submit_prev" value="返回上一个包裹">
						</c:if>
						<c:if test="${currentIndex < lastIndex }">
							<input type="submit" name="submit_next" value="进入下一个包裹">
						</c:if>
						<input type="submit" name="submit_quit" value="放弃">
						<c:if test="${currentIndex == lastIndex }">
							<input type="submit" name="submit_done" value="完成">		
						</c:if>
	 				</td>
	 			</tr>
	 		</table>
	 	</form>
 	</div>

 	<%@ include file="/res_jsp/guest_bottom.jsp" %>
 	
</body>
</html>