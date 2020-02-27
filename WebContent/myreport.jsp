<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="cn.examination.ssm.domain.*,java.util.*"%>
<!DOCTYPE html>
<html lang="en-gb" dir="ltr">

<head>
<% String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
	User u=(User)session.getAttribute("userLogin");
	List<Report> mrlist=(List<Report>)session.getAttribute("myreport");
	%>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Blog | Soutien Customer Support HTML Template</title>
    <link rel="shortcut icon" type="image/png" href="<%=path%>/img/favicon.png" >
    <link href="https://fonts.googleapis.com/css?family=Heebo:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="<%=path%>/css/main.css" />
    <script src="<%=path%>/js/main.js"></script>
</head>

<style type="text/css">
td{
	border: solid #add9c0;
	border-width: 0px 1px 1px 0px;
	text-align: center;
	height:50px;
}
table{border:solid #add9c0; border-width:1px 0px 0px 1px; margin-left: 220px;}
</style>
<body>
    <nav class="border-bottom">
        <div class="uk-container">
            <div data-uk-navbar>
                <div class="uk-navbar-left">
                    <a class="uk-navbar-item uk-logo uk-text-small" href="homepage.jsp">SOUTIEN</a>
                </div>
                <div class="uk-navbar-right">
    
                    <ul class="uk-navbar-nav uk-visible@m">
                        <li ><a href="<%=basePath%>homepage.jsp">首页</a></li>
                    </ul>
    
                    <div class="uk-navbar-item uk-visible@m">
                        <a href="<%=basePath%>Login.jsp" class="uk-button uk-button-primary">退出登录</a>
                    </div>
    
                    <a class="uk-navbar-toggle uk-hidden@m" href="#offcanvas" data-uk-navbar-toggle-icon data-uk-toggle></a>
                </div>
            </div>
        </div>
    </nav>

    <div class="uk-container">
    	<div class="uk-section uk-section-xsmall border-bottom">
    		<div data-uk-grid>
    			<div class="uk-width-2-3@m uk-flex uk-flex-middle">
    				<ul class="uk-breadcrumb">
    					<li><a href="index.html">Home</a></li>
    					<li><span>Blog</span></li>
    					
    				</ul>
    			</div>
    			<div class="uk-width-1-3@m">
    				<form class="uk-search uk-search-default uk-width-1-1 awesomplete">
    					<a href="" class="uk-search-icon-flip" data-uk-search-icon></a>
    					<input id="search" class="uk-search-input uk-search-default uk-width-1-1 uk-form-large" type="search" placeholder="Search" autocomplete="off" data-minchars="1" data-maxitems="30" >
    				</form>
    			</div>
    		</div>
    	</div>
    </div>

    <section class="uk-section">
    
    			<table width="1137" border="1" id="tab">
							<thead>
								<tr>
									<th width="400" class="table-check">序号</th>
									<th width="400" class="table-id">试卷ID</th>
									<th width="400" class="table-title">试卷名</th>
									<th width="400" class="table-type">参与者</th>
									<th width="400" class="table-author am-hide-sm-only">分数</th>
								</tr>
							</thead>
							<tbody>
							<%if(mrlist!=null){
    	 						for(int i=0;i<mrlist.size();i++){
    						%>
								<tr>
									<td width="400"><%=i+1%></td>
									<td width="400"><%=mrlist.get(i).getrID()%></td>
									<td width="400">
										<a href="#"><%=mrlist.get(i).gettName() %></a>
									</td>
									<td width="400"><%=mrlist.get(i).getUserAccount() %></td>
									<td width="400" class="am-hide-sm-only"><%=mrlist.get(i).getScore() %></td>
								</tr>
								<%  }
    	  						}
    								%>
							</tbody>
						</table>
        <div class="uk-container">
            
            <div class="uk-child-width-1-2@s uk-child-width-1-3@m uk-grid-match" data-uk-grid>
           
                   
            </div>

        </div>
    </section>

    <footer class="uk-section uk-section-muted">
      	<div class="uk-container">
    		<div class="uk-grid-large uk-child-width-expand@m" data-uk-grid>
    
    			<div>
    				<div class="uk-margin">
    					<a class="uk-logo" href="#">SOUTIEN</a>
    				</div>
    			</div>
    			<div>
    				<ul class="uk-list uk-list-large">
    					<li><h5>Company</h5></li>
    					<li><a class="uk-link-text" href="#">About Us</a></li>
    					<li><a class="uk-link-text" href="#">Our Mission</a></li>
    					<li><a class="uk-link-text" href="#">Contact Sales</a></li>
    				</ul>
    			</div>
    			<div>
    				<ul class="uk-list uk-list-large">
    					<li><h5>Services</h5></li>
    					<li><a class="uk-link-text" href="#">Products & Services</a></li>
    					<li><a class="uk-link-text" href="#">Customer Stories</a></li>
    					<li><a class="uk-link-text" href="#">Download Apps</a></li>
    				</ul>
    			</div>
    			<div>
    				<ul class="uk-list uk-list-large">
    					<li><h5>Information</h5></li>
    					<li><a class="uk-link-text" href="#">Privacy Policy</a></li>
    					<li><a class="uk-link-text" href="#">Terms & Conditions</a></li>
    					<li><a class="uk-link-text" href="#">Join Us</a></li>
    				</ul>
    			</div>
    
    		</div>
    
    		<div class="uk-grid-large uk-margin-large-top uk-flex uk-flex-middle" data-uk-grid>
    
    			<div class="uk-width-1-4@m"></div>
    			<div class="uk-width-expand@m">
    				<div class="uk-width-auto@m uk-margin-medium uk-text-small">
    					<p class="uk-display-inline-block uk-margin-medium-right uk-margin-remove-bottom">Created in 2019 by a <a class="uk-link-text" href="https://ivanchromjak.com/" target="_blank"><u>drifter</u></a> in the city of Cleveland</p>
    				</div>
    			</div>
    			<div class="uk-width-auto@m">
    				<div class="uk-width-auto@m uk-margin-medium uk-text-small">
    					<a href="https://twitter.com/" data-uk-icon="icon: twitter; ratio:0.8" class="uk-icon-link"></a>
    					<a href="https://www.instagram.com/" data-uk-icon="icon: instagram; ratio:0.8" class="uk-margin-left uk-icon-link"></a>
    					<a href="https://www.facebook.com/" data-uk-icon="icon: facebook; ratio:0.8" class="uk-margin-left uk-icon-link"></a>
    					<a href="http://www.17sucai.com/" data-uk-icon="icon: youtube; ratio:0.8" class="uk-margin-left uk-icon-link"></a>
    				</div>
    			</div>
    
    		</div>
      	</div>
    </footer>

    <div id="offcanvas" data-uk-offcanvas="flip: true; overlay: true">
        <div class="uk-offcanvas-bar">
    
            <button class="uk-offcanvas-close" type="button" data-uk-close></button>
    
            <ul class="uk-nav uk-nav-primary uk-nav-offcanvas">
                <li class="uk-nav-header uk-logo uk-margin-bottom">SOUTIEN</li>
                <li ><a href="homepage.jsp">Home</a></li>
                <li ><a href="faq.html">Faq</a></li>
                <li ><a href="changelog.html">Changelog</a></li>
                <li ><a href="download.html">Download</a></li>
                <li ><a href="contact.html">Contact</a></li>
            </ul>
    
        </div>
    </div>

    <script src="<%=path%>/js/awesomplete.js"></script>
    
    <script>
    	var input = document.getElementById("search");
    
    	input.addEventListener("awesomplete-selectcomplete", function(e) {
    		window.location.href = e.text.value;
    	}, false);
    	
    	new Awesomplete(input, {
    		container: function (tag) {
    			return ".awesomplete";
    		},
    		autoFirst: true,
    		list: [
    			{ label: "How do I enable payment gateway?", 					value: "article.html" },
    			{ label: "What happens if I clear cache?", 						value: "article1.html" },
    			{ label: "Which payment methods do you offer?", 				value: "article.html" },
    			{ label: "How long does it take to propagate DNS settings?", 	value: "article.html" },
    			{ label: "How can I force SSL certificate?", 					value: "article.html" }
    		],
    		replace: function(suggestion) {
    			this.input.value = suggestion.label;
    		}
    	});
    </script>

</body>

</html>
