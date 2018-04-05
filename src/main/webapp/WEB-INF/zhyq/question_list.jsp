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
 		答题中...
 		<br/>
 		<br/>
 		<table class="table">
 			<c:if test="${empty page.list }"> 				
 				<tr><td>没有可以参与的测评试题</td></tr>
 			</c:if>
            <c:if test="${!empty page.list  && fn:length(page.list) > 0}">
            	<c:forEach items="${page.list}" var="question">
					<tr>
						<td>
							<br/>
							<div style="margin-left:100px;font-size:16px;text-align:left;"><span>${question.questionTypeName}：</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>${question.questionContent }</span></div>
							<br/>
							<div style="margin-left:100px;font-size:16px;text-align:left;">
								<c:set var="fids" value="${fn:split(question.options, '@')}" />
								<c:set var="maps" value="${fn:split(question.optionsBitmap, '@')}" />  
	                            <c:forTokens items="${question.options}" delims="@" var="option" varStatus="status">  
	                             	<input style="margin-left:20px;" type="${question.questionTypeCode }" name="optionBitmap_${question.id}" value="${maps[status.index]}"/>&nbsp;&nbsp; ${option}     
	                            </c:forTokens>
	                        </div>
	                        <br/>
						</td>
					</tr>
				</c:forEach>
            </c:if>
            <tr><td> </td></tr>
 		</table>
 		
 		<div>
			<c:if test="${pageNo > 1 }">
				<a href="guest/selectQuestionLib/queryExQuestionByIds/${questionIds }/${page.pageNo-1}" >上一页</a>
			</c:if>
			<c:if test="${page.pageNo < page.pageSize }">
				<a href="guest/selectQuestionLib/queryExQuestionByIds/${questionIds }/${page.pageNo+1}" >下一页</a>
			</c:if>
				<a href="guest/custTestPaper/queryPaperTypeByCode/PA_PC/1" >放弃</a>
			<c:if test="${currentIndex == lastIndex }">
				<a href="guest/custTestPaper/queryPaperTypeByCode/PA_PC/1" >完成</a>	
			</c:if>
		</div>
 		
 		<a href="guest/selectQuestionLib/queryExQuestionByIds/${questionIds }/${page.pageNo-1}" >上一页</a>
 		<a href="guest/selectQuestionLib/queryExQuestionByIds/${questionIds }/${page.pageNo+1}" >下一页</a>
 		<br/><br/>
 		<div><button>提交</button></div>
 	</div>

 	<%@ include file="/res_jsp/guest_bottom.jsp" %>
 	
</body>
</html>