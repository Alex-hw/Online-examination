<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="cn.examination.ssm.domain.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<% String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<% String sID=request.getParameter("sID");
String qName=request.getParameter("qName");
System.out.println(sID);
List<QuestOption> oplist=(List<QuestOption>)session.getAttribute("oplist"); %>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<form class="am-form" action="<%=basePath%>quest/findOpByID" name="f" method="post" id="myform">
<input type="hidden" value="<%=sID %>" name="sID">
<input type="text" value="<%=qName %>">
<input type="submit" value="查看选项">
	<%if(oplist!=null){
    	for(int i=0;i<oplist.size();i++){
    %>
    	<a href="#"><%=oplist.get(i).getOptionContent() %></a>
    <%  }
    	  }
    %>
</form>
</body>
</html>