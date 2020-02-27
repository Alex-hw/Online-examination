<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<% String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
	%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>不存在</title>

<link rel="stylesheet" href="<%=path%>/res/css/reset.css"/>
<link rel="stylesheet" href="<%=path%>/css/404.css">

<script src="<%=path%>/js/jquery-3.1.0.min.js"></script>

</head>
<body>
<div class="auto">
	<div class="container">
		<div class="settings">
			<i class="icon"></i>
			<h4>很抱歉！账户或密码输入错误！</h4>
			<p><span id="num">5</span> 秒后将自动跳转到登陆页</p>
			<div>
				<a href="<%=basePath%>Login.jsp" title="返回登陆">返回登陆</a>
				<a href="javascript:;" title="上一步" id="reload-btn">上一步</a>
			</div>
		</div>
	</div>
</div>

<script>
	//倒计时跳转到首页的js代码
	var $_num=$("#num");
	var num=parseInt($_num.html());
	var numId=setInterval(function(){
		num--;
		$_num.html(num);
		if(num===0){
			//跳转地址写在这里
			window.location.href="<%=basePath%>Login.jsp";
		}
	},1000);
	//返回按钮单击事件
	var reloadPage = $("#reload-btn");
	reloadPage.click(function(e){
		window.history.back();
	});
</script>

</body>
</html>