<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
 		答题中...
 		<br/>
 		<br/>
 		<table class="table">
 			<c:if test="${empty page.list }"> 				
 				<tr><td>没有可以参与的测评试题</td></tr>
 			</c:if>
            <c:if test="${!empty page.list  && fn:length(page.list) > 0}">
            	<c:forEach items="${page.list}" var="question" varStatus="myStatus" >
					<tr>
						<td>
							<br/>
							<div style="margin-left:100px;font-size:16px;text-align:left;"><span>${question.questionTypeName}：</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>${question.questionContent }</span></div>
							<br/>
							<div style="margin-left:100px;font-size:16px;text-align:left;">
								<c:set var="fids" value="${fn:split(question.options, '@')}" />
								<c:set var="maps" value="${fn:split(question.optionsBitmap, '@')}" />  
	                            <c:forTokens items="${question.options}" delims="@" var="option" varStatus="status">  
	                             	<input style="margin-left:20px;" type="${question.questionTypeCode }" name="optionBitmap_${myStatus.index+page.pageSize*(page.pageNo-1)}" value="${maps[status.index]}" onchange="checkOrNot($(this))" />&nbsp;&nbsp; ${option}     
	                            </c:forTokens>
	                        </div>
	                        <br/>
						</td>
					</tr>
				</c:forEach>
            </c:if>
            <tr><td> </td></tr>
 		</table>
 		
 		<div>
			<c:if test="${page.pageNo > 1 }">
				<a onclick="goPage('${typeCode}', '${paperId }', '${questionIds }', '${page.pageNo-1}')" href="javascript:void(0);" >上一页</a>
			</c:if>
			<c:if test="${page.pageNo < page.totalPageNo }">
				<a onclick="goPage('${typeCode}', '${paperId }', '${questionIds }', '${page.pageNo+1}')" href="javascript:void(0);" >下一页</a>
			</c:if>
				<a href="guest/custTestPaper/queryPaperTypeByCode/${typeCode}/1" >放弃</a>
			<c:if test="${page.pageNo == page.totalPageNo }">
				<a onclick="saveResult('${typeCode}', '${paperId }', '${result}')" href="javascript:void(0);" >完成</a>
			</c:if>
		</div>
 	</div>

 	<%@ include file="/res_jsp/guest_bottom.jsp" %>
 	
</body>
</html>
<script>
var result = "${result}";
console.log(result);
var resultArr = result.split("@");
console.log(resultArr);
$(function(){
	$("input").each(function(){
		var names = $(this).attr('name');
		if(names != undefined){
			console.log(names);
			if("_" != resultArr[names.split("_")[1]]){
				console.log(resultArr[names.split("_")[1]]+"1111");
				$("input[name="+names+"][value="+resultArr[names.split("_")[1]]+"]").attr("checked", "checked");
			}
		}
	});
})

function goPage(typeCode, paperId, questionIds, pageNo){
	
	console.log(resultArr);
	$("input").each(function(){
		var names = $(this).attr('name');
		if(names != undefined && ""!= resultArr[names.split("_")[1]]){
			console.log(names);
			console.log(undefined == $("input[name="+names+"][checked='checked']").val())
			if(undefined != $("input[name="+names+"][checked='checked']").val()){
				resultArr[names.split("_")[1]] = $("input[name="+names+"][checked]").val();  //获取被选中Radio的Value值
			}
			
		}
		console.log(resultArr);
		result = "";
		for(var i=0; i<resultArr.length; i++){
			result += resultArr[i]+"@";
		}
		result = result.substr(0, result.length-1);
		console.log(result);
	});

	window.location.href="guest/selectQuestionLib/queryExQuestionByIds/"+typeCode+"/"+paperId+"/"+questionIds+"/"+pageNo+"/"+result;
}

function checkOrNot(_this){
	console.log(_this.attr("checked"))
	if(undefined == _this.attr("checked")){
		_this.attr("checked", "checked").siblings().removeAttr("checked");
	}
}

function saveResult(typeCode, paperId, result){
	
	console.log(resultArr);
	$("input").each(function(){
		var names = $(this).attr('name');
		if(names != undefined && ""!= resultArr[names.split("_")[1]]){
			console.log(names);
			console.log(undefined == $("input[name="+names+"][checked='checked']").val())
			if(undefined != $("input[name="+names+"][checked='checked']").val()){
				resultArr[names.split("_")[1]] = $("input[name="+names+"][checked]").val();  //获取被选中Radio的Value值
			}
			
		}
		console.log(resultArr);
		result = "";
		for(var i=0; i<resultArr.length; i++){
			result += resultArr[i]+"@";
		}
		result = result.substr(0, result.length-1);
		console.log(result);
	});
	if(result.indexOf("_")>-1){
		alert("您还没有做完哦，请答完再点击完成");
	}else{
		window.location.href="guest/custTestResult/saveCustTestResult/"+typeCode+"/"+paperId+"/"+result;
	}
	
}

</script>
