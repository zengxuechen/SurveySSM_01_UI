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
 		[简答题答案列表] 

 		<table class="dataTable">
 			<c:forEach items="${textList }" var="textAnswer">
	 			<tr>
	 				<td>${textAnswer }</td>
	 			</tr>
 			</c:forEach>
 		</table>	 		 	
 	</div>

 	<%@ include file="/res_jsp/manager_bottom.jsp" %>
 	
</body>
</html>