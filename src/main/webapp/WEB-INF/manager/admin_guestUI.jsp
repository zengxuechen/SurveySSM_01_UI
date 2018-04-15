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
 		<form action="manager/customerRelationHandler/saveCustomerInfo" method="post">
			<div class="row">
				<div class="col-lg-4 col-xs-3"></div>
				<div class="col-lg-4 col-xs-6" style="text-align:center;">
					<c:if test="${exception!=null }">
						<div style="color:red;" colspan="2">
							${exception.message }
						</div>
					</c:if>
					<div class="input-group" style="margin-left:35px;margin-top:30px;">
					  <span class="input-group-addon" id="basic-addon1">账号</span>
					  <input type="text" class="form-control" aria-describedby="basic-addon1" name="userName">
					</div>
					<div class="input-group" style="margin-left:35px;margin-top:30px;">
					  <span class="input-group-addon" id="basic-addon2">密码</span>
					  <input type="password" class="form-control" aria-describedby="basic-addon2" name="password">
					</div>
					<!-- <div class="input-group" style="margin-left:35px;margin-top:30px;">
					  <span class="input-group-addon" id="basic-addon1">姓名</span>
					  <input type="text" class="form-control" placeholder="账号/手机号/邮箱" aria-describedby="basic-addon1" name="userName">
					</div>
					<div class="input-group" style="margin-left:35px;margin-top:30px;">
					  <span class="input-group-addon" id="basic-addon1">手机</span>
					  <input type="text" class="form-control" placeholder="账号/手机号/邮箱" aria-describedby="basic-addon1" name="userName">
					</div>
					<div class="input-group" style="margin-left:35px;margin-top:30px;">
					  <span class="input-group-addon" id="basic-addon1">邮箱</span>
					  <input type="text" class="form-control" placeholder="账号/手机号/邮箱" aria-describedby="basic-addon1" name="userName">
					</div> -->
					<br><br>
					<input type="hidden" name="company" value="false" id="companyFalse"/>
					<!-- <div>
						<input type="radio" name="company" value="true" id="companyTrue" checked="checked"/>
						<label for="companyTrue">企业用户</label>
						
						<input type="radio" name="company" value="false" id="companyFalse"/>
						<label for="companyFalse">个人用户</label>
					</div> -->
					<div>
						<button type="submit" class="btn btn-primary" style="margin-top:30px;">保&nbsp;&nbsp;存</button>
					</div>
				</div>
				<div class="col-lg-4 col-xs-3"></div>
			</div>
 		</form>
 		
 	</div>
	<br><br><br>
 	<%@ include file="/res_jsp/manager_bottom.jsp" %>
 	
</body>
</html>