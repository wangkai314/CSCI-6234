<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>审核</title>
  </head>
  <body>
  <%
  if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")
{
	out.print("<script>alert('对不起,请您先登陆!');location.href='index.jsp';</script>");
	return;
}

String  id=request.getParameter("id");
 HashMap mlbdq = new CommDAO().getmap(id,"huodongxinxi");
String huodongbianhao="";
String huodongmingcheng="";
String huodongriqi="";
String huodongdidian="";

 huodongbianhao=(String)mlbdq.get("huodongbianhao");
  huodongmingcheng=(String)mlbdq.get("huodongmingcheng");
   huodongriqi=(String)mlbdq.get("huodongriqi");
    huodongdidian=(String)mlbdq.get("huodongdidian");
	int xiancii=0;						
    for(HashMap map:new CommDAO().select("select id from huodong where 1=1  and huodongbianhao='"+huodongbianhao+"' and yonghuming='"+request.getSession().getAttribute("username")+"'")){
		xiancii++;
	}
	if(xiancii>=1)
	{
		out.print("<script>javascript:alert('已参加,请勿重复!');location.href='index.jsp';</script>");
		
	}
	else	{

String sql="";

	sql="insert into huodong(yonghuming,huodongbianhao,huodongmingcheng,huodongriqi,huodongdidian) values('"+request.getSession().getAttribute("username")+"','"+huodongbianhao+"','"+huodongmingcheng+"','"+huodongriqi+"','"+huodongdidian+"')";

 new CommDAO().commOper(sql); 
out.print("<script>alert('Success!');location.href='huodongxinxilist.jsp';</script>");
}
%>
  </body>
</html>


