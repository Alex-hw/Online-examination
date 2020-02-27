<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="cn.examination.ssm.domain.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<% String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
	List<QuestStem> qlist=(List<QuestStem>)session.getAttribute("pqlist");
	List<String> flist=(List<String>)session.getAttribute("fenlist");
	String tID = request.getParameter("tID");
	User u=(User)session.getAttribute("userLogin");
	Paper p=(Paper)session.getAttribute("papernow");
	%>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
分数：${count}
<div>试卷编号：<%=tID %></div>
<form action="<%=basePath%>report/saveReport?" method="post">
		<input type="hidden" name="tID" value="<%=tID %>">
		<input type="hidden" name="tName" value="<%=p.gettName() %>">
		<input type="hidden" name="userAccount" value="<%=u.getAccount() %>">
		<input type="hidden" name="score" value="${count}">
		<%if(qlist!=null){
    	 	for(int i=0;i<qlist.size();i++){
    	%>
    		<p><%=i+1 %>.<%=qlist.get(i).getQuestionsName() %>(<%=qlist.get(i).getScore() %>)分<input type="hidden" id="optionContent" value="<%=qlist.get(i).getQuestionsName() %>"></p>
    		<input type="hidden" id="sID" value="<%=qlist.get(i).getsID() %>"><input type="hidden" id="participant" value="${userLogin.account}">
    		<p>A:<input type="radio" name="<%=i+1 %>answer" id="<%=qlist.get(i).getsID() %>-A" value="A" size="20" maxlength="20" ><%=qlist.get(i).getWrongKeyA() %></p>
            <p>B:<input type="radio" name="<%=i+1 %>answer" id="<%=qlist.get(i).getsID() %>-B" value="B" size="20" maxlength="20" ><%=qlist.get(i).getWrongKeyB() %></p>
            <p>C:<input type="radio" name="<%=i+1 %>answer" id="<%=qlist.get(i).getsID() %>-C" value="C" size="20" maxlength="20" ><%=qlist.get(i).getWrongKeyC() %></p>
            <p>D:<input type="radio" name="<%=i+1 %>answer" id="<%=qlist.get(i).getsID() %>-D" value="D" size="20" maxlength="20" ><%=qlist.get(i).getWrongKeyD() %></p>
           <p>我的选择:<%=flist.get(i)%>    正确选项:<%=qlist.get(i).getRightKey()%></p>
    	<%  
    	 	}
    	  		}
    	%>
    	<input type="submit" value="结束考试">
</form> 
</body>
</html>