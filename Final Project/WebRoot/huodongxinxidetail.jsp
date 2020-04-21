<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html lang="zh-CN">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=0">
    <title>Event</title>
    <link href="qtimages/lib/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="qtimages/css/index.css">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
<script language=javascript src='js/popup.js'></script>
<script language=javascript> 
function hsgpinglun(nbiao,nid){ 
popheight=450;
pop('hsgpinglun.jsp?biao='+nbiao+'&id='+nid,'在线评论',550,250) ;
}
</script> 
<%

	String id=request.getParameter("id");
	HashMap mqt = new CommDAO().getmap(id,"huodongxinxi");
	
	
     %>
<body>
<%@ include file="qttop.jsp"%>
<%@ include file="bht.jsp"%>
    <section id="introduce">
        <div class="container">
			<div class="head text-center">
                    <h3>Event Information</h3>
            </div>
          
		  
   <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"  class="newsline">  
      <tr>
		 <td width='11%' height='50px;'>Event Number：</td><td width='39%' height='50px;'><%=mqt.get("huodongbianhao")%></td>
		 <td width='11%' height='50px;'>Event Name：</td><td width='39%' height='50px;'><%=mqt.get("huodongmingcheng")%></td>
		 </tr><tr><td width='11%' height='50px;'>Event Time：</td><td width='39%' height='50px;'><%=mqt.get("huodongriqi")%></td>
		 <td width='11%' height='50px;'>Event Address：</td><td width='39%' height='50px;'><%=mqt.get("huodongdidian")%></td>
		 </tr><tr><td width='11%' height='50px;'>Event Introduce：</td><td width='39%' height='50px;'><%=mqt.get("huodongjieshao")%></td>
		 <td width='11%' height='50px;'>The Initiator：</td><td width='39%' height='50px;'><%=mqt.get("faburen")%></td>
		 </tr><tr><td colspan=4 align=center height='50px;'><input type=button name=Submit5 value=Back onClick="javascript:history.back()" />
<input type=button name=Submit52 value=Print onClick="javascript:window.print()"  /> <!--jixaaxnnxiu-->
</td></tr>
    
  </table>	
						  
        </div>
    </section>
	<%@ include file="qtdown.jsp"%>
<%@ include file="qtuserlog.jsp"%>
    <script src="qtimages/lib/jquery/jquery.min.js"></script>
    <script src="qtimages/lib/bootstrap/js/bootstrap.min.js"></script>
    <script src="qtimages/js/index.js"></script>

</body> 
</html>


