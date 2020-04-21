<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=yaoqing.xls");
%>
<html>
  <head>
    <title>Invitation</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
  </head>

  <body >
  <p>All Invitation records:</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">序号</td>
    <td bgcolor='#cccccc'>活动编号</td>
    <td bgcolor='#cccccc'>活动名称</td>
    <td bgcolor='#cccccc'>活动日期</td>
    <td bgcolor='#cccccc'>活动地点</td>
    <td bgcolor='#cccccc'>发布人</td>
    <td bgcolor='#cccccc'>邀请账号</td>
    <td bgcolor='#cccccc' width='80' align='center'>是否审核</td>
    <td width="138" align="center" bgcolor="cccccc">添加时间</td>
    

  </tr>
  <% 

    String url = "yaoqing_list.jsp?1=1"; 
    String sql =  "select * from yaoqing where 1=1";
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
    <td><%=map.get("yaoqingzhanghao") %></td>
    <td align='center'><a class="btn btn-info btn-small" href="sh.jsp?id=<%=map.get("id")%>&yuan=<%=map.get("issh")%>&tablename=yaoqing" onclick="return confirm('您确定要执行此操作？')"><%=map.get("issh")%></a></td>
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

