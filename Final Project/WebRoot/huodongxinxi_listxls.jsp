<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=huodongxinxi.xls");
%>
<html>
  <head>
    <title>Event Information</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
  </head>

  <body >
  <p>Event Information£º</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="35" height="30" align="center" bgcolor="cccccc">Number</td>
    <td bgcolor='#cccccc'>Event Number</td>
    <td bgcolor='#cccccc'>Event Name</td>
    <td bgcolor='#cccccc' width='65' align='center'>Event Time</td>
    <td bgcolor='#cccccc'>Event Address</td>
    
    <td bgcolor='#cccccc'>The Initiator</td>
    
    <td width="138" align="center" bgcolor="cccccc">Set Time</td>
    

  </tr>
  <% 

    String url = "huodongxinxi_list.jsp?1=1"; 
    String sql =  "select * from huodongxinxi where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("huodongbianhao") %></td>
    <td><%=map.get("huodongmingcheng") %></td>
    <td><%=map.get("huodongriqi") %></td>
    <td><%=map.get("huodongdidian") %></td>
    
    <td><%=map.get("faburen") %></td>
    
    <td width="138" align="center"><%=map.get("addtime") %></td>
  </tr>
  	<%
  }
   %>
</table>

<br>
All<%=i %>data
  </body>
</html>

