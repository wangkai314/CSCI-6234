<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<html>
  <head>
    
    <title>ÓÃ»§×¢²á</title><script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	    <script type="text/javascript">
	    function up(tt)
	    {
	        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:320,height:50});
            pop.setContent("contentUrl","upload.jsp?Result="+tt);
            pop.setContent("title","Attachment");
            pop.build();
            pop.show();
	    }
	</script>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">
function check()
{
	if(document.form1.yonghuming.value==""){alert("");document.form1.yonghuming.focus();return false;}if(document.form1.mima.value==""){alert("");document.form1.mima.focus();return false;}if(document.form1.xingming.value==""){alert("");document.form1.xingming.focus();return false;}
}
</script>
  <body >
  <% 

String id = request.getParameter("id"); 

HashMap ext = new HashMap(); 
new CommDAO().update(request,response,"yonghuzhuce",ext,true,false,""); 
HashMap mmm = new CommDAO().getmaps("yonghuming",(String)request.getSession().getAttribute("username"),"yonghuzhuce"); 
%>
  <form  action="yonghuzhuce_updt2.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="f1"  onsubmit="return checkform();">Change Personal Information: 
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <tr><td>User Name£º</td><td><input name='yonghuming' type='text' id='yonghuming' value='' readonly="readonly" /> 
     *Cannot change<br></td>
     </tr><tr><td>Password£º</td><td><input name='mima' type='text' id='mima' value='' /></td></tr><tr><td>Name£º</td><td><input name='xingming' type='text' id='xingming' value='' /></td></tr>
	 <tr><td>Sex£º</td><td><select name='xingbie' id='xingbie'><option value="ÄÐ">male</option><option value="Å®">female</option></select></td></tr>
	 <tr><td>Birth£º</td><td><input name='chushengnianyue' type='text' id='chushengnianyue' value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" readonly='readonly' /></td></tr>
	 <tr><td>Facebook£º</td><td><input name='QQ' type='text' id='QQ' value='' /></td></tr><tr><td>E-mail£º</td><td><input name='youxiang' type='text' id='youxiang' value='' /></td></tr>
	 <tr><td>Phone£º</td><td><input name='dianhua' type='text' id='dianhua' value='' /></td></tr>
	 <tr><td>ID£º</td><td><input name='shenfenzheng' type='text' id='shenfenzheng' value='' /></td></tr>
	 <tr><td>Photo£º</td><td><input name='touxiang' type='text' id='touxiang' size='50' value='' />&nbsp;<input type='button' value='Uplode' onClick="up('touxiang')"/></td></tr>
	 <tr><td>Address£º</td><td><input name='dizhi' type='text' id='dizhi' size='50' value='' /></td></tr>
	 <tr><td>Other£º</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu'></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="Submit" onClick="return check();" />
      <input type="reset" name="Submit2" value="Reset" /></td>
    </tr>
  </table>
</form>

  </body>
</html>
<%=Info.tform(mmm,"f1")%> 

