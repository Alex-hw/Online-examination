<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<style type="text/css">
			body,div,dl,dt,dd,ul,ol,li,h1,h2,h3,h4,h5,h6,
			pre,code,form,fieldset,legend,input,textarea,p,
			blockquote,th,td{
				margin: 0;
				padding: 0;
			}
			body{
				background-color:#F9F9F9;
			}
			a{
				text-decoration: none;
				font-size:12px;
				line-height: 27px;
			}
			.header{
				width: 960px;
				height: 80px;
				margin: 0 auto;
				padding-top: 28px;
				box-sizing: border-box;
			}
			.header .logo{
				width: 644px;
				height: 27px;
				background-image:url(img/glb_v2.png);
				float: left;
			}
			.header .logo a{
				display: inline-block;
				width: 122px;
				height: 27px;
			}
			.content{
				background-color:white;
				width: 960px;
				height: 700px;
				margin: 0 auto;
			}
			.content .top{
				width: 960px;
				height: 38px;
				background:url(img/bgx.png);
			}
			.content .top .left{
				width: 960px;
				height: 38px;
				background:url(img/bgl.png) no-repeat left 0;
			}
			.content .right{
				width: 960px;
				height: 38px;
				background:url(img/bgr.png) no-repeat right 0;
			}
			.content .bottom{
				width: 960px;
				height: 562px;
			}
			.content .bottom .left1{
				width: 642px;
				height: 663px;
				/*background-color: red;*/
				float: left;
				
			}
			.content .bottom .right1{
				border-right: 1px solid #E1E1E1;
				width: 318px;
				height: 662px;
				background-color:#F5F5F5;
				float: right;
				padding-top:103px;
				padding-left: 60px;
				box-sizing: border-box;
			}
			.content .right h1{
				color: #FFFFFF;
				font-size: 15px;
				line-height:38px;
				text-indent: 2em;
				font-weight: normal;
			}
			.content .articletop{
				
				width: 560px;
				height: 60px;
			}
			.content .articlebottom{
				width: 560px;
				height: 373px;
			
			}
			.content .articlebottom .line{
				width: 413px;
				height: 28px;
			}
			.content .articlebottom .button{
				width: 160px;
				height: 30px;
				margin-bottom: 10px;
				margin-left: 75px;
			}
			.content .articlebottom
			input[type=submit]{
				margin-left: 70px;
				width: 119px;
				height: 37px;
				background:url(img/glb_v2.png) no-repeat -0px -361px;
				border: none;
			}
			.content .articlebottom img{
				height: 30px;
				float: right;
			}
			.content .articlebottom .line .mima{
				width: 332px;
			}
			.content .articlebottom p{
				margin-bottom: 20px;
				margin-left:75px;
				width: 338px;
				text-align: left;
				font-size: 12px;
				color: #9999A6;
			}
			.content .articlebottom .line select{
				width: 100px;
				height: 28px;
			}
			.content .articlebottom .line input{
				width: 214px;
				height: 24px;
			}
			.content .articlebottom .line .word{
				text-align: right;
				line-height: 28px;
				font-size: 12px;
				width: 60px;
				height: 28px;
				
				float: left;
			}
			.content .articlebottom .line .blank{
				width: 338px;
				height: 28px;
				float: right;
			}
			.content .articlebottom .line .xingxing{
				width: 0;
				color: red;
			}
			.content .left1{
				padding-top: 50px;
				padding-left: 80px;
				box-sizing: border-box;
				border: 1px solid #ccc;
				border-top: none;
			}
			.content .left1 .articletop ul{
				width: 412px;
				height: 34px;
				list-style: none;
				background:url(img/tab.jpg) no-repeat left 0;
			}
			.content .left1 .articletop ul li{
				float: left;
				width: 137px;
				height: 34px;
				line-height: 34px;
				text-align:center;
			}
			.footer{
				width: 960px;
				height: 48px;
				margin: 0 auto;
			}
			.footer p{
				line-height: 48px;
				font-size: 12px;
				color: #CCCCCC;
				text-align: center;
			}
			.footer p a{
			position: relative;
			right:300px;
			}
			.header .right{
				text-align: right;
				width: 200px;
				height: 27px;
				float: right;
				color: #ccc;
			}
			.header .right a{
				text-decoration: none;
				font-size:12px;
				line-height: 27px;
			}
		</style>
<body>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div class="header">
			<div class="logo">
				<a href="#" title="网易163免费邮箱"></a>
				<a href="#" title="网易126免费邮箱"></a>
				<a href="#" title="网易Yeah.net免费邮箱"></a>
			</div>
			<div class="right">
				<a href="#">了解更多</a>
				|
				<a href="#">反馈意见</a>
			</div>
		</div>
		<div class="content">
			<div class="top">
				<div class="left">
					<div class="right">
						<h1>欢迎注册网易邮箱！邮件地址可以登录使用其他网易旗下产品。</h1>
					</div>
				</div>
			</div>
			
		<form action="<%=basePath%>user/save" method="post">
			<div class="bottom">
				<div class="left1">
					<div class="articletop">
						<ul>
							<li>注册字母邮箱</li>
							<li>注册手机号码邮箱</li>
							<li>注册VIP邮箱</li>
						</ul>
					</div>
					<div class="articlebottom">
						
						<div class="line">
							<span class="word"><span class="xingxing">*</span>账号</span>
							<div class="blank">
								<input type="text" name="account" id="" value="" class="mima"/>
							</div>
						</div>
						<p>6~18个字符，可使用字母、数字、下划线，需以字母开头</p>
						
						<div class="line">
							<span class="word"><span class="xingxing">*</span>密码</span>
							<div class="blank">
								<input type="password" name="password"  value="" class="mima"/>
							</div>
						</div>
						<p>6~16个字符，区分大小写</p>
						
						<div class="line">
							<span class="word"><span class="xingxing">*</span>确认密码</span>
							<div class="blank">
								<input type="password" name="password"  value="" class="mima"/>
							</div>
						</div>
						<p>请再次填写密码</p>
						
						<div class="line">
							<span class="word"><span class="xingxing">*</span>手机号码</span>
							<div class="blank">
								<input type="password" name="tel"  value="" class="mima"/>
							</div>
						</div>
						<p>输入您的手机号码</p>
						
						<div class="line">
							<span class="word"><span class="xingxing">*</span>单位名称</span>
							<div class="blank">
								<input type="text" name="unitName"  value="" class="mima"/>
							</div>
						</div>
						<p>填写您的单位名称</p>
						
						<p> 
							<input type="checkbox" checked="checked" />
							同意"<a href="#">服务条款</a>"和"<a href="#">隐私权相关政策</a>"
						</p>
						
						<input class="zhuce" type="submit" value="立即注册" />
					</div>
				</div>
				<div class="right1">
					<img src="img/reg_master.gif"/>
				</div>
			</div>
		</form>
			
			
		</div>
		<div class="footer">
			<p>
			<a href="">关于网易</a>
			<a href="">关于网易免费邮</a>
			<a href="">邮箱官方博客</a>
			<a href="">客户服务</a>
			<a href="">隐私政策</a>	|  网易公司版权所有 © 1997-2019
					数据来源：艾媒咨询《2015-2018中国个人邮箱行业研究报告》</p>
		</div>
</body>
</html>