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
  id=request.getParameter("id");
 HashMap mlbdq = new CommDAO().getmap(id,"huodongxinxi");
 String huodongbianhao="";
  	
 huodongbianhao=(String)mlbdq.get("huodongbianhao");
  	 
 
   %>
<script language="javascript">

function gow()
{
	document.location.href="toupiaoxinxi_add.jsp?id=<%=id%>";
}

function hsgxia2shxurxu(nstr,nwbk)
{
	if (eval("form1."+nwbk).value.indexOf(nstr)>=0)
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"£ª", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"£ª";
	}
}
</script>

 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){



ext.put("Apiaoshu",0); 
ext.put("Bpiaoshu",0); 
ext.put("Cpiaoshu",0); 
ext.put("Dpiaoshu",0); 






new CommDAO().insert(request,response,"toupiaoxinxi",ext,true,false,""); 

}

%>

  <body >
 <form  action="toupiaoxinxi_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">

  Start Vote:<br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >
		<tr><td  width="200">Event Number£∫</td><td><input name='huodongbianhao' type='text' id='huodongbianhao' value='' onblur='' class="form-control"  readonly='readonly' /></td></tr><script language="javascript">document.form1.huodongbianhao.value='<%=huodongbianhao%>';document.form1.huodongbianhao.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">Title£∫</td><td><input name='biaoti' type='text' id='biaoti' value='' onblur='checkform()' class="form-control" style="width:600px;" />&nbsp;*<label id='clabelbiaoti' /></td></tr>
		<tr><td  width="200">A Movie£∫</td><td><input name='Axuanxiang' type='text' id='Axuanxiang' value='' onblur='' class="form-control" /></td></tr>
		<tr><td  width="200">A Link£∫</td><td><input name='Alianjie' type='text' id='Alianjie' value='' onblur='' class="form-control" /></td></tr>
		
		<tr><td  width="200">B Movie£∫</td><td><input name='Bxuanxiang' type='text' id='Bxuanxiang' value='' onblur='' class="form-control" /></td></tr>
		<tr><td  width="200">B Link£∫</td><td><input name='Blianjie' type='text' id='Blianjie' value='' onblur='' class="form-control" /></td></tr>
	
		<tr><td  width="200">C Movie£∫</td><td><input name='Cxuanxiang' type='text' id='Cxuanxiang' value='' onblur='' class="form-control" /></td></tr>
		<tr><td  width="200">C Link£∫</td><td><input name='Clianjie' type='text' id='Clianjie' value='' onblur='' class="form-control" /></td></tr>
	
		<tr><td  width="200">D Movie£∫</td><td><input name='Dxuanxiang' type='text' id='Dxuanxiang' value='' onblur='' class="form-control" /></td></tr>
		<tr><td  width="200">D Link£∫</td><td><input name='Dlianjie' type='text' id='Dlianjie' value='' onblur='' class="form-control" /></td></tr>
		
		
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
 
	var biaotiobj = document.getElementById("biaoti"); if(biaotiobj.value==""){document.getElementById("clabelbiaoti").innerHTML="&nbsp;&nbsp;<font color=red>«Î ‰»Î±ÍÃ‚</font>";return false;}else{document.getElementById("clabelbiaoti").innerHTML="  "; } 
	


return true;   
}   
popheight=450;
</script>  
<script src="images/hsgcommon/jq.js"></script>
<script src="images/hsgcommon/common.js"></script>
<script src="images/hsgcommon/bootbox.js"></script>
