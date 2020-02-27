<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="cn.examination.ssm.domain.*,java.util.*"%>
<!DOCTYPE html>
<html>

	<head>
	<% String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
	%>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="<%=path%>/css/amazeui.min.css" />
		<link rel="stylesheet" href="<%=path%>/css/admin.css" />
	</head>

	<body>
	<%List<User> userlist=(List<User>)session.getAttribute("userlist");%>
		<div class="admin-content-body">
			<div class="am-cf am-padding am-padding-bottom-0">
				<div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">用户管理</strong><small></small></div>
			</div>

			<hr>

			<div class="am-g">
			
			<form action="<%=basePath%>Adduser.jsp" method="post">
				<div class="am-u-sm-12 am-u-md-6">
					<div class="am-btn-toolbar">
						<div class="am-btn-group am-btn-group-xs">
							<button type="submit" class="am-btn am-btn-default"><span class="am-icon-plus"></span> 新增</button>
						</div>
					</div>
				</div>
			</form>
				
				<div class="am-u-sm-12 am-u-md-3">

				</div>
				
				<form class="am-form" action="<%=basePath%>user/find" name="f" method="post" id="myform">
				<div class="am-u-sm-12 am-u-md-3">
					<div class="am-input-group am-input-group-sm">
						<input type="text" class="am-form-field">
						<span class="am-input-group-btn">
           					<button class="am-btn am-btn-default" type="submit">搜索</button>
          				</span>
					</div>
				</div>
				</form>
				
			</div>
			<div class="am-g">
				<div class="am-u-sm-12">
					<form class="am-form">
						<table class="am-table am-table-striped am-table-hover table-main">
							<thead>
								<tr>
									<th class="table-check"><input type="checkbox"></th>
									<th class="table-id">ID</th>
									<th class="table-title">用户名</th>
									<th class="table-type">密码</th>
									<th class="table-author am-hide-sm-only">工作地点</th>
									<th class="table-set">操作</th>
								</tr>
							</thead>
							<tbody>
							<%if(userlist!=null){
    	 						for(int i=0;i<userlist.size();i++){
    						%>
								<tr>
									<td><input type="checkbox"></td>
									<td><%=i %></td>
									<td>
										<a href="#"><%=userlist.get(i).getAccount() %></a>
									</td>
									<td><%=userlist.get(i).getPassword() %></td>
									<td class="am-hide-sm-only"><%=userlist.get(i).getUnitName() %></td>
									<td>
										<div class="am-btn-toolbar">
											<div class="am-btn-group am-btn-group-xs">
												<button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span><a href="<%=basePath%>ManageRegister.jsp?id=<%=i %>">编辑</a></button>
												<button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span><a href="<%=basePath%>user/deleteUser?account=<%=userlist.get(i).getAccount() %>" style="color:#D50000;">删除</a></button>
											</div>
										</div>
									</td>
								</tr>
								<%  }
    	  						}
    								%>
							</tbody>
						</table>
						<div class="am-cf">
							共 15 条记录
							<div class="am-fr">
								<ul class="am-pagination">
									<li class="am-disabled">
										<a href="#">«</a>
									</li>
									<li class="am-active">
										<a href="#">1</a>
									</li>
									<li>
										<a href="#">2</a>
									</li>
									<li>
										<a href="#">3</a>
									</li>
									<li>
										<a href="#">4</a>
									</li>
									<li>
										<a href="#">5</a>
									</li>
									<li>
										<a href="#">»</a>
									</li>
								</ul>
							</div>
						</div>
						<hr>
					</form>
				</div>
			</div>
		</div>
	</body>
	<script src="<%=path%>/js/jquery.js"></script>
	<script type="text/javascript">
	
	function find(){
		$.ajax({
			url : '<%=basePath%>user/find', //根据操作传入不同的URL
			data : {}, //传入序列化的表单对象
			type : "post",
			async : true, //异步传输
			beforeSend : function() {
				alert("b");
				return true;
			},
			success : function(data) {
				alert("su");
			},
			error : function(XMLHttpRequest, textStatus,
					errorThrown) {
				// alert(XMLHttpRequest.status);//状态码
				// alert(XMLHttpRequest.readyState);//状态
				// alert(textStatus);//错误信息
				alert("出错了");

			},
			complete : function() {
				alert("w");
			}
		});
	}
	</script>
</html>