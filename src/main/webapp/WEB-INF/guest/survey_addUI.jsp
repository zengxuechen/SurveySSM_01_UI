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
 		[创建调查] 
 		
 		<form action="guest/survey/saveSurvey" method="post" enctype="multipart/form-data">
 			<table class="formTable">
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
 						<!-- 普通表单项 -->
 						<input type="text" name="surveyName" class="longInput"/>
 					</td>
 				</tr>
 				<tr>
 					<td>选择Logo图片</td>
 					<td>
 						<!-- 文件上传框上传的是文件的二级制数据，而logoPath是String类型的，所以接收不了，导致类型转换错误 -->
 						<!-- <input type="file" name="logoPath"/> -->
 						<!-- 文件上传表单项 -->
 						<input type="file" name="logoFile"/>
 					</td>
 				</tr>
 				<tr>
 					<td colspan="2">
 						<input type="submit" value="保存"/>
 					</td>
 				</tr>
 			</table>
 		</form>
 			
 	</div>

 	<%@ include file="/res_jsp/guest_bottom.jsp" %>
 	
</body>
</html>