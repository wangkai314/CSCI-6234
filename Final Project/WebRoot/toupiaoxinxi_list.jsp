<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>Vote Information</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>Vote List£º</p>
  <form name="form1" id="form1" method="post" action="">Find: Event Number£º<input name="huodongbianhao" type="text" id="huodongbianhao" class="form-control2" /> Title£º<input name="biaoti" type="text" id="biaoti" class="form-control2" />
   <input type="submit" name="Submit" value="Find" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="Output EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='toupiaoxinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="35" height="30" align="center" bgcolor="cccccc">Number</td>
    <td bgcolor='#cccccc'>Event Number</td>
    <td bgcolor='#cccccc'>Title</td>
    <td bgcolor='#cccccc'>A Movie</td>
    <td bgcolor='#cccccc'>A Link</td>
    <td bgcolor='#cccccc'>A Votes</td>
    <td bgcolor='#cccccc'>B Movie</td>
    <td bgcolor='#cccccc'>B Link</td>
    <td bgcolor='#cccccc'>b Votes</td>
    <td bgcolor='#cccccc'>C Movie</td>
    <td bgcolor='#cccccc'>C Link</td>
    <td bgcolor='#cccccc'>C Votes</td>
    <td bgcolor='#cccccc'>D Movie</td>
    <td bgcolor='#cccccc'>D Link</td>
    <td bgcolor='#cccccc'>D Votes</td>
    
	
    <td width="138" height="30" align="center" bgcolor="cccccc">Added Time</td>
    
    <td width="220" height="30" align="center" bgcolor="cccccc">Operation</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"toupiaoxinxi"); 
    String url = "toupiaoxinxi_list.jsp?1=1"; 
    String sql =  "select * from toupiaoxinxi where 1=1";
	
if(request.getParameter("huodongbianhao")=="" ||request.getParameter("huodongbianhao")==null ){}else{sql=sql+" and huodongbianhao like '%"+request.getParameter("huodongbianhao")+"%'";}
if(request.getParameter("biaoti")=="" ||request.getParameter("biaoti")==null ){}else{sql=sql+" and biaoti like '%"+request.getParameter("biaoti")+"%'";}
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
    <td><%=map.get("Axuanxiang") %></td>
    <td><%=map.get("Alianjie") %></td>
    <td><%=map.get("Apiaoshu") %></td>
    <td><%=map.get("Bxuanxiang") %></td>
    <td><%=map.get("Blianjie") %></td>
    <td><%=map.get("Bpiaoshu") %></td>
    <td><%=map.get("Cxuanxiang") %></td>
    <td><%=map.get("Clianjie") %></td>
    <td><%=map.get("Cpiaoshu") %></td>
    <td><%=map.get("Dxuanxiang") %></td>
    <td><%=map.get("Dlianjie") %></td>
    <td><%=map.get("Dpiaoshu") %></td>
    
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="220" align="center"><a class="btn btn-info btn-small" href="toupiaoxinxi_updt.jsp?id=<%=map.get("id")%>">Modify</a>  <a class="btn btn-info btn-small" href="toupiaoxinxi_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('You sure£¿')">Delete</a>  </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>

