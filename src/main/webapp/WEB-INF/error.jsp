<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/res_jsp/base.jsp" %>
</head>
<body> 

 	<div id="mainDiv" class="borderDiv">
 		[出错啦!]
 		<br><br>
 		${exception.message }
 		<br><br>
 		<button onclick="javascript:history.back()">返回继续操作</button> 	
 	</div>

</body>
</html>