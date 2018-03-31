<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/res_jsp/base.jsp" %>
<script type="text/javascript">

	$(function(){
		/*
		在JS中空字符串被认为false ;  非空字符串被认为是  true  !!!!!!!
		
		if("false"){ 
			alert("false是真的：男人的话不可以当真！"); //当然女人的话也不可以全信
		} */
		//切换当前资源的受保护状态
		$(".resBtn").click(function(){
			
			
			
			//当前资源的id
			var resId = this.id ;
			
			var resBtn = this ;
			
			//为发起异步请求准备参数
			var url = "${pageContext.request.contextPath}/manager/res/toggleStatus";
			//time : 为了解决浏览器缓存问题。time的值并不是真的要提交给服务器
			var paramData = {"resId":resId,"time":new Date()};
			var callBack = function(resultData){
				var resultMessage = resultData.resultMessage ;
				if(resultMessage == "success"){
					alert("操作成功!");
					
					var finalStatus = resultData.finalStatus ;
					
					//if(finalStatus){}   !!!!!!   字符串永远是真
					if(finalStatus == "true"){
						//这个地方不能使用this给当前按钮进行赋值，因为这个this是调动当前函数的那个对象。不是当前按钮。
						// this.value = "";  //!!!!!
						resBtn.value = "公共资源" ;
					}
					
					if(finalStatus == "false"){
						resBtn.value = "受保护资源" ;
					}
				}else if(resultMessage == "failed"){
					alert("操作失败!");
				}
			};
			var type = "json";

			$.post( url , paramData , callBack , type);	
			
		});
	});
	
</script>

</head>
<body> 

	<%@ include file="/res_jsp/manager_top.jsp" %>
 	
 	<div id="mainDiv" class="borderDiv">
 		[资源列表]
 		<form action="manager/res/batchDelete" method="post">
	 		<table class="dataTable">
	 			<c:if test="${empty resList }">
		 			没有查询到任何资源
	 			</c:if>
	 			 <c:if test="${!empty resList }">
	 			 	<tr>
		 				<td>ID</td>
		 				<td>ServletPath</td>
		 				<td>Status</td>
		 				<td>Delete</td>
		 			</tr>
		 			<c:forEach items="${resList }" var="res">
			 			<tr> 
			 				<td>${res.resId }</td>
			 				<td>${res.servletPath }</td>
			 				<td>
			 					<c:if test="${res.publicRes }">
				 					<!-- <button>在表单内提交这个按钮会提交表单</button> -->
				 					<input id="${res.resId }" class="resBtn" type="button" value="公共资源"/>
			 					</c:if>
			 					<c:if test="${!res.publicRes }">
			 						<input id="${res.resId }" class="resBtn" type="button" value="受保护资源"/>
			 					</c:if>
			 				</td>
			 				<td>
			 					<input id="label${res.resId}" type="checkbox" name="resList" value="${res.resId}"/>
			 					<label for="label${res.resId}">删除</label>
			 				</td>
			 			</tr>
		 			</c:forEach>	
	 			 </c:if>
	 			 <tr> 
			 		<td colspan="4">
			 			<input type="submit" value="批量删除">
			 		</td>		 			
		 		 </tr>
	 		</table>
 		</form>	 		 	
 	</div> 

 	<%@ include file="/res_jsp/manager_bottom.jsp" %>
 	
</body>
</html>