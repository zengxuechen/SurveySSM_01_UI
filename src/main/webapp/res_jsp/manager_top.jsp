<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="atguigu" uri="http://www.atguigu.com/survey" %>

<div id="logoDiv" class="borderDiv">正和永勤产品云后台</div>
<div id="topDiv" class="borderDiv">
	<!-- 判断管理员是否登录，如果登录，获取session中用户信息进行判断 -->
	<c:if test="${sessionScope.loginAdmin==null }">
		[<a href="manager/admin/toLoginUI">登录</a>] 
	</c:if>
	<c:if test="${sessionScope.loginAdmin!=null }">
		[欢迎您,${sessionScope.loginAdmin.adminName }]
		[<a href="manager/admin/logout">注销</a>] 

		<%-- 细粒度权限控制：自定义标签 
		<atguigu:authTag xxx="">
			[<a href="manager/statistics/showAllAvailable">统计调查</a>]
		</atguigu:authTag> 
		--%>
		
		<atguigu:authTag servletPath="/manager/statistics/showAllAvailable">
			[<a href="manager/statistics/showAllAvailable">统计调查</a>]
		</atguigu:authTag>
		
		<atguigu:authTag servletPath="/manager/res/showAllRes">
			[<a href="manager/res/showAllRes">资源列表</a>]
		</atguigu:authTag>
		
		<atguigu:authTag servletPath="/manager/auth/toAuthUI">
			[<a href="manager/auth/toAuthUI">创建权限</a>]
		</atguigu:authTag>
		
		<atguigu:authTag servletPath="/manager/auth/showAuthList">
			[<a href="manager/auth/showAuthList">查看权限</a>]
		</atguigu:authTag>
		
		<atguigu:authTag servletPath="/manager/role/toRoleUI">
			[<a href="manager/role/toRoleUI">创建角色</a>]
		</atguigu:authTag>
		
		<atguigu:authTag servletPath="/manager/role/showRoleList">
			[<a href="manager/role/showRoleList">查看角色</a>]
		</atguigu:authTag>
		
		<atguigu:authTag servletPath="/manager/admin/toAdminUI">
			[<a href="manager/admin/toAdminUI">创建账号</a>]
		</atguigu:authTag>
		
		<atguigu:authTag servletPath="/manager/admin/showAdminList">
			[<a href="manager/admin/showAdminList">查看账号</a>]
		</atguigu:authTag>
		
		<atguigu:authTag servletPath="/manager/log/showLogList">
			[<a href="manager/log/showLogList">查看日志</a>]
		</atguigu:authTag>
		
	</c:if>

	<!-- 不管是否登录都可以访问 --> 
	[<a href="manager/admin/toMainUI">首页</a>]
</div>