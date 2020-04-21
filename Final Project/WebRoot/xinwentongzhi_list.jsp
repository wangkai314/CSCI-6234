<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>



<html>
  <head>
    
    <title>新闻通知</title>
	<LINK href="css.css" type=text/css rel=stylesheet>

  <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
  </head>
  <script language="javascript">
  function checkall()
  {
  	if(document.form2.plxz.checked==true)
	{
		var code_Values = document.all['pldel']; 
		if(code_Values.length){ 
		for(var i=0;i<code_Values.length;i++) 
		{ 
		code_Values[i].checked = true; 
		} 
		}else{ 
		code_Values.checked = true; 
		} 
	}
	else
	{
		var code_Values = document.all['pldel']; 
		if(code_Values.length){ 
		for(var i=0;i<code_Values.length;i++) 
		{ 
		code_Values[i].checked = false;  
		} 
		}else{ 
		code_Values.checked = false; 
		} 
	}
  }
  </script>
   <%
  String lb=request.getParameter("lb");
  //String lb=new String(request.getParameter("lb").getBytes("8859_1"));
%>
 <%
 new CommDAO().delete(request,"xinwentongzhi"); 

 %>
  <body >
  <p>Photos List：</p> 
  <form name="form1" id="form1" method="get" action="">
   Find: Title：<input name="biaoti" type="text" id="biaoti" /><input name="lb" type="hidden" id="lb" value="<%=lb%>">	 
   
   Username：
   <input name="tianjiaren" type="text" id="tianjiaren" />
   <input type="submit" name="Submit" value="Find" />
   <input type="button" name="Submit2" value="Add" onClick="javascript:location.href='xinwentongzhi_add.jsp?lb=<%=lb%>';" />
  </form>

  <form name="form2" method="post" action="delall.jsp">
    <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">
      <tr>
        <td width="30" align="center" bgcolor="CCFFFF">Number</td>
        <td bgcolor='#CCFFFF'>Title</td>
        <td bgcolor='#CCFFFF'>Type</td>
        <td bgcolor='#CCFFFF'>Username</td>
        <td bgcolor='#CCFFFF'>Photo</td>
        <td bgcolor='#CCFFFF'>Click Rate</td>
        <td width="138" align="center" bgcolor="CCFFFF">Added Time</td>
        <td width="60" align="center" bgcolor="CCFFFF">OPeration</td>
        <td width="50" align="center" bgcolor="CCFFFF"><input name="plxz" type="checkbox" id="plxz" onClick="checkall();" value="1">
            <input name="tablename" type="hidden" id="tablename" value="xinwentongzhi"> <input name="lb" type="hidden" id="lb" value="<%=lb%>">
           </td>
      </tr>
    <% 
	new CommDAO().delete(request,"xinwentongzhi"); 
    String url = "xinwentongzhi_list.jsp?lb="+lb; 
    String sql =  "select * from xinwentongzhi where leibie='"+lb+"' ";
	
	if(request.getParameter("biaoti")=="" ||request.getParameter("biaoti")==null ){}else{sql=sql + " and biaoti like '%"+request.getParameter("biaoti").trim()+"%' ";}
	if(request.getParameter("tianjiaren")=="" ||request.getParameter("tianjiaren")==null ){}else{sql=sql+ " and tianjiaren like '%"+request.getParameter("tianjiaren").trim()+"%' ";}
	
    sql+=" order by id desc";
	//out.print(sql);
	ArrayList<HashMap> list = PageManager.getPages(url,10,sql, request ); 
	int i=0;
	for(HashMap map:list){ 
	i++;
     %>
      <tr>
        <td width="30" align="center"><%=i %></td>
        <td><%=map.get("biaoti") %></td>
        <td><%=map.get("leibie").equals("变幻图")? "Photo" : "Picture" %></td>
        <td><%=map.get("tianjiaren") %></td>
        <td><%
		if (map.get("shouyetupian")==null || map.get("shouyetupian").equals("") || map.get("shouyetupian").equals("null"))
		{
		%>
          <%
		}
		else
		{
		%>
            <a href='<%=map.get("shouyetupian") %>' target='_blank'><img src='<%=map.get("shouyetupian") %>' width=88 height=99 border=0 /></a>
            <%
		}
	%>
        </td>
        <td><%=map.get("dianjilv") %></td>
        <td width="138" align="center"><%=map.get("addtime") %></td>
        <td width="60" align="center"><a href="xinwentongzhi_updt.jsp?id=<%=map.get("id")%>">Modify</a> <a onClick="return confirm('You sure?')"  href="xinwentongzhi_list.jsp?&lb=<%=lb%>&scid=<%=map.get("id")%>">Delete</a></td>
        <td width="50" align="center"><input name="pldel" type="checkbox" id="pldel" value="<%=map.get("id")%>"></td>
      </tr>
       <%} %>
    </table>
    
  <br>
  ${page.info } 
  <input type="button" name="Submit32" value="Print Page" onClick="javascript:window.print();" style='border:solid 1px #000000; color:#666666'>
  <input type="submit" name="Submit33" value="Delete All" style='border:solid 1px #000000; color:#666666'>

 </form>   </body>
</html>



