<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>投票信息</title>
	
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
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"；", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"；";
	}
}
</script>

  <body >
   <% 

String id = request.getParameter("id"); 

HashMap ext = new HashMap(); 

new CommDAO().update(request,response,"toupiaoxinxi",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"toupiaoxinxi"); 

%>
  <form  action="toupiaoxinxi_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  修改投票信息:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" style="border-collapse:collapse">  
          <tr><td>活动编号：</td><td><input name='huodongbianhao' type='text' id='huodongbianhao' value='<%= mmm.get("huodongbianhao")%>' class="form-control" /></td></tr>     <tr><td>标题：</td><td><input name='biaoti' type='text' id='biaoti' class="form-control"  style="width:600px;" value='<%=mmm.get("biaoti")%>' /></td></tr>     <tr><td>A选项：</td><td><input name='Axuanxiang' type='text' id='Axuanxiang' value='<%= mmm.get("Axuanxiang")%>' class="form-control" /></td></tr>     <tr><td>A链接：</td><td><input name='Alianjie' type='text' id='Alianjie' value='<%= mmm.get("Alianjie")%>' class="form-control" /></td></tr>     <tr><td>A票数：</td><td><input name='Apiaoshu' type='text' id='Apiaoshu' value='<%= mmm.get("Apiaoshu")%>' class="form-control" /></td></tr>     <tr><td>B选项：</td><td><input name='Bxuanxiang' type='text' id='Bxuanxiang' value='<%= mmm.get("Bxuanxiang")%>' class="form-control" /></td></tr>     <tr><td>B链接：</td><td><input name='Blianjie' type='text' id='Blianjie' value='<%= mmm.get("Blianjie")%>' class="form-control" /></td></tr>     <tr><td>B票数：</td><td><input name='Bpiaoshu' type='text' id='Bpiaoshu' value='<%= mmm.get("Bpiaoshu")%>' class="form-control" /></td></tr>     <tr><td>C选项：</td><td><input name='Cxuanxiang' type='text' id='Cxuanxiang' value='<%= mmm.get("Cxuanxiang")%>' class="form-control" /></td></tr>     <tr><td>C链接：</td><td><input name='Clianjie' type='text' id='Clianjie' value='<%= mmm.get("Clianjie")%>' class="form-control" /></td></tr>     <tr><td>C票数：</td><td><input name='Cpiaoshu' type='text' id='Cpiaoshu' value='<%= mmm.get("Cpiaoshu")%>' class="form-control" /></td></tr>     <tr><td>D选项：</td><td><input name='Dxuanxiang' type='text' id='Dxuanxiang' value='<%= mmm.get("Dxuanxiang")%>' class="form-control" /></td></tr>     <tr><td>D链接：</td><td><input name='Dlianjie' type='text' id='Dlianjie' value='<%= mmm.get("Dlianjie")%>' class="form-control" /></td></tr>     <tr><td>D票数：</td><td><input name='Dpiaoshu' type='text' id='Dpiaoshu' value='<%= mmm.get("Dpiaoshu")%>' class="form-control" /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return checkform();" class="btn btn-info btn-small" />
      <input type="reset" name="Submit2" value="重置" class="btn btn-info btn-small" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


