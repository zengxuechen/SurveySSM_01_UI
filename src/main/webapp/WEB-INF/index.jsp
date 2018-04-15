<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/res_jsp/base.jsp" %>
</head>
<body> 

	<%@ include file="/res_jsp/guest_top.jsp" %>
 	
 	<div class="container-fluid" style="background: darkblue;opacity: 0.8;margin-top:0px;">
 		<div class="row indexBg">
 			<div id="mainDiv" class="borderDiv" style="width:320px;height:360px;background:white;float:right;margin-right:150px;">
		 		<!-- 判断用户是否登录，如果登录，获取session中用户信息进行判断 -->
				<form method="post" action="guest/user/login">
					<div>
						<span class="loginType loginActive" onclick="active($(this))" value="guest">测评登录</span>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;<span class="loginType" onclick="active($(this))" value="admin">后台登录</span>
						<input type="hidden" value="guest" name="type" id="type"/>
					</div>
					<div style="margin-top:20px;">
						<c:if test="${exception!=null }">
							<div style="color:red;" colspan="2">
								${exception.message }
							</div>
						</c:if>
						<div class="input-group" style="margin-left:35px;margin-top:30px;">
						  <span class="input-group-addon" id="basic-addon1">账号</span>
						  <input type="text" class="form-control" style="width:200px;" placeholder="账号/手机号/邮箱" aria-describedby="basic-addon1" name="userName">
						</div>
						<div class="input-group" style="margin-left:35px;margin-top:30px;">
						  <span class="input-group-addon" id="basic-addon2">密码</span>
						  <input type="password" class="form-control" style="width:200px;" aria-describedby="basic-addon2" name="userPwd">
						</div>
						 <button type="submit" class="btn btn-primary" style="margin-top:30px;">登&nbsp;&nbsp;陆</button>
					</div>
				</form>
		 	</div>
 		</div>
 	</div>
 	<%@ include file="/res_jsp/guest_bottom.jsp" %>
 	
</body>
</html>
<script>
	function active(_this){
		if(_this.attr("class").indexOf("loginActive")==-1){
			_this.addClass("loginActive").siblings().removeClass("loginActive");
		}
		$("#type").val($(".loginActive").attr("value"));
	}
</script>