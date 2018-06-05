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
 		点击相应的问卷名称即可参加测评
 		<br/><br/>
 		<table class="table">
 			<c:if test="${empty paperList }"> 				
 				<tr><td>没有可以参与的测评试题</td></tr>
 			</c:if>

            <c:if test="${!empty paperList  && fn:length(paperList) > 0}">
            	<c:forEach items="${paperList}" var="test">
					<tr>
						<td><a href="guest/selectQuestionLib/queryExQuestionByIds/${test.testTypeCode}/${test.id }/${test.questionIds }/1/null/1" >${test.testPaperName }</a></td>
					</tr>
				</c:forEach>
            </c:if>
            <tr><td> </td></tr>
 		</table>
 	</div>
	
 	<%@ include file="/res_jsp/guest_bottom.jsp" %>
 	
</body>
</html>