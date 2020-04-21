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
    <td width="63" height="30" align="center" bgcolor="cccccc">Number</td>
    <td width="162" bgcolor='#cccccc'>Title</td>
    <td width="287" bgcolor='#cccccc'>A Movie</td>
    <td width="341" bgcolor='#cccccc'>B Movie</td>
    <td width="341" bgcolor='#cccccc'>C Movie</td>
    <td width="348" bgcolor='#cccccc'>D Movie</td>
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
    <td width="63" rowspan="2" align="center"><%=i %></td>
    <td rowspan="2"><%=map.get("biaoti") %></td>
    <td><%=map.get("Axuanxiang") %><a href="sh1.jsp?id=<%=map.get("id")%>&huodongbianhao=<%=map.get("huodongbianhao")%>&xx=A&bt=<%=map.get("biaoti") %>"><img src="qtimages/ding.png" height="40" width="40" ></a><%=map.get("Apiaoshu") %></td>
    <td><%=map.get("Bxuanxiang") %><a href="sh1.jsp?id=<%=map.get("id")%>&huodongbianhao=<%=map.get("huodongbianhao")%>&xx=B&bt=<%=map.get("biaoti") %>"><img src="qtimages/ding.png" height="40" width="40" ></a><%=map.get("Bpiaoshu") %></td>
    <td><%=map.get("Cxuanxiang") %><a href="sh1.jsp?id=<%=map.get("id")%>&huodongbianhao=<%=map.get("huodongbianhao")%>&xx=C&bt=<%=map.get("biaoti") %>"><img src="qtimages/ding.png" height="40" width="40" ></a><%=map.get("Cpiaoshu") %></td>
    <td><%=map.get("Dxuanxiang") %><a href="sh1.jsp?id=<%=map.get("id")%>&huodongbianhao=<%=map.get("huodongbianhao")%>&xx=D&bt=<%=map.get("biaoti") %>"><img src="qtimages/ding.png" height="40" width="40" ></a><%=map.get("Dpiaoshu") %></td>
  </tr>
  <tr>
    <td><a href="http://<%=map.get("Alianjie")%>"  target="_parent"><%=map.get("Alianjie")%></a></td>
    <td><a href="http://<%=map.get("Blianjie")%>"  target="_parent"><%=map.get("Blianjie") %></a></td>
    <td><a href="http://<%=map.get("Clianjie")%>"  target="_parent"><%=map.get("Clianjie") %></a></td>
    <td><a href="http://<%=map.get("Dlianjie")%>"  target="_parent"><%=map.get("Dlianjie") %></a></td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>

