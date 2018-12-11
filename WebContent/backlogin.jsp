<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>智能停车管理系统</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.0.min.js"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/style2.0.css">
<style type="text/css">
	ul li{font-size: 30px;color:#2ec0f6;}
	.tyg-div{z-index:-1000;float:left;position:absolute;left:5%;top:20%;}
	.tyg-p{
		font-size: 14px;
	    font-family: 'microsoft yahei';
	    position: absolute;
	    top: 135px;
	    left: 60px;
	}
	.tyg-div-denglv{
		z-index:1000;float:right;position:absolute;right:3%;top:10%;
	}
	.tyg-div-form{
		background-color: #23305a;
		width:300px;
		height:auto;
		margin:120px auto 0 auto;
		color:#2ec0f6;
	}
	.tyg-div-form form {padding:10px;}
	.tyg-div-form form input[type="text"]{
		width: 270px;
	    height: 30px;
	    margin: 25px 10px 0px 0px;
	}
	.tyg-div-form form button {
	    cursor: pointer;
	    width: 270px;
	    height: 44px;
	    margin-top: 25px;
	    padding: 0;
	    background: #2ec0f6;
	    -moz-border-radius: 6px;
	    -webkit-border-radius: 6px;
	    border-radius: 6px;
	    border: 1px solid #2ec0f6;
	    -moz-box-shadow:
	        0 15px 30px 0 rgba(255,255,255,.25) inset,
	        0 2px 7px 0 rgba(0,0,0,.2);
	    -webkit-box-shadow:
	        0 15px 30px 0 rgba(255,255,255,.25) inset,
	        0 2px 7px 0 rgba(0,0,0,.2);
	    box-shadow:
	        0 15px 30px 0 rgba(255,255,255,.25) inset,
	        0 2px 7px 0 rgba(0,0,0,.2);
	    font-family: 'PT Sans', Helvetica, Arial, sans-serif;
	    font-size: 14px;
	    font-weight: 700;
	    color: #fff;
	    text-shadow: 0 1px 2px rgba(0,0,0,.1);
	    -o-transition: all .2s;
	    -moz-transition: all .2s;
	    -webkit-transition: all .2s;
	    -ms-transition: all .2s;
}
</style>
<body>
<div class="tyg-div">
	<ul>
    	<li>让</li>
    	<li><div style="margin-left:20px;">智</div></li>
    	<li><div style="margin-left:40px;">慧</div></li>
    	<li><div style="margin-left:60px;">改</div></li>
    	<li><div style="margin-left:80px;">变</div></li>
    	<li><div style="margin-left:100px;">生</div></li>
    	<li><div style="margin-left:120px;">活</div></li>
    </ul>
</div> 
<div id="contPar" class="contPar">
	<div id="page1"  style="z-index:1;">
		<div class="title0">智慧停车管理系统</div>
		<div class="title1"></div>
		<div class="imgGroug">
			<ul>
				<img alt="" class="img0 png" src="<%=request.getContextPath()%>/img/page1_0.png">
				<img alt="" class="img1 png" src="<%=request.getContextPath()%>/img/page1_1.png">
				<img alt="" class="img2 png" src="<%=request.getContextPath()%>/img/page1_2.png">
			</ul>
		</div>
		<img alt="" class="img3 png" src="<%=request.getContextPath()%>/img/page1_3.jpg">
	</div>
</div>
<div class="tyg-div-denglv">
	<div class="tyg-div-form">
		<form action="<%=request.getContextPath()%>/user/login.action" method="post" id="myForm">
			<h2>登录</h2><p class="tyg-p">欢迎访问!!!</p>
			<div style="margin:5px 0px;">
				<input type="text" placeholder="请输入账号..." name="userName" id="userName"/>
			</div>
			<div style="margin:5px 0px;">
				<input type="text" placeholder="请输入密码..." id="pwd" name="pwd"/>
			</div>
			<div style="margin:5px 0px;">
				<input type="text" style="width:150px;" placeholder="请输入验证码..." name="code" id="code"/>
				<img src="<%=request.getContextPath()%>/checkCodeHandler/checkCode.action" id="imageCode" onClick="changeCode()"  style="vertical-align:bottom;" alt="验证码"/>
			</div>
			<button type="submit" >登<span style="width:20px;"></span>录</button>
		</form>
	</div>
</div>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/com.js"></script>
<script>
var path="<%=request.getContextPath()%>/checkCodeHandler/checkCode.action";
function changeCode() {
	var imageCode = document.getElementById("imageCode");
	imageCode.src = path+"?"+new Date();
	console.log(new Date());
};
</script>


</body>
</html>