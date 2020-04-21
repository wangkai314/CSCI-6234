<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>Event Information</title>
	 <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>Event Information£º</p>
  <form name="form1" id="form1" method="post" action="">
   Find:  Event Number£º<input name="huodongbianhao" type="text" id="huodongbianhao" class="form-control2" />  Event  Name£º<input name="huodongmingcheng" type="text" id="huodongmingcheng" class="form-control2" />
     <input type="submit" name="Submit" value="Find" class="btn btn-info btn-small" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="35" height="30" align="center" bgcolor="cccccc">Number</td>
    <td bgcolor='#cccccc'>Event Number</td>
    <td bgcolor='#cccccc'>Event Name</td>
    <td bgcolor='#cccccc' width='65' align='center'>Event Time</td>
    <td bgcolor='#cccccc'>Event Address</td>
    
    <td bgcolor='#cccccc'>The Initiator</td>
    
    <td width="166" align="center" bgcolor="cccccc">Vote Information</td>
    <td width="226" align="center" bgcolor="cccccc">Operation</td>
  </tr>
 <% 
  	


  	 new CommDAO().delete(request,"huodongxinxi"); 
    String url = "huodongxinxi_list2.jsp?1=1"; 
    String sql =  "select * from huodongxinxi where faburen='"+request.getSession().getAttribute("username")+"' ";
	
if(request.getParameter("huodongbianhao")=="" ||request.getParameter("huodongbianhao")==null ){}else{sql=sql+" and huodongbianhao like '%"+request.getParameter("huodongbianhao")+"%'";}
if(request.getParameter("huodongmingcheng")=="" ||request.getParameter("huodongmingcheng")==null ){}else{sql=sql+" and huodongmingcheng like '%"+request.getParameter("huodongmingcheng")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="83" align="center"><%=i %></td>
    <td><%=map.get("huodongbianhao") %></td>
 <td><%=map.get("huodongmingcheng") %></td>
 <td><%=map.get("huodongriqi") %></td>
 <td><%=map.get("huodongdidian") %></td>
 
 <td><%=map.get("faburen") %></td>
 
    <td width="166" align="center"><a class="btn btn-info btn-small" href="toupiaoxinxi_list2.jsp?huodongbianhao=<%=map.get("huodongbianhao")%>">Vote</a> <a class="btn btn-info btn-small" href="toupiaoxinxi_add.jsp?id=<%=map.get("id")%>">Start Vote</a></td>
    <td width="226" align="center"><a class="btn btn-info btn-small" href="huodongxinxi_updt.jsp?id=<%=map.get("id")%>">Modify</a>  <a class="btn btn-info btn-small" href="huodongxinxi_list2.jsp?scid=<%=map.get("id") %>" onClick="return confirm('You sure£¿')">Delete</a> <a class="btn btn-info btn-small" href="yaoqing_add.jsp?id=<%=map.get("id")%>" >Invite</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>

