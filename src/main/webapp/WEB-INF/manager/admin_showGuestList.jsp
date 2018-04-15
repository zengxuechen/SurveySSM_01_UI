<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/res_jsp/base.jsp" %>
<script type="text/javascript">

	$(function(){
		
		$("input[name='userName']").change(function(){
			var user = this ;
			var userName = this.value ;
			var userId = this.id ;
			var url = "${pageContext.request.contextPath}/manager/user/updateAdmin";
			var data = {"userName":userName,"userId":userId,"time":new Date()}; 
			var callback = function(resultData){				
				if(resultData.resultMessage == "true"){
					alert("操作成功!");
				}else{
					alert("操作失败!");
					user.value = user.defaultValue ;
				}
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
 		[查看账号]
 		 <form action="manager/user/batchDelete" method="post">
	 		 <table class="dataTable">
	 		 	<c:if test="${empty userList }">	 		 		
	 		 		<tr>
		 		 		<td>没有查询到任何账号</td>
		 		 	</tr>
	 		 	</c:if>
	 		 	<c:if test="${!empty userList }">
		 		 	<tr>
		 		 		<td>ID</td>
		 		 		<td>账号名称</td>
		 		 		<td>批量删除</td>
		 		 		<td>分配角色</td>
		 		 	</tr>
		 		 	
		 		 	<c:forEach items="${userList }" var="user"> 
		 		 		<tr>
			 		 		<td>${user.userId }</td>
			 		 		<td>
			 		 			<input id="${user.userId }" type="text" class="longInput" name="userName" value="${user.userName }"/>
			 		 		</td>
			 		 		<td>
			 		 			<input id="${user.userId }" class="userBtn" type="checkbox" name="userList" value="${user.userId }"/>
			 		 			<label for="${user.userId }">删除</label>
			 		 		</td>
			 		 		<td>
			 		 			<a href="manager/user/toDispatcherUI/${user.userId}">分配角色</a>
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

 	<%@ include file="/res_jsp/manager_bottom.jsp" %>
 	
</body>
</html>