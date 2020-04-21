<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title> Add Events</title>
	
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
  String id="";
  
 
   %>
<script language="javascript">

function gow()
{
	document.location.href="huodong_add.jsp?id=<%=id%>";
}

function hsgxia2shxurxu(nstr,nwbk)
{
	if (eval("form1."+nwbk).value.indexOf(nstr)>=0)
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"；", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"；";
	}
}
</script>

 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){










new CommDAO().insert(request,response,"huodong",ext,true,false,""); 

}

%>

  <body >
 <form  action="huodong_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();"> 
  Add Event: 
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >
		<tr><td  width="200">User Name：</td><td><input name='yonghuming' type='text' id='yonghuming' onblur='checkform()' class="form-control" value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" />&nbsp;*<label id='clabelyonghuming' /></td></tr>
		<tr><td  width="200">Event Number：</td><td><input name='huodongbianhao' type='text' id='huodongbianhao' value='' onblur='checkform()' class="form-control" />&nbsp;*<label id='clabelhuodongbianhao' /></td></tr>
		<tr><td  width="200">Event Name：</td><td><input name='huodongmingcheng' type='text' id='huodongmingcheng' value='' onblur='' class="form-control" /></td></tr>
		<tr><td  width="200">Event Time：</td><td><input name='huodongriqi' type='text' id='huodongriqi' value='' onblur='' class="form-control" /></td></tr>
		<tr><td  width="200">Event Address：</td><td><input name='huodongdidian' type='text' id='huodongdidian' value='' onblur='' class="form-control" /></td></tr>
		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="Submit"  class="btn btn-info btn-small" />
      <input type="reset" name="Submit2" value="Reset" class="btn btn-info btn-small" /></td>
    </tr>
  </table>
</form>

  </body>
</html>



<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var yonghumingobj = document.getElementById("yonghuming"); if(yonghumingobj.value==""){document.getElementById("clabelyonghuming").innerHTML="&nbsp;&nbsp;<font color=red>请输入用户名</font>";return false;}else{document.getElementById("clabelyonghuming").innerHTML="  "; } 
	var huodongbianhaoobj = document.getElementById("huodongbianhao"); if(huodongbianhaoobj.value==""){document.getElementById("clabelhuodongbianhao").innerHTML="&nbsp;&nbsp;<font color=red>请输入活动编号</font>";return false;}else{document.getElementById("clabelhuodongbianhao").innerHTML="  "; } 
	


return true;   
}   
popheight=450;
</script>  
<script src="images/hsgcommon/jq.js"></script>
<script src="images/hsgcommon/common.js"></script>
<script src="images/hsgcommon/bootbox.js"></script>
