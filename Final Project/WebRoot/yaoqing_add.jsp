<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>Invitation</title>
	
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
  String id="";
  id=request.getParameter("id");
 HashMap mlbdq = new CommDAO().getmap(id,"huodongxinxi");
String huodongbianhao="";
String huodongmingcheng="";
String huodongriqi="";
String huodongdidian="";

 huodongbianhao=(String)mlbdq.get("huodongbianhao");
  huodongmingcheng=(String)mlbdq.get("huodongmingcheng");
   huodongriqi=(String)mlbdq.get("huodongriqi");
    huodongdidian=(String)mlbdq.get("huodongdidian");
  	 
 
   %>
<script language="javascript">

function gow()
{
	document.location.href="yaoqing_add.jsp?id=<%=id%>";
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



ext.put("issh","否");






new CommDAO().insert(request,response,"yaoqing",ext,true,false,""); 

}

%>

  <body >
 <form  action="yaoqing_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  Invitation:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >
		<tr><td  width="200">Event Number：</td><td><input name='huodongbianhao' type='text' id='huodongbianhao' value='' onblur='' class="form-control"  readonly='readonly' /></td></tr><script language="javascript">document.form1.huodongbianhao.value='<%=huodongbianhao%>';document.form1.huodongbianhao.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">Event Name：</td><td><input name='huodongmingcheng' type='text' id='huodongmingcheng' value='' onblur='checkform()' class="form-control" />&nbsp;*<label id='clabelhuodongmingcheng' /></td></tr><script language="javascript">document.form1.huodongmingcheng.value='<%=huodongmingcheng%>';document.form1.huodongmingcheng.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">Event Time：</td><td><input name='huodongriqi' type='text' id='huodongriqi' value='' onblur='' class="form-control" /></td></tr><script language="javascript">document.form1.huodongriqi.value='<%=huodongriqi%>';document.form1.huodongriqi.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">Event Address：</td><td><input name='huodongdidian' type='text' id='huodongdidian' value='' onblur='' class="form-control" /></td></tr><script language="javascript">document.form1.huodongdidian.value='<%=huodongdidian%>';document.form1.huodongdidian.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">Username：</td><td><input name='faburen' type='text' id='faburen' onblur='' class="form-control" value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr>
		<tr><td  width="200">Invitee Name：</td><td><input name='yaoqingzhanghao' type='text' id='yaoqingzhanghao' value='' onblur='' class="form-control" /></td></tr>
		
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
 
	var huodongmingchengobj = document.getElementById("huodongmingcheng"); if(huodongmingchengobj.value==""){document.getElementById("clabelhuodongmingcheng").innerHTML="&nbsp;&nbsp;<font color=red>请输入活动名称</font>";return false;}else{document.getElementById("clabelhuodongmingcheng").innerHTML="  "; } 
	


return true;   
}   
popheight=450;
</script>  
<script src="images/hsgcommon/jq.js"></script>
<script src="images/hsgcommon/common.js"></script>
<script src="images/hsgcommon/bootbox.js"></script>
