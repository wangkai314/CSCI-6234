<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>…Û∫À</title>
  </head>
  <body>
  <%
 
 
String  id=request.getParameter("id");
 String xx=request.getParameter("xx");
 String bt=request.getParameter("bt");

String huodongbianhao=request.getParameter("huodongbianhao");
String sql="";

String sql2="";

int xiancii=0;						
    for(HashMap map:new CommDAO().select("select id from toupiao where 1=1  and huodongbianhao='"+huodongbianhao+"' and biaoti='"+bt+"' and yonghuming='"+request.getSession().getAttribute("username")+"'")){
		xiancii++;
	}
	if(xiancii>=1)
	{
		out.print("<script>javascript:alert('You have voted!');location.href='sy.jsp';</script>");
	
	}
	else	{
if(xx.equals("A"))
{
			sql2="update toupiaoxinxi set Apiaoshu=Apiaoshu+1 where huodongbianhao='"+huodongbianhao+"'";
}
	
if(xx.equals("B"))
{
			sql2="update toupiaoxinxi set Bpiaoshu=Bpiaoshu+1 where huodongbianhao='"+huodongbianhao+"'";
}
	
	if(xx.equals("C"))
{
			sql2="update toupiaoxinxi set Cpiaoshu=Cpiaoshu+1 where huodongbianhao='"+huodongbianhao+"'";
	}
	
	if(xx.equals("D"))
{
			sql2="update toupiaoxinxi set Dpiaoshu=Dpiaoshu+1 where huodongbianhao='"+huodongbianhao+"'";
	}
	


	sql="insert into toupiao(huodongbianhao,biaoti,xuanxiang,yonghuming) values('"+huodongbianhao+"','"+bt+"','"+xx+"','"+request.getSession().getAttribute("username")+"')";


 new CommDAO().commOper(sql); 
 
 new CommDAO().commOper(sql2); 
out.print("<script>alert('Success!');location.href='sy.jsp';</script>");	}
%>
  </body>
</html>


