<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/res_jsp/base.jsp" %>
<script type="text/javascript">

	$(function(){
		
		$("input[name='adminName']").change(function(){
			var admin = this ;
			var adminName = this.value ;
			var adminId = this.id ;
			var url = "${pageContext.request.contextPath}/manager/admin/updateAdmin";
			var data = {"adminName":adminName,"adminId":adminId,"time":new Date()}; 
			var callback = function(resultData){				
				if(resultData.resultMessage == "true"){
					alert("操作成功!");
				}else{
					alert("操作失败!");
					admin.value = admin.defaultValue ;
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
 		 <form action="manager/admin/batchDelete" method="post">
	 		 <table class="table table-bordered table-hover table-striped">
	 		 	<c:if test="${empty adminList }">	 		 		
	 		 		<tr>
		 		 		<td>没有查询到任何账号</td>
		 		 	</tr>
	 		 	</c:if>
	 		 	<c:if test="${!empty adminList }">
		 		 	<tr>
		 		 		<td>ID</td>
		 		 		<td>账号名称</td>
		 		 		<td>批量删除</td>
		 		 		<td>分配角色</td>
		 		 	</tr>
		 		 	
		 		 	<c:forEach items="${adminList }" var="admin"> 
		 		 		<tr>
			 		 		<td>${admin.adminId }</td>
			 		 		<td>
			 		 			<input id="${admin.adminId }" type="text" class="longInput" name="adminName" value="${admin.adminName }"/>
			 		 		</td>
			 		 		<td>
			 		 			<input id="${admin.adminId }" class="adminBtn" type="checkbox" name="adminList" value="${admin.adminId }"/>
			 		 			<label for="${admin.adminId }">删除</label>
			 		 		</td>
			 		 		<td>
			 		 			<a href="manager/admin/toDispatcherUI/${admin.adminId}">分配角色</a>
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