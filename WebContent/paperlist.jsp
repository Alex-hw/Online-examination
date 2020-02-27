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
		<link rel="stylesheet" href="<%=path%>/css/amazeui.min.css" />
		<link rel="stylesheet" href="<%=path%>/css/admin.css" />
	</head>

	<body>
	<%List<Paper> plist=(List<Paper>)session.getAttribute("paperlist");%>
		<div class="admin-content-body">
			<div class="am-cf am-padding am-padding-bottom-0">
				<div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">试卷管理</strong><small></small></div>
			</div>

			<hr>

			<div class="am-g">
				<div class="am-u-sm-12 am-u-md-6">
					<div class="am-btn-toolbar">
						<div class="am-btn-group am-btn-group-xs">
							<button type="submit" class="am-btn am-btn-default" onclick="Addpaper('添加试卷','5');"><span class="am-icon-plus"></span> 新增</button>
						</div>
					</div>
				</div>
				<div class="am-u-sm-12 am-u-md-6">
					<div class="am-btn-toolbar">
						<div class="am-btn-group am-btn-group-xs">
							<button type="submit" class="am-btn am-btn-default" onclick="AddpaperRan('添加随机试卷','5');"><span class="am-icon-plus"></span> 新增随机</button>
						</div>
					</div>
				</div>
				<div class="am-u-sm-12 am-u-md-3">

				</div>
				
			<form class="am-form" action="<%=basePath%>paper/find" method="post">
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
									<th class="table-id">试卷ID</th>
									<th class="table-title">试卷名称</th>
									<th class="table-type">类别</th>
									<th class="table-author am-hide-sm-only">作者账号</th>
									<th class="table-set">操作</th>
								</tr>
							</thead>
							<tbody>
							
							<%if(plist!=null){
    	 						for(int i=0;i<plist.size();i++){
    						%>
								<tr>
								
									<td><input type="checkbox"></td>
									<td><%=plist.get(i).gettID() %></td>
									<td>
										<a href="<%=basePath%>paper/getQuestByStr?tID=<%=plist.get(i).gettID() %>"><%=plist.get(i).gettName() %></a>
									</td>
									<td>体育</td>
									<td class="am-hide-sm-only"><%=plist.get(i).getUserAccount() %></td>
									<td>
										<div class="am-btn-toolbar">
											<div class="am-btn-group am-btn-group-xs">
												<button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</button>
												<button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span><a href="<%=basePath%>paper/deletePaper?tID=<%=plist.get(i).gettID() %>" style="color:#D50000;">删除</a></button>
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
	function Addpaper(title,id) {
		$.jq_Panel({
			title: title,
			iframeWidth: 500,
			iframeHeight: 300,
			url: "<%=basePath%>Addpaper.jsp"
		});
	}
	
	function AddpaperRan(title,id) {
		$.jq_Panel({
			title: title,
			iframeWidth: 500,
			iframeHeight: 300,
			url: "<%=basePath%>AddpaperRan.jsp"
		});
	}
</script>
	
</html>