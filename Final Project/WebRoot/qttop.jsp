<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!--顶部通栏-->
    <header class="wjs_topBar">
        <div class="container">
            <div class="row">
                    <div class="col-md-3 hidden-xs topBar-brand">
                        
                        <span class="name">Movie Events System</span>
                    </div>
              
                <div class="col-md-3 col-xs-6" style="margin-left:500px;" >
				 <%
    if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")==""){
     %>
					   					 <button class="btn btn-primary" data-toggle="modal" data-target="#myLoginModal">Login</button> <a href="userreg.jsp" class="btn btn-danger">Sign up</a>
										   <%}else{ %>
										    <%=request.getSession().getAttribute("username")%>,[<%=request.getSession().getAttribute("cx").equals("超级管理员") ? "Admin" : "User" %>]&nbsp; <a href="logout.jsp" onclick="return confirm('Exit?')" class="btn btn-primary">Exit</a>&nbsp; <a href="main.jsp" class="btn btn-danger">Backstage</a>
										    <%} %>
				
		
                </div>
            </div>
        </div>
    </header>

    <!--导航栏-->
    <nav class="navbar wjs_nav" data-spy="affix" data-offset-top="200">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                
				 <ul class='nav navbar-nav ml'>
	<li class=''><a href='index.jsp'>Homepage</a></li>
		
<li><a href='huodongxinxilist.jsp'>Events information</a></li>


	
</ul>
				 
				
            </div>
        </div>
    </nav>
	
  	<script type="text/javascript">
 <%
String error = (String)request.getAttribute("error"); 
if(error!=null)
{
 %>
 alert("Wrong Password or Username");
 <%}%>
  <%
String random = (String)request.getAttribute("random"); 
if(random!=null)
{
 %>
 alert("Wrong Verification Code");
 <%}%>
 </script>
