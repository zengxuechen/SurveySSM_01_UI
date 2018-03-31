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
 	
 	<div id="mainDiv" class="borderDiv">
 		<!-- 判断用户是否登录，如果登录，获取session中用户信息进行判断 -->
		<c:if test="${sessionScope.loginUser == null }">
			<li><a href="guest/user/toLoginUI">测评登录<span class="sr-only"></span></a></li>
			<!-- <li><a href="guest/user/toRegist">注册<span class="sr-only"></span></a></li> -->
			<li><a href="manager/admin/toMainUI">后台登录<span class="sr-only"></span></a></li>
		</c:if>
 	</div>
 	
 	<div class="container">
 		<div class="row indexBg">
 			<div class="col-lg-6 col-xs-4">1</div>
 			<div class="col-lg-4 col-xs-4">2</div>
 			<div class="col-lg-2 col-xs-4">3</div>
 		</div>
 	</div>
 	
		<div>
			<!-- 登录输入区域 -->
			<div>
				<div>
					<div>
						<div>
							<div>用户登录</div>
							<div class="registerText"
								onclick="window.location.href='/jsp/ecp/register.jsp'">立即注册</div>
						</div>

						<div class="msg">
							<div class="msg_wrap">
								<div class="msg_img_div">
									<div class="msgImg"></div>
									<div class="errorImg"></div>
								</div>
								<div class="msg_content">
									<span class="showmsg"></span>
								</div>
							</div>
						</div>
						<div class="nickNameDiv">
							<!-- <input class="inputText" type="text" placeholder="用户名/邮箱/手机号码"/> -->
							<input class="nickNameInput textInput" type="text"
								value='用户名/邮箱/手机号码' />
						</div>
						<div class="passwordDiv">
							<!-- <input class="passwordInput" type="password" placeholder="密码" /> -->
							<input class="pwhidden passwordInput textInput" type="password"
								style="display: none;" value='' /> <input
								class="passwordTextInput textInput" type="text" value='密码'  />
						</div>
						<div class="autoLoginDiv">
							<input id="rememberMe" type="checkbox"   name="rememberMe"/>&nbsp;&nbsp;自动登录<span>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</span><span><a href="/jsp/ecp/findpwd/findindex.jsp" target="_blank">忘记密码?</a></span>
						</div>
						<div class="loginBtn" id="enterLogin" onclick="doLogin();">登&nbsp;&nbsp;录</div>
					</div>
				</div>
			</div>
		</div>
 	

 	<%@ include file="/res_jsp/guest_bottom.jsp" %>
 	
</body>
</html>