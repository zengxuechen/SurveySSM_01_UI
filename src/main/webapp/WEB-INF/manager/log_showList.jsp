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
 		[日志列表] 
 		
 		<table class="table table-bordered table-hover table-striped">
	 		<c:if test="${empty page.list }">
				<tr>
					<td>暂时没有日志数据</td>
				</tr>
			</c:if>
			<c:if test="${!empty page.list }">
				
				<c:forEach items="${page.list }" var="log">
				
					<tr>
						<td>ID</td>
						<td>详情</td>
					</tr>
					
					<tr>
						<td>${log.logId }</td>
						<td>
							操作人：${log.operator }<br/>
							操作时间：${log.operateTime }<br/>
							方法名：${log.methodName }<br/>
							方法所在类型：${log.methodType }<br/>
							参数：${log.methodArgs }<br/>
							返回值：${log.methodReturnValue }<br/>
							异常类型：${log.exceptionType }<br/>
							异常信息：${log.exceptionMessage }<br/>
						</td>
					</tr>
				
				</c:forEach>
				
				<tr>
					<td colspan="2">
						<c:set var="targetUrl" value="manager/log/showLogList" scope="page"/>
						<%@include file="/res_jsp/navigator.jsp" %>
					</td>
				</tr>
			
			</c:if>
		
		</table>	 		 	
 	</div>

 	<%@ include file="/res_jsp/manager_bottom.jsp" %>
 	
</body>
</html>