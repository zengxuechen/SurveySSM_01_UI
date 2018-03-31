<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table>
		<tr>
			<td>ID</td>
			<td>EmpName</td>
			<td>Age</td>
		</tr>
		<c:forEach items="${empList }" var="emp">
			<tr>
				<td>${emp.empId }</td>
				<td>${emp.empName }</td>
				<td>${emp.age }</td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>