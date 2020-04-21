<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>Vote</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>All Vote List£º</p>
  <form name="form1" id="form1" method="post" action="">
   Find:  Events Number£º<input name="huodongbianhao" type="text" id="huodongbianhao" class="form-control2"  />  
   <input type="submit" name="Submit" value="Find" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="Output EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='toupiao_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="35" height="30" align="center" bgcolor="cccccc">Number</td>
    <td bgcolor='#cccccc'>Events Number</td>
    <td bgcolor='#cccccc'>Title</td>
    <td bgcolor='#cccccc'>Option</td>
    <td bgcolor='#cccccc'>Username</td>
    
	
    <td width="138" height="30" align="center" bgcolor="cccccc">Added Time</td>
    
    <td width="220" height="30" align="center" bgcolor="cccccc">Operation</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"toupiao"); 
    String url = "toupiao_list.jsp?1=1"; 
    String sql =  "select * from toupiao where 1=1";
	
if(request.getParameter("huodongbianhao")=="" ||request.getParameter("huodongbianhao")==null ){}else{sql=sql+" and huodongbianhao like '%"+request.getParameter("huodongbianhao")+"%'";}
if(request.getParameter("xuanxiang")=="" ||request.getParameter("xuanxiang")==null ){}else{sql=sql+" and xuanxiang like '%"+request.getParameter("xuanxiang")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="35" align="center"><%=i %></td>
    <td><%=map.get("huodongbianhao") %></td>
    <td><%=map.get("biaoti") %></td>
    <td><%=map.get("xuanxiang") %></td>
    <td><%=map.get("yonghuming") %></td>
    
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="220" align="center"><a class="btn btn-info btn-small" href="toupiao_updt.jsp?id=<%=map.get("id")%>">Modify</a>  <a class="btn btn-info btn-small" href="toupiao_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('You sure£¿')">Delete</a>  </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>

