<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html lang="zh-CN">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=0">
    <title>投票信息</title>
    <link href="qtimages/lib/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="qtimages/css/index.css">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
<%

%>

<body>
<%@ include file="qttop.jsp"%>
<%@ include file="bht.jsp"%>
    <section id="introduce">
        <div class="container">
			<div class="head text-center">
                    <h3>投票信息</h3>
            </div>
          
		  <link rel="stylesheet" href="images/hsgcommon/divqt.css" type="text/css">
 <form name="form1" id="form1" method="post" action="" style="width:100%">
   搜索:  活动编号：<input name="huodongbianhao" type="text" id="huodongbianhao" class="form-control2"  />  标题：<input name="biaoti" type="text" id="biaoti" class="form-control2"  />
   <input type="submit" name="Submit" value="查找"  />   
</form>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse" class="newsline">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>活动编号</td>    <td bgcolor='#CCFFFF'>标题</td>    <td bgcolor='#CCFFFF'>A选项</td>    <td bgcolor='#CCFFFF'>A链接</td>    <td bgcolor='#CCFFFF'>A票数</td>    <td bgcolor='#CCFFFF'>B选项</td>    <td bgcolor='#CCFFFF'>B链接</td>    <td bgcolor='#CCFFFF'>B票数</td>    <td bgcolor='#CCFFFF'>C选项</td>    <td bgcolor='#CCFFFF'>C链接</td>    <td bgcolor='#CCFFFF'>C票数</td>    <td bgcolor='#CCFFFF'>D选项</td>    <td bgcolor='#CCFFFF'>D链接</td>    <td bgcolor='#CCFFFF'>D票数</td>    
    
    <td width="30" align="center" bgcolor="CCFFFF">详细</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"toupiaoxinxi"); 
    String url = "toupiaoxinxilist.jsp?2=2"; 
    String sql =  "select * from toupiaoxinxi where 1=1";
	if(request.getParameter("huodongbianhao")=="" ||request.getParameter("huodongbianhao")==null ){}else{sql=sql+" and huodongbianhao like '%"+request.getParameter("huodongbianhao")+"%'";}if(request.getParameter("biaoti")=="" ||request.getParameter("biaoti")==null ){}else{sql=sql+" and biaoti like '%"+request.getParameter("biaoti")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("huodongbianhao") %></td><td><%=map.get("biaoti") %></td><td><%=map.get("Axuanxiang") %></td><td><%=map.get("Alianjie") %></td><td><%=map.get("Apiaoshu") %></td><td><%=map.get("Bxuanxiang") %></td><td><%=map.get("Blianjie") %></td><td><%=map.get("Bpiaoshu") %></td><td><%=map.get("Cxuanxiang") %></td><td><%=map.get("Clianjie") %></td><td><%=map.get("Cpiaoshu") %></td><td><%=map.get("Dxuanxiang") %></td><td><%=map.get("Dlianjie") %></td><td><%=map.get("Dpiaoshu") %></td>
    
    <td width="50" align="center"> <a class="btn btn-info btn-small" href="toupiaoxinxidetail.jsp?id=<%=map.get("id")%>" >详细</a></td>
  </tr>
  	<%
  }
   %>
</table><br>

  
${page.info }							
						  
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
