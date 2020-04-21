<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html lang="zh-CN">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=0">
    <title>Activities</title>
    <link href="qtimages/lib/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="qtimages/css/index.css">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
<%
if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")
{
	out.print("<script>alert('Login First!');location.href='index.jsp';</script>");
	return;
}
  String id="";

 
  
 

   %>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	<script language=javascript src='js/ajax.js'></script>
	<script language="javascript">
function checkform()
{
	var yonghumingobj = document.getElementById("yonghuming"); if(yonghumingobj.value==""){document.getElementById("clabelyonghuming").innerHTML="&nbsp;&nbsp;<font color=red>Input user name</font>";return false;}else{document.getElementById("clabelyonghuming").innerHTML="  "; } 
	var huodongbianhaoobj = document.getElementById("huodongbianhao"); if(huodongbianhaoobj.value==""){document.getElementById("clabelhuodongbianhao").innerHTML="&nbsp;&nbsp;<font color=red>Input activity number</font>";return false;}else{document.getElementById("clabelhuodongbianhao").innerHTML="  "; } 
	
}
function gow()
{
	document.location.href="huodongadd.jsp?id=<%=id%>";
}
</script>


<body>
<%@ include file="qttop.jsp"%>
<%@ include file="bht.jsp"%>
    <section id="introduce">
        <div class="container">
			<div class="head text-center">
                    <h3>Events</h3>
            </div>
          
		  <link rel="stylesheet" href="images/hsgcommon/divqt.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/commonqt.css" type="text/css">
<script src="images/hsgcommon/common.js"></script>
<script src="images/hsgcommon/bootbox.js"></script>
<% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){










new CommDAO().insert(request,response,"huodong",ext,true,false,""); 

 }
%>
   <form  action="huodongadd.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
    <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"  class="newsline">  
       <tr><td  width="200">User Name：</td><td><input name='yonghuming' type='text' id='yonghuming' onblur='checkform()' class="form-control" value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" />&nbsp;*<label id='clabelyonghuming' /></td></tr>
		<tr><td  width="200">Event Number：</td><td><input name='huodongbianhao' type='text' id='huodongbianhao' value='' onblur='checkform()' class="form-control" />&nbsp;*<label id='clabelhuodongbianhao' /></td></tr>
		<tr><td  width="200">Event Name：</td><td><input name='huodongmingcheng' type='text' id='huodongmingcheng' value='' onblur='' class="form-control" /></td></tr>
		<tr><td  width="200">Event Time：</td><td><input name='huodongriqi' type='text' id='huodongriqi' value='' onblur='' class="form-control" /></td></tr>
		<tr><td  width="200">Event Address：</td><td><input name='huodongdidian' type='text' id='huodongdidian' value='' onblur='' class="form-control" /></td></tr>
		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="Submit" onclick="return checkform();"  />
      <input type="reset" name="Submit2" value="Reset"  /></td>
    </tr>
	</table>
  </form>	
						  
        </div>
    </section>
	<%@ include file="qtdown.jsp"%>
<%@ include file="qtuserlog.jsp"%>
    <script src="qtimages/lib/jquery/jquery.min.js"></script>
    <script src="qtimages/lib/bootstrap/js/bootstrap.min.js"></script>
    <script src="qtimages/js/index.js"></script>

</body> 
</html>

<!--yoxudixtu-->
