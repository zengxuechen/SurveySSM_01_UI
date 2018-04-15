<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="container-fluid" style="height:55px;">

	<!-- 公司名称和宗旨 -->
	<div id="logoDiv" class="col-lg-3 col-xs-12">
		<div class="row" style="line-height:24px;">
			<div class="col-lg-6 col-xs-6 company_cn">正和永勤</div>
			<div class="col-lg-6 col-xs-6 watchword_cn">咨询顾问专家</div>
		</div>
		<div class="row" style="line-height:20px;">
			<div class="col-lg-6 col-xs-6 company_en">talent capital</div>
			<div class="col-lg-6 col-xs-6 watchword_en">excellent consultant</div>
		</div>
	</div>
	<div class="col-lg-9 col-xs-12">
		<nav class="navbar navbar-default">
		  <div class="container-fluid">
		    <!-- Collect the nav links, forms, and other content for toggling -->
		    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		      <ul class="nav navbar-nav"  style="height:55px;">
		      	<!-- 不管是否登录都可以访问 --> 
				<li><a href="index.jsp">首页</a></li>
				<c:if test="${sessionScope.loginUser != null }">
					<!-- 只有企业用户才可以访问的连接 -->
					<%-- <c:if test="${sessionScope.loginUser.company }">
						<li><a href="guest/survey/toAddUI">创建测评<span class="sr-only"></span></a></li>
						<li><a href="guest/survey/showMyUnCompletedSurvey">我未完成的测评<span class="sr-only"></span></a></li>
					</c:if> --%>
					
					<!-- 无论企业用户还是个人用户都可以访问的超链接 -->
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">参与测评<span class="caret"></span></a>
						<ul class="dropdown-menu">
				            <li><a href="guest/custTestPaper/queryPaperTypeByCode/PA_PC/1">人才测评</a></li>
				            <li role="separator" class="divider"></li>
				            <li><a href="guest/custTestPaper/queryPaperTypeByCode/PA_PCC/1">知识</a></li>
				             <li role="separator" class="divider"></li>
				            <li><a href="guest/custTestPaper/queryPaperTypeByCode/PA_PCC/1">管理</a></li>
				         </ul>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">我的报告<span class="caret"></span></a>
						<ul class="dropdown-menu">
				            <li><a href="guest/custTestResult/queryResultByTypeCode/PA_PC">人才测评报告</a></li>
				            <li role="separator" class="divider"></li>
				            <li><a href="guest/custTestResult/queryResultByTypeCode/PA_PCC">知识测评报告</a></li>
				            <li role="separator" class="divider"></li>
				            <li><a href="guest/custTestResult/queryResultByTypeCode/PA_PCD">管理测评报告</a></li>
				         </ul>
					</li>
				</c:if>
				<c:if test="${sessionScope.loginAdmin!=null }">
					
					<li><atguigu:authTag servletPath="/manager/statistics/showAllAvailable">
						<a class="li_a" href="manager/statistics/showAllAvailable">统计调查</a>
					</atguigu:authTag></li>
					
					<li><atguigu:authTag servletPath="/manager/res/showAllRes">
						<a class="li_a" href="manager/res/showAllRes">资源列表</a>
					</atguigu:authTag></li>
					
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">角色权限<span class="caret"></span></a>
						<ul class="dropdown-menu">
				            <li><atguigu:authTag servletPath="/manager/auth/toAuthUI">
								<a class="li_a dropMenu_a" href="manager/auth/toAuthUI">创建权限</a>
							</atguigu:authTag></li>
							
							<li><atguigu:authTag servletPath="/manager/auth/showAuthList">
								<a class="li_a dropMenu_a" href="manager/auth/showAuthList">查看权限</a>
							</atguigu:authTag></li>
				            <li role="separator" class="divider"></li>
				            <li><atguigu:authTag servletPath="/manager/role/toRoleUI">
								<a class="li_a dropMenu_a" href="manager/role/toRoleUI">创建角色</a>
							</atguigu:authTag></li>
							
							<li><atguigu:authTag servletPath="/manager/role/showRoleList">
								<a class="li_a dropMenu_a" href="manager/role/showRoleList">查看角色</a>
							</atguigu:authTag></li>
				         </ul>
					</li>
					
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">账号管理<span class="caret"></span></a>
						<ul class="dropdown-menu">
				           <li><atguigu:authTag servletPath="/manager/admin/toAdminUI">
								<a class="li_a dropMenu_a" href="manager/admin/toAdminUI">创建后台账号</a>
							</atguigu:authTag></li>
							
							<li><atguigu:authTag servletPath="/manager/admin/showAdminList">
								<a class="li_a dropMenu_a" href="manager/admin/showAdminList">查看后台账号</a>
							</atguigu:authTag></li>
							<li role="separator" class="divider"></li>
							<li><atguigu:authTag servletPath="/manager/admin/toGuestUI">
								<a class="li_a dropMenu_a" href="manager/admin/toGuestUI">创建前台账号</a>
							</atguigu:authTag></li>
							
							<li><atguigu:authTag servletPath="/manager/admin/showGuestList">
								<a class="li_a dropMenu_a" href="manager/admin/showGuestList">查看前台账号</a>
							</atguigu:authTag></li>
				         </ul>
					</li>
					
					
					
					
					
					<li><atguigu:authTag servletPath="/manager/log/showLogList">
						<a class="li_a" href="manager/log/showLogList">查看日志</a>
					</atguigu:authTag></li>
					
				</c:if>
		      </ul>
			
		      <ul class="nav navbar-nav navbar-right">
		      	<c:if test="${sessionScope.loginUser != null }">
		        	<li><a href="guest/user/logout">注销</a></li>
		        </c:if>
		        <c:if test="${sessionScope.loginAdmin!=null }">
		        	<li><a href="manager/admin/logout">注销</a></li>
		        </c:if>
		      </ul>
			
		    </div><!-- /.navbar-collapse -->
		  </div><!-- /.container-fluid -->
		</nav>
	</div>

</div>