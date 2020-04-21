<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<html>
  <head>
    
    <title></title>
<LINK href="images/style.css" type=text/css rel=stylesheet>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"><style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
-->
</style></head>
 <BODY leftMargin=5 topMargin=5 rightMargin=5>
<table width="100%" height="210" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#D9E9FF" style="border-collapse:collapse">  
  <TBODY>
    <TR 
  align=middle bgColor=#ffffff>
      <td colspan="4" bgColor=#CADCEA><strong>Basic Information</strong></td>
    </TR>
    <TR   align=middle 
  bgColor=#ffffff>
      <TD width="14%" align="left" valign="bottom" >User Name：</TD>
      <TD width="37%"  align="left" valign="bottom" ><font class="t4"><%=request.getSession().getAttribute("username")%></font></TD>
      <TD width="9%"  align="left" valign="bottom" >Account Type：</TD>
      <TD width="40%"  align="left" valign="bottom" ><font class="t4"><%=request.getSession().getAttribute("cx").equals("超级管理员") ? "Admin" : "User"%></font></TD>
    </TR>
    <TR   align=middle 
  bgColor=#ffffff>
      <TD height="38" align="left" valign="bottom"  >Date：</TD>
      <TD  align="left" valign="bottom" ><%java.util.Date date = new java.util.Date();
java.text.SimpleDateFormat format = new java.text.SimpleDateFormat("yyyy-MM-dd", java.util.Locale.CHINA);

String result = format.format(date);
out.print(result);%></TD>
      <TD align="left" valign="bottom" >Your IP：</TD>
      <TD  align="left" valign="bottom" ><%=request.getRemoteAddr() %></TD>
    </TR>
    <TR   align=middle 
  bgColor=#ffffff>
      <TD align="left" valign="bottom"  >Browser Version：</TD>
      <TD  align="left" valign="bottom" ><font class="t41"><%=request.getHeader("User-Agent")%></font></TD>
      <TD align="left" valign="bottom" >Operating system：</TD>
      <TD  align="left" valign="bottom" ><font class="t41"><%=System.getProperty("os.name")%> </font></TD>
    </TR>
    <TR   align=middle 
  bgColor=#ffffff>
    </TR>
  </TBODY>
</TABLE>
<p>&nbsp;</p>
<table width="100%" height="193" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#D9E9FF" style="border-collapse:collapse">  
  <TBODY>
    <TR 
  align=middle bgColor=#ffffff>
      <td colspan="2" bgColor=#CADCEA><strong>Movie Events System</strong></td>
    </TR>
    <TR   align=middle 
  bgColor=#ffffff>
      <TD width="10%" align="left" >Developer：</TD>
      <TD width="41%"  align="left" ><font class="t4">Chengchao Fang, Chentao Han, Kai Wang, Yiran Jing</font></TD>
    </TR>
    <TR   align=middle 
  bgColor=#ffffff>
      <TD align="left"  >Professor Name：</TD>
      <TD  align="left" >Walcelio Melo</TD>
    </TR>
  </TBODY>
</TABLE>
<p>&nbsp;</p>
<P align=right>&nbsp;</P>
</BODY>
</html>


