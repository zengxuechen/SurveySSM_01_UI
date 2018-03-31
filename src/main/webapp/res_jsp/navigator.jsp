<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">

	$(function(){
		
		$("#go").change(function(){
			
			//①获取当前文本框的值
			var pageNo = this.value ;
			
			//②去掉pageNo前后空格
			pageNo = $.trim(pageNo);
			
			//③检查pageNo是否正确
			//空字符串认为是一个字符串    （isNaN == is not a Number）
			 if(pageNo == null || isNaN(pageNo)){
				  
				 //④将当前文本框的值恢复为默认值
				 pageNo = this.defaultValue; //当前页面加载时，文本框最初的默认值
				 
				 return ;
			 }
			
			//⑤如果检查后pageNo正确，则根据这个值执行页面查询 
			//IE 中较低的版本
			window.location.href = "${pageContext.request.contextPath}/${targetUrl}?pageNoStr="+pageNo;
			
		});
		
	});

</script>


<c:if test="${page.hasPrev }">
	<a href="${targetUrl}?pageNoStr=1">首页</a>
	<a href="${targetUrl}?pageNoStr=${page.prev}">上一页</a>
</c:if>

【当前是第${page.pageNo } 页
共${page.totalRecordNo }条记录
共${page.totalPageNo }页】
<input type="text" id="go" value="${page.pageNo }" class="shortInput">

<c:if test="${page.hasNext }">
	<a href="${targetUrl}?pageNoStr=${page.next }">下一页</a>
	<a href="${targetUrl}?pageNoStr=${page.totalPageNo }">末页</a>
</c:if>