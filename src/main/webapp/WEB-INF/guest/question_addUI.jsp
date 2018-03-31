<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/res_jsp/base.jsp" %>
<script type="text/javascript">

	$(function(){
		//1.页面加载后将文本域隐藏
		$("#optionsTr").hide();
		
		//2.点击题型时切换输入选项框是否显示
		//给所有的单选按钮增加单击事件处理
		$(":radio[name='questionType']").click(function(){
			//获取单选按钮选中时的值
			var value = this.value;
			//根据选中的单选按钮进行判断：是否显示输入选项框
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
 		[创建问题]
 		
 		<form action="guest/question/saveQuestion" method="post">
 		
 			<input type="hidden" name="bagId" value="${bagId }">
 			<input type="hidden" name="surveyId" value="${surveyId }">
 		
 		
 			<table class="formTable">
 				<tr>
 					<td>问题名称</td>
 					<td>
 						<input type="text" name="questionName" class="longInput"/>
 					</td>
 				</tr>
 				<tr>
 					<td>问题类型</td>
 					<td>
 						<input type="radio" name="questionType" value="0" id="questionType01"/>
 						<label for="questionType01">单选题</label>
 						
 						<input type="radio" name="questionType" value="1" id="questionType02"/>
 						<label for="questionType02">多选题</label>
 						
 						<input type="radio" name="questionType" value="2" id="questionType03" checked="checked"/>
 						<label for="questionType03">简答题</label>
 					</td>
 				</tr>
 				<tr id="optionsTr">
 					<td>选项</td>
 					<td>
 						<textarea class="multiInput" name="options"></textarea>
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