<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/res_jsp/base.jsp" %>
<script type="text/javascript">

	$(function(){
		
		$("[name='bagOrderList']").change(function(){
			
			//1.获取文本框中输入的值
			var bagOrder = this.value ;
			
			//2.去掉前后空格
			bagOrder = $.trim(bagOrder);
			
			//3.检查bagOrder
			if(bagOrder=="" || isNaN(bagOrder)){
				this.value = this.defaultValue;
				return ;
			}
			
			//4.如果输入的数据正确，则将去掉前后空格的值写回
			this.value = bagOrder ;
		});
		
	});

</script>

</head>
<body> 

	<%@ include file="/res_jsp/guest_top.jsp" %>
 	
 	<div id="mainDiv" class="borderDiv">
 		[调整包裹顺序] 
 		<br>
 		<form action="guest/bag/doAdjust" method="post">
 			<input type="hidden" name="surveyId" value="${surveyId }"/>
 			<table class="table table-bordered table-hover table-striped">
  				<c:if test="${exception!=null }">
					<tr> 					
						<td colspan="3">
							${exception.message }
						</td>
					</tr>
				</c:if>	 				
 				<c:if test="${empty bagList }">
 					<tr>
	 					<td>没有包裹可以显示</td>
	 				</tr>
 				</c:if>
 				
 				<c:if test="${!empty bagList }">
	 				<tr>
	 					<td>ID</td>
	 					<td>包裹名称</td>
	 					<td>跳转顺序</td>
	 				</tr>
	 				
	 				<c:forEach items="${bagList }" var="bag">
		 				<tr>
		 					<td>${bag.bagId }</td>
		 					<td>${bag.bagName }</td>
		 					<td>	
		 						<input type="hidden" name="bagIdList" value="${bag.bagId }"/>
		 						<input type="text" name="bagOrderList" value="${bag.bagOrder }" class="longInput"/>
		 					</td>
		 				</tr>
	 				</c:forEach>
	 				<tr>
	 					<td colspan="3">
	 						<input type="submit" value="提交"/>
	 					</td>
	 				</tr>
	 				
 				</c:if>
 			</table>
 			
 		</form>
 			
 	</div>

 	<%@ include file="/res_jsp/guest_bottom.jsp" %>
 	
</body>
</html>