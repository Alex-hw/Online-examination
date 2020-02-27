<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
	<% String sID=request.getParameter("sID"); %>
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
							题目Id </label>
							<div class="am-u-sm-9">
								<input type="text" id="sID" required placeholder="输入题目ID" 
									name="sID" value=""><small>输入题目ID</small>
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">
							题目名称 </label>
							<div class="am-u-sm-9">
								<input type="text" id="questionsName" required placeholder="输入题目名称" 
									name="questionsName"> <small>输入题目名称</small>
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">
							正确选项 </label>
							<div class="am-u-sm-9">
								<input type="text" id="rightKey" required placeholder="输入正确选项" 
									name="rightKey"> <small>正确选项</small>
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">
								错误选项A</label>
							<div class="am-u-sm-9">
								<input type="text" id="wrongKeyA" required placeholder="错误选项A" 
									name="wrongKeyA"  data-equal-to="#doc-vld-pwd-1"  required> <small>错误选项A</small>
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">
								错误选项B</label>
							<div class="am-u-sm-9">
								<input type="text" id="wrongKeyB" required placeholder="错误选项B" 
									name="wrongKeyB"  data-equal-to="#doc-vld-pwd-1"  required> <small>错误选项B</small>
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">
								错误选项C</label>
							<div class="am-u-sm-9">
								<input type="text" id="wrongKeyC" required placeholder="错误选项C" 
									name="wrongKeyC"  data-equal-to="#doc-vld-pwd-1"  required> <small>错误选项C</small>
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">
								错误选项D</label>
							<div class="am-u-sm-9">
								<input type="text" id="wrongKeyD" required placeholder="错误选项D" 
									name="wrongKeyD"  data-equal-to="#doc-vld-pwd-1"  required> <small>错误选项D</small>
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">
								分值</label>
							<div class="am-u-sm-9">
								<input type="text" id="score" required placeholder="分值" 
									name="score"  data-equal-to="#doc-vld-pwd-1"  required> <small>分值</small>
							</div>
						</div>
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
	url : '<%=basePath%>quest/save', //根据操作传入不同的URL
	data : {sID:$('#sID').val(),questionsName:$('#questionsName').val(),rightKey:$('#rightKey').val(),wrongKeyA:$('#wrongKeyA').val(),wrongKeyB:$('#wrongKeyB').val(),wrongKeyC:$('#wrongKeyC').val(),wrongKeyD:$('#wrongKeyD').val(),score:$('#score').val()}, //传入序列化的表单对象
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
</script>

</html>
