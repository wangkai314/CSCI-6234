<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>Data backup</title>
  </head>
  <body>
  <%
if (request.getSession().getAttribute("cx").equals("超级管理员"))
{
String sql="";
sql="backup database jspmjbhdxthsg8027X1B6 to disk='D:/jspmjbhdxthsg8027X1B6.dat'";
new CommDAO().commOper(sql); 
out.print("<script>alert('success, data have been backup in D:/jspmjbhdxthsg8027X1B6.dat');location.href='sy.jsp';</script>");
}
else
{
out.print("<script>alert('Sorry, you cannot do that');location.href='sy.jsp';</script>");
}
 %>
  </body>
</html>


