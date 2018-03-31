<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="/WEB-INF/error.jsp"%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/res_jsp/base.jsp" %>
</head>
<body> 

	<%@ include file="/res_jsp/guest_top.jsp" %>
 	
 	<div id="mainDiv" class="borderDiv">
 		[创建包裹] 
 		
 		<form action="guest/bag/saveBag" method="post">
 		
 			<!-- 表单隐藏域：name和value属性值不一定是一致的 -->
 			<!-- name:表示提交的参数名称，控制如何注入到实体对象中，实体对象中要求提供name属性值名称的set方法 -->
 			<!-- value:表示需要在表单上显示的值，同时也是提交的值 -->
 			<input type="hidden" name="surveyId" value="${surveyId }">
 			
 			<table class="formTable">
 				<tr>
 					<td>包裹名称</td>
 					<td>
 						<input type="text" name="bagName" class="longInput">
 					</td>
 				</tr>
 				<tr>
 					<td colspan="2"> 
 						<input type="submit" value="保存">
 					</td>
 				</tr>
 			</table>

 		</form>
 			
 	</div>

 	<%@ include file="/res_jsp/guest_bottom.jsp" %>
 	
</body>
</html>