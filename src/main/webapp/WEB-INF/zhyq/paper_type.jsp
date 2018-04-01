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
 		[显示所选择的题List]
 		<br>	
 		<table class="dataTable">
 			
 			<c:if test="${empty page.list }"> 				
 				<tr>
	 				<td>没有可以参与的调查</td>
	 			</tr>
 			</c:if>

            <c:if test="${!empty page.list  && fn:length(page.list) > 0}">
                <tr>
                    <td>调查的长度：${fn:length(page.list)}</td>

                </tr>
            </c:if>
 			
 		</table>
 	</div>

 	<%@ include file="/res_jsp/guest_bottom.jsp" %>
 	
</body>
</html>