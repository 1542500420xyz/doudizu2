<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>登录</title>
<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/js/jquery.validate.js"></script>
<script src="<%=request.getContextPath()%>/js/messages_zh.min.js"></script>
<script src="<%=request.getContextPath()%>/js/fuction.js"></script>
<link href="<%=request.getContextPath()%>/css/back.css" rel="stylesheet">
<script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
<link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet">
<style>
.table tbody tr td{
border:0px;
}
#userRegister{
margin-left: 100px;
}

</style>
<script>
$().ready(function(){
	$("#myForm").validate({
		 rules: {
			 userName: {
		   	        required: true,
		   	      },
		   	   pwd: {
		   	        required: true,
		   	      },
		   	    },
		   	    
		   	  messages: {
		   		userName: {
		   	        required: "用户名不能为空",
		   	      },
		   	   pwd: {
		   	        required: "请输入密码",
		   	      },
		   	     },	
	})
});
</script>
<style>
.error{
	color:red;
}
</style>
</head>
<body>
<form action="<%=request.getContextPath()%>/user/login.action" method="post" id="myForm">
<div class="panel panel-primary">
<div class="panel-body" id="divone">
<table class="table table-hover">
<tbody>
<tr>
<td>用户名：<input id="userName" name="userName"></td>
</tr>
<tr>
<td>密 &nbsp;&nbsp;&nbsp;&nbsp;码:<input type="password" id="pwd" name="pwd"></td>
</tr>
<tr><td>验证码：<input type="text" name="code" id="code"><img src="<%=request.getContextPath()%>/demo/createImage" id="imageCode" onClick="changeCode()"></td></tr>
<tr>
<td><input type="submit" value="登录" id="login"><input type="button" value="注册" id="register" onClick="myRegister()"></td>
</tr>
</tbody>
</table>
</div>
</div>
</form>
</body>
<script>
var path="<%=request.getContextPath()%>/demo";
function myRegister(){
	window.location="<%=request.getContextPath()%>/daytwo/register!getSchoolList"
};
$("#userLogin").click(function(){
	$("#tableone").show();
});

</script>
</html>