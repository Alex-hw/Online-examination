<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	
	<% String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
	%>
	<link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png" />
	<link rel="icon" type="image/png" href="../assets/img/favicon.png" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Material Dashboard by Creative Tim</title>
	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />

    <!-- Bootstrap core CSS     -->
    <link href="<%=path%>/css/bootstrap.min.css" rel="stylesheet" />

    <!--  Material Dashboard CSS    -->
    <link href="<%=path%>/css/material-dashboard.css" rel="stylesheet"/>

    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="<%=path%>/css/UserMdemo.css" rel="stylesheet" />

    <!--     Fonts and icons     -->
    <link href="<%=path%>/css/font-awesome.min.css" rel="stylesheet">
    <link href='<%=path%>/css/2d7207a20f294df196f3a53cae8a0def.css' rel='stylesheet' type='text/css'>
</head>
<body>
	<div class="wrapper">

	    <div class="sidebar" data-color="purple" data-image="../assets/img/sidebar-1.jpg">
			<!--
		        Tip 1: You can change the color of the sidebar using: data-color="purple | blue | green | orange | red"

		        Tip 2: you can also add an image using data-image tag
		    -->

			<div class="logo">
				<a href="#" class="simple-text">
					网站管理后台
				</a>
			</div>

	    	<div class="sidebar-wrapper">
	            <ul class="nav">
	                <!--<li class="active">
	                    <a href="<%=basePath%>product.jsp" target="right">
	                        <i class="material-icons">dashboard</i>
	                        <p>产品管理</p>
	                    </a>
	                </li>
	                <li>
	                    <a href="<%=basePath%>newsType.jsp" target="right" >
	                        <i class="material-icons">person</i>
	                        <p>资讯类别管理</p>
	                    </a>
	                </li>
	                <li>
	                    <a href="<%=basePath%>news.jsp"target="right" >
	                        <i class="material-icons">content_paste</i>
	                        <p>资讯管理</p>
	                    </a>
	                </li>
	                <li>
	                    <a href="<%=basePath%>link.jsp" target="right" >
	                        <i class="material-icons">library_books</i>
	                        <p>友情链接</p>
	                    </a>
	                </li>-->
	                <li>
	                    <a href="<%=basePath%>user.jsp" target="right" onclick="find()">
	                        <i class="material-icons">person</i>
	                        <p>用户管理</p>
	                    </a>
	                </li>
	                
	                 <li>
	                    <a href="<%=basePath%>404.jsp" target="right" >
	                        <i class="material-icons">person</i>
	                        <p>404错误页面</p>
	                    </a>
	                </li>
	              
	            </ul>
	    	</div>
	    </div>

	    <div class="main-panel">
			<nav class="navbar navbar-transparent navbar-absolute" style="background-color: #fff;">
				<div class="container-fluid">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
					</div>
					<div class="collapse navbar-collapse">
						<ul class="nav navbar-nav navbar-right">
							<li>
								<a href="#pablo" class="dropdown-toggle" data-toggle="dropdown">
									<i class="material-icons">dashboard</i>
									<p class="hidden-lg hidden-md">Dashboard</p>
								</a>
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
									 <i class="material-icons">person</i>
									<p class="hidden-lg hidden-md">Notifications</p>
								</a>
								<ul class="dropdown-menu">
									<li><a href="<%=basePath%>Login.jsp">退出</a></li>
								</ul>
							</li>
							
						</ul>

					
					</div>
				</div>
			</nav>

			<div class="content">
				<div class="container-fluid">
					<div class="row" style="margin-top: -15px;">
						
				
						<iframe src="<%=basePath%>user.jsp" width="100%" height="900" name="right" style="border: none;"></iframe>

				
				</div>
			</div>

		
		</div>
	</div>

</body>

	<!--   Core JS Files   -->
	<script src="<%=path%>/js/jquery-3.1.0.min.js" type="text/javascript"></script>
	<script src="<%=path%>/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="<%=path%>/js/material.min.js" type="text/javascript"></script>

	<!--  Charts Plugin -->
	<script src="<%=path%>/js/chartist.min.js"></script>



	<script src="<%=path%>/js/material-dashboard.js"></script>

	<!-- Material Dashboard DEMO methods, don't include it in your project! -->
	
	<script type="text/javascript" src="<%=path%>/myplugs/js/plugs.js">
		</script>
		<script type="text/javascript">
			//添加编辑弹出层
			function updatePwd(title, id) {
				$.jq_Panel({
					title: title,
					iframeWidth: 500,
					iframeHeight: 300,
					url: "<%=basePath%>updatePwd.jsp"
				});
			}
		</script>


	<script type="text/javascript">
    	$(document).ready(function(){

$(".nav li").click(function(){
	
	$(".nav li").removeClass("active");
	$(this).addClass("active");
	
})

			// Javascript method's body can be found in assets/js/demos.js

    	});
    	
    	function find(){
    		$.ajax({
    			url : '<%=basePath%>user/find', //根据操作传入不同的URL
    			data : {}, //传入序列化的表单对象
    			type : "post",
    			async : true, //异步传输
    			beforeSend : function() {
    			//	alert("b");
    				return true;
    			},
    			success : function(data) {
    			//	alert("su");
    			},
    			error : function(XMLHttpRequest, textStatus,
    					errorThrown) {
    				// alert(XMLHttpRequest.status);//状态码
    				// alert(XMLHttpRequest.readyState);//状态
    				// alert(textStatus);//错误信息
    				alert("出错了");

    			},
    			complete : function() {
    			//	alert("w");
    			}
    		});
    	}
	</script>

</html>