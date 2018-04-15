<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
 		<table class="table">
	 		<tr>
				<td>公司编号</td>
				<td>公司名称</td>
				<td>公司LOGO</td>
				<td>查看部门</td>
				<td>添加部门</td>
			</tr>
 			<c:if test="${empty companyList }"> 				
 				<tr><td>尚未添加公司</td></tr>
 			</c:if>

            <c:if test="${!empty companyList  && fn:length(companyList) > 0}">
            	<c:forEach items="${companyList}" var="company">
					<tr>
						<td>${company.id }</td>
						<td>${company.companyNameCn }</td>
						<td><img width="40" height="40" src="${company.companyLogo }" /></td>
						<td>
		 		 			<a href="manager/departmentHandler/showDepartmentListByCompanyId/${company.id}">查看部门</a>
		 		 		</td>
						<td>
		 		 			<a href="manager/admin/toDepartmentUI/${company.id}">添加部门</a>
		 		 		</td>
					</tr>
				</c:forEach>
            </c:if>
            <tr><td colspan="5"></td></tr>
 		</table>
 	</div>
	
 	<%@ include file="/res_jsp/guest_bottom.jsp" %>
 	
</body>
</html>