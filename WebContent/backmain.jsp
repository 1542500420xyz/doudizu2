<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>主页</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
<link href="<%=request.getContextPath()%>/media/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<link href="<%=request.getContextPath()%>/media/css/bootstrap-responsive.min.css" rel="stylesheet"
	type="text/css" />
<link href="<%=request.getContextPath()%>/media/css/font-awesome.min.css" rel="stylesheet"
	type="text/css" />
<link href="<%=request.getContextPath()%>/media/css/style-metro.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/media/css/style.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/media/css/style-responsive.css" rel="stylesheet"
	type="text/css" />
<link href="<%=request.getContextPath()%>/media/css/default.css" rel="stylesheet" type="text/css"
	id="style_color" />
<link href="<%=request.getContextPath()%>/media/css/uniform.default.css" rel="stylesheet"
	type="text/css" />
<link href="<%=request.getContextPath()%>/media/css/jquery.gritter.css" rel="stylesheet"
	type="text/css" />
<link href="<%=request.getContextPath()%>/media/css/daterangepicker.css" rel="stylesheet"
	type="text/css" />
<link href="<%=request.getContextPath()%>/media/css/fullcalendar.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/media/css/jqvmap.css" rel="stylesheet" type="text/css"
	media="screen" />
<link href="<%=request.getContextPath()%>/media/css/jquery.easy-pie-chart.css" rel="stylesheet"
	type="text/css" media="screen" />
