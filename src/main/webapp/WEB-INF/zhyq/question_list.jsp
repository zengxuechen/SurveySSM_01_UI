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
 	<c:if test="${page.pageNo == 1 && typeCode== 'PA_CA'}">
	 	<div id="description" class="borderDiv">
	 		<div style="padding:5px;font-size:20px;font-weight:600;">测评说明</div>
	 		<div style="padding:5px;font-size:16px;"><span>&#9670;</span><span>&nbsp;&nbsp;职业锚是职业倾向的测评工具。是由在职业生涯规划领域具有“教父”级地位的埃德加·沙因（Edgar.H.Schein）长达12年的职业生涯研究，包括面谈、跟踪调查、公司调查、人才测评、问卷等多种方式，最终分析总结出了职业锚理论。</span></div>
	 		<div style="padding:5px;font-size:16px;"><span>&#9670;</span><span>&nbsp;&nbsp;职业锚是人们选择和发展自己的职业时所围绕的中心，是指当一个人不得不做出选择的时候，他无论如何都不会放弃的职业中的那种至关重要的价值观。个人进入早期工作情境后，由习得的实际工作经验所决定，与在经验中自省的动机、价值观、能力相符合。职业锚强调个人能力、动机和价值观三方面的相互作用与整合。职业锚是个人同工作环境互动作用的产物，在实际工作中是不断调整的。</span></div>
	 		<div style="padding:5px;font-size:16px;"><span>&#9670;</span><span>&nbsp;&nbsp;职业锚测评不是标准化分数测试，题目的赋分只是用来衡量符合你实际想法的程度。你不会被别人评分，你的分数也不会用来跟别人比较。同时，职业锚类型也没有高低优劣之分，每个组织、团队中的管理者和员工都需要不同类型职业锚匹配。</span></div>
	 		<div style="padding:5px;font-size:16px;"><span>问卷核心目的是找出自我认知中深层次的部分，40个问题为了帮助你思考你想从职业中得到什么，你期望的能力领域是什么，以及什么最能满足你，因此尽量保持对自己的诚实是必要的。</span></div>
			<div style="padding:5px;font-size:16px;"><span>测试完成之后，系统将发送报告至您的邮箱。</span></div>
			<div style="padding:5px;text-align:center;margin-top:20px;font-size:16px;"><button class="btn-primary" onclick="hideDesc()">已阅读(<span id="second">60</span>s)</button></div>
		</div>
	
		<!-- <div id="tips" class="borderDiv">
	 		<div style="font-size:20px;">阅读问题并评估以下陈述符合你实际想法的程度：</div>
	 		<div style="font-size:16px;">&#9670;  如果（问题的陈述）对你来说"从不"符合你的实际想法，评为1分。</div>
	 		<div style="font-size:16px;">&#9670;  如果（问题的陈述）对你来说"偶尔"符合你的实际想法，评为2分。 </div>
	 		<div style="font-size:16px;">&#9670;  如果（问题的陈述）对你来说"有时"符合你的实际想法，评为3分。</div>
	 		<div style="font-size:16px;">&#9670;  如果（问题的陈述）对你来说"经常"符合你的实际想法，评为4分。</div>
			<div style="font-size:16px;">&#9670;  如果（问题的陈述）对你来说"频繁"符合你的实际想法，评为5分。</div>
	 		<div style="font-size:16px;">&#9670;  如果（问题的陈述）对你来说"总是"符合你的实际想法，评为6分。</div>
		</div> -->
	</c:if>
 	<div id="mainDiv" class="borderDiv">
 		<div style="font-size:20px">阅读问题并评估以下陈述符合你实际想法的程度：</div>
 		<div class="col-lg-8 col-xs-8"></div>
 		<div class="col-lg-4 col-xs-8">
	 		<div style="font-size:20px;">
	            	<c:forEach begin="1" end="${page.totalPageNo }" var="pageNos" varStatus="pageStatus" >
						<span style="font-size:14px;width:80px;height:10px;display:inline-block">${(pageStatus.index-1)*10+1}-${pageStatus.index*10}题</span>
					</c:forEach>
			</div>
			<div style="font-size:20px;">
	            	<c:forEach begin="1" end="${page.totalPageNo }" var="pageNos" varStatus="pageStatus" >
						<span style="width:80px;height:10px;border:1px solid black;display:inline-block"><span></span></span>
					</c:forEach>
			</div>
		</div>
 		<table class="table table-striped">
 			<c:if test="${empty page.list }"> 				
 				<tr><td>没有可以参与的测评题目</td></tr>
 			</c:if>
            <c:if test="${!empty page.list  && fn:length(page.list) > 0}">
            	<c:forEach items="${page.list}" var="question" varStatus="myStatus" >
					<c:if test="${myStatus.index == 0}">
						<tr>
							<td>
								<div class="col-lg-8 col-xs-8">
								</div>
								<div class="col-lg-4 col-xs-4">
									<div style="font-size:16px;text-align:center;">
			                            <c:forTokens items="${question.options}" delims="@" var="option" varStatus="status">  
			                             	<span style="width:60px;display:inline-block">${option}</span>    
			                            </c:forTokens>
			                        </div>
								</div>
							</td>
						</tr>
					</c:if>
					<tr>
						<td>
							<br/>
							<div class="col-lg-8 col-xs-8">
								<div style="font-size:16px;text-align:left;">
									<span style="font-weight:600;">${(page.pageNo-1)*10+myStatus.index+1}.</span>
									<span style="margin-left:20px;">${question.questionContent }</span>
								</div>
							</div>
							<div class="col-lg-4 col-xs-4">
								<div style="font-size:16px;text-align:center;">
									<c:set var="fids" value="${fn:split(question.options, '@')}" />
									<c:set var="maps" value="${fn:split(question.optionsBitmap, '@')}" />  
		                            <c:forTokens items="${question.options}" delims="@" var="option" varStatus="status">  
		                             	<input style="width:60px;display:inline-block" type="${question.questionTypeCode }" name="optionBitmap_${myStatus.index+page.pageSize*(page.pageNo-1)}" value="${maps[status.index]}" onchange="checkOrNot($(this))" />
		                            </c:forTokens>
		                        </div>
							</div>
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
				//console.log(resultArr[names.split("_")[1]]+"1111");
				$("input[name="+names+"][value="+resultArr[names.split("_")[1]]+"]").attr("checked", "checked");
			}
		}
	});
	var timer = setInterval(function(){
		if(parseInt($("#second").text())>0){
			$("#second").text(parseInt($("#second").text())-1);
		}else{
			clearInterval(timer);
			hideDesc();
		}
	}, 1000);
	showDesc();
})

