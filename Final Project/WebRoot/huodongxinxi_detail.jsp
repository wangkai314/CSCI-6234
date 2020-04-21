<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>Event Information</title>
    <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"huodongxinxi");
     %>
  Event Information:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >  
   <tr>
     <td width='11%'>Event Number£º</td><td width='39%'><%=m.get("huodongbianhao")%></td>
<td width='11%'>Event Name£º</td><td width='39%'><%=m.get("huodongmingcheng")%></td></tr><tr>
<td width='11%'>Event Time£º</td><td width='39%'><%=m.get("huodongriqi")%></td>
<td width='11%'>Event Address£º</td><td width='39%'><%=m.get("huodongdidian")%></td></tr><tr>
<td width='11%'>Event Introduct£º</td><td width='39%'><%=m.get("huodongjieshao")%></td>
<td width='11%'>The Initiator£º</td><td width='39%'><%=m.get("faburen")%></td>
</tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=Back onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=Print onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>



