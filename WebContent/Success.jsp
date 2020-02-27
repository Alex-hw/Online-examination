<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="cn.examination.ssm.domain.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
Successed
<%List<User> userlist=(List<User>)session.getAttribute("userlist");%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<form name="fogq" method="post" action="<%=basePath%>user/findAll">
<div class="showin">
按何种方式查询：
    <select name="sec" id="sec">
    	  <option value="0">全部</option>
          <option value="1">名称</option>
    </select>
	<p align="center"><input type="text" name="val"><input type="submit" value="查询"></p>
    <div class="imgs">
    <ul>
    	<%if(userlist!=null){
    	 	for(int i=0;i<userlist.size();i++){
    	%>
    	<li>
        	<div class="ech"><%=userlist.get(i).getAccount() %></div>
            <a href="#"><%=userlist.get(i).getTel() %></a>
        </li>
        <%  }
    	  }
    	%>
    </ul>
    </div>
</div>
</form>
</body>
</html>