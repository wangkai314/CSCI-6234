<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>Modify Invitation</title>
	
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
    <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">

  </head>
<script language="javascript">

function hsgxia2shxurxu(nstr,nwbk)
{
	if (eval("form1."+nwbk).value.indexOf(nstr)>=0)
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"��", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"��";
	}
}
</script>

  <body >
   <% 

String id = request.getParameter("id"); 

HashMap ext = new HashMap(); 

new CommDAO().update(request,response,"yaoqing",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"yaoqing"); 

%>
  <form  action="yaoqing_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  Modify Invitation:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" style="border-collapse:collapse">  
     
     <tr><td>Event Number��</td><td><input name='huodongbianhao' type='text' id='huodongbianhao' value='<%= mmm.get("huodongbianhao")%>' class="form-control" /></td></tr>
     <tr><td>Event Name��</td><td><input name='huodongmingcheng' type='text' id='huodongmingcheng' value='<%= mmm.get("huodongmingcheng")%>' class="form-control" /></td></tr>
     <tr><td>Event Time��</td><td><input name='huodongriqi' type='text' id='huodongriqi' value='<%= mmm.get("huodongriqi")%>' class="form-control" /></td></tr>
     <tr><td>Event Address��</td><td><input name='huodongdidian' type='text' id='huodongdidian' value='<%= mmm.get("huodongdidian")%>' class="form-control" /></td></tr>
     <tr><td>Username��</td><td><input name='faburen' type='text' id='faburen' value='<%= mmm.get("faburen")%>' class="form-control" /></td></tr>
     <tr><td>Invitee Name��</td><td><input name='yaoqingzhanghao' type='text' id='yaoqingzhanghao' value='<%= mmm.get("yaoqingzhanghao")%>' class="form-control" /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="Submit" onClick="return checkform();" class="btn btn-info btn-small" />
      <input type="reset" name="Submit2" value="Reset" class="btn btn-info btn-small" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


