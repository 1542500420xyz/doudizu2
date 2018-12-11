<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>主页</title>
<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
<link href="<%=request.getContextPath()%>/css/bootstrap.min.css"
	rel="stylesheet">
<style>
#divone {
	margin-left: 500px;
	margin-top: 50px;
}

#divtwo {
	margin-left: 500px;
	margin-top: 50px;
}

#search {
	margin-left: 100px;
}

#tableone  tr td {
	padding: 0 15px;
}
</style>
</head>
<body>
	<div id="divone">
	<form id="myForm">
		<table>
			<tbody>
				<tr>
					<td>欢迎您:${sessionScope.user.userName }</td>
					<td>当前积分：<input type="hidden" value="" name="userId"></td>
					</tr>
					<tr>
					<td><input type="file" id="myfile" name="myfile"></td>
					<td><input type="button" value="我要下载" id="download" class="btn btn-primary"><input type="button" id="userMessage" class="btn btn-primary" onClick="lookMessage()" value="个人信息">	
					<input type="button" value="我要上传" id="toUpload" class="btn btn-primary" ></td>
				</tr>
			</tbody>
		</table>
		</form>
	</div>
	<div id="divtwo">
		<table>
			<tbody>
				<tr>
					<td id="tdone"><input id="condition" name="v"><input
						type="button" value="搜索文档" id="search"></td>
				</tr>
				<tr>
					<td>搜索结果：<input type="hidden" value="" name="userId"></td>
				</tr>
			</tbody>
		</table>
		<table border="1" id="tableone">
			<tbody>
				<tr>
					<th>文档标题</th>
					<th>上传人</th>
					<th>上传时间</th>
					<th>下载积分</th>
					<th>文档类型</th>
					<th>下载次数</th>
				</tr>
				<c:forEach items="${docMap}" var="map">
					<tr>
						<td>${map.DOC_NAME}</td>
						<td>${map.USERNAME}</td>
						<td>${map.UPLOAD_TIME}</td>
						<td>${map.NEED_SCORE}</td>
						<td>${map.DOC_TYPE}</td>
						<td>${map.DOWNLOADS}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
<script>
var Url="<%=request.getContextPath()%>/user/uploadFile.action";
function lookMessage(){
window.location="<%=request.getContextPath()%>/demo/userAction!getUserMessage";
	}
$("#toUpload").click(function(){
	var file=$("#myfile").val();
	console.log(file);
	if(file==null||file==""){
		window.alert("请选择文件");
	}else{
	$.ajax({
		type:"post",
		cache:false,
		url:Url,
		dataType:"json",
		data:new FormData($("#myForm")[0]),
		processData:false,
		contentType:false,
		success:function(data){
			if(data=="1"){
				window.alert("上传成功");
			}else{
				window.alert("上传出错");
			}
		}
	})
	}
});

$("#download").click(function(){
	window.location="<%=request.getContextPath()%>/file/file.action"
})
</script>
</html>