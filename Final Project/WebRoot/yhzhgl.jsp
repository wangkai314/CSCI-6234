<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<%
if(request.getSession().getAttribute("username")==null )
{
	
	out.print("<script>javascript:alert('�Բ������ѳ�ʱ��δ��½,����IE�����´򿪵�½��');window.close();</script>");
	out.close();
}
else
{
	if(request.getSession().getAttribute("cx").equals("��������Ա"))
	{}
	else
	{
		
		out.print("<script>javascript:alert('�Բ�������Ȩ������ģ�飡');history.back();</script>");
		out.close();
	}

}
%>
<html>
  <head>
    
    <title>����Ա�û�����</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
    

  </head>

<%
 new CommDAO().delete(request,"allusers"); 

HashMap ext = new HashMap(); 

ext.put("cx","��ͨ����Ա"); 
new CommDAO().insert(request,response,"allusers",ext,true,false,""); 
%>

  <body >
<form  action="yhzhgl.jsp?f=f"  method="post" name="f1"  onsubmit="return checkform();">
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >    
     <tr>
      <td width="200">Username��</td>
      <td><input name="username" type="text" id="username" onblur='checkform()' class="form-control" placeholder= > <label id='clabelusername' style="margin-top:16px;" />
      *</td>
    </tr>
    <tr>
      <td width="200">Password��</td>
      <td><input name="pwd" type="password" id="pwd" onblur='checkform()' class="form-control" placeholder= > <label id='clabelpwd' style="margin-top:16px;" />
      *</td>
    </tr>
    <tr>
      <td width="200">Confirm��</td>
      <td><input name="pwd2" type="password" id="pwd2" onblur='checkform()' class="form-control" placeholder= > <label id='clabelpwd2' style="margin-top:16px;" />
      *</td>
    </tr>
    <tr>
      <td width="200">&nbsp;</td>
      <td><input name="Submit" type="submit"   value="Submit" class="btn btn-info btn-small" />
      <input name="Submit2" type="reset"  value="Reset" class="btn btn-info btn-small" /></td>
    </tr>
  </table>
</form>
<p>Administrators List��</p>
<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" style="border-collapse:collapse">  
  <tr>
    <td height="30" bgcolor="cccccc">Number</td>
    <td height="30" bgcolor="cccccc">Username</td>
    <td height="30" bgcolor="cccccc">Password</td>
    <td height="30" bgcolor="cccccc">Type</td>
    <td height="30" bgcolor="cccccc">Added Time</td>
    <td width="100" height="30" align="center" bgcolor="cccccc">Operations</td>
  </tr>
  <%
				int i=0;						
    for(HashMap map:new CommDAO().select("select * from allusers order by id desc ")){
	i++;
     %>
  <tr>
    <td height="45"><%=i %></td>
    <td height="45"><%=map.get("username") %></td>
    <td height="45"><%=map.get("pwd") %></td>
    <td height="45"><%=map.get("cx") %></td>
    <td height="45"><%=map.get("addtime") %></td>
    <td width="100" height="45" align="center"><a class="btn btn-info btn-small" href="yhzhgl.jsp?scid=<%=map.get("id") %>" onClick="return confirm('Your sure��')">Delete</a></td>
  </tr>
  <%}%>
</table>
  </body>
</html>

<script language=javascript src='js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='js/popup.js'></script>
<script language=javascript src='js/ajax.js'></script>
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

