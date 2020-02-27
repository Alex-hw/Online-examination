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
        <div class="am-fl am-cf">
          <strong class="am-text-primary am-text-lg">产品管理</strong> 
        </div>
      </div>

      <hr>
      <form name="fogq" method="post" action="<%=basePath%>user/find">
	  	<button class="am-btn am-btn-default" type="submit">搜索</button>
	  </form>
	  <a href="<%=basePath%>user/find" target="right" onclick="">点点</a>
	  
      <ul class="am-avg-sm-2 am-avg-md-4 am-avg-lg-6 am-margin gallery-list">
      <%if(userlist!=null){
    	 	for(int i=0;i<userlist.size();i++){
    	%>
        <li>
          
            <div class="gallery-title"><%=userlist.get(i).getAccount() %></div>
            <div class="gallery-title"><%=userlist.get(i).getTel() %></div>
            <div class="gallery-title"><%=userlist.get(i).getUnitName() %></div>
          
        </li>
        <%  }
    	  }
    	%>
      </ul>

    </div>
	</body>
	
	<script type="text/javascript">
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
