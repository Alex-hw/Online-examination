<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="cn.examination.ssm.domain.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<% String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
	String R ="";%>
	<%List<QuestStem> qlist=(List<QuestStem>)session.getAttribute("pqlist");
	String tID = request.getParameter("tID");
	User u=(User)session.getAttribute("userLogin");
	%>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<form class="am-form" action="" method="post">
	<div class="am-u-sm-12 am-u-md-3">
		<div class="am-input-group am-input-group-sm">
			<!-- <input type="text" class="am-form-field">
				<span class="am-input-group-btn">
            		<button class="am-btn am-btn-default" type="submit">生成试卷</button>
          		</span>-->
		</div>
	</div>
</form>
<form class="am-form" action="<%=basePath%>quest/findQuestResult?tID=<%=tID %>&participant=${userLogin.account}" method="post">
		<div>试卷编号：<%=tID %></div>
		<%if(qlist!=null){
    	 	for(int i=0;i<qlist.size();i++){
    	%>
    		<p><%=i+1 %>.<%=qlist.get(i).getQuestionsName() %>(<%=qlist.get(i).getScore() %>)分<input type="hidden" id="optionContent" value="<%=qlist.get(i).getQuestionsName() %>"></p>
    		<input type="hidden" id="sID" value="<%=qlist.get(i).getsID() %>"><input type="hidden" id="participant" value="${userLogin.account}">
    		<p>A:<input type="radio" name="<%=i %>answer" id="<%=qlist.get(i).getsID() %>-A" value="A" size="20" maxlength="20" onclick="send(<%=i%>,'A',<%=qlist.get(i).getsID() %>)"><%=qlist.get(i).getWrongKeyA() %></p>
            <p>B:<input type="radio" name="<%=i %>answer" id="<%=qlist.get(i).getsID() %>-B" value="B" size="20" maxlength="20" onclick="send(<%=i%>,'B',<%=qlist.get(i).getsID() %>)"><%=qlist.get(i).getWrongKeyB() %></p>
            <p>C:<input type="radio" name="<%=i %>answer" id="<%=qlist.get(i).getsID() %>-C" value="C" size="20" maxlength="20" onclick="send(<%=i%>,'C',<%=qlist.get(i).getsID() %>)"><%=qlist.get(i).getWrongKeyC() %></p>
            <p>D:<input type="radio" name="<%=i %>answer" id="<%=qlist.get(i).getsID() %>-D" value="D" size="20" maxlength="20" onclick="send(<%=i%>,'D',<%=qlist.get(i).getsID() %>)"><%=qlist.get(i).getWrongKeyD() %></p>
    	<%  
    	 	}
    	  		}
    	%>
    	<button class="am-btn am-btn-default" type="submit">提交</button>
    	<span id="tip"></span>
    	</form>
</body>
<script src="<%=path%>/js/jquery.js"></script>
<script type="text/javascript">
function send(id,sel,sID){
	$.ajax({
		url : '<%=basePath%>quest/saveOp', //根据操作传入不同的URL
		data : {oID:id,sID:sID,optionContent:$('#optionContent').val(),optionIdentify:sel,tID:<%=tID %>,participant:$('#participant').val()}, //传入序列化的表单对象
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