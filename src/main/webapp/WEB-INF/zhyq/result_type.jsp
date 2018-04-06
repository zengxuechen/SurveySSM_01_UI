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
 		勾选相应的测评结果即可进行导出
 		<br/><br/>
 		<table class="table">
 			<tr>
				<td>选择</td>
				<td>试卷类型</td>
				<td>试卷名称</td>
			</tr>
 			<c:if test="${empty list }"> 				
 				<tr><td colspan="3">没有可以导出报告的测评结果</td></tr>
 			</c:if>

            <c:if test="${!emptylist  && fn:length(list) > 0}">
            	<c:forEach items="${list}" var="result">
					<tr>
						<td><input type="checkbox" value="${result.resultId}" /></td>
						<td>${result.testTypeName}</td>
						<td>${result.testPaperName }</td>
					</tr>
				</c:forEach>
            </c:if>
            <tr><td colspan="3"></td></tr>
 		</table>
 		
 		<a href="#" >导出</a>
 		
 	</div>
	
 	<%@ include file="/res_jsp/guest_bottom.jsp" %>
 	
</body>
</html>