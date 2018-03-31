<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/res_jsp/base.jsp" %>
<script type="text/javascript">

	$(function(){
		
		//给所有的深度调查按钮增加单击事件处理
		$(".deeplyRemoveAnchor").click(function(){
			//获取调查名称
			var surveyName = $(this).parents("tr").children("td:eq(1)").text();
			
			var firstFlag = window.confirm("你确定要删除【"+surveyName+"】这个调查吗?");
			
			//第一重确认删除
			if(firstFlag){
				
				var secondFlag = window.confirm("这是一个危险的操作,这个调查下的包裹和问题也会被删除,确定要做这个操作吗?");
				
				if(!secondFlag){
					return false ;
				}
				
			}else{
				return false ;
			}

		});
		
		
	});


</script>

</head>
<body> 

	<%@ include file="/res_jsp/guest_top.jsp" %>
 	
 	<div id="mainDiv" class="borderDiv">
 		[我未完成的调查] 	
 	
 		<table class="dataTable">
 			
 			<c:if test="${empty page.list }">
 				<tr>
 					<td>您尚未创建调查</td>
 				</tr>
 			</c:if>
 			
 			<c:if test="${! empty page.list }">
 				<tr>
 					<td>ID</td>
 					<td>调查名称</td>
 					<td>Logo</td>
 					<td colspan="4">操作</td>
 				</tr> 
 				<c:forEach items="${page.list }" var="survey">
	 				<tr>
	 					<td>${survey.surveyId }</td>
	 					<td>${survey.surveyName }</td>
	 					<td><img src="${survey.logoPath }"/></td>
	 					<td><a href="guest/survey/toDesignUI/${survey.surveyId}">设计</a></td>
	 					<td><a href="guest/survey/removeSurvey/${survey.surveyId}/${page.pageNo}">删除</a></td>
	 					<td><a href="guest/survey/toEditUI/${survey.surveyId}/${page.pageNo}">更新</a></td>
	 					<td style="background-color: black;font-weight: bolder;">
	 						<a class="deeplyRemoveAnchor" href="guest/survey/deeplyRemoveSurvey/${survey.surveyId}/${page.pageNo}" style="color: yellow;">深度删除</a>
	 					</td>
	 				</tr>
 				</c:forEach>
 				
 				<tr>
 					<td colspan="7">
 						<c:set var="targetUrl" value="guest/survey/showMyUnCompletedSurvey" scope="page"></c:set>
 						<%@ include file="/res_jsp/navigator.jsp" %>
 						
 					</td>
 				</tr>
 				
 			</c:if>
 			
 		</table>
 		
 		
 	</div>

 	<%@ include file="/res_jsp/guest_bottom.jsp" %>
 	
</body>
</html>