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
 		[编译调查] 
 		
 		<form:form action="guest/survey/updateSurvey" method="post" enctype="multipart/form-data" modelAttribute="survey">
 			
 			<form:hidden path="surveyId"/>
 			<form:hidden path="logoPath"/>
 			<form:hidden path="userId"/>
 			
 			<input type="hidden" name="pageNoStr" value="${pageNoStr }">
 			
 			<table class="table table-bordered">
 			
  				<c:if test="${exception!=null }">
					<tr> 					
						<td colspan="2">
							${exception.message }
						</td>
					</tr>
				</c:if>	 
 				<tr>
 					<td>调查名称</td> 	
 					<td>
 						<form:input path="surveyName" cssClass="longInput"/>
 					</td>			
 				</tr>
 				<tr>
 					<td>目前图片</td> 	
 					<td colspan="2">
 						<img src="${survey.logoPath }"/>
 					</td>			
 				</tr>
 				<tr>
 					<td>选择图片</td> 	
 					<td>
 						<input type="file" name="logoFile"/>
 					</td>			
 				</tr>
 				<tr>
 					<td>
						<input type="submit" value="更新" /> 					
 					</td> 	
 				</tr>
 			</table>
 		
 		</form:form>
 			
 	</div>

 	<%@ include file="/res_jsp/guest_bottom.jsp" %>
 	
</body>
</html>