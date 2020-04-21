<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>Event Information</title>
	
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
	document.location.href="huodongxinxi_add.jsp?id=<%=id%>";
}

function hsgxia2shxurxu(nstr,nwbk)
{
	if (eval("form1."+nwbk).value.indexOf(nstr)>=0)
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"£»", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"£»";
	}
}
</script>

 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){










new CommDAO().insert(request,response,"huodongxinxi",ext,true,false,""); 

}

%>

  <body >
 <form  action="huodongxinxi_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  Add Event Information:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >
		<tr><td  width="200">Event Number£º</td><td><input name='huodongbianhao' type='text' id='huodongbianhao' value='<%=Info.getID()%>' onblur='' class="form-control" /></td></tr>
		<tr><td  width="200">Event Name£º</td><td><input name='huodongmingcheng' type='text' id='huodongmingcheng' value='' onblur='checkform()' class="form-control" />&nbsp;*<label id='clabelhuodongmingcheng' /></td></tr>
		<tr><td width="200">Event Time£º</td><td><input name='huodongriqi' type='text' id='huodongriqi' value='' onblur='' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" class="form-control"  /></td></tr>
		<tr><td  width="200">Event Address£º</td><td><input name='huodongdidian' type='text' id='huodongdidian' value='' onblur='' class="form-control" style="width:600px;" /></td></tr>
		<tr><td  width="200">Event Introduce£º</td><td><textarea name='huodongjieshao'  id='huodongjieshao' onblur='' class="form-control" style="width:600px;height:80px;" ></textarea></td></tr>
		<tr><td  width="200">The Initiator</td><td><input name='faburen' type='text' id='faburen' onblur='' class="form-control" value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr>
		
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
 
	var huodongmingchengobj = document.getElementById("huodongmingcheng"); if(huodongmingchengobj.value==""){document.getElementById("clabelhuodongmingcheng").innerHTML="&nbsp;&nbsp;<font color=red>Please input activity name</font>";return false;}else{document.getElementById("clabelhuodongmingcheng").innerHTML="  "; } 
	


return true;   
}   
popheight=450;
</script>  
<script src="images/hsgcommon/jq.js"></script>
<script src="images/hsgcommon/common.js"></script>
<script src="images/hsgcommon/bootbox.js"></script>
