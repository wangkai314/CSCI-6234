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
    <title>ͶƱ��Ϣ</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
  </head>

  <body >
  <p>����ͶƱ��Ϣ�б�</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">���</td>
    <td bgcolor='#cccccc'>����</td>    <td bgcolor='#cccccc'>����</td>    <td bgcolor='#cccccc'>Aѡ��</td>    <td bgcolor='#cccccc'>A����</td>    <td bgcolor='#cccccc'>AƱ��</td>    <td bgcolor='#cccccc'>Bѡ��</td>    <td bgcolor='#cccccc'>B����</td>    <td bgcolor='#cccccc'>BƱ��</td>    <td bgcolor='#cccccc'>Cѡ��</td>    <td bgcolor='#cccccc'>C����</td>    <td bgcolor='#cccccc'>CƱ��</td>    <td bgcolor='#cccccc'>Dѡ��</td>    <td bgcolor='#cccccc'>D����</td>    <td bgcolor='#cccccc'>DƱ��</td>    
    <td width="138" align="center" bgcolor="cccccc">���ʱ��</td>
    

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
�������ݹ�<%=i %>��
  </body>
</html>

