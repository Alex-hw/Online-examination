<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<% String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
	%>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
    <link href="<%=path%>/css/bootstrap.min.css" rel="stylesheet" />
    <link href="<%=path%>/css/material-dashboard.css" rel="stylesheet"/>
    <link href="<%=path%>/css/UserMdemo.css" rel="stylesheet" />
    <link href="<%=path%>/css/font-awesome.min.css" rel="stylesheet">
    <link href='<%=path%>/css/2d7207a20f294df196f3a53cae8a0def.css' rel='stylesheet' type='text/css'>
</head>
<body>
<form action="<%=basePath%>quest/save" method="post">
	<p align="center">sID:<input type="text" name="sID" id="sID"></p>
	<p align="center">questionsName:<input type="text" name="questionsName"></p>
	<p align="center">rightKey:<input type="text" name="rightKey"></p>
	<p align="center">score:<input type="text" name="score"></p>
	<p align="center"><a href="javascript:void(0)" onclick="updateOP('添加选项','5')">
		添加选项
	</a></p>
	<p align="center"><input type="submit" value="点击"></p>
</form>
</body>
	<script src="<%=path%>/js/jquery-3.1.0.min.js" type="text/javascript"></script>
	<script src="<%=path%>/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="<%=path%>/js/material.min.js" type="text/javascript"></script>
	<script src="<%=path%>/js/chartist.min.js"></script>
	<script src="<%=path%>/js/material-dashboard.js"></script>
	<script type="text/javascript" src="<%=path%>/myplugs/js/plugs.js"></script>
	
<script type="text/javascript">
function updateOP(title,id) {
	$.jq_Panel({
		title: title,
		iframeWidth: 500,
		iframeHeight: 300,
		url: "<%=basePath%>AddOption.jsp"
	});
}
</script>
</html>