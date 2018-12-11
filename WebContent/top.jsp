<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
<style>
		.top{border: #13E05D outset 2px;width: 1350px;height: 190px}
		#time{background: #18D1E8;width: 1350px;height:50px;text-align-last: right;}
		#textone{text-align-last: right;margin-top: 50px}
		.top a{margin-left:1250px;float:right}
		h2{
		color:green;
		}
</style>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.min.js"></script>
		</head>
<body>
<div class="top">
		<h2>文档共享平台后台管理端</h2>
		<a href="<%=request.getContextPath() %>/back/jsp/back_login.jsp" target="_parent">退出系统</a>
		<h4 id="textone">${sessionScope.user.userName}欢迎!</h4>
		<div id="time">
		<script>     
		document.getElementById('time').innerHTML=new Date().toLocaleString();     
		setInterval("document.getElementById('time').innerHTML=new Date().toLocaleString();",1000);  
		</script> 
		</div>
	</div>

</body>
</html>