<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>后台左边</title>
<style>
.left {
	border: #32DBA4 solid 1px;
	width: 250px;
	height: 600px
}

#menu {
	background: #12EBDA;
	text-align-last: center;
	float: left;
	width: 250px;
	height: 40px;
}
</style>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
</head>
<body>
	<div class="left">
		<div id="menu">
			<p>操作菜单</p>
		</div>
		&nbsp;&nbsp;
		<p>Menu</p>
		<ul>
		<li><a href="<%=request.getContextPath()%>/user/queryAll.action" target="rightjsp">用户列表</a></li>
		<li><a href="<%=request.getContextPath()%>/daytwo/documentAction!queryAll" target="rightjsp">文档列表</a></li>
		</ul>
		
	</div>
</body>
</html>