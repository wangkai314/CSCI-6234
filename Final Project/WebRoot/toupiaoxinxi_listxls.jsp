<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=toupiaoxinxi.xls");
%>
<html>
  <head>
    <title>投票信息</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
  </head>

  <body >
  <p>已有投票信息列表：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">序号</td>
    <td bgcolor='#cccccc'>活动编号</td>    <td bgcolor='#cccccc'>标题</td>    <td bgcolor='#cccccc'>A选项</td>    <td bgcolor='#cccccc'>A链接</td>    <td bgcolor='#cccccc'>A票数</td>    <td bgcolor='#cccccc'>B选项</td>    <td bgcolor='#cccccc'>B链接</td>    <td bgcolor='#cccccc'>B票数</td>    <td bgcolor='#cccccc'>C选项</td>    <td bgcolor='#cccccc'>C链接</td>    <td bgcolor='#cccccc'>C票数</td>    <td bgcolor='#cccccc'>D选项</td>    <td bgcolor='#cccccc'>D链接</td>    <td bgcolor='#cccccc'>D票数</td>    
    <td width="138" align="center" bgcolor="cccccc">添加时间</td>
    

  </tr>
  <% 

    String url = "toupiaoxinxi_list.jsp?1=1"; 
    String sql =  "select * from toupiaoxinxi where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("huodongbianhao") %></td>    <td><%=map.get("biaoti") %></td>    <td><%=map.get("Axuanxiang") %></td>    <td><%=map.get("Alianjie") %></td>    <td><%=map.get("Apiaoshu") %></td>    <td><%=map.get("Bxuanxiang") %></td>    <td><%=map.get("Blianjie") %></td>    <td><%=map.get("Bpiaoshu") %></td>    <td><%=map.get("Cxuanxiang") %></td>    <td><%=map.get("Clianjie") %></td>    <td><%=map.get("Cpiaoshu") %></td>    <td><%=map.get("Dxuanxiang") %></td>    <td><%=map.get("Dlianjie") %></td>    <td><%=map.get("Dpiaoshu") %></td>    
    <td width="138" align="center"><%=map.get("addtime") %></td>
  </tr>
  	<%
  }
   %>
</table>

<br>
以上数据共<%=i %>条
  </body>
</html>

