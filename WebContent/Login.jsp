<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<% String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
	%>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
<meta name="viewport" content="width=device-width, initial-scale=1"> 
<title>login</title>
<link rel="stylesheet" type="text/css" href="<%=path%>/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="<%=path%>/css/demo.css" />
<link rel="stylesheet" href="<%=path%>/js/vendor/jgrowl/css/jquery.jgrowl.min.css">
<!--必要样式-->
<link rel="stylesheet" type="text/css" href="<%=path%>/css/component.css" />
</head>
<style>
	input::-webkit-input-placeholder{
		color:rgba(0, 0, 0, 0.726);
	}
	input::-moz-placeholder{   /* Mozilla Firefox 19+ */
		color:rgba(0, 0, 0, 0.726);
	}
	input:-moz-placeholder{    /* Mozilla Firefox 4 to 18 */
		color:rgba(0, 0, 0, 0.726);
	}
	input:-ms-input-placeholder{  /* Internet Explorer 10-11 */ 
		color:rgba(0, 0, 0, 0.726);
	}
</style>
<body>


<!-- <form action="user/check" method="post">
	<h3>在线考试系统</h3>
	<input type="text" name="username" id="username"/>
	<input type="text" name="password" id="password"/>
	<input name="sub" type="submit" id="submit" value="登录"/>
</form>
-->
<div class="container demo-1">
	<div class="content">
		<div id="large-header" class="large-header">
			<canvas id="demo-canvas"></canvas>
				<div class="logo_box">
				<h3>在线测试系统</h3>
				<form action="<%=basePath%>user/check" name="f" method="post" id="myform">
					<div class="input_outer">
						<span class="u_user"></span>
						<input id="username" name="username" class="text" style="color: #000000 !important" type="text" placeholder="请输入账户">
						<span id="tip1"></span>
					</div>
						<div class="input_outer">
							<span class="us_uer"></span>
							<input id="password" name="password" class="text" style="color: #000000 !important; position:absolute; z-index:100;"value="" type="password" placeholder="请输入密码">
							<span id="tip2"></span>
						</div>
					<div id="LOGIN" class="mb2"><a class="act-but submit" href="javascript:;" onclick="login()" style="color: #FFFFFF">登录</a></div>
					<div id="LOGIN" class="mb2"><a class="act-but submit" href="<%=basePath%>Register.jsp" style="color: #FFFFFF">注册</a></div>
				</form>
				
			</div>
		</div>
	</div>
</div><!-- /container -->

<script src="<%=path%>/js/TweenLite.min.js"></script>
		<script src="<%=path%>/js/EasePack.min.js"></script>
		<script src="<%=path%>/js/jquery.js"></script>
		<script src="<%=path%>/js/rAF.js"></script>
		<script src="<%=path%>/js/demo-1.js"></script>
		<script src="<%=path%>/js/vendor/jgrowl/jquery.jgrowl.min.js"></script>
		<script src="<%=path%>/js/Longin.js"></script>
<div style="text-align:center;">
</div>
</body>
</html>