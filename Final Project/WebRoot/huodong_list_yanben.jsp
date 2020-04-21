<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>Events</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>Event list£º</p>
  <form name="form1" id="form1" method="post" action="">
   Find:  Event Name£º<input name="huodongmingcheng" type="text" id="huodongmingcheng" class="form-control2"  />
   <input type="submit" name="Submit" value="Find" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="Output EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='huodong_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc">  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">Number</td>
    <td bgcolor='#cccccc'>Name</td>
    <td bgcolor='#cccccc'>Event Number</td>
    <td bgcolor='#cccccc'>Event Name</td>
    <td bgcolor='#cccccc'>Event Time</td>
    <td bgcolor='#cccccc'>Event Address</td>
    
	
    <td width="138" align="center" bgcolor="cccccc">Set Time</td>
    
    <td width="60" align="center" bgcolor="cccccc">Operations</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"huodong"); 
    String url = "huodong_list.jsp?1=1"; 
    String sql =  "select * from huodong where 1=1";
	
if(request.getParameter("huodongmingcheng")=="" ||request.getParameter("huodongmingcheng")==null ){}else{sql=sql+" and huodongmingcheng like '%"+request.getParameter("huodongmingcheng")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("yonghuming") %></td>
    <td><%=map.get("huodongbianhao") %></td>
    <td><%=map.get("huodongmingcheng") %></td>
    <td><%=map.get("huodongriqi") %></td>
    <td><%=map.get("huodongdidian") %></td>
    
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><!--lianjie1-->  </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>

