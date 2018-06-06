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
 		 <!-- <form action="manager/user/batchDelete" method="post"> -->
	 		 <table class="table table-bordered table-hover table-striped">
	 		 	<c:if test="${empty userList }">	 		 		
	 		 		<tr>
		 		 		<td>没有查询到任何账号</td>
		 		 	</tr>
	 		 	</c:if>
	 		 	<c:if test="${!empty userList }">
		 		 	<tr>
		 		 		<td>ID</td>
		 		 		<td>账号</td>
		 		 		<td>公司/部门/职位</td>
		 		 		<td>已分配试题</td>
		 		 		<td>设置职位</td>
		 		 		
		 		 		<!-- <td>批量勾选</td> -->
		 		 		<td>设置试题</td>
		 		 		<td>导出报告</td>
		 		 	</tr>
		 		 	
		 		 	<c:forEach items="${userList }" var="user"> 
		 		 		<tr>
			 		 		<td>${user.userId }</td>
			 		 		<td>
			 		 			${user.userName }
			 		 		</td>
			 		 		<td>
			 		 			${user.companyNameCN } / ${user.departmentName } / ${user.positionName }
			 		 		</td>
			 		 		<td>
			 		 			<c:forEach items="${user.paperList}" var="paper" varStatus="mystatus"> 
			 		 				<span>${paper.testPaperName }</span><c:if test="${!mystatus.last}"><br></c:if>
			 		 			</c:forEach>
			 		 		</td>
			 		 		<td>
			 		 			<a href="manager/companyHandler/queryAll/${user.userId}">设置职位</a>
			 		 		</td>
			 		 		<%-- <td>
			 		 			<input id="${user.userId }" class="userBtn" type="checkbox" name="userList" value="${user.userId }"/>
			 		 			<label for="${user.userId }">删除</label>
			 		 		</td> --%>
			 		 		<%-- <td>
			 		 			<a href="manager/admin/toDispatcherUI/${user.userId}">查看试题</a>
			 		 		</td> --%>
			 		 		<td>
			 		 			<a href="manager/custTestPaper/queryAll/${user.userId}">设置试题</a>
			 		 		</td>
			 		 		<td>
			 		 			<a href="manager/admin/exportReport/${user.userId}">导出报告</a>
			 		 		</td>
			 		 	</tr>	 		 	
		 		 	</c:forEach>
	 		 	
		 		 	<!-- <tr>
		 		 		<td colspan="4">
		 		 			<input type="submit" value="批量删除">
		 		 		</td>
		 		 	</tr> -->	
	 		 	</c:if> 	
	 		 </table>
 		 <!-- </form> -->	 	
 	</div>

 	
 	
</body>
</html>