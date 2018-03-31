<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/res_jsp/base.jsp" %>
<script type="text/javascript">

	$(function(){
		
		$("input[name='roleName']").change(function(){
			var roleName = this.value ;
			var roleId = this.id ;
			var url = "${pageContext.request.contextPath}/manager/role/updateRole";
			var data = {"roleName":roleName,"roleId":roleId,"time":new Date()}; 
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

	<%@ include file="/res_jsp/manager_top.jsp" %>
 	
 	<div id="mainDiv" class="borderDiv">
 		[查看角色]
 		 <form action="manager/role/batchDelete" method="post">
	 		 <table class="dataTable">
	 		 	<c:if test="${empty roleList }">	 		 		
	 		 		<tr>
		 		 		<td>没有查询到任何角色</td>
		 		 	</tr>
	 		 	</c:if>
	 		 	<c:if test="${!empty roleList }">
		 		 	<tr>
		 		 		<td>ID</td>
		 		 		<td>角色名称</td>
		 		 		<td>批量删除</td>
		 		 		<td>分配权限</td>
		 		 	</tr>
		 		 	
		 		 	<c:forEach items="${roleList }" var="role"> 
		 		 		<tr>
			 		 		<td>${role.roleId }</td>
			 		 		<td>
			 		 			<input id="${role.roleId }" type="text" class="longInput" name="roleName" value="${role.roleName }"/>
			 		 		</td>
			 		 		<td>
			 		 			<input id="${role.roleId }" class="roleBtn" type="checkbox" name="roleList" value="${role.roleId }"/>
			 		 			<label for="${role.roleId }">删除</label>
			 		 		</td>
			 		 		<td>
			 		 			<a href="manager/role/toDispatcherUI/${role.roleId}">分配权限</a>
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