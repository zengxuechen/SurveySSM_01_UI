<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/res_jsp/base.jsp" %>
<script type="text/javascript">

	$(function(){
		
		$("input[name='authName']").change(function(){
			var authName = this.value ;
			var authId = this.id ;
			var url = "${pageContext.request.contextPath}/manager/auth/updateAuth";
			var data = {"authName":authName,"authId":authId,"time":new Date()}; 
			var callback = function(resultData){
				alert(resultData.resultMessage);
			};
			var type = "json";
			$.post(url,data,callback,type);
		});
		
	});
	

</script>

</head>
<body> 

	<%@ include file="/res_jsp/guest_top.jsp" %>
 	
 	<div id="mainDiv" class="borderDiv">
 		[查看权限]
 		 <form action="manager/auth/batchDelete" method="post">
	 		 <table class="table table-bordered table-hover table-striped">
	 		 	<c:if test="${empty authList }">	 		 		
	 		 		<tr>
		 		 		<td>没有查询到任何权限</td>
		 		 	</tr>
	 		 	</c:if>
	 		 	<c:if test="${!empty authList }">
		 		 	<tr>
		 		 		<td>ID</td>
		 		 		<td>权限名称</td>
		 		 		<td>批量删除</td>
		 		 		<td>分配资源</td>
		 		 	</tr>
		 		 	
		 		 	<c:forEach items="${authList }" var="auth"> 
		 		 		<tr>
			 		 		<td>${auth.authId }</td>
			 		 		<td>
			 		 			<input id="${auth.authId }" type="text" class="longInput" name="authName" value="${auth.authName }"/>
			 		 		</td>
			 		 		<td>
			 		 			<input id="${auth.authId }" class="authBtn" type="checkbox" name="authList" value="${auth.authId }"/>
			 		 			<label for="${auth.authId }">删除</label>
			 		 		</td>
			 		 		<td>
			 		 			<a href="manager/auth/toDispatcherUI/${auth.authId}">分配资源</a>
			 		 		</td>
			 		 	</tr>	 		 	
		 		 	</c:forEach>
	 		 	
		 		 	<tr>
		 		 		<td colspan="4">
		 		 			<input type="submit" value="批量删除">
		 		 		</td>
		 		 	</tr>	
	 		 	</c:if> 	
	 		 </table>
 		 </form>	 	
 	</div>

 	
 	
</body>
</html>