function showDesc(){
	$("#description").show();
	$("#mainDiv").hide();
} 

function hideDesc(){
	$("#description").hide();
	$("#mainDiv").show();
}

function goPage(typeCode, paperId, questionIds, pageNo){
	
	//console.log(resultArr);
	$("input").each(function(){
		var names = $(this).attr('name');
		if(names != undefined && ""!= resultArr[names.split("_")[1]]){
			//console.log(names);
			//console.log(undefined == $("input[name="+names+"][checked='checked']").val())
			if(undefined != $("input[name="+names+"][checked='checked']").val()){
				resultArr[names.split("_")[1]] = $("input[name="+names+"][checked]").val();  //获取被选中Radio的Value值
			}
			
		}
		//console.log(resultArr);
		result = "";
		for(var i=0; i<resultArr.length; i++){
			result += resultArr[i]+"@";
		}
		result = result.substr(0, result.length-1);
		//console.log(result);
	});
	
	window.location.href="guest/selectQuestionLib/queryExQuestionByIds/"+typeCode+"/"+paperId+"/"+questionIds+"/"+pageNo+"/"+result;
}

function checkOrNot(_this){
	//console.log(_this.attr("checked"))
	if(undefined == _this.attr("checked")){
		_this.attr("checked", "checked").siblings().removeAttr("checked");
	}
}

function saveResult(typeCode, paperId, result){
	
	//console.log(resultArr);
	$("input").each(function(){
		var names = $(this).attr('name');
		if(names != undefined && ""!= resultArr[names.split("_")[1]]){
			//console.log(names);
			//console.log($("input[name="+names+"][checked='checked']").val())
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
		//console.log(result);
	});
	if(result.indexOf("_")>-1){
		alert("您还没有做完哦，请答完再点击完成");
	}else{
		window.location.href="guest/custTestResult/saveCustTestResult/"+typeCode+"/"+paperId+"/"+result;
	}
	
}

</script>
