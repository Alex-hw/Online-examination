<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="cn.examination.ssm.domain.*,java.util.*"%>
<!DOCTYPE html>
<html>
<% String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
	%>
	<head>
		<meta charset="UTF-8">
		<title></title>
	    <link rel="stylesheet" href="css/amazeui.min.css">
		<link rel="stylesheet" href="css/admin.css">
		<link rel="stylesheet" href="css/app.css">
		<style>
			.admin-main{
				padding-top: 0px;
			}
		</style>
	</head>
	<body>
		<div class="am-cf admin-main">
		<!-- content start -->
		<div class="admin-content">
			<div class="admin-content-body">
				<div class="am-g">
					<form class="am-form am-form-horizontal"
						 method="post"
						style="padding-top:30px;" data-am-validator>
						
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">
							试卷Id </label>
							<div class="am-u-sm-9">
								<input type="text" id="tID" required placeholder="输入试卷Id" 
									name="tID" value=""><small>输入试卷Id</small>
							</div>
						</div>
						
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">
							试卷名称 </label>
							<div class="am-u-sm-9">
								<input type="text" id="tName" required placeholder="输入试卷名称" 
									name="tName" value=""> <small>输入试卷名称</small>
							</div>
						</div>
						
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">
							题号 </label>
							<div class="am-u-sm-9">
								<input type="text" id="stems" required placeholder="输入题号" 
									name="stems" value=""> <small>输入题号</small>
							</div>
						</div>
						
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">
								正确答案序列</label>
							<div class="am-u-sm-9">
								<input type="text" id="rightKeys" required placeholder="请输入正确答案" 
									name="rightKeys"  data-equal-to="#doc-vld-pwd-1"  required value=""> <small>请输入正确答案</small>
							</div>
						</div>
						
								<input type="hidden" id="userAccount" value="${userLogin.account}">
								
						
						<div class="am-form-group">
							<div class="am-u-sm-9 am-u-sm-push-3">
								<input type="button" class="am-btn am-btn-success" value="添加" onclick="chuan();" />
							</div><span id="tip"></span>
						</div>
						
					</form>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript"
		src="<%=path%>/assets/js/libs/jquery-1.10.2.min.js">
	</script>
	<script type="text/javascript" src="<%=path%>/myplugs/js/plugs.js">
	</script>
	<script src="<%=path%>/js/jquery.js"></script>
	</body>
<script type="text/javascript">
function chuan(){
$.ajax({
	url : '<%=basePath%>paper/addPaper', //根据操作传入不同的URL
	data : {tID:$('#tID').val(),tName:$('#tName').val(),stems:$('#stems').val(),rightKeys:$('#rightKeys').val(),userAccount:$('#userAccount').val()}, //传入序列化的表单对象
	type : "post",
	async : true, //异步传输
	timeout : 3000,
	beforeSend : function() {
		$('#tip').html('<span style="color: cornflowerblue">正在处理...</span>');
		return true;
	},
	success : function(data) {
		$('#tip').html('<span style="color: green">操作成功！</span>');
	},
	error : function(XMLHttpRequest, textStatus,
			errorThrown) {
		// alert(XMLHttpRequest.status);//状态码
		// alert(XMLHttpRequest.readyState);//状态
		// alert(textStatus);//错误信息
		alert("出错了");

	},
	complete : function() {

	}
});
}

function back(){
	history.go(-1);
}
</script>

</html>
