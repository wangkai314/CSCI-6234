<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>Invitation</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>Invitation List£º</p>
  <form name="form1" id="form1" method="post" action="">
  Find:  Event Name£º<input name="huodongmingcheng" type="text" id="huodongmingcheng" class="form-control2" />
   <input type="submit" name="Submit" value="Find" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="Output EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='yaoqing_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="35" height="30" align="center" bgcolor="cccccc">Number</td>
    <td bgcolor='#cccccc'>Event Number</td>
    <td bgcolor='#cccccc'>Event Name</td>
    <td bgcolor='#cccccc'>Event Time</td>
    <td bgcolor='#cccccc'>Event Address</td>
    <td bgcolor='#cccccc'>Username</td>
    <td bgcolor='#cccccc'>Invitation Name</td>
    <td bgcolor='#cccccc' width='80' align='center'>Accept?</td>
	
    <td width="138" height="30" align="center" bgcolor="cccccc">Added Time</td>
    
    <td width="220" height="30" align="center" bgcolor="cccccc">Operation</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"yaoqing"); 
    String url = "yaoqing_list.jsp?1=1"; 
    String sql =  "select * from yaoqing where 1=1";
	
if(request.getParameter("huodongmingcheng")=="" ||request.getParameter("huodongmingcheng")==null ){}else{sql=sql+" and huodongmingcheng like '%"+request.getParameter("huodongmingcheng")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="35" align="center"><%=i %></td>
    <td><%=map.get("huodongbianhao") %></td>
    <td><%=map.get("huodongmingcheng") %></td>
    <td><%=map.get("huodongriqi") %></td>
    <td><%=map.get("huodongdidian") %></td>
    <td><%=map.get("faburen") %></td>
    <td><%=map.get("yaoqingzhanghao") %></td>
    <td align='center'><a class="btn btn-info btn-small" href="sh.jsp?id=<%=map.get("id")%>&yuan=<%=map.get("issh")%>&tablename=yaoqing" onClick="return confirm('You sure£¿')"><%=map.get("issh").equals("ÊÇ") ? "Yes" : "No" %></a></td>
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="220" align="center"><a class="btn btn-info btn-small" href="yaoqing_updt.jsp?id=<%=map.get("id")%>">Modify</a>  <a class="btn btn-info btn-small" href="yaoqing_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('You sure£¿')">Delete</a>  </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>

