<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="cn.examination.ssm.domain.*,java.util.*"%>
<!DOCTYPE html>
<html>
<% String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
	List<Report> rlist=(List<Report>)session.getAttribute("reportlist");
	%>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="<%=path%>/css/amazeui.min.css" />
		<link rel="stylesheet" href="<%=path%>/css/admin.css" />
	</head>

	<body>
		<div class="admin-content-body">
			<div class="am-cf am-padding am-padding-bottom-0">
				<div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">成绩管理</strong><small></small></div>
			</div>

			<hr>

			<div class="am-g">
				<div class="am-u-sm-12 am-u-md-6">
					<div class="am-btn-toolbar">
						<div class="am-btn-group am-btn-group-xs">
							<button type="button" class="am-btn am-btn-default"><span class="am-icon-plus"></span> 新增</button>
						</div>
					</div>
				</div>
				<div class="am-u-sm-12 am-u-md-3">

				</div>
				<form action="<%=basePath%>report/findReportAll" method="post">
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
									<th class="table-id">试卷ID</th>
									<th class="table-title">试卷名称</th>
									<th class="table-id">参与者账号</th>
									<th class="table-id">分数</th>
									<th class="table-set">操作</th>
								</tr>
							</thead>
							<tbody>
									<%if(rlist!=null){
    	 								for(int i=0;i<rlist.size();i++){
    								%>
								<tr>
									<td><input type="checkbox"></td>
									<td><%=i+1 %></td>
									<td>
										<a href="#"><%=rlist.get(i).gettID() %></a>
									</td>
									<td><%=rlist.get(i).gettName() %></td>
									<td><%=rlist.get(i).getUserAccount() %></td>
									<td><%=rlist.get(i).getScore() %></td>
									<td>
										<div class="am-btn-toolbar">
											<div class="am-btn-group am-btn-group-xs">
												<button type="button"  class="btnedit am-btn am-btn-default am-btn-xs am-text-secondary"> <span class="am-icon-pencil-square-o"></span> 编辑</button>
												<button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span><a href="<%=basePath%>report/deleteReport?rID=<%=rlist.get(i).getrID()%>&tID=<%=rlist.get(i).gettID()%>&userAccount=<%=rlist.get(i).getUserAccount()%>" style="color:#D50000;">删除</a></button>
											</div>
										</div>
									</td>
								</tr>
								<%  
    	 							}
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
		<script type="text/javascript" src="<%=path%>/js/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="<%=path%>/myplugs/js/plugs.js"></script>
		<script>
			$( function(){
				$(".btnedit").click(function() {

							$.jq_Panel({
								title: "修改链接",
								iframeWidth: 500,
								iframeHeight: 300,
								url: "editLink.html"
							});
						});
						
				
			})
		</script>

	</body>

</html>