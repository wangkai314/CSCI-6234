<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>����</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>���������б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  ����ƣ�<input name="huodongmingcheng" type="text" id="huodongmingcheng" class="form-control2"  />
   <input type="submit" name="Submit" value="����" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="����EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='yaoqing_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc">  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">���</td>
    <td bgcolor='#cccccc'>����</td>    <td bgcolor='#cccccc'>�����</td>    <td bgcolor='#cccccc'>�����</td>    <td bgcolor='#cccccc'>��ص�</td>    <td bgcolor='#cccccc'>������</td>    <td bgcolor='#cccccc'>�����˺�</td>    <td bgcolor='#cccccc' width='80' align='center'>�Ƿ����</td>
	
    <td width="138" align="center" bgcolor="cccccc">���ʱ��</td>
    
    <td width="60" align="center" bgcolor="cccccc">����</td>
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
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("huodongbianhao") %></td>    <td><%=map.get("huodongmingcheng") %></td>    <td><%=map.get("huodongriqi") %></td>    <td><%=map.get("huodongdidian") %></td>    <td><%=map.get("faburen") %></td>    <td><%=map.get("yaoqingzhanghao") %></td>    <td align='center'><a class="btn btn-info btn-small" href="sh.jsp?id=<%=map.get("id")%>&yuan=<%=map.get("issh")%>&tablename=yaoqing" onclick="return confirm('��ȷ��Ҫִ�д˲�����')"><%=map.get("issh")%></a></td>
	
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

