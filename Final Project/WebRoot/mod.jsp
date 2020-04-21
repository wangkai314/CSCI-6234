<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<html>
  <head>
    
    <title>Reset Password</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
    

  </head>

<script>
function check()
{
	if(document.form1.ymm.value=="")
	{
		bootbox.alert("Input your original password!");
		document.form1.ymm.focus();
		return false;
	}
	if(document.form1.xmm1.value=="")
	{
		bootbox.alert("Input the new password");
		document.form1.xmm1.focus();
		return false;
	}
	if(document.form1.xmm2.value=="")
	{
		bootbox.alert("Confirm your password");
		document.form1.xmm2.focus();
		return false;
	}
	if (document.form1.xmm1.value!=document.form1.xmm2.value)
	{
		bootbox.alert("Sorry, the passwords are different");
		document.form1.xmm1.value="";
		document.form1.xmm2.value="";
		document.form1.xmm1.focus();
		return false;
	}
}

</script>
<script type="text/javascript">
<!--


<%
//out.print(Info.getadminUser(request).get("id").toString());
String error = (String)request.getAttribute("error");
if(error!=null)
{
 %>
 alert("The original password is wrong");
<%}%>


<%
String suc = (String)request.getAttribute("suc");
if(suc!=null)
{
 %>
 alert("Success!");
<%}%>
 
 //-->
</script>
  <body >
    <form action="jspmjbhdxthsg8027X1B6?ac=adminuppass" name="form1" method="post">
    <table width="32%" height="126" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="cccccc" style="border-collapse:collapse">
    <tr>
      <td colspan="2"><div align="center">Reset Password</div></td>
    </tr>
    <tr>
      <td>old£º</td>
      <td><input name="ymm" type="text" id="ymm" class="form-control" placeholder="Input old password" /></td>
    </tr>
    <tr>
      <td>new£º</td>
      <td><input name="xmm1" type="password" id="xmm1" class="form-control" placeholder="Input new password" /></td>
    </tr>
    <tr>
      <td>Confirm£º</td>
      <td><input name="xmm2" type="password" id="xmm2" class="form-control" placeholder="Confirm your password" /></td>
    </tr>
    <tr>
      <td height="45" colspan="2" align="center"><input name="Submit" type="submit"  onClick="return check()" value="submit"  class="btn btn-info btn-small" />
      <input name="Submit2" type="reset" value="reset" class="btn btn-info btn-small" /></td>
      </tr>
  </table>
  </form>
  </body>
</html>

<script src="images/hsgcommon/jq.js"></script>
<script src="images/hsgcommon/common.js"></script>
<script src="images/hsgcommon/bootbox.js"></script>