<link rel="shortcut icon" href="<%=request.getContextPath()%>/media/image/favicon.ico" />
</head>
<body class="page-header-fixed">
	<!-- 1====================================================================================================== -->
	<div class="header navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a class="brand" href="index.jsp"> 后台管理系统</a> 
				<ul class="nav pull-right">
					<!-- 用户名属性=======================================================================================-->
					<li class="dropdown user"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown"> <img alt=""
							src="media/image/avatar1_small.jpg" /> <span class="username">${sessionScope.user.userName}</span>
							<i class="icon-angle-down"></i>
					</a>
						<ul class="dropdown-menu">
							<li><a href=""><i class="icon-user"></i> 属性1</a></li>
							<li><a href=""><i class="icon-calendar"></i> 属性2</a></li>
							<li><a href="<%=request.getContextPath()%>/backlogin.jsp"><!-- <i class="icon-envelope">--></i> 注销</a></li>
						</ul></li>
					<!-- 用户名属性=======================================================================================-->
				</ul>
			</div>
		</div>
	</div>
	<!-- 1====================================================================================================== -->
	<!--2====================================================================================================== -->
	<div class="page-container">
		<div class="page-sidebar nav-collapse collapse">
			<ul class="page-sidebar-menu">
				<li>
					<div class="sidebar-toggler hidden-phone"></div> <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
				</li>
				<li class="start active "><a href="index.html"> <i
						class="icon-home"></i> <span class="title">菜单1</span> <span
						class="selected"></span>
				</a></li>
				<li class=""><a href="javascript:;"> <i class="icon-cogs"></i>
						<span class="title">菜单2</span> <span class="arrow "></span>
				</a>
					<ul class="sub-menu">
						<li><a href="<%=request.getContextPath()%>/user/mytest.action" target="center">1</a></li>
						<li><a href="">2</a></li>
					</ul></li>
				<li class=""><a href="javascript:;"> <i
						class="icon-bookmark-empty"></i> <span class="title">菜单3</span> <span
						class="arrow "></span>
				</a>
					<ul class="sub-menu">
						<li><a href=""> 1</a></li>
						<li><a href="">2</a></li>
					</ul></li>

				<li class=""><a href="javascript:;"> <i class="icon-table"></i>
						<span class="title">菜单4</span> <span class="arrow "></span>
				</a>
					<ul class="sub-menu">
						<li><a href=""> 1</a></li>
						<li><a href="">2</a></li>
					</ul></li>

				<li class=""><a href="javascript:;"> <i
						class="icon-briefcase"></i> <span class="title">菜单5</span> <span
						class="arrow "></span>
				</a>
					<ul class="sub-menu">
						<li><a href="">1</a></li>
						<li><a href="">2</a></li>
					</ul></li>

				<li class=""><a href="javascript:;"> <i class="icon-gift"></i>

						<span class="title">菜单6</span> <span class="arrow "></span>

				</a>
					<ul class="sub-menu">
						<li><a href="">1</a></li>
						<li><a href="">2</a></li>
					</ul></li>
				<li><a href="javascript:;"> <i class="icon-folder-open"></i>
						<span class="title">菜单8</span> <span class="arrow "></span>
				</a>
					<ul class="sub-menu">
						<li><a href="">1</a></li>
						<li><a href="">2</a></li>
					</ul></li>
				<li class=""><a href="javascript:;"> <i class="icon-user"></i>
						<span class="title">菜单9</span> <span class="arrow "></span>
				</a>
					<ul class="sub-menu">
						<li><a href="">1</a></li>
						<li><a href="">2</a></li>
					</ul></li>
				<li class=""><a href="javascript:;"> <i class="icon-th"></i>
						<span class="title">菜单10</span> <span class="arrow "></span>
				</a>
					<ul class="sub-menu">
						<li><a href="">1</a></li>
						<li><a href="">2</a></li>
					</ul></li>

				<li class=""><a href="javascript:;"> <i
						class="icon-file-text"></i> <span class="title">菜单11</span> <span
						class="arrow "></span>
				</a>
					<ul class="sub-menu">
						<li><a href="">1</a></li>
						<li><a href="">2</a></li>
					</ul></li>

				<li class=""><a href="javascript:;"> <i
						class="icon-map-marker"></i><span class="title">菜单12</span> <span
						class="arrow "></span>
				</a>
					<ul class="sub-menu">
						<li><a href="">1</a></li>
						<li><a href="">2</a></li>
					</ul></li>
				<li class="last "><a href="charts.html"> <i
						class="icon-bar-chart"></i> <span class="title">菜单13</span>
				</a></li>
			</ul>
		</div>

		<div class="page-content">
			<div class="container-fluid">
			<!-- 导航栏==================== -->
				<div class="row-fluid">
					<div class="span12">
						<div class="color-panel hidden-phone">
							<div class="color-mode-icons icon-color"></div>
							<div class="color-mode-icons icon-color-close"></div>
							<div class="color-mode">
								<p>皮肤选择</p>
								<ul class="inline">
									<li class="color-black current color-default"
										data-style="default"></li>
									<li class="color-blue" data-style="blue"></li>
									<li class="color-brown" data-style="brown"></li>
									<li class="color-purple" data-style="purple"></li>
									<li class="color-grey" data-style="grey"></li>
									<li class="color-white color-light" data-style="light"></li>
								</ul>
								<label> <span>Layout</span> <select
									class="layout-option m-wrap small">
										<option value="fluid" selected>Fluid</option>
										<option value="boxed">Boxed</option>
								</select>
								</label> <label> <span>Header</span> <select
									class="header-option m-wrap small">
										<option value="fixed" selected>Fixed</option>
										<option value="default">Default</option>
								</select>
								</label> <label> <span>Sidebar</span> <select
									class="sidebar-option m-wrap small">
										<option value="fixed">Fixed</option>
										<option value="default" selected>Default</option>
								</select>
								</label> <label> <span>Footer</span> <select
									class="footer-option m-wrap small">
										<option value="fixed">Fixed</option>
										<option value="default" selected>Default</option>
								</select>
								</label>
							</div>
						</div>
						<h3 class="page-title">
							欢迎登陆 <small></small>
						</h3>
						<ul class="breadcrumb">
							<li><i class="icon-home"></i> <a href="index.jsp">首页</a> <i
								class="icon-angle-right"></i></li>
							<li><a href="#">页面1</a></li>
						</ul>
					</div>
				</div>
	<!-- 导航栏==================== -->
				<div id="dashboard">
					<iframe name="center" height="300px;" width="300px;"></iframe>
				</div>
			</div>
		</div>
	</div>
	<!-- 置顶 -->
	<div class="footer">
		<div class="footer-tools">
			<span class="go-top"><i class="icon-angle-up"></i>
			</span>
		</div>
	</div>
	<!-- --------------------------------------------------------------------------------------- -->

	<script src="<%=request.getContextPath()%>/media/js/jquery-1.10.1.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/media/js/jquery-migrate-1.2.1.min.js"
		type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/media/js/jquery-ui-1.10.1.custom.min.js"
		type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/media/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/media/js/jquery.slimscroll.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/media/js/jquery.blockui.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/media/js/jquery.cookie.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/media/js/jquery.uniform.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/media/js/jquery.vmap.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/media/js/jquery.vmap.russia.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/media/js/jquery.vmap.world.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/media/js/jquery.vmap.europe.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/media/js/jquery.vmap.germany.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/media/js/jquery.vmap.usa.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/media/js/jquery.vmap.sampledata.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/media/js/jquery.flot.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/media/js/jquery.flot.resize.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/media/js/jquery.pulsate.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/media/js/date.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/media/js/daterangepicker.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/media/js/jquery.gritter.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/media/js/fullcalendar.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/media/js/jquery.easy-pie-chart.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/media/js/jquery.sparkline.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/media/js/app.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/media/js/index.js" type="text/javascript"></script>
	<script>
		jQuery(document).ready(function() {
			App.init(); // initlayout and core plugins
			Index.init();
			Index.initJQVMAP(); // init index page's custom scripts
			Index.initCalendar(); // init index page's custom scripts
			Index.initCharts(); // init index page's custom scripts
			Index.initChat();
			Index.initMiniCharts();
			Index.initDashboardDaterange();
			Index.initIntro();
		});
	</script>
</html>