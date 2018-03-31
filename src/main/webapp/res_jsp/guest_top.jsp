<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="container-fluid">

	<!-- 公司名称和宗旨 -->
	<div id="logoDiv" class="col-lg-2 col-xs-12">
		<div class="row" style="line-height:24px;">
			<div class="col-lg-6 col-xs-6 company_cn">正和永勤</div>
			<div class="col-lg-6 col-xs-6 watchword_cn">咨询顾问专家</div>
		</div>
		<div class="row" style="line-height:20px;">
			<div class="col-lg-6 col-xs-6 company_en">talent capital</div>
			<div class="col-lg-6 col-xs-6 watchword_en">excellent consultant</div>
		</div>
	</div>
	<div class="col-lg-10 col-xs-12">
		<nav class="navbar navbar-default">
		  <div class="container-fluid">
		    <!-- Collect the nav links, forms, and other content for toggling -->
		    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		      <ul class="nav navbar-nav">
		      	<!-- 不管是否登录都可以访问 --> 
				<li><a href="index.jsp">首页</a></li>
				<c:if test="${sessionScope.loginUser != null }">
					<!-- 只有企业用户才可以访问的连接 -->
					<c:if test="${sessionScope.loginUser.company }">
						<li><a href="guest/survey/toAddUI">创建测评<span class="sr-only"></span></a></li>
						<li><a href="guest/survey/showMyUnCompletedSurvey">我未完成的调查<span class="sr-only"></span></a></li>
					</c:if>
					
					<!-- 无论企业用户还是个人用户都可以访问的超链接 -->
					<li class="dropdown">
						<!-- <a href="guest/engage/showAllAvailableSurvey">参与调查<span class="sr-only"></span></a> -->
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">参与调查<span class="caret"></span></a>
						<ul class="dropdown-menu">
				            <li><a href="guest/engage/showAllAvailableSurvey?type=1">情绪</a></li>
				            <li role="separator" class="divider"></li>
				            <li><a href="guest/engage/showAllAvailableSurvey?type=2">性格</a></li>
				            <li role="separator" class="divider"></li>
				            <li><a href="guest/engage/showAllAvailableSurvey?type=3">知识</a></li>
				             <li role="separator" class="divider"></li>
				            <li><a href="guest/engage/showAllAvailableSurvey?type=4">管理</a></li>
				          </ul>
					</li>
				</c:if>
		      </ul>
		      <c:if test="${sessionScope.loginUser != null }">
			      <form class="navbar-form navbar-left">
			        <div class="form-group">
			          <input type="text" class="form-control" placeholder="输入要查询的内容">
			        </div>
			        <button type="submit" class="btn btn-default">搜索</button>
			      </form>
		      </c:if>
		      	
			<c:if test="${sessionScope.loginUser != null }">
		      <ul class="nav navbar-nav navbar-right">
		        <li><a href="guest/user/logout">注销</a></li>
		      </ul>
			</c:if>
			
		    </div><!-- /.navbar-collapse -->
		  </div><!-- /.container-fluid -->
		</nav>
	</div>

</div>