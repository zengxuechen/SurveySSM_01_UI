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
 	<div class="container-fluid">
 		<form action="/manager/departmentHandler/saveDepartmentByCid" method="post">
			<div class="row">
				<div class="col-lg-4 col-xs-3"></div>
				<div class="col-lg-4 col-xs-6" style="text-align:center;">
					<c:if test="${exception!=null }">
						<div style="color:red;" colspan="2">
							${exception.message }
						</div>
					</c:if>
					<div class="input-group" style="margin-left:35px;margin-top:30px;">
					  <input type="text" name="companyId" value="${companyId}">
					  <span class="input-group-addon" id="basic-addon1">部门名称</span>
					  <input type="text" class="form-control" aria-describedby="basic-addon1" name="departmentName">
					</div>
					  
					<br><br>
					<div>
						<button type="submit" class="btn btn-primary" style="margin-top:30px;">保&nbsp;&nbsp;存</button>
					</div>
				</div>
				<div class="col-lg-4 col-xs-3"></div>
			</div>
 		</form>
 		
 	</div>
	<br><br><br>
 	
 	
</body>
</html>