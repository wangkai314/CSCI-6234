<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>Vote</title>
	
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
	document.location.href="toupiao_add.jsp?id=<%=id%>";
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










int xiancii=0;						
    for(HashMap map:new CommDAO().select("select id from toupiao where 1=1  and huodongbianhao='"+request.getParameter("huodongbianhao")+"' and yonghuming='"+request.getParameter("yonghuming")+"'")){
		xiancii++;
	}
	if(xiancii>=1)
	{
		out.print("<script>javascript:alert('已满!');history.back();</script>");
	}
	else
	{
		new CommDAO().insert(request,response,"toupiao",ext,true,false,""); 
	}
}

%>

  <body >
 <form  action="toupiao_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  Start Vote:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >
		<tr><td  width="200">Event Number：</td><td><input name='huodongbianhao' type='text' id='huodongbianhao' value='' onblur='checkform()' class="form-control" />&nbsp;*<label id='clabelhuodongbianhao' /></td></tr>
		<tr><td  width="200">Options：</td><td><input name='xuanxiang' type='text' id='xuanxiang' value='' onblur='checkform()' class="form-control" />&nbsp;*<label id='clabelxuanxiang' /></td></tr>
		<tr><td  width="200">Username：</td><td><input name='yonghuming' type='text' id='yonghuming' value='' onblur='' class="form-control" /></td></tr>
		
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
 
	var huodongbianhaoobj = document.getElementById("huodongbianhao"); if(huodongbianhaoobj.value==""){document.getElementById("clabelhuodongbianhao").innerHTML="&nbsp;&nbsp;<font color=red>请输入活动编号</font>";return false;}else{document.getElementById("clabelhuodongbianhao").innerHTML="  "; } 
	var xuanxiangobj = document.getElementById("xuanxiang"); if(xuanxiangobj.value==""){document.getElementById("clabelxuanxiang").innerHTML="&nbsp;&nbsp;<font color=red>请输入选项</font>";return false;}else{document.getElementById("clabelxuanxiang").innerHTML="  "; } 
	


return true;   
}   
popheight=450;
</script>  
<script src="images/hsgcommon/jq.js"></script>
<script src="images/hsgcommon/common.js"></script>
<script src="images/hsgcommon/bootbox.js"></script>
