<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/res_jsp/base.jsp" %>
<script type="text/javascript">

	$(function(){
		
		var questionType =$(":radio:checked").val();
		
		if(questionType==2){
			$("#optionsTr").hide();
		}
		
		$(":radio[name='questionType']").click(function(){
			var value = this.value;
			if(value==0 || value==1){
				$("#optionsTr").show();			
			}else{
				$("#optionsTr").hide();
			}
			
		});
		
	});

</script>

</head>
<body> 

	<%@ include file="/res_jsp/guest_top.jsp" %>
 	
 	<div id="mainDiv" class="borderDiv">
 		[编辑问题]
 		
		<form:form action="guest/question/updateQuestion" method="post" modelAttribute="question">
			
			<form:hidden path="questionId"/>
			<form:hidden path="bagId"/>
			<%-- <form:input path="surveyId"/> --%>
			<input type="hidden" name="surveyId" value="${surveyId }"/>
			
			<table class="table table-bordered">
				
				<tr>
					<td>问题名称</td>
					<td>
						<form:input path="questionName" cssClass="longInput"/>
					</td>
				</tr>
				
				<tr>
					<td>选择题型</td>
					<td>
						<!-- 需要准备可以显示的题型，Map集合 -->
						<form:radiobuttons path="questionType" items="${questionTypeMap }"/>
					</td>
				</tr>
				
				<tr id="optionsTr">
					<td>选项</td>
					<td>
						<!-- 需要进行回显 -->
						<!-- 将带逗号的字符串显示到多行文本框中了 -->
						<%-- <form:textarea path="options"/> --%>
						<!-- 提交时path的名称无法提交 -->
						<%-- <form:textarea path="optionsForEdit"></form:textarea> --%>
						<textarea class="multiInput" name="options">${question.optionsForEdit }</textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="更新"/>
					</td>
				</tr>
			</table>
		</form:form>
 		 	
 	</div>

 	<%@ include file="/res_jsp/guest_bottom.jsp" %>
 	
</body>
</html>