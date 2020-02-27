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
		<script src="<%=path%>/js/jquery-3.1.0.min.js" type="text/javascript"></script>
		<script src="<%=path%>/js/bootstrap.min.js" type="text/javascript"></script>
		<script src="<%=path%>/js/material.min.js" type="text/javascript"></script>
		<script src="<%=path%>/js/chartist.min.js"></script>
		<script src="<%=path%>/js/material-dashboard.js"></script>
		<script type="text/javascript" src="<%=path%>/myplugs/js/plugs.js"></script>
		<link rel="stylesheet" href="<%=path%>/css/amazeui.min.css" />
		<link rel="stylesheet" href="<%=path%>/css/admin.css" />
	</head>

	<body>
	<%List<QuestStem> questlist=(List<QuestStem>)session.getAttribute("questlist");%>
		<div class="admin-content-body">
			<div class="am-cf am-padding am-padding-bottom-0">
				<div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">题库管理</strong><small></small></div>
			</div>

			<hr>

			<div class="am-g">
			
			
				<div class="am-u-sm-12 am-u-md-6">
					<div class="am-btn-toolbar">
						<div class="am-btn-group am-btn-group-xs">
							<button type="submit" class="am-btn am-btn-default" onclick="savedateQ('添加题目','5');"><span class="am-icon-plus"></span> 新增</button>
						</div>
					</div>
				</div>
			
				
				<div class="am-u-sm-12 am-u-md-3">

				</div>
				
				<form class="am-form" action="<%=basePath%>quest/find" name="f" method="post" id="myform">
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
									<th class="table-id">序号</th>
									<th class="table-id">ID</th>
									<th class="table-id">questionsName</th>
									<th class="table-type">rightKey</th>
									<th class="table-author am-hide-sm-only">score</th>
									<th class="table-set">操作</th>
								</tr>
							</thead>
							<tbody>
							<%if(questlist!=null){
    	 						for(int i=0;i<questlist.size();i++){
    						%>
								<tr>
									<td><input type="checkbox"></td>
									<td><%=i %></td>
									<td><%=questlist.get(i).getsID() %></td>
									<td>
										<a href="<%=basePath%>Questoplist.jsp?sID=<%=questlist.get(i).getsID() %>&qName=<%=questlist.get(i).getQuestionsName() %>" onclick="findOP('<%=questlist.get(i).getsID() %>')"><%=questlist.get(i).getQuestionsName() %></a>
									</td>
									<td><%=questlist.get(i).getRightKey() %></td>
									<td class="am-hide-sm-only"><%=questlist.get(i).getScore() %></td>
									<td>
										<div class="am-btn-toolbar">
											<div class="am-btn-group am-btn-group-xs">
												<button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span><a href="<%=basePath%>UpdateQuest.jsp?sID=<%=i %>">编辑</a></button>
												<button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span><a href="<%=basePath%>quest/deleteQuest?sID=<%=questlist.get(i).getsID() %>" style="color:#D50000;">删除</a></button>
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
	<script src="<%=path%>/js/jquery-3.1.0.min.js" type="text/javascript"></script>
	<script src="<%=path%>/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="<%=path%>/js/material.min.js" type="text/javascript"></script>
	<script src="<%=path%>/js/chartist.min.js"></script>
	<script src="<%=path%>/js/material-dashboard.js"></script>
	<script type="text/javascript" src="<%=path%>/myplugs/js/plugs.js"></script>
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
	
	function savedateQ(title,id) {
		$.jq_Panel({
			title: title,
			iframeWidth: 500,
			iframeHeight: 300,
			url: "<%=basePath%>AddOption.jsp"
		});
	}
	
	function updateQ(title,id) {
		alert(id);
		$.jq_Panel({
			title: title,
			async : false,
			iframeWidth: 500,
			iframeHeight: 300,
			url: "<%=basePath%>UpdateQuest.jsp?sID=id"
		});
	}
	
	function findOP(ID){
		$.ajax({
			url : '<%=basePath%>quest/findOpByID', //根据操作传入不同的URL
			data : {sID:ID}, //传入序列化的表单对象
			type : "post",
			async : true, //异步传输
			beforeSend : function() {
				return true;
			},
			success : function(data) {
				
			},
			error : function(XMLHttpRequest, textStatus,
					errorThrown) {
				// alert(XMLHttpRequest.status);//状态码
				// alert(XMLHttpRequest.readyState);//状态
				// alert(textStatus);//错误信息
			
			},
			complete : function() {
				
			}
		});
	}
	</script>
</html>