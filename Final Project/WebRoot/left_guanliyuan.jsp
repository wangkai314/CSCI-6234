<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Menu</title>
<link rel="stylesheet" type="text/css" href="images/public.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/public.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" /><head></head>
<body id="bg">
	<div class="container">
		<div class="leftsidebar_box"><div class="line"><img src="images/coin01.png" />&nbsp;&nbsp;Home</div>
			
<dl class="system_log">
				<dt>
					<img class="icon1" src="images/coin01.png" /><img class="icon2" src="images/coin02.png" /> Users Management<img class="icon3" src="images/coin19.png" /><img class="icon4" src="images/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="images/coin111.png" /><img class="coin22" src="images/coin222.png" /><a href="yhzhgl.jsp" target="hsgmain">Administrator Users</a><img class="icon5" src="images/coin21.png" />
				</dd>
<dd>
					<img class="coin11" src="images/coin111.png" /><img class="coin22" src="images/coin222.png" /><a href="mod.jsp" target="hsgmain">Reset Password</a><img class="icon5" src="images/coin21.png" />
				</dd>

			</dl>
<dl class="system_log">
				
				<dd>
					<img class="coin11" src="images/coin111.png" /><img class="coin22" src="images/coin222.png" /><a href="xinwentongzhi_add.jsp?lb=站内新闻" target="hsgmain">站内新闻添加</a><img class="icon5" src="images/coin21.png" />
				</dd>
<dd>
					<img class="coin11" src="images/coin111.png" /><img class="coin22" src="images/coin222.png" /><a href="xinwentongzhi_list.jsp?lb=站内新闻" target="hsgmain">站内新闻查询</a><img class="icon5" src="images/coin21.png" />
				</dd>
<dd>
					<img class="coin11" src="images/coin111.png" /><img class="coin22" src="images/coin222.png" /><a href="xinwentongzhi_add.jsp?lb=通知公告" target="hsgmain">通知公告添加</a><img class="icon5" src="images/coin21.png" />
				</dd>
<dd>
					<img class="coin11" src="images/coin111.png" /><img class="coin22" src="images/coin222.png" /><a href="xinwentongzhi_list.jsp?lb=通知公告" target="hsgmain">通知公告查询</a><img class="icon5" src="images/coin21.png" />
				</dd>


			</dl>
<dl class="system_log">
				
				<dd>
					<img class="coin11" src="images/coin111.png" /><img class="coin22" src="images/coin222.png" /><a href="dx.jsp?lb=系统简介" target="hsgmain">系统简介设置</a><img class="icon5" src="images/coin21.png" />
				</dd>
<dd>
					<img class="coin11" src="images/coin111.png" /><img class="coin22" src="images/coin222.png" /><a href="dx.jsp?lb=关于我们" target="hsgmain">关于我们设置</a><img class="icon5" src="images/coin21.png" />
				</dd>
<dd>
					<img class="coin11" src="images/coin111.png" /><img class="coin22" src="images/coin222.png" /><a href="dx.jsp?lb=联系方式" target="hsgmain">联系方式设置</a><img class="icon5" src="images/coin21.png" />
				</dd>

			</dl>
<dl class="system_log">
				<dt>
					<img class="icon1" src="images/coin01.png" /><img class="icon2" src="images/coin02.png" /> Users Registration Management<img class="icon3" src="images/coin19.png" /><img class="icon4" src="images/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="images/coin111.png" /><img class="coin22" src="images/coin222.png" /><a href="yonghuzhuce_list.jsp" target="hsgmain">Users Registration Management</a><img class="icon5" src="images/coin21.png" />
				</dd>

			</dl>
<dl class="system_log">
				
				<dd>
					<img class="coin11" src="images/coin111.png" /><img class="coin22" src="images/coin222.png" /><a href="liuyanban_list.jsp" target="hsgmain">留言管理</a><img class="icon5" src="images/coin21.png" />
				</dd>

			</dl>

<dl class="system_log">
				<dt>
					<img class="icon1" src="images/coin01.png" /><img class="icon2" src="images/coin02.png" /> Posters Slides Management<img class="icon3" src="images/coin19.png" /><img class="icon4" src="images/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="images/coin111.png" /><img class="coin22" src="images/coin222.png" /><a href="xinwentongzhi_add.jsp?lb=变幻图" target="hsgmain">Add Poster</a><img class="icon5" src="images/coin21.png" />
				</dd>
<dd>
					<img class="coin11" src="images/coin111.png" /><img class="coin22" src="images/coin222.png" /><a href="xinwentongzhi_list.jsp?lb=变幻图" target="hsgmain">Search Poster</a><img class="icon5" src="images/coin21.png" />
				</dd>

			</dl>
<dl class="system_log">
				<dt>
					<img class="icon1" src="images/coin01.png" /><img class="icon2" src="images/coin02.png" /> Vote Management<img class="icon3" src="images/coin19.png" /><img class="icon4" src="images/coin20.png" />
				</dt>
			
<dd>
					<img class="coin11" src="images/coin111.png" /><img class="coin22" src="images/coin222.png" /><a href="toupiao_list.jsp" target="hsgmain">Search Vote</a><img class="icon5" src="images/coin21.png" />
				</dd>

			</dl>
<dl class="system_log">
				<dt>
					<img class="icon1" src="images/coin01.png" /><img class="icon2" src="images/coin02.png" /> Events Management<img class="icon3" src="images/coin19.png" /><img class="icon4" src="images/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="images/coin111.png" /><img class="coin22" src="images/coin222.png" /><a href="huodongxinxi_list.jsp" target="hsgmain">Events Search</a><img class="icon5" src="images/coin21.png" />
				</dd>
					<dd>
					<img class="coin11" src="images/coin111.png" /><img class="coin22" src="images/coin222.png" /><a href="huodong_list.jsp" target="hsgmain">Events Record</a><img class="icon5" src="images/coin21.png" />
				</dd>

			</dl>


<dl class="system_log">
				<dt>
					<img class="icon1" src="images/coin01.png" /><img class="icon2" src="images/coin02.png" /> Invitation Management<img class="icon3" src="images/coin19.png" /><img class="icon4" src="images/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="images/coin111.png" /><img class="coin22" src="images/coin222.png" /><a href="yaoqing_list.jsp" target="hsgmain">Invitation Search</a><img class="icon5" src="images/coin21.png" />
				</dd>

			</dl>
<dl class="system_log">
				<dt>
					<img class="icon1" src="images/coin01.png" /><img class="icon2" src="images/coin02.png" /> System Management<img class="icon3" src="images/coin19.png" /><img class="icon4" src="images/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="images/coin111.png" /><img class="coin22" src="images/coin222.png" /><a href="databack.jsp" target="hsgmain">Data Backups</a><img class="icon5" src="images/coin21.png" />
				</dd>

			</dl>




			
		</div>
	</div>
</body>
</html>
