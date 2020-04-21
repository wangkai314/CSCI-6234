<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html lang="zh-CN">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=0">
    <title>Event Information：</title>
    <link href="qtimages/lib/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="qtimages/css/index.css">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
<%

%>

<body>
<%@ include file="qttop.jsp"%>
<%@ include file="bht.jsp"%>
    <section id="introduce">
        <div class="container">
			<div class="head text-center">
                    <h3>Event Information</h3>
            </div>
          
		  <link rel="stylesheet" href="images/hsgcommon/divqt.css" type="text/css">
 <form name="form1" id="form1" method="post" action="" style="width:100%">
   Find:  Event Number：<input name="huodongbianhao" type="text" id="huodongbianhao" class="form-control2" />  Event Name：<input name="huodongmingcheng" type="text" id="huodongmingcheng" class="form-control2" />
   <input type="submit" name="Submit" value="Find"  />   
</form>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse" class="newsline">  
  <tr>
    <td width="35" height="30" align="center" bgcolor="cccccc">Number</td>
    <td bgcolor='#cccccc'>Event Number</td>
    <td bgcolor='#cccccc'>Event Name</td>
    <td bgcolor='#cccccc' width='65' align='center'>Event Time</td>
    <td bgcolor='#cccccc'>Event Address</td>
    
    <td bgcolor='#cccccc'>The Initiator</td>
    
    
    <td width="30" align="center" bgcolor="CCFFFF">Detail</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"huodongxinxi"); 
    String url = "huodongxinxilist.jsp?2=2"; 
    String sql =  "select * from huodongxinxi where 1=1";
	
if(request.getParameter("huodongbianhao")=="" ||request.getParameter("huodongbianhao")==null ){}else{sql=sql+" and huodongbianhao like '%"+request.getParameter("huodongbianhao")+"%'";}
if(request.getParameter("huodongmingcheng")=="" ||request.getParameter("huodongmingcheng")==null ){}else{sql=sql+" and huodongmingcheng like '%"+request.getParameter("huodongmingcheng")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("huodongbianhao") %></td><td><%=map.get("huodongmingcheng") %></td><td><%=map.get("huodongriqi") %></td><td><%=map.get("huodongdidian") %></td><td><%=map.get("faburen") %></td>
    
    <td width="50" align="center"> <a class="btn btn-info btn-small" href="sh0.jsp?id=<%=map.get("id")%>" >Join</a></td>
  </tr>
  	<%
  }
   %>
</table><br>

  
${page.info }							
						  
        </div>
    </section>
	<%@ include file="qtdown.jsp"%>
<%@ include file="qtuserlog.jsp"%>
    <script src="qtimages/lib/jquery/jquery.min.js"></script>
    <script src="qtimages/lib/bootstrap/js/bootstrap.min.js"></script>
    <script src="qtimages/js/index.js"></script>

</body> 
</html>

<!--yoxudixtu-->
