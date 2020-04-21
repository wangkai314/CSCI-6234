USE [master]
GO
/****** Object:  Database [jspmjbhdxthsg8027X1B6]    Script Date: 04/19/2020 03:10:24 ******/
CREATE DATABASE [jspmjbhdxthsg8027X1B6] ON  PRIMARY 
( NAME = N'jspmjbhdxthsg8027X1B6', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\jspmjbhdxthsg8027X1B6.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'jspmjbhdxthsg8027X1B6_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\jspmjbhdxthsg8027X1B6_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [jspmjbhdxthsg8027X1B6] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [jspmjbhdxthsg8027X1B6].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [jspmjbhdxthsg8027X1B6] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [jspmjbhdxthsg8027X1B6] SET ANSI_NULLS OFF
GO
ALTER DATABASE [jspmjbhdxthsg8027X1B6] SET ANSI_PADDING OFF
GO
ALTER DATABASE [jspmjbhdxthsg8027X1B6] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [jspmjbhdxthsg8027X1B6] SET ARITHABORT OFF
GO
ALTER DATABASE [jspmjbhdxthsg8027X1B6] SET AUTO_CLOSE ON
GO
ALTER DATABASE [jspmjbhdxthsg8027X1B6] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [jspmjbhdxthsg8027X1B6] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [jspmjbhdxthsg8027X1B6] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [jspmjbhdxthsg8027X1B6] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [jspmjbhdxthsg8027X1B6] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [jspmjbhdxthsg8027X1B6] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [jspmjbhdxthsg8027X1B6] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [jspmjbhdxthsg8027X1B6] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [jspmjbhdxthsg8027X1B6] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [jspmjbhdxthsg8027X1B6] SET  ENABLE_BROKER
GO
ALTER DATABASE [jspmjbhdxthsg8027X1B6] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [jspmjbhdxthsg8027X1B6] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [jspmjbhdxthsg8027X1B6] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [jspmjbhdxthsg8027X1B6] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [jspmjbhdxthsg8027X1B6] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [jspmjbhdxthsg8027X1B6] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [jspmjbhdxthsg8027X1B6] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [jspmjbhdxthsg8027X1B6] SET  READ_WRITE
GO
ALTER DATABASE [jspmjbhdxthsg8027X1B6] SET RECOVERY SIMPLE
GO
ALTER DATABASE [jspmjbhdxthsg8027X1B6] SET  MULTI_USER
GO
ALTER DATABASE [jspmjbhdxthsg8027X1B6] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [jspmjbhdxthsg8027X1B6] SET DB_CHAINING OFF
GO
USE [jspmjbhdxthsg8027X1B6]
GO
/****** Object:  Table [dbo].[youqinglianjie]    Script Date: 04/19/2020 03:10:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[youqinglianjie](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[wangzhanmingcheng] [varchar](300) NULL,
	[wangzhi] [varchar](300) NULL,
	[logo] [varchar](50) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[youqinglianjie] ON
INSERT [dbo].[youqinglianjie] ([ID], [wangzhanmingcheng], [wangzhi], [logo], [addtime]) VALUES (1, N'百度', N'http://www.baidu.com', N'upload/baidu.jpg', CAST(0x0000ABA2001A3987 AS DateTime))
INSERT [dbo].[youqinglianjie] ([ID], [wangzhanmingcheng], [wangzhi], [logo], [addtime]) VALUES (2, N'谷歌', N'http://www.google.cn', N'upload/google.jpg', CAST(0x0000ABA2001A3987 AS DateTime))
INSERT [dbo].[youqinglianjie] ([ID], [wangzhanmingcheng], [wangzhi], [logo], [addtime]) VALUES (3, N'新浪', N'http://www.sina.com', N'upload/sina.jpg', CAST(0x0000ABA2001A3987 AS DateTime))
INSERT [dbo].[youqinglianjie] ([ID], [wangzhanmingcheng], [wangzhi], [logo], [addtime]) VALUES (4, N'雅虎', N'http://www.yahoo.cn', N'upload/yahoo.jpg', CAST(0x0000ABA2001A3987 AS DateTime))
INSERT [dbo].[youqinglianjie] ([ID], [wangzhanmingcheng], [wangzhi], [logo], [addtime]) VALUES (5, N'腾讯', N'http://www.qq.com', N'upload/qq.jpg', CAST(0x0000ABA2001A3987 AS DateTime))
SET IDENTITY_INSERT [dbo].[youqinglianjie] OFF
/****** Object:  Table [dbo].[yonghuzhuce]    Script Date: 04/19/2020 03:10:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[yonghuzhuce](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[yonghuming] [varchar](50) NULL,
	[mima] [varchar](50) NULL,
	[xingming] [varchar](50) NULL,
	[xingbie] [varchar](2) NULL,
	[chushengnianyue] [varchar](50) NULL,
	[QQ] [varchar](50) NULL,
	[youxiang] [varchar](50) NULL,
	[dianhua] [varchar](50) NULL,
	[shenfenzheng] [varchar](50) NULL,
	[touxiang] [varchar](50) NULL,
	[dizhi] [varchar](300) NULL,
	[beizhu] [varchar](500) NULL,
	[addtime] [datetime] NULL,
	[issh] [varchar](2) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[yonghuzhuce] ON
INSERT [dbo].[yonghuzhuce] ([ID], [yonghuming], [mima], [xingming], [xingbie], [chushengnianyue], [QQ], [youxiang], [dianhua], [shenfenzheng], [touxiang], [dizhi], [beizhu], [addtime], [issh]) VALUES (1, N'555', N'555', N'何升高', N'男', N'2012-07-08', N'429489354', N'gsgs@163.com', N'13186835580', N'52353253262', N'upload/yhtx1.jpg', N'龙港龙翔路1170号', N'mfgmfgmfg', CAST(0x0000ABA2001A398A AS DateTime), N'是')
INSERT [dbo].[yonghuzhuce] ([ID], [yonghuming], [mima], [xingming], [xingbie], [chushengnianyue], [QQ], [youxiang], [dianhua], [shenfenzheng], [touxiang], [dizhi], [beizhu], [addtime], [issh]) VALUES (2, N'leejie', N'leejie', N'李龙', N'男', N'2012-05-21', N'851781333', N'fege@126.com', N'63474337', N'623632153', N'upload/yhtx2.jpg', N'温州飞翔路2号', N'htrjrtjr', CAST(0x0000ABA2001A398A AS DateTime), N'是')
INSERT [dbo].[yonghuzhuce] ([ID], [yonghuming], [mima], [xingming], [xingbie], [chushengnianyue], [QQ], [youxiang], [dianhua], [shenfenzheng], [touxiang], [dizhi], [beizhu], [addtime], [issh]) VALUES (3, N'mygod', N'mygod', N'陈德才', N'男', N'2012-02-02', N'870538338', N'gshf@yahoo.com', N'9696556', N'33253636', N'upload/yhtx3.jpg', N'杭州四季青广场3号', N'hdhffd', CAST(0x0000ABA2001A398A AS DateTime), N'是')
INSERT [dbo].[yonghuzhuce] ([ID], [yonghuming], [mima], [xingming], [xingbie], [chushengnianyue], [QQ], [youxiang], [dianhua], [shenfenzheng], [touxiang], [dizhi], [beizhu], [addtime], [issh]) VALUES (4, N'xwxxmx', N'xwxxmx', N'吴江', N'女', N'2012-03-14', N'609577616', N'jrjtr@163.com', N'34437754', N'215323262', N'upload/yhtx4.jpg', N'上海浦东区22号', N'gfdhth', CAST(0x0000ABA2001A398A AS DateTime), N'是')
SET IDENTITY_INSERT [dbo].[yonghuzhuce] OFF
/****** Object:  Table [dbo].[yaoqing]    Script Date: 04/19/2020 03:10:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[yaoqing](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[huodongbianhao] [varchar](50) NULL,
	[huodongmingcheng] [varchar](50) NULL,
	[huodongriqi] [varchar](50) NULL,
	[huodongdidian] [varchar](50) NULL,
	[faburen] [varchar](50) NULL,
	[yaoqingzhanghao] [varchar](50) NULL,
	[issh] [varchar](2) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[yaoqing] ON
INSERT [dbo].[yaoqing] ([ID], [huodongbianhao], [huodongmingcheng], [huodongriqi], [huodongdidian], [faburen], [yaoqingzhanghao], [issh], [addtime]) VALUES (1, N'017', N'D活动', N'2020-5-6', N'人民路57号', N'006', N'004', N'是', CAST(0x0000ABA2001A39A4 AS DateTime))
INSERT [dbo].[yaoqing] ([ID], [huodongbianhao], [huodongmingcheng], [huodongriqi], [huodongdidian], [faburen], [yaoqingzhanghao], [issh], [addtime]) VALUES (2, N'004', N'B活动', N'2020-4-26', N'上江小区2幢', N'026', N'029', N'是', CAST(0x0000ABA2001A39A4 AS DateTime))
INSERT [dbo].[yaoqing] ([ID], [huodongbianhao], [huodongmingcheng], [huodongriqi], [huodongdidian], [faburen], [yaoqingzhanghao], [issh], [addtime]) VALUES (3, N'001', N'S活动', N'2020-5-6', N'河滨东路139号', N'007', N'008', N'是', CAST(0x0000ABA2001A39A4 AS DateTime))
INSERT [dbo].[yaoqing] ([ID], [huodongbianhao], [huodongmingcheng], [huodongriqi], [huodongdidian], [faburen], [yaoqingzhanghao], [issh], [addtime]) VALUES (4, N'001', N'K活动', N'2020-5-6', N'复兴街27号', N'029', N'019', N'是', CAST(0x0000ABA2001A39A4 AS DateTime))
INSERT [dbo].[yaoqing] ([ID], [huodongbianhao], [huodongmingcheng], [huodongriqi], [huodongdidian], [faburen], [yaoqingzhanghao], [issh], [addtime]) VALUES (5, N'017', N'X活动', N'2020-5-6', N'鑫和锦园2栋', N'001', N'001', N'是', CAST(0x0000ABA2001A39A5 AS DateTime))
INSERT [dbo].[yaoqing] ([ID], [huodongbianhao], [huodongmingcheng], [huodongriqi], [huodongdidian], [faburen], [yaoqingzhanghao], [issh], [addtime]) VALUES (6, N'04190153414727', N'很过分打道回府', N'2020-05-08', N'和规范化电饭锅', N'555', N'4545', N'否', CAST(0x0000ABA200208500 AS DateTime))
INSERT [dbo].[yaoqing] ([ID], [huodongbianhao], [huodongmingcheng], [huodongriqi], [huodongdidian], [faburen], [yaoqingzhanghao], [issh], [addtime]) VALUES (7, N'04190153414727', N'很过分打道回府', N'2020-05-08', N'和规范化电饭锅', N'555', N'555', N'是', CAST(0x0000ABA20022563C AS DateTime))
INSERT [dbo].[yaoqing] ([ID], [huodongbianhao], [huodongmingcheng], [huodongriqi], [huodongdidian], [faburen], [yaoqingzhanghao], [issh], [addtime]) VALUES (8, N'04190252072652', N'A活动', N'2020-05-08', N'和规范化电饭锅', N'555', N'555', N'是', CAST(0x0000ABA2002F8410 AS DateTime))
SET IDENTITY_INSERT [dbo].[yaoqing] OFF
/****** Object:  Table [dbo].[xinwentongzhi]    Script Date: 04/19/2020 03:10:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[xinwentongzhi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[biaoti] [varchar](300) NULL,
	[leibie] [varchar](50) NULL,
	[neirong] [text] NULL,
	[tianjiaren] [varchar](50) NULL,
	[shouyetupian] [varchar](50) NULL,
	[dianjilv] [int] NULL,
	[zhaiyao] [varchar](500) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[xinwentongzhi] ON
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (1, N'变幻图1', N'变幻图', N'无', N'hsg', N'upload/1.jpg', 1, NULL, CAST(0x0000ABA2001A3988 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (2, N'变幻图2', N'变幻图', N'无', N'hsg', N'upload/2.jpg', 1, NULL, CAST(0x0000ABA2001A3988 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (3, N'变幻图3', N'变幻图', N'无', N'hsg', N'upload/3.jpg', 1, NULL, CAST(0x0000ABA2001A3988 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (4, N'变幻图4', N'变幻图', N'无', N'hsg', N'upload/4.jpg', 1, NULL, CAST(0x0000ABA2001A3988 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (5, N'变幻图5', N'变幻图', N'无', N'hsg', N'upload/5.jpg', 1, NULL, CAST(0x0000ABA2001A3988 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (6, N'“渔趣”活动其乐融融（图）', N'站内新闻', N'<DIV align=center>
<DIV align=center>&nbsp;</DIV>
<DIV align=center><SPAN><IMG id=no_img border=0 src="http://pic2.66wz.com/0/10/77/19/10771950_846881.jpg" width=600 height=398></SPAN><BR>&nbsp;</DIV></DIV>
<P><!--epe-->&nbsp;&nbsp;&nbsp; 苍南新闻网4月25日消息：日前，金乡镇石砰社区组织开展“渔趣石砰”社区融合活动，120多名居民参加了比赛。据悉，内容包括“织渔网”、“接渔绳”、“拔河”等与渔民生产生活直接相关的项目。（陈晓璐 李杰/摄）</P>', N'hsg', N'upload/sytp1.jpg', 24, NULL, CAST(0x0000ABA2001A3991 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (7, N'李毅中等四人增补为全国政协委员', N'站内新闻', N'<P align=center><IMG style="BORDER-LEFT-COLOR: #000000; BORDER-BOTTOM-COLOR: #000000; BORDER-TOP-COLOR: #000000; BORDER-RIGHT-COLOR: #000000" src="http://www.cnqk.gov.cn/upload/editorfiles/2011.3.1_10.23.2_9119.jpg" border=0></P><BR>&nbsp;&nbsp; 昨天下午，政协第十一届全国委员会常务委员会第十二次会议圆满完成各项议程后，在北京闭幕。 
<P>　　会议决定，中国人民政治协商会议第十一届全国委员会第四次会议于2011年3月3日在北京召开，建议这次会议的主要议程是：听取和审议政协全国委员会常务委员会工作报告和政协十一届三次会议以来提案工作情况的报告；列席十一届全国人大四次会议，听取并讨论政府工作报告及其他有关报告，讨论国民经济和社会发展第十二个五年规划纲要草案。</P>
<P>　　会议以表决方式，通过了政协第十一届全国委员会第四次会议议程（草案）和日程，原则通过了提交政协十一届四次会议审议的政协常委会工作报告和政协十一届三次会议以来提案工作情况的报告，通过了政协全国委员会提案工作条例，通过了政协十一届四次会议秘书长、副秘书长名单，决定钱运录为大会秘书长。会议决定增补王太华、刘京、李毅中、胡振民等4人为政协第十一届全国委员会委员，决定增补阳安江为提案委员会副主任，李毅中、张国宝为经济委员会副主任，王太华、王国发为人口资源环境委员会副主任，王全书、胡振民为教科文卫体委员会副主任，王巨禄、宋育英、陈学亨、季允石为社会和法制委员会副主任，刘凡为港澳台侨委员会副主任，刘京、杨多良为外事委员会副主任，陈光林、周国富为文史和学习委员会副主任。</P>
<P>　　依据政协章程及有关规定，会议通过表决方式，审议通过了关于撤销李建国政协第十一届全国委员会委员资格的决定。</P>
<P><STRONG>　　原北京市政协主席</STRONG></P>
<P><STRONG>　　阳安江：卸任时几乎落泪</STRONG></P>
<P>　　刚刚结束不久的北京市政协会议上，阳安江完成自己5年的政协主席使命，不再担任市政协主席一职。很多市政协委员还记得大会闭幕当天，这位年过六旬的老人围着会议厅的走廊走了整整一圈，与几百位委员都握了手。5年的时间，他多次提到“政协是个大家庭”、各位委员对他多有帮助支持等言语，接受采访时几乎落泪，可见其对市政协感情匪浅。</P>', N'hsg', N'upload/sytp2.jpg', 59, NULL, CAST(0x0000ABA2001A3991 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (8, N'关于举办苍南县第三届三人制足球赛的通知', N'站内新闻', N'<DIV>各乡镇党委，县直属各单位党委（党组）：</DIV>
<DIV align=left>为了热烈庆祝中华人民共和国成立61周年，营造热烈、喜庆的节日氛围，丰富广大干部职工业余生活，经研究，决定举办庆国庆“天达杯” 苍南县第三届三人制足球赛，现将有关事项通知如下：</DIV>
<DIV align=left><B>一、</B><B>比赛时间：</B>2010年10月1-4日。</DIV>
<DIV><B>二、比赛地点：</B>苍南县实验三小。</DIV>
<DIV><B>三、参加对象：</B>全县各乡镇、机关、企事业单位足球爱好</DIV>
<DIV>者。</DIV>
<DIV><B>四、报名要求：</B>报名以乡镇、机关或企事业为单位组队，要求领队1名，队员3-6名，每人只能代表一个队参赛，报名时要带身份证原件、复印件，2寸照片2张，各单位要于9月26日前将报名表上报到行政中心1035室。报名电话：0577-68881261，13566122226；电子邮箱：<A href="mailto:gxx45733357@qq.com">gxx45733357@qq.com</A>。</DIV>
<DIV><B>五、&nbsp; </B><B>比赛规则：</B></DIV>
<DIV>1、比赛采用分组分阶段的赛制。<B></B></DIV>
<DIV>A、预赛阶段：</DIV>
<DIV>B、决赛阶段：</DIV>
<DIV>（详见赛事规程）</DIV>
<DIV>2、比赛执行苍南县三人制足球竞赛规则，采用4号足球。</DIV>
<DIV>3、全场比赛30分钟，上下半场各15分钟，中场不休息。</DIV>
<DIV>4、各队需自备至少一套统一颜色的比赛服装，对阵双方服装颜色相似时，应服从竞赛组提供的分队服装安排。</DIV>
<DIV>本竞赛规程解释权属承办方，未尽事宜另行通知。</DIV>
<DIV>&nbsp;</DIV>
<DIV>附件： “天达杯”苍南县第三届三人制足球赛报名表</DIV>
<DIV>&nbsp;</DIV>
<DIV align=left>&nbsp;</DIV>
<DIV align=left>　　　　　　　　　　　　　　　中共苍南县委宣传部</DIV>
<DIV align=left>　　　　　　　　　　　　　　　　　　苍南县体育局</DIV>
<DIV align=left>　　　　　　　　　　　　　　　　苍南县总工会</DIV>
<DIV align=center>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;　　2010年9月20日 </DIV>
<DIV>&nbsp;</DIV>
<DIV>&nbsp;</DIV>
<DIV><B><U>主题词：</U></B><U>三人制足球赛&nbsp;&nbsp;&nbsp; 通知&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</U></DIV><U>&nbsp; 中共苍南县委宣传部办公室&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;2010年9月20日印发&nbsp; <BR><BR>
<DIV>附：</DIV>
<DIV align=center><B>&nbsp;</B><B>“天达杯”</B><B>苍南县第三届三人制足球赛</B><B>报名表</B></DIV>
<DIV><B></B>&nbsp;</DIV>
<DIV>球队名称： <U>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</U>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;领队<U>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</U>&nbsp;&nbsp;<B></B></DIV>
<TABLE cellSpacing=0 cellPadding=0 border=1>
<TBODY>
<TR>
<TD width=130>
<DIV align=center>姓&nbsp; 名</DIV></TD>
<TD width=221>
<DIV align=center>身份证号</DIV></TD>
<TD width=137>
<DIV align=center>单&nbsp;&nbsp;&nbsp;&nbsp; 位</DIV></TD>
<TD width=120>
<DIV align=center>联系电话</DIV></TD>
<TD width=337>
<DIV align=center>贴身份证复印件、照片处</DIV></TD></TR>
<TR>
<TD width=130>
<DIV align=center>&nbsp;</DIV></TD>
<TD width=221>
<DIV align=center>&nbsp;</DIV></TD>
<TD width=137>
<DIV align=center>&nbsp;</DIV></TD>
<TD width=120>
<DIV align=center>&nbsp;</DIV></TD>
<TD width=337 rowSpan=6>
<DIV align=center>&nbsp;</DIV></TD></TR>
<TR>
<TD width=130>
<DIV align=center>&nbsp;</DIV></TD>
<TD width=221>
<DIV align=center>&nbsp;</DIV></TD>
<TD width=137>
<DIV align=center>&nbsp;</DIV></TD>
<TD width=120>
<DIV align=center>&nbsp;</DIV></TD></TR>
<TR>
<TD width=130>
<DIV align=center>&nbsp;</DIV></TD>
<TD width=221>
<DIV align=center>&nbsp;</DIV></TD>
<TD width=137>
<DIV align=center>&nbsp;</DIV></TD>
<TD width=120>
<DIV align=center>&nbsp;</DIV></TD></TR>
<TR>
<TD width=130>
<DIV align=center>&nbsp;</DIV></TD>
<TD width=221>
<DIV align=center>&nbsp;</DIV></TD>
<TD width=137>
<DIV align=center>&nbsp;</DIV></TD>
<TD width=120>
<DIV align=center>&nbsp;</DIV></TD></TR>
<TR>
<TD width=130>
<DIV align=center>&nbsp;</DIV></TD>
<TD width=221>
<DIV align=center>&nbsp;</DIV></TD>
<TD width=137>
<DIV align=center>&nbsp;</DIV></TD>
<TD width=120>
<DIV align=center>&nbsp;</DIV></TD></TR>
<TR>
<TD width=130>
<DIV align=center>&nbsp;</DIV></TD>
<TD width=221>
<DIV align=center>&nbsp;</DIV></TD>
<TD width=137>
<DIV align=center>&nbsp;</DIV></TD>
<TD width=120>
<DIV align=center>&nbsp;</DIV></TD></TR></TBODY></TABLE>
<DIV>&nbsp;</DIV></U>', N'hsg', N'upload/sytp3.jpg', 53, NULL, CAST(0x0000ABA2001A3991 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (9, N'孙女发帖替奶奶卖莴苣 百名蔬菜经纪人今大采购', N'站内新闻', N'<P style="TEXT-ALIGN: center" align=center><FONT face=楷体_GB2312 color=navy><A href="http://news.xinhuanet.com/2011-04/27/c_121351576_2.htm"><IMG id={2DB80797-6636-48F4-98C2-6B797D75B02E} src="http://news.xinhuanet.com/2011-04/27/121351576_11n.jpg" border=0></A></FONT></P>
<P style="COLOR: navy; FONT-FAMILY: 楷体_GB2312; TEXT-ALIGN: center" align=center><FONT face=楷体_GB2312 color=navy>江心洲的莴苣终于不愁卖了</FONT></P>
<P style="TEXT-ALIGN: center" align=center><A href="http://news.xinhuanet.com/2011-04/27/c_121351576_2.htm"><IMG id={16C3C712-8B04-4880-BF0E-3ADE350319CD} src="http://news.xinhuanet.com/2011-04/27/121351576_31n.jpg" border=0></A></P>
<P style="TEXT-ALIGN: center" align=center><FONT face=楷体_GB2312 color=navy>“莴苣奶奶”的孙女(左)“我爱天上人间”。</FONT></P>
<P>　　24日，《扬子晚报》报道了<A href="http://news.xinhuanet.com/2011-04/24/c_121340448.htm" target=_blank>《孙女发帖替奶奶卖莴苣 镇江200网友昨渡江义购》</A>的消息，包括新华网、新浪、搜狐等各大门户网站纷纷转载，央视多次播出这条新闻，新华日报等主流媒体也赶至镇江，采访并试图为镇江丹徒江心洲菜农分忧解难。与此同时，镇江市以及丹徒区政府也在想尽办法解决江心洲的莴苣销售问题，今天，丹徒区百名蔬菜经纪人将齐聚江心洲集中大采购，力争彻底解决岛上莴苣滞销难题。</P>
<P><STRONG><FONT color=navy>　　十家超市上岛采购</FONT></STRONG></P>
<P>　　“万方超市4000斤，旅游超市3000斤……”昨天上午，江心洲农产品协会会长吴顺山抑制不住内心的喜悦，连珠似的给记者报出镇江各大超市需求莴苣的数量。25日下午，镇江万方、苏果、旅游三家连锁超市，欧尚、北京华联、世纪联华、农工商、沃尔玛、大润发、大统华七家大型超市，以及镇江农产品批发市场的相关负责人，在镇江市商务局和丹徒区商务局的组织下，来到丹徒区江心洲上的生态农业园区管委会，与当地的莴苣种植户“农超对接”。</P>
<P>　　面对菜农超过4000吨莴苣留在田里的焦虑，超市和农产品批发市场的负责人纷纷表示，将积极帮助菜农销售莴苣。双方达成协议：镇江农产品批发市场为江心洲的莴苣开通绿色通道，江心洲上的生态农业园区管委会负责将种植户积存下来的莴苣集中运送到镇江农批市场，各家超市则集中到农批市场收购莴苣。据了解，本地万方连锁超市莴苣的日销售量为2000公斤，旅游连锁超市莴苣的日销售量为1500公斤。</P>
<P>　　记者了解到，连日来，为帮助江心洲菜农寻找销路，维持蔬菜市场稳定，镇江市商务局采取应对措施，除于25日组织“农超对接”，扩大本地蔬菜销售量外，还通过商务部信息平台向全国发布供货信息，争取外来采购，并帮助蔬菜生产大户与冷库建立联系，对大量上市的蔬菜进行适当储备，延长上市周期。</P>
<P>　　吴顺山开心地告诉记者，本报的相关报道产生了巨大的影响，包括安徽等地的蔬菜经营者都跟他们联系购销事宜。几天来，江心洲“收购莴苣的车辆已经与往年持平”。</P>', N'hsg', N'upload/sytp4.jpg', 97, NULL, CAST(0x0000ABA2001A3991 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (10, N'33元眼药膏，救了她的双眼', N'站内新闻', N'一个，世界的斑斓色彩全部变为黑暗，仿佛一抬脚迈出去就要跌入万丈深渊……但是这一切却很快逆转，如今她的视力已经逐渐恢复，这其中的惊喜她体会更深。几天前，她专门从深圳打飞的到杭州，找邵逸夫医院眼科主任姚玉锋教授复诊，视力已经恢复到1.0。张女士万分感激，姚医生只用了33元的眼药膏，就治好了其他医生建议“角膜移植”手术才能解决的眼病。
<P>　　张女士是个商人，生意做得很大。但去年开始，她感到眼睛经常酸胀，到后来疼痛得睁不开，去医院检查，双眼视力直线下降，后来连视力表上最大的那个“E”也看不清了。医生说，这是感染，给她开了很多药。口服加外用治了半年多没效果，视力还是不断下降，张女士不仅疼痛难忍，连出门也要人搀扶。深圳、上海、北京等医院的眼科都看过，几万元的医药费花下去，有医生说“角膜开始溃烂，眼球会烂掉，只能做角膜移植，但要等待角膜供体”。</P><!--advertisement code begin--><!--advertisement code end-->
<P>　　而偶然一次机会，张女士在青海老家休养时，碰巧邵逸夫医院眼科主任姚玉锋去青海给眼科医生讲课，当地医生建议她找浙江专家看看。姚玉锋教授给张女士做了检查后，直接告诉她：“你这个病，不用手术，按照我说的做肯定能好。”姚教授给了张女士两个建议：先把所有口服和外用的药停掉，只用他开的一支33块钱的眼药膏，一天用3次。</P>
<P>　　张女士半信半疑，但还是照做了。一个星期后，疼痛开始减轻，一个半月之后，张女士的视力从0.1恢复到0.8，惊喜之余，她专程从老家打“飞的”来杭州向姚教授道谢，并做了复诊。</P>
<P>　　姚教授解释说，张女士得的是一种叫“蚕蚀性角膜溃疡”的眼病，“这个病容易被误诊，用药不对就会导致病情加重，其实只要诊断明确，治病不难。”</P>
<P>　　杭州师范大学的的小梦(化名)曾经也是一位角膜病患者。高三时，她双眼视力不断下降，“近视”接近1000度。家人非常着急，带着她去邵逸夫医院姚教授处就诊，最后被确诊为“双眼圆锥角膜”。这种先天性疾病，发展到最后可能失明。一边是高考的临近，一边是失明的危险。最后，姚教授为她做了“姚氏角膜移植手术”，只休息了不到两个月，小梦的视力均恢复到1.0，去年，她顺利参加高考，进入杭州师范大学。小梦的母亲最欣慰的是，移植手术后，小梦几乎没有出现排斥反应，移植的角膜就像“重新长出来的”。</P>
<P>　　研究角膜病，姚教授投入了20多年的时间。一片薄薄的角膜，已经被他分离到6微米然后再做角膜移植的精细程度。</P>
<P>　　“零排异”的角膜移植怎么做到？姚玉锋教授解释，把角膜“根”留下，在手术中只保留患者角膜最后一层6微米厚的弹力膜，去除病变的部分，让新移植进去的角膜在“根”上长出新的细胞，就能实现“零排异”。另外一个好处是，新鲜的角膜供体有“保质期”，短时不移植就浪费了。而“姚氏角膜移植”能够使用长期低温保存的角膜，提高了供体角膜的利用率。”姚玉峰教授说。</P>
<P>　　“姚式移植技术”从设想到第一个案例成功用了20多年时间，现在已经成功治疗近300例患者。已被临床广泛应用，国内有500多位眼科医师来杭求教。上周，姚教授及其团队凭借这一研究获得“浙江省科学技术奖一等奖”。</P>', N'hsg', N'upload/sytp5.jpg', 39, NULL, CAST(0x0000ABA2001A3991 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (11, N'我县水稻长势乐观 温州市水稻专家前来指导', N'站内新闻', N'　日前，温州市种子站副站长、水稻专家叶曙光在相关技术人员的陪同下，来我县检查指导中晚稻生产情况。专家一行先后实地察看了我县仙居、金乡、浦亭、矾山埔坪、马站等地的中晚稻展示试验示范生产等工作。
<P>　　据悉，今年我县共落实C两优501、浙辐优12、C两优608、盐两优888、丰优989、川优3203、两优1128、深两优5867、宜优673、泸香658、C?两优343、镇籼优184、德香4103、广占63S/1128；丰源优227、甬优412、甬优538、甬优3101、协优中1号、五优308、湘丰优186、中优161、甬优15、甬优13等30多个展示新组合面积达50多亩；落实两优689、浙优12、钱优0508、甬优14、甬优15、国稻7号、黄华占等示范面积近千亩，同时还落实了种质资源品种8个进行试种，面积约10亩左右。</P><!--advertisement code begin--><!--advertisement code end-->
<P>　　专家一行人在考察并记载了各组合的特征特性及长势长相后，结合实际，对我县承担的中晚稻试验示范工作给予了充分的肯定，并对我县水稻当前长势表示乐观。叶曙光还就对下一步如何做好水稻生产给予指导。他指出，要针对中稻要抢抓时机，做好及时收割工作，切忌割青，影响产量；针对晚稻，由于受前期天气影响，导致我县晚稻普遍出现超秧龄移栽现象，影响了部分晚稻经济性状变劣，因此更要积极采取各种有效措施，做好晚稻田间后期管理，切忌断水过早，力争夺取水稻高产，确保完成今年水稻生产。</P>', N'hsg', N'upload/sytp1.jpg', 87, NULL, CAST(0x0000ABA2001A3991 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (12, N'陈一新陈金彪检查指导抗灾救灾工作', N'站内新闻', N'<P>　　10月8日，市委书记陈一新，市委副书记、市长陈金彪，分别就抗灾救灾工作进行检查指导。</P>
<P>　　10月8日下午，陈一新和市领导仇杨均、任玉明等，率有关部门负责人，实地察看市区江滨路防洪堤郭公山段、鹿城区双屿工业区、西向排洪工程卧旗水闸等排洪排涝能力建设，督查水利设施建设，检查指导抗灾救灾工作。</P>
<P>　　面对强台风“菲特”来袭，市区江滨路防洪堤郭公山段缺口于10月6日出现海水倒灌，部队官兵现场用沙包奋力封堵垒起安全防线。针对防洪堤郭公山段存在的问题，陈一新指出，防洪堤是城市的生命线。要明确职责，落实责任，加快完善水利基础设施建设，切实加强防灾减灾能力建设。当看到城市主干道的一块大路牌随风摇晃时，陈一新要求有关职能部门要全面加强路牌等高空设施的检查，对存在安全隐患的要及时加固、消除隐患，确保万无一失。</P>
<P>　　察看西向排洪工程时，卧旗水闸正开闸泄洪。水利部门介绍，西向排洪工程的建设，使城区排涝能力提高近一半，在应对“菲特”中发挥了重要作用。在双屿工业区鹿城金改广场附近，因水利基础设施建设的滞后，前两天出现严重积水。陈一新说：“水利建设事关城市安全、事关百姓民生。这次台风虽然过去了，但水的问题值得我们好好反思。对已经暴露出来的薄弱环节和问题要抓紧解决，不要年年成为问题。要加快兴修水利，着力建设一批水利基础设施，加强河网、江口、小流域等治理，切实把‘水害’变成‘水利’。”</P>
<P>　　陈金彪对城区抗灾救灾工作作出专题部署。他强调，要强化组织领导，投入精干力量，采取有效措施，全面开展抗灾救灾工作。要全力做好受损设施抢修，加快重点部位排涝，加快水电路通信抢修与绿化修复，尽最大努力把损失降到最低。要全力做好受灾群众帮扶工作，妥善安置受灾群众，加强灾情核实统计，积极争取上级支持，切实保障群众生活。要积极组织开展生产自救，强化宣传引导，鼓励灾区群众发扬自力更生、艰苦奋斗精神，全力重建家园。要着眼长远研究长效之策，进一步查漏补缺，从根本上克服薄弱环节、解决突出问题，提高防灾抗灾能力。</P>', N'hsg', N'upload/sytp2.jpg', 71, NULL, CAST(0x0000ABA2001A3991 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (13, N'苏州交通局长坐非空调公交满脸汗 承诺换车(图)', N'站内新闻', N'<P align=center><IMG id=23120689 alt=苏州交通局长坐非空调公交满脸汗承诺换车（图） src="http://images.china.cn/attachement/jpg/site1000/20130815/7427ea21093a137663780a.jpg" md5=""></P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">今夏高温天，市民乘坐没有空调的公交车可谓是备受煎熬。8月13日下午，苏州市交通局局长邵建林就亲身体验了一把“蒸笼车”——没有空调的108路，体验之后，邵建林局长承诺将尽快将非空调车换掉。据了解，苏州目前共有非空调车725辆，按目标要求，到2014年夏季，苏州所有非空调公交车将全部“下岗”，取而代之的是舒适凉爽的空调公交车。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px"><STRONG>现场交通局长坐没有空调的公交车，满脸是汗</STRONG></P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">13日下午三点半，苏州市交通局局长邵建林在解放西路公交首末站，登上了一辆108路公交车。车上没有空调，刚开出没多久，驾驶员陆师傅就已满头大汗，而他身旁左手处摆放的两个馒头，更是引起了邵建林的注意。邵建林说：“师傅，你这边还放两个馒头啊！”驾驶员说：“我们(一圈回来)下班要七点钟了，路上垫垫肚子。”</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">据了解，苏州公交108路，从解放西路换乘枢纽站，到园区唯亭，一个来回开下来将近4个小时。在这条线路上，陆师傅已经开了8年。在车内，邵建林也已经热得满身是汗，不少乘客都表示这样的非空调公交车里，驾驶员真不容易。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">乘客说：“司机真辛苦，满头大汗，我们上来了，马上就下去，司机一直在这车上走。”108路公交车驾驶员陆师傅说：“这个车上温度，将近45℃，一圈开下来，身上的衣服不会干的。今年更是特别难受。”</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">苏州市交通局局长邵建林脸上也全是汗，他说：“明年这个时候，就是空调车，所以再委屈一年。大热天里，自己身体注意。”</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px"><STRONG>幕后局长“走基层”是应市民之邀</STRONG></P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">苏州交通局长邵建林在下午最炎热的时候乘坐没用空调的公交车，不是心血来潮，而是在8月8日他收到了苏州市两位公交达人的热情邀请。在安排好工作后，8月13日下午，兑现他的承诺，亲自体验一下非空调车。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">8月8日，苏州电视台推出的《对话苏州》节目录制现场，对于市民关心的公交优先的话题，主持人问了邵建林一些问题。在邵建林一一回答之后，现场的两位公交达人就邀请邵建林什么时候体验一把108路非空调公交车。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">老的公交达人翁国良今年70岁了是退休教师。小的公交达人朱同学今年19岁，还是在校大学生。苏州公交达人翁国良说：“苏州目前还有725辆非空调车，要到2015年才能全部退出。我很难想象，如果经济这样发展，难道要等吊扇不能转了再去买空调。苏州经济这么发达，一定要到2015年才能淘汰，还有725辆公交车的司机，他们说：他也是人啊。你上去坐一趟，看看。”面对市民的邀请，邵建林丝毫没有怠慢，表示近期一定亲自去体验一下。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px"><STRONG>承诺明年空调公交车全覆盖，比原计划提前一年</STRONG></P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">在公交车上，邵建林明确承诺，明年这个时候保证将非空调换成空调公交车。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">扬子晚报记者了解到，苏州目前共有非空调车725辆，占公交车总数的18.4%，按照目标，到2015年夏季，公交空调车运营服务将在市区范围实现全覆盖。届时，“蒸笼车”将全部“下岗”。令市民欢心的是，局长的承诺，让“蒸笼车”提前一年更换结束。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">承诺容易，可兑现的背后却是需要大量的工作要做。据苏州市副市长徐惠民介绍，对此他做了调查，苏州为什么还有那么多没有装空调的公交车，是有历史原因的。在前几年刚开始有空调公交车的时候，空调车要加1块钱空调费，后来造成老百姓要等不是空调车才上，所以空调车调整战略也进了很多非空调车。可非空调车不是玩具，不是今天用了，明天扔了。马上要到报废年限了，现在还有两年时间，所以现在每年新进的车都是带空调的。他想能否在2014年让空调车全部到位，把非空调车换下来，把非空调车作为备用车来考虑，来满足群众对空调的需求。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px"><STRONG>网友局长乘公交很给力，也是和市民的良性互动</STRONG></P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">苏州交通局长的这次体验，在网上受到网友的一致好评，大呼给力。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">网友“小乔的微波”表示：这位局长终于体验了一把我下班回家的感受。两个礼拜前的一个下午5点多，我也是在这样一辆没有空调的108路上，上来了一位黑人兄弟，掏出一块硕大的毛巾，使劲擦汗啊！车上的人都感叹，我们比非洲还热。网友“庸-Slow”说：“昨天早上乘坐了一辆没有空调的 4 路公交车，感觉是无法忍受的拥挤和燥热，夏天没有空调的公交车确实让人无法承受。”</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">网友“欢乐开怀Jane”认为：更换掉非空调车不仅是老百姓期待，咱司机也期待啊！”</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">还有不少网友表示，领导提出争取在2014年把非空调车全部淘汰、换掉，其实政府管理工作很多情况下也不是大家所想得那样简单。在让官员聆听百姓心声的同时，也能让百姓进一步了解政府的难处。这次局长乘公交就是一次良性的互动。记者张毕荣 单成志</P><!--/enpcontent-->', N'hsg', N'upload/sytp3.jpg', 87, NULL, CAST(0x0000ABA2001A3992 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (14, N'图书馆阅读器受读者追捧', N'站内新闻', N'　本报讯（记者李洋）“还有手持阅读器吗？”“没有。”“什么时候能有人还回来?”“最快两三天，也可能更久。”这样的询问在推出此项服务的国家图书馆和首都图书馆几乎每天都会发生。眼下，首图的40台阅读器、国图的80台阅读器基本都“飘”在外面，读者想借得碰运气。
<P>　　手持阅读器类似电子书，最大的好处就是容量大、携带方便。“我下周要出差，觉得背几本书太沉，就想到去借阅读器。”首图的读者小谢说，一台电子书要上千元钱甚至更贵，图书馆却可以提供免费的，当然更愿意去图书馆借。小谢就听说，有些高校学生会在放寒暑假之前来借阅读器，这样整个假期都不愁在外没书看。</P>
<P>　　记者了解到，在国图，只要是开通了中文图书外借功能的读者卡（此卡押金100元），在首图，只要持有北京市公共图书馆“一卡通”E级卡（此卡押金500元）的读者，都可以外借阅读器，无需另付费用。</P>
<P>　　虽然两个图书馆的阅读器品牌和型号相同，但国图的阅读器因为插入一张4G的内存卡，预存了500本电子书在里面，更受欢迎。其80台阅读器长期处于借空状态，不过，查看借阅人次发现，月均只有40人。“因为很多读者都在长期重复外借、连续续借，让阅读器根本没有机会落入别人之手。”国图工作人员很无奈。同样的现象也发生在首图，目前，15％的读者会办理续借。为了等待有机器归还，首图的一位读者竟一天跑来三趟，但仍然没有等到。“用‘爱不释手’来形容最恰当不过。”工作人员说。</P>
<P>　　手持阅读器是图书馆为培养读者使用电子资源的习惯而推出的服务，现在，读者的胃口被吊起来了，习惯养成了，阅读器却不够用了。</P>', N'hsg', N'upload/sytp4.jpg', 10, NULL, CAST(0x0000ABA2001A3992 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (15, N'钱库镇合作社区积极开展无偿献血活动', N'站内新闻', N'&nbsp;&nbsp;&nbsp; 为响应上级部门有关义务献血的倡议，发扬 “人道、博爱、奉献”精神，12月19日,钱库镇合作社区举行“献血献爱心，血浓情更浓”活动。该社区60多名职工干部及附近企业员工积极加入到无偿献血志愿者队伍中。<BR>&nbsp;&nbsp;&nbsp; 活动现场，志愿者们自觉排队，按照医生的要求填写了义务献血登记表，并配合医务人员完成了必要的身体健康状况调查，检查合格者再进行血型化验并献血。虽然其中一些人员在做献血检测时发现有高血压、低血压、转氨酶过高等症状，没有获得参加献血的通行证，有点小遗憾，但是他们的勇气和爱心还是得到了大家的肯定。<BR>&nbsp;&nbsp;&nbsp; 献血完后，志愿者们纷纷表示，献血感觉不错，想到自己能帮助别人，真的很开心。义务献血活动是倡导和谐、奉献爱心的一项活动，以后有此类的活动，他们还要积极参与。(缪克梯)', N'hsg', N'upload/sytp5.jpg', 42, NULL, CAST(0x0000ABA2001A3992 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (16, N'钱库镇关于大魁桥头贩假治安乱点专项整治工作方案', N'站内新闻', N'<DIV align=center>&nbsp;</DIV>
<DIV>&nbsp;&nbsp;&nbsp; 为了严厉打击制贩假违法犯罪活动，彻底摧毁钱库大魁桥头贩假地下分销网络及零售市场，有效遏制地下贩假活动猖獗的现象，消除社会治安隐患，规范市场经济秩序，按照标本兼治，着力治本的工作方针，结合钱库镇辖区工作实际，特制定钱库镇大魁桥头贩假治安乱点专项整治方案如下：</DIV>
<DIV><B>一、指导思想：</B>以上级机关关于进一步规范市场经济秩序工作精神为指导，针对大魁桥假币、假发票违法犯罪突出问题</DIV>', N'hsg', N'upload/sytp1.jpg', 71, NULL, CAST(0x0000ABA2001A3992 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (17, N'叙利亚首个高官辞职 抗议政府军杀害数百示威者', N'站内新闻', N'<SPAN id=content>&nbsp;
<P align=center><A href="http://news.xinhuanet.com/world/2011-09/02/c_121949811_2.htm"><IMG id={3A2D42F9-4FDC-4E1F-9B52-3A617E5E1EC9} title="" style="WIDTH: 500px; HEIGHT: 356px" src="http://news.xinhuanet.com/world/2011-09/02/121949811_11n.jpg" align=center border=0 sourcedescription="编辑提供的本地文件" sourcename="本地文件"></A></P>
<P align=center><FONT face=楷体_GB2312 color=navy>叙利亚漫画家因讽刺政府遭毒打</FONT></P>
<P>　　当地时间8月31日晚，叙利亚一名高官宣布辞职，以抗议政府军杀害数百名示威者。叙利亚政府回应称，这名高官被恐怖分子胁迫才辞职的。</P>
<P><STRONG>　　哈马枪炮声不断</STRONG></P>
<P>　　从上个月开始，叙利亚政府军在西北部的哈马市与反对派分子展开交火，至今双方的冲突还没有停歇。反对派指责政府军滥杀无辜，并在哈马市大肆搜捕。政府则指责反对派中混入“恐怖主义分子”，政府军需要肃清。</P>
<P>　　据悉，目前已有数百人在哈马冲突中丧生。联合国公布的消息显示，自2月以来叙利亚反政府游行示威和抗议活动，已经造成2200人死亡。美国和欧洲已经宣布对叙利亚政府和高官实施制裁，联合国人权理事会也呼吁对哈马冲突进行调查。</P>
<P>　　目前，哈马的冲突仍未结束。9月1日，哈马不少地区还能听到枪炮声。</P>
<P><STRONG>　　为首个辞职高官</STRONG></P>
<P>　　8月31日晚，哈马省总检察长巴库尔宣布辞职。“我，哈马省总检察长，穆罕默德·巴库尔宣布从巴沙尔·阿萨德政府及其团队中辞职。”他说，之所以做出这个决定，是因为哈马市的数百名示威者被打死，另有1万多人被捕。</P>
<P>　　不过叙利亚官方媒体报道称，巴库尔在上班途中被人绑架，其辞职声明就是在绑匪的威胁下做出的。</P>
<P>　　这是叙利亚冲突爆发以来，首个重量级官员辞职。分析人士称，叙利亚政府担心，巴库尔的辞职声明可能会形成“多米诺骨牌效应”。（张乐）</P>
<CENTER></SPAN></CENTER>', N'hsg', N'upload/sytp2.jpg', 12, NULL, CAST(0x0000ABA2001A3992 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (18, N'埃及总统任命新央行行长', N'站内新闻', N'&nbsp;&nbsp; &nbsp;新华网开罗１月１０日电（记者田栋栋　李姝莛）<SPAN style="CURSOR: hand; COLOR: #0084d8; BORDER-BOTTOM: 0px dotted; TEXT-DECORATION: underline" name="HL_TAG">埃及</SPAN>总统发言人阿里１０日晚宣布，埃及总统穆尔西决定接受现任央行行长法鲁克·奥克达递交的辞呈，任命前央行副行长希沙姆·拉米兹为新的央行行长。
<P>&nbsp;&nbsp;&nbsp;&nbsp;阿里当天在与新旧行长联合举行的记者会上说，<SPAN style="CURSOR: hand; COLOR: #0084d8; BORDER-BOTTOM: 0px dotted; TEXT-DECORATION: underline" name="HL_TAG">奥克达</SPAN>将在２月２日正式卸任，拉米兹将在２月３日上任。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;奥克达在记者会上说，他早在去年底就已决定辞职。对于外界有关他是因与总理甘迪勒关系不和而下台的猜测，奥克达予以否认，称甘迪勒是自己的“好朋友”。奥克达重申，目前<SPAN style="CURSOR: hand; COLOR: #0084d8; BORDER-BOTTOM: 0px dotted; TEXT-DECORATION: underline" name="HL_TAG">埃镑</SPAN>兑美元的低汇率在央行的预料之中，“一切都在可控范围之内”。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;拉米兹对奥克达近十年来在央行的工作表示赞赏，称自己将延续他的改革精神，重振埃及经济。拉米兹曾在２００８年至２０１１年间担任央行<SPAN style="CURSOR: hand; COLOR: #0084d8; BORDER-BOTTOM: 0px dotted; TEXT-DECORATION: underline" name="HL_TAG">副行长</SPAN>，</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;埃及<SPAN style="CURSOR: hand; COLOR: #0084d8; BORDER-BOTTOM: 0px dotted; TEXT-DECORATION: underline" name="HL_TAG">央行</SPAN>去年１２月３０日宣布采取拍卖美元以维持外汇储备的新货币战略。１０天来，埃及央行已经拍卖了６批美元，每批拍卖额度在６０００万至８０００万美元之间。埃镑对美元的拍卖价格连续大幅下跌，受此影响，埃及市场埃镑与美元的兑换价格近来也急剧下跌。１２月中下旬，开罗各兑换点美元与埃镑的价格约为１比６.１６５，而目前已经急剧跌至１比６.５上下。</P>', N'hsg', N'upload/sytp3.jpg', 88, NULL, CAST(0x0000ABA2001A3992 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (19, N'钱库旅游', N'站内新闻', N'<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-INDENT: 24pt; mso-char-indent-count: 2.0"><SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri">钱库是一个有悠久而深厚历史底蕴的江南名镇，被誉为“千年钱王福地，百里江南水乡”。</SPAN><SPAN lang=EN-US style="FONT-SIZE: 12pt"><FONT face=Calibri>1997</FONT></SPAN><SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri">年，沉睡在桐桥山岙</SPAN><SPAN lang=EN-US style="FONT-SIZE: 12pt"><FONT face=Calibri>4000</FONT></SPAN><SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri">多年的石棚墓群被文物考古专家发现，经考证为新石器时代晚期或旧铁器时代早期的古东夷人墓葬遗址，距今已有三、四千年的历史。据现居民的族谱记载，早在五代时期的公元</SPAN><SPAN lang=EN-US style="FONT-SIZE: 12pt"><FONT face=Calibri>941</FONT></SPAN><SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri">年和</SPAN><SPAN lang=EN-US style="FONT-SIZE: 12pt"><FONT face=Calibri>942</FONT></SPAN><SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri">年，钱库的项家桥、李家堡始祖就迁居来此居住，此后不断有新的姓氏移民迁入，经一千多年的繁衍发展，现居民有</SPAN><SPAN lang=EN-US style="FONT-SIZE: 12pt"><FONT face=Calibri>7</FONT></SPAN><SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri">万多人口。</SPAN><SPAN lang=EN-US style="FONT-SIZE: 12pt"><?xml:namespace prefix = o ns = "urn:schemas-microsoft-com:office:office" /><o:p></o:p></SPAN></P>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-INDENT: 21pt"><SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri">钱库的旅游资源非常丰富。历史名人有夏口吴荣烈故居，项家桥武状元纪念馆，现代名人有苏渊雷纪念馆，林夫纪念馆，李锐夫故居。生态观光旅游资源主要分布在项桥办事处的各村落，其中林家塔村的“龙井景区”，打铁山的怪岩奇洞“稻桶洞”可谓山水之一绝。在这周边，还可以略览文保名寺灵鹫寺及古建筑单檐塔，桐桥石棚墓群。</SPAN><SPAN lang=EN-US style="FONT-SIZE: 12pt"><o:p></o:p></SPAN></P>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-INDENT: 21pt"><SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri">假以一日的旅程，我们将指点你游历钱库的名胜景观，愉悦身心。</SPAN><SPAN lang=EN-US style="FONT-SIZE: 12pt"><o:p></o:p></SPAN></P>
<P class=ListParagraph style="MARGIN: 0cm 0cm 0pt 39pt; TEXT-INDENT: -18pt; mso-char-indent-count: 0; mso-list: l0 level1 lfo1"><SPAN lang=EN-US style="FONT-SIZE: 12pt; mso-fareast-font-family: Calibri; mso-bidi-font-family: Calibri"><SPAN style="mso-list: Ignore"><FONT face=Calibri size=3>1.</FONT><SPAN style="FONT: 7pt &#39;Times New Roman&#39;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </SPAN></SPAN></SPAN><SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri">从钱库镇政府所在地出发，略览钱库公园“梦园”，公园内苏润雷纪念馆，老干部活动中心，瑞云道观，青少年旱冰场，儿童游乐场，以及群众性体育休闲场所，出口还有民间活动胜地“会龙宫”。</SPAN><SPAN lang=EN-US style="FONT-SIZE: 12pt"><o:p></o:p></SPAN></P>
<P class=ListParagraph style="MARGIN: 0cm 0cm 0pt 39pt; TEXT-INDENT: -18pt; mso-char-indent-count: 0; mso-list: l0 level1 lfo1"><SPAN lang=EN-US style="FONT-SIZE: 12pt; mso-fareast-font-family: Calibri; mso-bidi-font-family: Calibri"><SPAN style="mso-list: Ignore"><FONT face=Calibri size=3>2.</FONT><SPAN style="FONT: 7pt &#39;Times New Roman&#39;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </SPAN></SPAN></SPAN><SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri">从公园出来以后往繁荣的古街，东西街过“大魁桥”（文保）至横街埠头坐“长船”去景区。长船延瀛水逆流而上。途经小河川底略览现代农庄“河川别墅”，到“项家桥”（文保）上岸。去参观南宋期间“文取科第，武试夺魁”的武状元之项桂发纪念馆（文保）。</SPAN><SPAN lang=EN-US style="FONT-SIZE: 12pt"><o:p></o:p></SPAN></P>
<P class=ListParagraph style="MARGIN: 0cm 0cm 0pt 39pt; TEXT-INDENT: -18pt; mso-char-indent-count: 0; mso-list: l0 level1 lfo1"><SPAN lang=EN-US style="FONT-SIZE: 12pt; mso-fareast-font-family: Calibri; mso-bidi-font-family: Calibri"><SPAN style="mso-list: Ignore"><FONT face=Calibri size=3>3.</FONT><SPAN style="FONT: 7pt &#39;Times New Roman&#39;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </SPAN></SPAN></SPAN><SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri">之后，仍坐“长船”</SPAN><SPAN style="FONT-SIZE: 12pt"><FONT face=Calibri> </FONT></SPAN><SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri">溯水至桐桥，沿着清洌的河水，漫步浏览两岸田园风光，经“宋桥”（文保），</SPAN><SPAN style="FONT-SIZE: 12pt"><FONT face=Calibri> </FONT></SPAN><SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri">瞻观古刹灵鹫寺遗迹和古建筑单檐塔（文保）。如有体力，可翻爬桐桥岭进入濛洲山景区。</SPAN><SPAN lang=EN-US style="FONT-SIZE: 12pt"><o:p></o:p></SPAN></P>
<P class=ListParagraph style="MARGIN: 0cm 0cm 0pt 39pt; TEXT-INDENT: -18pt; mso-char-indent-count: 0; mso-list: l0 level1 lfo1"><SPAN lang=EN-US style="FONT-SIZE: 12pt; mso-fareast-font-family: Calibri; mso-bidi-font-family: Calibri"><SPAN style="mso-list: Ignore"><FONT face=Calibri size=3>4.</FONT><SPAN style="FONT: 7pt &#39;Times New Roman&#39;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </SPAN></SPAN></SPAN><SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri">沿着灵鹫寺的山边</SPAN><SPAN lang=EN-US style="FONT-SIZE: 12pt"><FONT face=Calibri>,</FONT></SPAN><SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri">绕进林家塔的龙井景区。看瀑布、龙潭、老靠。选择安全避风场所，挖红薯，摘野菜，捞螺虾野炊。之后过田龙坪，绕望尖顶，参观稻桶洞。之后，深入幽谷，进入林木繁茂的林家塔岙底幽谷。</SPAN><SPAN lang=EN-US style="FONT-SIZE: 12pt"><o:p></o:p></SPAN></P>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt 45pt; TEXT-INDENT: -24pt; mso-char-indent-count: -2.0; mso-para-margin-left: 2.0gd"><SPAN lang=EN-US style="FONT-SIZE: 12pt"><FONT face=Calibri>5.<SPAN style="mso-spacerun: yes"><FONT size=3>&nbsp; </FONT></SPAN></FONT></SPAN><SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri">从稻桶洞下山以后到林家塔，看一看林夫纪念馆，听一听林夫事迹的介绍，再坐车去夏口参观历史名人吴荣烈的故居，欣赏“司马第”（文保）的荣耀和“百福百寿图”的文化艺术。</SPAN><SPAN lang=EN-US style="FONT-SIZE: 12pt"><o:p></o:p></SPAN></P>', N'hsg', N'upload/sytp4.jpg', 6, NULL, CAST(0x0000ABA2001A3992 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (20, N'钱库举办2011年度公务员更新考试', N'站内新闻', N'&nbsp;&nbsp;&nbsp; 12月24日，钱库镇在政府举办2011年度公务员更新考试，全镇干部参加参加。考试场上，鸦雀无声，大家都在专心致志的和试卷奋斗着。（钱宣）', N'hsg', N'upload/sytp5.jpg', 52, NULL, CAST(0x0000ABA2001A3992 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (21, N'筑牢夏季“防火墙”（图）', N'购物需知', N'<DIV align=center>
<DIV align=center><SPAN><IMG id=no_img border=0 src="http://pic2.66wz.com/0/10/79/16/10791665_475916.jpg" width=610 height=406></SPAN></DIV>
<DIV align=center>&nbsp;</DIV></DIV>
<P><!--epe-->&nbsp;&nbsp;&nbsp; 苍南新闻网5月28日消息：今天，《全民消防安全宣传教育纲要》宣传周活动启动仪式在县城人民广场举行。县公安消防局现场摆设消防安全知识咨询台，发放宣传资料，讲授消防安全知识等。（李士明/摄）</P>', N'hsg', N'upload/sytp1.jpg', 75, NULL, CAST(0x0000ABA2001A3992 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (22, N'钱库镇项桥社区服务中心办公楼工程招标公告', N'购物需知', N'<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-INDENT: 218.65pt; mso-char-indent-count: 9.9"><B><SPAN style="FONT-SIZE: 22pt; FONT-FAMILY: 宋体; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">招</SPAN></B><B><SPAN lang=EN-US style="FONT-SIZE: 22pt"><SPAN style="mso-spacerun: yes"><FONT face="Times New Roman" size=6>&nbsp; </FONT></SPAN></SPAN></B><B><SPAN style="FONT-SIZE: 22pt; FONT-FAMILY: 宋体; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">标</SPAN></B><B><SPAN lang=EN-US style="FONT-SIZE: 22pt"><SPAN style="mso-spacerun: yes"><FONT face="Times New Roman" size=6>&nbsp; </FONT></SPAN></SPAN></B><B><SPAN style="FONT-SIZE: 22pt; FONT-FAMILY: 宋体; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">公</SPAN></B><B><SPAN lang=EN-US style="FONT-SIZE: 22pt"><SPAN style="mso-spacerun: yes"><FONT face="Times New Roman" size=6>&nbsp; </FONT></SPAN></SPAN></B><B><SPAN style="FONT-SIZE: 22pt; FONT-FAMILY: 宋体; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">告</SPAN></B><B><SPAN style="FONT-SIZE: 16pt; FONT-FAMILY: 宋体; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">（第二次招标）</SPAN></B><B><SPAN lang=EN-US style="FONT-SIZE: 16pt"><?xml:namespace prefix = o ns = "urn:schemas-microsoft-com:office:office" /><o:p></o:p></SPAN></B></P>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-ALIGN: center" align=center><FONT size=3><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">本项目经苍南县钱库镇招投标中心备案，发布以下招标公告</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><o:p></o:p></SPAN></B></FONT></P>
<DIV align=center>
<TABLE class=MsoNormalTable style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; WIDTH: 472.6pt; BORDER-BOTTOM: medium none; BORDER-COLLAPSE: collapse; mso-border-alt: solid windowtext .5pt; mso-padding-alt: 0cm 0cm 0cm 0cm; mso-border-insideh: .5pt solid windowtext; mso-border-insidev: .5pt solid windowtext" cellSpacing=0 cellPadding=0 width=630 border=1>
<TBODY>
<TR style="HEIGHT: 26.25pt; mso-yfti-irow: 0; mso-yfti-firstrow: yes">
<TD style="BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 0cm; BORDER-TOP: windowtext 1pt solid; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; BORDER-LEFT: windowtext 1pt solid; WIDTH: 472.6pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 26.25pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid windowtext .5pt" width=630 colSpan=5>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-ALIGN: center" align=center><FONT size=3><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">招标单位</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><o:p></o:p></SPAN></B></FONT></P></TD></TR>
<TR style="HEIGHT: 26.25pt; mso-yfti-irow: 1">
<TD style="BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 0cm; BORDER-TOP: #ece9d8; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; BORDER-LEFT: windowtext 1pt solid; WIDTH: 472.6pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 26.25pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt" width=630 colSpan=5>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-ALIGN: center" align=center><FONT size=3><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">钱库镇人民政府</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><o:p></o:p></SPAN></B></FONT></P></TD></TR>
<TR style="HEIGHT: 26.25pt; mso-yfti-irow: 2">
<TD style="BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 0cm; BORDER-TOP: #ece9d8; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; BORDER-LEFT: windowtext 1pt solid; WIDTH: 472.6pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 26.25pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt" width=630 colSpan=5>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-ALIGN: center" align=center><FONT size=3><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">招标项目情况</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><o:p></o:p></SPAN></B></FONT></P></TD></TR>
<TR style="HEIGHT: 26.25pt; mso-yfti-irow: 3">
<TD style="BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 0cm; BORDER-TOP: #ece9d8; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; BORDER-LEFT: windowtext 1pt solid; WIDTH: 94.6pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 26.25pt; BACKGROUND-COLOR: transparent; mso-border-left-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt" width=126>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-ALIGN: center" align=center><FONT size=3><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">项目名称</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><o:p></o:p></SPAN></B></FONT></P></TD>
<TD style="BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 0cm; BORDER-TOP: #ece9d8; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; BORDER-LEFT: #ece9d8; WIDTH: 378pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 26.25pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt" width=504 colSpan=4>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-INDENT: 36.15pt; mso-char-indent-count: 3.43"><FONT size=3><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><SPAN style="mso-spacerun: yes"><FONT face="Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp; </FONT></SPAN></SPAN></B><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">钱库镇项桥社区服务中心办公楼工程</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><o:p></o:p></SPAN></B></FONT></P></TD></TR>
<TR style="HEIGHT: 26.25pt; mso-yfti-irow: 4">
<TD style="BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 0cm; BORDER-TOP: #ece9d8; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; BORDER-LEFT: windowtext 1pt solid; WIDTH: 94.6pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 26.25pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt" width=126>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-ALIGN: center" align=center><FONT size=3><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">招标编号</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><o:p></o:p></SPAN></B></FONT></P></TD>
<TD style="BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 0cm; BORDER-TOP: #ece9d8; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; BORDER-LEFT: #ece9d8; WIDTH: 378pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 26.25pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt" width=504 colSpan=4>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-INDENT: 108.25pt; mso-char-indent-count: 10.27"><FONT size=3><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">QK</FONT></SPAN></B><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">（</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">2011</FONT></SPAN></B><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">）</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">015<o:p></o:p></FONT></SPAN></B></FONT></P></TD></TR>
<TR style="HEIGHT: 26.25pt; mso-yfti-irow: 5">
<TD style="BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 0cm; BORDER-TOP: #ece9d8; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; BORDER-LEFT: windowtext 1pt solid; WIDTH: 94.6pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 26.25pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt" width=126>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-ALIGN: center" align=center><FONT size=3><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">建设地点</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><o:p></o:p></SPAN></B></FONT></P></TD>
<TD style="BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 0cm; BORDER-TOP: #ece9d8; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; BORDER-LEFT: #ece9d8; WIDTH: 378pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 26.25pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt" width=504 colSpan=4>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-INDENT: 108.25pt; mso-char-indent-count: 10.27"><FONT size=3><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">钱库镇项桥办事处</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><o:p></o:p></SPAN></B></FONT></P></TD></TR>
<TR style="HEIGHT: 26.25pt; mso-yfti-irow: 6">
<TD style="BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 0cm; BORDER-TOP: #ece9d8; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; BORDER-LEFT: windowtext 1pt solid; WIDTH: 94.6pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 26.25pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt" width=126>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-ALIGN: center" align=center><FONT size=3><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">招标种类</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><o:p></o:p></SPAN></B></FONT></P></TD>
<TD style="BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 0cm; BORDER-TOP: #ece9d8; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; BORDER-LEFT: #ece9d8; WIDTH: 148.55pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 26.25pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt" width=198>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-ALIGN: center" align=center><FONT size=3><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">建筑工程</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><o:p></o:p></SPAN></B></FONT></P></TD>
<TD style="BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 0cm; BORDER-TOP: #ece9d8; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; BORDER-LEFT: #ece9d8; WIDTH: 71.05pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 26.25pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt" width=95>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-ALIGN: center" align=center><FONT size=3><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">投资总额</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><o:p></o:p></SPAN></B></FONT></P></TD>
<TD style="BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 0cm; BORDER-TOP: #ece9d8; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; BORDER-LEFT: #ece9d8; WIDTH: 158.4pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 26.25pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt" width=211 colSpan=2>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-ALIGN: center" align=center><FONT size=3><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">约</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">73.64</FONT></SPAN></B><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">万元（</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">RMB</FONT></SPAN></B><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">）</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><o:p></o:p></SPAN></B></FONT></P></TD></TR>
<TR style="HEIGHT: 26.25pt; mso-yfti-irow: 7">
<TD style="BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 0cm; BORDER-TOP: #ece9d8; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; BORDER-LEFT: windowtext 1pt solid; WIDTH: 94.6pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 26.25pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt" width=126>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-ALIGN: center" align=center><FONT size=3><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">工程概况</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><o:p></o:p></SPAN></B></FONT></P></TD>
<TD style="BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 0cm; BORDER-TOP: #ece9d8; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; BORDER-LEFT: #ece9d8; WIDTH: 148.55pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 26.25pt; BACKGROUND-COLOR: transparent; mso-border-left-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt" width=198>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-ALIGN: center" align=center><FONT size=3><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">见图纸</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><o:p></o:p></SPAN></B></FONT></P></TD>
<TD style="BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 0cm; BORDER-TOP: #ece9d8; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; BORDER-LEFT: #ece9d8; WIDTH: 71.05pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 26.25pt; BACKGROUND-COLOR: transparent; mso-border-left-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt" width=95>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-ALIGN: center" align=center><FONT size=3><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">工程下浮率</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><o:p></o:p></SPAN></B></FONT></P></TD>
<TD style="BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 0cm; BORDER-TOP: #ece9d8; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; BORDER-LEFT: #ece9d8; WIDTH: 158.4pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 26.25pt; BACKGROUND-COLOR: transparent; mso-border-left-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt" width=211 colSpan=2>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-ALIGN: center" align=center><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT size=3><FONT face="Times New Roman">20%--23%<o:p></o:p></FONT></FONT></SPAN></B></P></TD></TR>
<TR style="HEIGHT: 26.25pt; mso-yfti-irow: 8">
<TD style="BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 0cm; BORDER-TOP: #ece9d8; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; BORDER-LEFT: windowtext 1pt solid; WIDTH: 94.6pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 26.25pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt" width=126>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-ALIGN: center" align=center><FONT size=3><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">招标方式</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><o:p></o:p></SPAN></B></FONT></P></TD>
<TD style="BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 0cm; BORDER-TOP: #ece9d8; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; BORDER-LEFT: #ece9d8; WIDTH: 148.55pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 26.25pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt" width=198>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-ALIGN: center" align=center><FONT size=3><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">公开招标</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><o:p></o:p></SPAN></B></FONT></P></TD>
<TD style="BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 0cm; BORDER-TOP: #ece9d8; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; BORDER-LEFT: #ece9d8; WIDTH: 71.05pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 26.25pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt" width=95>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-ALIGN: center" align=center><FONT size=3><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">计划工期</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><o:p></o:p></SPAN></B></FONT></P></TD>
<TD style="BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 0cm; BORDER-TOP: #ece9d8; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; BORDER-LEFT: #ece9d8; WIDTH: 158.4pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 26.25pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt" width=211 colSpan=2>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-ALIGN: center" align=center><FONT size=3><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">100</FONT></SPAN></B><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">历天</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><o:p></o:p></SPAN></B></FONT></P></TD></TR>
<TR style="HEIGHT: 25pt; mso-yfti-irow: 9">
<TD style="BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 0cm; BORDER-TOP: #ece9d8; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; BORDER-LEFT: windowtext 1pt solid; WIDTH: 472.6pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 25pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt" width=630 colSpan=5>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-ALIGN: center" align=center><FONT size=3><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">联系方法</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><o:p></o:p></SPAN></B></FONT></P></TD></TR>
<TR style="HEIGHT: 26.25pt; mso-yfti-irow: 10">
<TD style="BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 0cm; BORDER-TOP: #ece9d8; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; BORDER-LEFT: windowtext 1pt solid; WIDTH: 94.6pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 26.25pt; BACKGROUND-COLOR: transparent; mso-border-left-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt" width=126>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-ALIGN: center" align=center><FONT size=3><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">联系人</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><o:p></o:p></SPAN></B></FONT></P></TD>
<TD style="BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 0cm; BORDER-TOP: #ece9d8; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; BORDER-LEFT: #ece9d8; WIDTH: 148.55pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 26.25pt; BACKGROUND-COLOR: transparent; mso-border-left-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt" width=198>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-ALIGN: center" align=center><FONT size=3><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">陈先生</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><o:p></o:p></SPAN></B></FONT></P></TD>
<TD style="BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 0cm; BORDER-TOP: #ece9d8; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; BORDER-LEFT: #ece9d8; WIDTH: 73.5pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 26.25pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt" width=98 colSpan=2>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-ALIGN: center" align=center><FONT size=3><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">联系电话</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><o:p></o:p></SPAN></B></FONT></P></TD>
<TD style="BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 0cm; BORDER-TOP: #ece9d8; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; BORDER-LEFT: #ece9d8; WIDTH: 155.95pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 26.25pt; BACKGROUND-COLOR: transparent; mso-border-left-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt" width=208>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-ALIGN: center" align=center><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT size=3><FONT face="Times New Roman">0577-68520031<o:p></o:p></FONT></FONT></SPAN></B></P></TD></TR>
<TR style="HEIGHT: 26.25pt; mso-yfti-irow: 11">
<TD style="BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 0cm; BORDER-TOP: #ece9d8; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; BORDER-LEFT: windowtext 1pt solid; WIDTH: 94.6pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 26.25pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt" width=126>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-ALIGN: center" align=center><FONT size=3><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">传真</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><o:p></o:p></SPAN></B></FONT></P></TD>
<TD style="BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 0cm; BORDER-TOP: #ece9d8; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; BORDER-LEFT: #ece9d8; WIDTH: 148.55pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 26.25pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt" width=198>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-ALIGN: center" align=center><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT size=3><FONT face="Times New Roman">0577-64498707<o:p></o:p></FONT></FONT></SPAN></B></P></TD>
<TD style="BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 0cm; BORDER-TOP: #ece9d8; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; BORDER-LEFT: #ece9d8; WIDTH: 73.5pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 26.25pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt" width=98 colSpan=2>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-ALIGN: center" align=center><FONT size=3><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">资质要求</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><o:p></o:p></SPAN></B></FONT></P></TD>
<TD style="BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 0cm; BORDER-TOP: #ece9d8; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; BORDER-LEFT: #ece9d8; WIDTH: 155.95pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 26.25pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt" width=208>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-ALIGN: center" align=center><FONT size=3><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">县内建筑工程三级及以上</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><o:p></o:p></SPAN></B></FONT></P></TD></TR>
<TR style="HEIGHT: 22.05pt; mso-yfti-irow: 12">
<TD style="BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 0cm; BORDER-TOP: #ece9d8; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; BORDER-LEFT: windowtext 1pt solid; WIDTH: 472.6pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 22.05pt; BACKGROUND-COLOR: transparent; mso-border-left-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt" width=630 colSpan=5>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-ALIGN: center" align=center><FONT size=3><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">报名</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><o:p></o:p></SPAN></B></FONT></P></TD></TR>
<TR style="HEIGHT: 36pt; mso-yfti-irow: 13">
<TD style="BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 0cm; BORDER-TOP: #ece9d8; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; BORDER-LEFT: windowtext 1pt solid; WIDTH: 94.6pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 36pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt" width=126>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-ALIGN: center" align=center><FONT size=3><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">图纸与技术资</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><o:p></o:p></SPAN></B></FONT></P>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-ALIGN: center" align=center><FONT size=3><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">料发布时间</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><o:p></o:p></SPAN></B></FONT></P></TD>
<TD style="BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 0cm; BORDER-TOP: #ece9d8; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; BORDER-LEFT: #ece9d8; WIDTH: 148.55pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 36pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt" width=198>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-ALIGN: center" align=center><FONT size=3><?xml:namespace prefix = st1 ns = "urn:schemas-microsoft-com:office:smarttags" /><st1:chsdate w:st="on" Year="2011" Month="09" Day="29" IsLunarDate="False" IsROCDate="False"><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">2011</FONT></SPAN></B><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">年</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">09</FONT></SPAN></B><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">月</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">29</FONT></SPAN></B><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">日</SPAN></B></st1:chsdate><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">—</FONT><st1:chsdate w:st="on" Year="2011" Month="10" Day="10" IsLunarDate="False" IsROCDate="False"><FONT face="Times New Roman">10</FONT><SPAN lang=EN-US style="FONT-FAMILY: 宋体; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;"><SPAN lang=EN-US>月</SPAN></SPAN><FONT face="Times New Roman">10</FONT><SPAN lang=EN-US style="FONT-FAMILY: 宋体; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;"><SPAN lang=EN-US>日</SPAN></SPAN></st1:chsdate><SPAN lang=EN-US style="FONT-FAMILY: 宋体; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">上午：</SPAN><FONT face="Times New Roman">08:30</FONT></SPAN></B><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">－</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">11:00<o:p></o:p></FONT></SPAN></B></FONT></P>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-ALIGN: center" align=center><FONT size=3><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">下午：</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">14:00</FONT></SPAN></B><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">－</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">16:30<o:p></o:p></FONT></SPAN></B></FONT></P></TD>
<TD style="BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 0cm; BORDER-TOP: #ece9d8; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; BORDER-LEFT: #ece9d8; WIDTH: 71.05pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 36pt; BACKGROUND-COLOR: transparent; mso-border-left-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt" width=95>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-ALIGN: center" align=center><FONT size=3><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">报名时间</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><o:p></o:p></SPAN></B></FONT></P></TD>
<TD style="BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 0cm; BORDER-TOP: #ece9d8; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; BORDER-LEFT: #ece9d8; WIDTH: 158.4pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 36pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt" width=211 colSpan=2>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt"><FONT size=3><st1:chsdate w:st="on" Year="2011" Month="09" Day="29" IsLunarDate="False" IsROCDate="False"><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">2011</FONT></SPAN></B><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">年</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">09</FONT></SPAN></B><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">月</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">29</FONT></SPAN></B><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">日</SPAN></B></st1:chsdate><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">---</FONT><st1:chsdate w:st="on" Year="2011" Month="10" Day="10" IsLunarDate="False" IsROCDate="False"><FONT face="Times New Roman">10</FONT><SPAN lang=EN-US style="FONT-FAMILY: 宋体; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;"><SPAN lang=EN-US>月</SPAN></SPAN><FONT face="Times New Roman">10</FONT><SPAN lang=EN-US style="FONT-FAMILY: 宋体; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;"><SPAN lang=EN-US>日</SPAN></SPAN></st1:chsdate><SPAN lang=EN-US style="FONT-FAMILY: 宋体; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">上午：</SPAN><FONT face="Times New Roman">08:30</FONT></SPAN></B><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">－</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">11:00</FONT></SPAN></B><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">下午：</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">14:00</FONT></SPAN></B><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">－</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">16:30</FONT></SPAN></B><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">（国庆放假</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">7</FONT></SPAN></B><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">天）</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><o:p></o:p></SPAN></B></FONT></P></TD></TR>
<TR style="HEIGHT: 21.75pt; mso-yfti-irow: 14">
<TD style="BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 0cm; BORDER-TOP: #ece9d8; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; BORDER-LEFT: windowtext 1pt solid; WIDTH: 94.6pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 21.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt" width=126>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-ALIGN: center" align=center><FONT size=3><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">报名截止时间</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><o:p></o:p></SPAN></B></FONT></P></TD>
<TD style="BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 0cm; BORDER-TOP: #ece9d8; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; BORDER-LEFT: #ece9d8; WIDTH: 148.55pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 21.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt" width=198>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-ALIGN: center" align=center><FONT size=3><st1:chsdate w:st="on" Year="2011" Month="10" Day="10" IsLunarDate="False" IsROCDate="False"><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">2011</FONT></SPAN></B><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">年</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">10</FONT></SPAN></B><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">月</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">10</FONT></SPAN></B><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">日</SPAN></B></st1:chsdate><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">下午：</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">16:30<o:p></o:p></FONT></SPAN></B></FONT></P></TD>
<TD style="BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 0cm; BORDER-TOP: #ece9d8; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; BORDER-LEFT: #ece9d8; WIDTH: 71.05pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 21.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt" width=95>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-ALIGN: center" align=center><FONT size=3><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">投标保证金</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><o:p></o:p></SPAN></B></FONT></P></TD>
<TD style="BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 0cm; BORDER-TOP: #ece9d8; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; BORDER-LEFT: #ece9d8; WIDTH: 158.4pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 21.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt" width=211 colSpan=2>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-ALIGN: center" align=center><FONT size=3><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">贰万元</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><o:p></o:p></SPAN></B></FONT></P></TD></TR>
<TR style="HEIGHT: 26.25pt; mso-yfti-irow: 15">
<TD style="BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 0cm; BORDER-TOP: #ece9d8; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; BORDER-LEFT: windowtext 1pt solid; WIDTH: 94.6pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 26.25pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt" width=126>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-ALIGN: center" align=center><FONT size=3><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">报名地点</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><o:p></o:p></SPAN></B></FONT></P></TD>
<TD style="BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 0cm; BORDER-TOP: #ece9d8; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; BORDER-LEFT: #ece9d8; WIDTH: 378pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 26.25pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt" width=504 colSpan=4>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-ALIGN: center" align=center><FONT size=3><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">苍南县钱库镇招投标中心</SPAN></B><B><SPAN style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman"> <SPAN lang=EN-US>104</SPAN></FONT></SPAN></B><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">室</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">(</FONT></SPAN></B><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">钱库镇政府大院内</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">)<o:p></o:p></FONT></SPAN></B></FONT></P></TD></TR>
<TR style="HEIGHT: 28.85pt; mso-yfti-irow: 16">
<TD style="BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 0cm; BORDER-TOP: #ece9d8; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; BORDER-LEFT: windowtext 1pt solid; WIDTH: 472.6pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 28.85pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt" width=630 colSpan=5>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-ALIGN: center" align=center><FONT size=3><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">携带材料</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><o:p></o:p></SPAN></B></FONT></P></TD></TR>
<TR style="HEIGHT: 98pt; mso-yfti-irow: 17; mso-yfti-lastrow: yes">
<TD style="BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 0cm; BORDER-TOP: #ece9d8; PADDING-LEFT: 0cm; PADDING-BOTTOM: 0cm; BORDER-LEFT: windowtext 1pt solid; WIDTH: 472.6pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 98pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt" width=630 colSpan=5>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-ALIGN: center" align=center><FONT size=3><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">投标人携带施工单位资质证书、拟派施工班组人员名单、单位介绍信、个人身份证、</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><o:p></o:p></SPAN></B></FONT></P>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-ALIGN: center" align=center><FONT size=3><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">工程承包报名表、须提供原件复核，复印件盖章留档。</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><o:p></o:p></SPAN></B></FONT></P>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-ALIGN: center" align=center><FONT size=3><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">工程承包报名表下载地址：</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">http://www.cnqk.gov.cn/<o:p></o:p></FONT></SPAN></B></FONT></P>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-ALIGN: center" align=center><FONT size=3><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">须知</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">:</FONT></SPAN></B><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">当报名企业多于</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">10</FONT></SPAN></B><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">家时</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">,</FONT></SPAN></B><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">抽签产生</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">7</FONT></SPAN></B><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">家正式投标人。</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><o:p></o:p></SPAN></B></FONT></P>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-ALIGN: center" align=center><FONT size=3><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">抽签时间为</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">2011</FONT></SPAN></B><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">年</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">10</FONT></SPAN></B><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">月</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">10</FONT></SPAN></B><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">日</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">16</FONT></SPAN></B><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">：</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT face="Times New Roman">30</FONT></SPAN></B><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">交易员携带身份证准时参加抽签，当天领取招标书。</SPAN></B><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><o:p></o:p></SPAN></B></FONT></P>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-INDENT: 158.1pt; mso-char-indent-count: 15.0"><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><o:p><FONT face="Times New Roman" size=3>&nbsp;</FONT></o:p></SPAN></B></P></TD></TR>
<TR height=0>
<TD style="BORDER-RIGHT: #ece9d8; BORDER-TOP: #ece9d8; BORDER-LEFT: #ece9d8; BORDER-BOTTOM: #ece9d8; BACKGROUND-COLOR: transparent" width=126><FONT face="Times New Roman" size=3></FONT></TD>
<TD style="BORDER-RIGHT: #ece9d8; BORDER-TOP: #ece9d8; BORDER-LEFT: #ece9d8; BORDER-BOTTOM: #ece9d8; BACKGROUND-COLOR: transparent" width=198><FONT face="Times New Roman" size=3></FONT></TD>
<TD style="BORDER-RIGHT: #ece9d8; BORDER-TOP: #ece9d8; BORDER-LEFT: #ece9d8; BORDER-BOTTOM: #ece9d8; BACKGROUND-COLOR: transparent" width=95><FONT face="Times New Roman" size=3></FONT></TD>
<TD style="BORDER-RIGHT: #ece9d8; BORDER-TOP: #ece9d8; BORDER-LEFT: #ece9d8; BORDER-BOTTOM: #ece9d8; BACKGROUND-COLOR: transparent" width=3><FONT face="Times New Roman" size=3></FONT></TD>
<TD style="BORDER-RIGHT: #ece9d8; BORDER-TOP: #ece9d8; BORDER-LEFT: #ece9d8; BORDER-BOTTOM: #ece9d8; BACKGROUND-COLOR: transparent" width=208><FONT face="Times New Roman" size=3></FONT></TD></TR></TBODY></TABLE></DIV>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-INDENT: 62.95pt; TEXT-ALIGN: center; mso-char-indent-count: 5.97" align=center><B><SPAN lang=EN-US><o:p><FONT face="Times New Roman" size=3>&nbsp;</FONT></o:p></SPAN></B></P>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-INDENT: 88.75pt; mso-char-indent-count: 8.42"><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><FONT size=3><FONT face="Times New Roman"><SPAN style="mso-spacerun: yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </SPAN><SPAN style="mso-spacerun: yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style="mso-spacerun: yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN style="mso-spacerun: yes">&nbsp;</SPAN><SPAN style="mso-spacerun: yes">&nbsp;</SPAN><SPAN style="mso-spacerun: yes">&nbsp;</SPAN><o:p></o:p></FONT></FONT></SPAN></B></P>
<P class=MsoNormal style="MARGIN: 0cm 0cm 0pt; TEXT-INDENT: 62pt; mso-char-indent-count: 5.88" align=right><FONT size=3><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">钱库镇人民政府<BR></SPAN></B></FONT><FONT size=3><B><SPAN style="FONT-FAMILY: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;">钱库镇招投标中心<BR></SPAN></B></FONT><B><SPAN lang=EN-US style="mso-bidi-font-size: 10.5pt"><st1:chsdate w:st="on" Year="2011" Month="09" Day="29" IsLunarDate="False" IsROCDate="False"><FONT size=3><FONT face="Times New Roman">2011</FONT><SPAN lang=EN-US style="FONT-FAMILY: 宋体; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;"><SPAN lang=EN-US>年</SPAN></SPAN><FONT face="Times New Roman">09</FONT><SPAN lang=EN-US style="FONT-FAMILY: 宋体; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;"><SPAN lang=EN-US>月</SPAN></SPAN><FONT face="Times New Roman">29</FONT><SPAN lang=EN-US style="FONT-FAMILY: 宋体; mso-ascii-font-family: &#39;Times New Roman&#39;; mso-hansi-font-family: &#39;Times New Roman&#39;"><SPAN lang=EN-US>日</SPAN></SPAN></FONT></st1:chsdate></SPAN></B></P>', N'hsg', N'upload/sytp2.jpg', 32, NULL, CAST(0x0000ABA2001A3992 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (23, N'全县中层女干部集中“充电”', N'购物需知', N'<P>&nbsp;&nbsp;&nbsp; 苍南新闻网6月7日消息：日前，县委组织部、县妇联和县委党校联合举办的全县中层女干部培训班开班。来自全县各乡镇、县级机关各部门的中层女干部及机关妇委会主任等117名女干部参加培训。</P>
<P>&nbsp;&nbsp;&nbsp; 据悉，此次培训为期三天。培训内容有，党的十八大精神、公共突发事件与政府危机管理、礼仪知识、传统文化、古村落保护与生态文明建设等几个板块。培训采用集中授课、专题研讨、参观考察、互动交流等形式进行。（星文 超群）</P>', N'hsg', N'upload/sytp3.jpg', 12, NULL, CAST(0x0000ABA2001A3992 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (24, N'温州市各县（市、区）固定资产投资情况通报', N'购物需知', N'<P align=center><STRONG>（2010年1-10月）</STRONG></P>
<P align=center>
<META name=ImageStart><IMG height=351 src="http://www.wenzhou.gov.cn/picture/0/101111081428021.jpg" width=446 border=0></P>', N'hsg', N'upload/sytp4.jpg', 74, NULL, CAST(0x0000ABA2001A3992 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (25, N'市发改委、市规划局征求利害关系人意见公告', N'购物需知', N'&nbsp;&nbsp;&nbsp; 申请人温州房地产联合开发有限公司向市发改委、市规划局提出申请，要求对松台大厦二层进行扩建，现将有关事项公告如下： 
<P>　　1、项目建设地点位于松台广场1-2号地块内，搭建建筑面积约499.01平方米，功能为商业，具体如附图所示。</P>
<P>　　2、根据《中国人民共和国行政许可法》第三十六条和省发展改革委关于印发《公示固定资产投资项目管理办法（试行）》的通知，凡是与本项目变更有利害关系的公民、法人以及其他组织，可在公告之日起7日内，持本人身份证件以及证明利害关系存在的证据材料（如本人房屋所有权证），向温州市发改委窗口、温州市规划局窗口（温州市惠明路光明桥东首市行政审批中心3楼）申报，依法行使陈述、申辩以及申请听证等权利。逾期不申报的，视为放弃上述权利。（联系电话：88926321、 88926316）</P>
<P>　　特此公告</P>
<P>　　 </P>
<P align=right>　　二O一O年九月十三日</P>
<P align=center><A href="http://www.wenzhou.gov.cn/picture/0/100914154130561.jpg"></A></P>
<P align=center><A href="http://www.wenzhou.gov.cn/picture/0/100914154130561.jpg">
<META name=ImageStart><IMG src="http://www.wenzhou.gov.cn/picture/0/s100914154130561.jpg" border=0> 
<META name=ImageEnd></A></P>
<META name=ContentEnd><!--ZJEG_RSS.content.end--><!--<$[信息内容]>end-->', N'hsg', N'upload/sytp5.jpg', 13, NULL, CAST(0x0000ABA2001A3992 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (26, N'恒天然确认雅培为此前要求保密涉事企业', N'购物需知', N'<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">昨天，国家质检总局表示，我国已对恒天然集团浓缩乳清蛋白粉和奶粉基粉两种原料无限期停止进口，直到污染事件完全解决。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">恒天然方面则确认雅培为事先要求不公布的企业。另外，新西兰总理表示，或将考虑为“毒奶粉”事件赴华。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px"><STRONG>说法</STRONG></P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px"><STRONG>恒天然</STRONG></P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px"><STRONG>雅培为最后一家牵连企业</STRONG></P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">据恒天然的公关公司提供的5日中午发布会的现场速记称，此次涉事的38吨浓缩乳清蛋白粉中有18吨为恒天然自己分别在澳大利亚和新西兰的工厂使用，最主要用来生产基粉，用于生产婴幼儿营养品。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">其中，澳大利亚工厂生产的产品涉及到两家生产婴儿营养制品的公司，除了已公开的拥有多美滋、可瑞康等品牌的达能外，另外一家公司则暂时不让恒天然提及它们的名字。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">那么这家不愿意提及名称的企业是否就是雅培？</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">对此，雅培方面昨天凌晨接受本报采访时给予了否认。其表示，首先雅培并未使用可能受到污染的原料，另外，雅培产品是在新西兰实施包装的，而不是在澳大利亚包装的。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">不过，昨天晚间，恒天然有关负责人郝晓红则向记者表示，这家不愿意提及名称的企业就是雅培，雅培的产品原料确实未涉及到这38吨问题浓缩乳清蛋白粉，只是受到了生产线的影响。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px"><STRONG>澄清两天内是“启动召回”</STRONG></P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">8月5日中午，恒天然首席执行官西奥·史毕根斯在北京的媒体发布会上表示：恒天然未来48小时内相关产品将会得到召回。对此说法，有消息引用涉事企业的表态称“这是不可能完成的任务”。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">而按照“48小时内相关产品得到召回”的说法，就意味着今天中午将是召回时间的最后时限。不过对于这种说法，恒天然方面有关负责人郝晓红昨天接受记者采访时则澄清表示：发布会现场可能存在翻译和速记的误解，48小时内指的是“启动召回和进行召回措施”，而非“完成召回”。至于何时完成召回，则需要一个过程和时间。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">郝晓红还表示，到8月6日凌晨雅培公布防御性召回措施时，所有涉事的企业名单得到了公布，其实在24小时内就全面启动了对相关产品的召回。</P><!--/enpcontent-->', N'hsg', N'upload/sytp1.jpg', 24, NULL, CAST(0x0000ABA2001A3992 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (27, N'温州知识产权学院揭牌成立', N'购物需知', N'<P>　　9月17日，温州知识产权学院揭牌成立，隶属浙江工贸职业学院，率先在高职教育层面建立“知识产权管理专业”。知识产权学院将致力于培养应用型经营管理实务人员，并将积极申报建设国家知识产权培训（<SPAN style="FONT-FAMILY: 楷体, 楷体_GB2312"><FONT face="">温州</FONT></SPAN>）基地。</P>
<P>　　温州知识产权学院由浙江工贸职业技术学院、温州市科技局（<SPAN style="FONT-FAMILY: 楷体, 楷体_GB2312"><FONT face="">知识产权局</FONT></SPAN>）和温州高新区管委会共同创建，是隶属浙工贸的“特区型”二级学院。</P>
<P>　　“所谓‘特区型’，是指该学院的日常工作根据理事会的安排开展，有相对的自主权。”学院负责人介绍，温州知识产权学院实行理事会领导下的院长负责制，理事会成员由浙工贸、温州市科技局（<SPAN style="FONT-FAMILY: 楷体, 楷体_GB2312"><FONT face="">温州市知识产权局</FONT></SPAN>）和温州高新区管委会派员共同组成；浙江工贸职业技术学院党委书记何向荣教授担任理事长，上海大学知识产权学院院长陶鑫良教授担任院长。</P>
<P>　　目前，我国本科院校对知识产权人才的培养，往往依托于法学学科，大多以培养知识产权法律人才为主。温州知识产权学院今年招收35名新生，就读工业设计专业知识产权方向，明年将正式以知识产权专业招生。</P>
<P>　　另外，9月17日，第七届全国知识产权人才培养研讨会在温州举行，研讨会由中国高校知识产权研究会、温州市科技局（<SPAN style="FONT-FAMILY: 楷体, 楷体_GB2312"><FONT face="">知识产权局</FONT></SPAN>）、浙江工贸职业技术学院和上海大学知识产权学院联合主办。来自北京大学、中国科学院等全国20多所高校和科研机构的近50名专家学者参加研讨。</P>
<P>　　副市长孔海龙出席揭牌仪式。</P>', N'hsg', N'upload/sytp2.jpg', 39, NULL, CAST(0x0000ABA2001A3992 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (28, N'受日本大地震影响 部分日系进口车悄然涨价', N'购物需知', N'&nbsp;&nbsp;&nbsp; 3月27日消息：笔者日前从我县一些车行了解到，日本地震对日系进口车均有影响，日产、丰田等公司的高端车涨价最为明显，部分型号涨了1万多元。
<P>&nbsp;&nbsp;&nbsp; 据龙港镇某大型车行的经销商介绍，日本地震发生后，丰田、日产的多处生产厂区受到了影响，日系进口车都有不同程度的涨价。从现在的价格情况看，丰田系列的几款进口车型上涨幅度最大，如凌志ES340涨价1.5万元左右。</P><!--advertisement code begin--><!--advertisement code end-->
<P>&nbsp;&nbsp;&nbsp; 笔者还了解到，合资的日系车大部分配件生产都在国内进行，地震对这类车辆的影响不大。业内人士表示，目前购买日系进口车的消费者也有所减少，涨价有可能进一步促使部分消费者转买其他品牌的车辆。（通讯员 杨敬棒 李绍琦）</P>', N'hsg', N'upload/sytp3.jpg', 19, NULL, CAST(0x0000ABA2001A3992 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (29, N'钱库镇开展“青山白化”行动  11座违规坟墓被拆', N'购物需知', N'&nbsp;&nbsp;&nbsp; 钱库镇开展青山白化专项整治行动，对护法寺调节水库一带的11座翻新、新建坟墓进行强制拆除，遏制“青山白化”回潮。镇领导杨雷、徐焕实到现场指导。<BR>&nbsp;&nbsp;&nbsp; 近段时间，钱库镇护法寺调节水库一带不同程度地出现了青山白化回潮的现象，许多村民利用夜间及双休日执法空挡，擅自偷偷的新建、翻新坟墓。记者现场看到，这些坟墓大都为椅子坟，占地面积都很大，有的用花岗岩镶嵌，装饰一新；有的刚用石头砌成水泥还没浇灌，各种建筑材料随处可见，有几座坟墓之间相隔还不到一米，对山体造成极大破坏。对此，钱库镇绝不手软，利用铁锹、铁锤等工具，将这些椅子坟一一拆除。<BR>&nbsp;&nbsp;&nbsp; 据了解，下一步该镇将把“青山白化”治理作为一项常态化工作来抓，加大对周边山体的巡查力度，狠刹新建、抢建私坟的歪风，还村民一个绿色的自然生态环境。(缪克梯)', N'hsg', N'upload/sytp4.jpg', 80, NULL, CAST(0x0000ABA2001A3992 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (30, N'温州6家企业入选第二批中华老字号名录', N'购物需知', N'&nbsp;&nbsp;&nbsp; 第二批保护与促进的中华老字号名录近日出炉，温一百等温州6家企业入选，迄此，温州共拥有8家“中华老字号”企业。 
<P>　　商务部此次公布的第二批中华老字号名录,共有703家企业获此殊荣。其中浙江省53家。 
<P>　　温州入选的6家企业分别是温州市第一百货商店创立于1950年的“温一百”、温州市金三益商店创立于1859年的“金三益”、温州医药商业集团老香山连锁有限公司老香山连锁总店创立于1868年的“老香山”、温州市五味和副食品商场创立于1880年的“五味和”、温州市县前汤圆店创立于1901年的“县前汤圆”、温州叶同仁医药连锁有限公司创立于1670年的“叶同仁”。据悉，2009年入选第一批中华老字号的有瑞安百好、瑞安李大同。&nbsp;</P><!--ZJEG_RSS.content.end-->', N'hsg', N'upload/sytp5.jpg', 97, NULL, CAST(0x0000ABA2001A3993 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (31, N'温州雁荡山入选国土资源科普基地', N'购物需知', N'<P>　　近日，国土资源部公布了我国第二批国土资源科普基地名单，浙江仅雁荡山世界地质公园、长兴地质遗迹国家级自然保护区入选，全国共有52个单位入选该名单。</P>
<P>　　据了解，国土资源科普基地是指能独立开展土地资源、矿产资源、海洋资源、基础地质、地质环境、地质灾害、测绘科技等国土资源领域国情教育和科学普及活动的科技场馆、科研实验基地、资源保护区等。开展国土资源科普基地建设主要是为了推动我国国土资源科普事业发展，充分发挥国土资源领域科技场馆、科研实验基地、资源保护区的科普作用。2009年，国土资源部开展首批国土资源科普基地名单命名工作，此次公布的是第二批名单。</P>
<P>　　国土资源科普基地包括科技场馆类、科研实验类、资源保护类三种类型。雁荡山世界地质公园作为资源保护类入选。（吕进科）</P>
<META name=ContentEnd><!--ZJEG_RSS.content.end--><!--<$[信息内容]>end-->', N'hsg', N'upload/sytp1.jpg', 98, NULL, CAST(0x0000ABA2001A3993 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (32, N'外企葛兰素史克在华行贿推高药价内幕披露', N'购物需知', N'<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px"><STRONG>透视推高药价的幕后黑手--葛兰素史克在华涉嫌严重经济犯罪聚焦</STRONG></P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">新华网长沙7月14日电 7月11日，公安部的一则通报成为国内外医药界的一枚重磅炸弹：因涉嫌严重商业贿赂等经济犯罪，葛兰素史克(中国)投资有限公司〔简称GSK中国〕部分高管被依法立案侦查。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">葛兰素史克，这家位列世界500强第253位、业内第7位的制药业巨擘，连日来成为海内外关注的焦点。警方调查有何最新进展？犯罪情节到底有多严重……人们显然想知道更多。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">带着这些疑问，新华社记者飞赴长沙，向专案组详细了解案情，面对面采访部分犯罪嫌疑人。透过已经查明的更多案件细节，一个跨国药企的商业贿赂利益链逐渐清晰，将药价推向虚高的幕后黑手开始浮出水面。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px"><STRONG>并非“深喉” 医药巨头涉案源自一家旅行社</STRONG></P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">6月27日，GSK中国副总裁兼企业运营总经理梁宏被警方带走接受调查。与梁宏同日被带走的还有GSK中国的副总裁兼人力资源部总监张国维、法务部总监赵虹燕和商业发展事业企业运营总经理黄红。这四人被称为GSK中国的“四驾马车”。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">一石激起千层浪。当日，关于GSK中国以及其他跨国药企“内部举报者”“深喉”的传言就开始在业内流传，一时间人心惶惶。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">其实，真正使GSK中国进入警方视线的并非传言中的“深喉”，而是一家名不见经传的旅行社——</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">“2006年成立的上海临江国际旅行社(以下简称‘临江旅行社’)几乎没做过任何旅游业务，而是只和一些药企打交道”，办案民警介绍。令人奇怪的是，临江旅行社年营业额却从成立之初的几百万元飙升到案发前的数亿元。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">今年上半年，包括临江在内的一些旅行社异常经营活动被公安部在工作中发现。在有关部门协助下，公安部部署涉案地公安机关开展调查，发现GSK中国及其关联企业存在重大经济犯罪嫌疑。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">在掌握确凿证据后，公安部明确指示长沙、上海、郑州公安机关立案侦查，于6月28日、7月10日两次开展集中抓捕，对GSK中国的部分高管和多家旅行社的部分从业人员采取刑事强制措施。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px"><STRONG>并非“深喉” 医药巨头涉案源自一家旅行社</STRONG></P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">6月27日，GSK中国副总裁兼企业运营总经理梁宏被警方带走接受调查。与梁宏同日被带走的还有GSK中国的副总裁兼人力资源部总监张国维、法务部总监赵虹燕和商业发展事业企业运营总经理黄红。这四人被称为GSK中国的“四驾马车”。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">一石激起千层浪。当日，关于GSK中国以及其他跨国药企“内部举报者”“深喉”的传言就开始在业内流传，一时间人心惶惶。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">其实，真正使GSK中国进入警方视线的并非传言中的“深喉”，而是一家名不见经传的旅行社——</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">“2006年成立的上海临江国际旅行社(以下简称‘临江旅行社’)几乎没做过任何旅游业务，而是只和一些药企打交道”，办案民警介绍。令人奇怪的是，临江旅行社年营业额却从成立之初的几百万元飙升到案发前的数亿元。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">今年上半年，包括临江在内的一些旅行社异常经营活动被公安部在工作中发现。在有关部门协助下，公安部部署涉案地公安机关开展调查，发现GSK中国及其关联企业存在重大经济犯罪嫌疑。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">在掌握确凿证据后，公安部明确指示长沙、上海、郑州公安机关立案侦查，于6月28日、7月10日两次开展集中抓捕，对GSK中国的部分高管和多家旅行社的部分从业人员采取刑事强制措施。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px"><STRONG>受贿又行贿，旅行社成药企“黑金池”</STRONG></P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">7月13日，在湖南长沙，记者见到了正在接受讯问的涉案人员之一、临江旅行社的法人代表翁剑雍。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">“这几年，我和梁宏形成了默契，他把办会议的业务单给我，我把其中一部分钱返给他”，翁剑雍说。从2010年开始，在梁宏的“关照”下，他拿到了梁宏所负责部门的大部分会议项目，截至2013年，报账金额共计约有3000万元。按照“行规”，梁宏的“好处”有200余万元。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">办案民警介绍，这些好处费一部分直接给梁宏，另一部分放在翁剑雍处，供梁宏和家人到各地旅游以及处理一些他们公司无法走账的开销。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">翁剑雍交代，梁宏对他明确讲过，这些“无法走账的开销”，就是给某个主管部门领导或专家送钱或者买礼物。“很多时候是梁宏打电话来，说有这方面的用途，我就把钱准备好送过去，随时用钱随时打电话。”</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">梁宏所负责的部门并非GSK中国与临江旅行社“合作”的唯一部门。2009年至今，临江旅行社承接了GSK中国多个部门各项会议、培训项目后，通过各种方式返给GSK中国部分高管的金额达2000余万元。这些钱一部分进了高管的腰包，另一部分向下逐级分流，流到各级销售乃至最基层的医药代表手中，成为GSK中国向相关部门、单位行贿的资金源。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">梁宏等人为什么要选择这样的方式套取现金？办案民警表示，这是为了规避法律风险。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">关于GSK内部的财务管理，记者详细询问了GSK中国的共享财务服务中心总监金某。她的回答是“非常严格”，她所在部门会定期对公司的财务运行情况进行监督，近年来一些员工就是因为账目查出问题而被处分或开除。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">“如果要向外人行贿，账面上肯定是过不去的”，金某说。“我们公司正常的请客、送礼，单人标准不得超过300元，审核得很严。”</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">每次承办会议后，翁剑雍都要去GSK中国的财务部门报账。那么，他又是如何把账面做平的？</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">“我们一般是虚增人数套现，比如说20人参加报40人。我跟GSK合作的项目里，虚开的大概有20%，其中与梁宏合作的项目虚开达到50%”，翁剑雍说。他们这一行里还有虚构项目的，根本不存在的会议也开发票去报账。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">会议究竟开了没有、到底有多少人参加，公司财务部门并无确切核证的手段或相应步骤。也就是说，只要发票合乎规范，到财务部门报销很容易蒙混过关。多报销出来的钱，既有回流给药企高管的，也有旅行社的。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">翁剑雍还交代：“我在GSK分到的蛋糕肯定不是最大的一块。”对此，记者了解到，GSK中国最大的一个冷链项目，单笔贿金就提了200万元，也是靠虚开虚报做出来的。GSK中国一次年会的费用“就超过了1个亿(元人民币)”。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">办案民警告诉记者，一方面，除临江旅行社之外，GSK中国还与多家旅行社保持“合作”；另一方面，除GSK中国之外，临江旅行社还帮助多家药企完成非法套现。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">记者还了解到，因为有利可图，临江等旅行社为了承接GSK中国更多的业务，可谓使尽浑身解数，不仅有送现金、为旅游埋单等手段，个别旅行社还使出了性贿赂，向某高管长期提供“美人”以维系关系。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px"><STRONG>推高药价，“黑金”占比近三成</STRONG></P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">公安部通报显示，近年来，GSK中国为达到打开药品销售渠道、提高药品售价等目的，利用旅行社等渠道，采取直接行贿或赞助项目等方式，向政府部门个别官员、医药行业协会和基金会、医院、医生等大肆行贿。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">事实上，GSK在其他国家也是“劣迹斑斑”：曾在美国、新西兰、意大利因商业贿赂等违法行为被处以重罚；2012年7月，GSK公司同意向美国司法部支付30亿美元罚金，用于为有关不当营销抗抑郁药物以及未能提供有关糖尿病药物文迪雅安全数据等相关指控达成和解。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">一位不愿透露姓名的业内人士说，药企的利益链实际上就是销售链加上贿赂链，就国内而言，行贿的药企肯定不止GSK一家。只不过与本土药企用现金开路不同，治理结构相对完善的外资药企往往借助更加隐蔽的手段来进行。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">上述业内人士还表示，药企的销售网络自上而下，上层可能还会“包装”一下，越往下问题越多、管理越乱，医药代表直接贿赂医生和行政部门个人已经是公开的秘密。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">梁宏承认，他负责“打交道”的一般是主管部门的领导或专家；同时，他还“管理”着全国各地近3000名医药代表，直接面向医院和医生。每年他有权审批的预算达到数亿元。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">“一种药品要上市，必须与各个部门打交道，注册涉及药监，价格涉及发改委，进医保涉及人力资源和社会保障，进地方涉及地方招标办，进医院涉及医院院长、科室主任、医生等……如果涉及药品的环节少了，腐败也就少了。但从根本上讲，医药不分、以药养医才是最大的问题。”梁宏说。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">梁宏还介绍，GSK在华唯一的收入来源就是药品销售，这意味着巨额的“黑金”都将被转嫁到药价中，最终由患者埋单。成本仅30元的药，最终卖到患者手里能达到300元，秘密很大程度就在于此。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">“在药价的构成中，这个比例大约占到多少？”记者问梁宏。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">“我估算，这个运营费用在药价中占的比重有20%—30%”，梁宏说。这十几天来，他一直在反思，这种成本的比例确实太高了，“如果能少开点会，就能降低一些成本，减轻广大患者的负担……”</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">说到此处，梁宏陷入了沉默。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">目前，案件尚在进一步侦办中。公安部有关部门负责人表示，GSK一案仅暴露了整个行业的冰山一角。严肃查办此案，既是为震慑商业贿赂犯罪，警示那些依照所谓“行规”行事的人悬崖勒马，也是为了研究此类犯罪特点，以便国家相关部门形成合力，规范医药行业发展，使药价虚高的现状有所改善，让药企将更多的资金投向创新和研发，让更多的老百姓切实受益。(记者邹伟 谭畅)</P><!--/enpcontent-->', N'hsg', N'upload/sytp2.jpg', 18, NULL, CAST(0x0000ABA2001A3994 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (33, N'陈金彪要求抓细抓实抓好防汛工作', N'购物需知', N'&nbsp; 　7月9日，我市召开全市防汛防台抗旱动员会议。会议播放了前阶段全市防汛水利明查暗访专题纪录片，通报了今年主汛期天气趋势的分析预测情况。市委副书记、市长陈金彪在会上对防汛防台抗旱工作作出部署，要求各地明确任务，落实责任，迎战今年可能出现的各种水旱灾害。
<P>　　7月15日，我市将进入主汛期。市气象台分析，预计今年热带气旋灾害强度偏强，影响我市的热带气旋将有3个，接近常年的平均数量。针对这一情况，我市防指办前期开展了防汛安全检查和隐患整改工作，做好防汛责任人队伍的培训管理等工作。但我市今年的防汛形势仍不容乐观，防灾减灾基础设施仍显薄弱；前期降水量偏多，水库高水位入汛，防洪调度和安全管理压力大；地方政府及村级班子换届后，防汛防台抗旱责任人变动大。</P>
<P>　　陈金彪指出，防汛防台责任重于泰山，关键时刻不能有丝毫松懈。从通报情况来看，各地防汛工作仍存在许多隐患和问题，主要是工程项目进度不平衡、隐患整改不到位、安全管理不落实。在防汛防台问题上，任何时候、任何地方、任何部门始终要保持清醒的头脑，时刻绷紧防汛防台这根弦，真正从思想上重视起来，未雨绸缪，精心组织，周密部署，从最坏处打算，做最好的准备，切实把防汛工作抓细、抓实、抓好。</P>
<P>　　陈金彪强调，各地各部门要狠抓各项重点防范措施的落实，深入推进隐患排查和整改，加强水利工程安全管理，强化重点部位防御措施，加强预案修编和培训、演练，扎实推进基层防汛防台体系提升工程。他强调，要进一步落实行政首长负责制、各部门责任制和水利工程安全责任制，切实抓好责任配套，特别是要把责任落实到具体岗位和具体人员身上。市防指成员单位要严格按照市委、市政府的部署和市防指的要求，既要各负其责、各司其职，又要加强配合、互通信息、密切协作，树立全市一盘棋思想，努力完成所承担的任务。</P>
<P>　　副市长任玉明出席会议。</P>
<META name=ContentEnd><!--ZJEG_RSS.content.end--><!--<$[信息内容]>end-->', N'hsg', N'upload/sytp3.jpg', 28, NULL, CAST(0x0000ABA2001A3994 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (34, N'我市三个现代农业园区升为“省级”', N'购物需知', N'　&nbsp; 我市又有三个现代农业园区升为“省级”，它们分别是苍南县金乡獭兔精品园、文成县平和茶叶精品园、瓯海区泽雅瓯柑精品园。截至目前，我市的省级现代农业精品园区已达6个。
<P>　　由省农业厅组织省、市有关部门专家组成的验收组，对照《浙江省特色农业精品园建设标准》，对苍南县金乡獭兔精品园、文成县平和茶叶精品园、瓯海区泽雅瓯柑精品园进行实地考核验收。经过省级现代农业精品园区的创建，苍南县金乡獭兔精品园对4万多个养殖笼位进行了标准化的改建，新建3000平方米5000笼位的水帘降温封闭式兔舍、增铺污水管网设施1万米待标准化生产；在文成县平和茶叶精品园，通过创建基地共建设了茶园面积1582亩，安装频振式杀虫灯65盏，维修蓄水池350立方米，修建喷灌设施878亩，引进和推广茶叶加工设备70台，繁育和推广4个茶树良种，自研开发成功九龙顶名优绿茶等建设；在瓯海区泽雅瓯柑精品园创建中，该基地共建成了游步道20000米，山地喷滴灌设施500亩，新建瓯柑储藏通风库设施4座，新增自动化柑橘选果机4台，项目区实际实施面积1140亩，2010年基地实现瓯柑总产量2200吨，综合效益明显。验收组成员认定，三个精品园符合省级现代农业园区建设标准。</P>
<META name=ContentEnd><!--ZJEG_RSS.content.end--><!--<$[信息内容]>end-->', N'hsg', N'upload/sytp4.jpg', 73, NULL, CAST(0x0000ABA2001A3994 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (35, N'拼图玩具是“补脑的维生素”', N'购物需知', N'<P align=left><BR>　　在相互无关的画片中，寻找能够连接的结合点，对培养宝宝的思维能力是非常好的锻炼活动。所以，有人把拼图玩具比喻为“补脑的维生素”。<BR>　　为宝宝挑选拼图，一定要选择图案简单、拼块大、块数少，质地较厚实的拼图。比如图案是宝宝喜欢的小动物、童话故事人物、动画卡通或熟悉的交通工具等。而那些块数多，图案复杂，超出了宝宝年龄所能理解的范围，很快失去兴趣的拼图，千万不要购买。<BR>　　为不同年龄段宝宝选拼图<BR>　　13-18个月的宝宝已经会走了，这就把他们的双手解放了出来，是时候开始一些手眼协调的游戏了。玩拼图就是一个非常好的选择，让孩子们在玩的过程中也能学到东西。还有什么能比让宝宝通过触摸和研究每一个字母、每一块地区来熟悉拼音或中国地理更好的方式呢？不同年龄的孩子应选择不同的拼图游戏，两岁的孩子应该选择把小图片放到适合位置的拼图。3-4岁的孩子可以旋转拼图小块，并把复杂的拼图插在一起。一个3岁的孩子玩一边一个突起的拼图比较合适，拼图块数以5-8块为宜。4岁的孩子可以玩12-18块拼图。一个5岁的孩子可以玩18-35块拼图。上学的孩子可玩50块以上拼图。拼图的图形选择应有吸引力。拼图的大小应与孩子的年龄成反比。拼图的图案主要以食物、汽车、动物、男孩、女孩和场景为好。<BR>　　孩子们通过玩拼图可以熟悉三角形、圆形和方形。同时了解这些拼图带来的大量知识。如赛车拼图可以告诉孩子汽车的各个部分，还有赛车的技术数据、得奖情况。建筑拼图可以教给孩子包括建筑风格、建筑历史等大量建筑知识。<BR>　　教宝宝玩拼图的2个方法<BR>　　宝宝刚开始玩拼图的时候，父母一定要在旁边引导、帮助他学会怎样玩。因为孩子年纪小，观察分析能力弱，还没有太大的耐心。父母在一旁做他的玩伴，及时提醒他观察图案特征，把图块转到合适的角度，使他容易发现图块之间的关系，或者可以悄悄把正确的图块递到宝宝手中，激励他大胆动手，争取成功。<BR>　　刚开始孩子玩的速度很慢，经常是老半天也拼不对一块图片。这时父母一定不能急躁，要耐心对待宝宝在拼图中出现的差错，鼓励他树立自信心，绝不能说“你没长眼呢”“你真笨”之类的话来伤害他。如果孩子一时拼不成完整的拼图，也没有关系，父母可以协助他完成余下部分，一方面让宝宝享受到成功的乐趣，另一方面教育宝宝做事要有始有终，不可半途而废。<BR>　　这样宝宝才会感到拼图游戏很好玩，下次还会高高兴兴地主动要求玩拼图，逐步提高玩的水平。<BR>　　方法1：由易到难的引导——对于没玩过拼图的宝宝，父母最好先向他演示将四片拼图拼成一幅完整图画的过程，并让他仔细观察最终拼出的图案。接着，父母可以试着将其中的一片拼图移开，放在旁边，这样拼图就少了一片，然后让宝宝观察移走的那片拼图的上下左右的边线和颜色特征、并让宝宝尝试将这块拼图放回原来的位置，形成一幅完整的图画。<BR>　　根据宝宝的实际能力，父母可逐渐增加难度，由移走2片到移走3片，甚至将4片拼图完全打乱，让宝宝去拼。<BR>　　方法2：启发式的引导——在玩拼图时，父母需要时时启发宝宝思考和观察，而不是帮宝宝代劳。比如，可以在游戏中提醒宝宝：这片拼图的线条和那片拼图的线条能连在一起吗？这两片拼图的颜色相同吗？可以放在一起吗？找找每片拼图的四条边和四个角，看看它们有什么不一样呢？<BR></P>', N'hsg', N'upload/sytp5.jpg', 86, NULL, CAST(0x0000ABA2001A3994 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (36, N'警方查明：薛蛮子5月以来与十余卖淫女聚众淫乱', N'促销公告', N'<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">记者28日从北京市公安局获悉，日前，北京警方根据群众举报，在朝阳区安慧北里一带连续端掉多个卖淫嫖娼窝点，抓获违法犯罪嫌疑人员27名，其中包括广受外界关注的网络大V“薛蛮子”(中文名“薛必群”，美籍华人)。经警方进一步查明，“薛蛮子”不仅嫖娼，还涉嫌聚众淫乱。目前，案件正在审查中。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">今年8月下旬以来，陆续有群众举报称，北京市朝阳区安慧北里一带卖淫嫖娼活动比较严重，周围居民群众反映强烈。接报后，北京市公安局朝阳分局组织精干警力迅速采取行动，连续端掉多个卖淫嫖娼窝点，先后抓获违法犯罪嫌疑人27名(9名男性、18名女性)。23日，公安民警在安慧北里某小区一卖淫嫖娼窝点现场抓获一男一女两名卖淫嫖娼人员时。该涉案男子态度嚣张，声称自己是美国人，要让自己的律师来处理此事。经查，该男子名叫XUE　CHARLES　BI－CHUEN，美籍华人，60岁，2007年来华，中文名“薛必群”，微博名“薛蛮子”。涉案女子张某，河南淮阳人，中学文化程度，曾在深圳打工，今年5月从深圳来北京投靠同乡，无业，从事卖淫活动。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">薛、张二人主动供认，今年8月初以来，二人通过梁某(女，32岁，广西人)介绍而建立联系，不到20天时间里，先后3次在安慧北里一带的梁某、张某暂住地进行卖淫嫖娼活动，前两次薛每次付嫖资1000元，抓获当日付嫖资1500元。二人被抓获的窝点，也就是张某的暂住地。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">警方查明，除张某外，薛必群还与此次行动中抓获的多名女性涉案人员存有卖淫嫖娼关系，并多次聚众淫乱。特别是今年5月中旬以来，薛必群至少与10名以上卖淫女频繁进行卖淫嫖娼、聚众淫乱活动。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">这些涉案女性指认，薛必群是她们的常客，被称为“老顽童”，尤其喜欢在同一地点一次连续招嫖或同时与多名女性聚众淫乱。因为薛本人从来不肯透露真实姓名和身份，因此她们并不知道这个老顾客就是网络大V“薛蛮子”。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">多名涉案女性还交代，因薛体貌特征明显、嫖娼活动频繁、有特殊性癖好并且经常拖欠嫖资，在卖淫女圈中有较高的知名度。就在8月22日，即薛必群因嫖娼被抓获的前一天下午，薛还打电话给其中一名涉案女性马某，要求帮忙联系“女孩”。但马某嫌薛必群经常欠付嫖资没有答应。薛心有不甘，自己跑到马某住处，马某无奈之下找来4名“女孩”，薛必群就在马某住处与其中3人进行了聚众淫乱活动。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">薛必群供认，为满足自己特殊的欲望和性癖好，他在国外生活期间染上了嫖娼恶习，来中国后继续频繁嫖娼，对嫖娼和聚众淫乱活动几近痴迷。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">24日下午，北京市公安局出入境部门按照有关规定，已将薛因嫖娼被警方依法拘留情况通报美国驻华使馆。27日下午，美使馆已派员对其进行了领事探视。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">另据了解，薛必群为著名投资人，早年在美国经营房产，是UT斯达康的创始人之一，曾担任中国电子商务网8848前董事长，也投资过泡泡网、汽车之家等项目。其网名为“薛蛮子”的新浪微博认证为“天使投资人、微博打拐发起人之一”，“爱心”和“慈善”为其博文中的常见字眼，拥有1200多万“粉丝”。今年8月10日参加央视网络名人社会责任论坛时，他呼吁“遏制丑陋现象、传递社会正能量”；8月20日，他发布讽刺嫖客的微博，截至目前网友转发超过9万次，评论超过1万次。</P>', N'hsg', N'upload/sytp1.jpg', 96, NULL, CAST(0x0000ABA2001A3994 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (37, N'市统计局来钱库调研发展软环境', N'促销公告', N'<P>&nbsp;&nbsp;&nbsp; 3月25日，市统计局副局长郑黎明一行来钱库开展“进村入企”大走访活动，深入企业、农户了解企业发展以及新农村建设中遇到的问题，并召开座谈，为准确分析问题，解决问题寻求相关办法。</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp; 调研组在走访了钱库3个村居5个企业后，召开了以“改善发展环境”为主题的调研座谈会。宇宙集团、华联印业等钱库重点企业及倪处村等村居参加了座谈会。钱库镇镇委书记杨雷、镇长黄加坡出席了会议。在座谈会上，与会者就当前企业的生产经营走势、货币紧缩政策造成的融资难等问题发表了自己的建议，同时对于新农村建设中遇到的政策不明确、一刀切不符合实际等情况发表了意见和看法。会议紧紧围绕政风、政策、服务、民生等软环境进行了探讨。在听取与会者的发言后，调研组表示，将根据本次座谈会以及走访了解的情况详细分析中小企业生产经营态势，研制中小企业在转型发展中面临难题的解决办法。(鸯鸯&nbsp; 克梯)</P>', N'hsg', N'upload/sytp2.jpg', 55, NULL, CAST(0x0000ABA2001A3994 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (38, N'村委会换届处于关键时刻 林晓峰要求确保月底基本完成', N'促销公告', N'<P>&nbsp;&nbsp;&nbsp; 2月20日消息：在日前召开的全县村级组织换届工作每周分析研判会上，县委副书记林晓峰要求各乡镇党委政府和部门单位按照各自职责分工，通力合作、全力以赴，以铁的决心、铁的手腕，共同抓紧抓好村级组织换届选举工作，圆满完成村级组织换届选举工作任务。县领导徐斌、陈力同、林森森、邵潘锋参加会议。</P>
<P>&nbsp;&nbsp;&nbsp; 据了解，目前，全县村级组织换届工作正在紧张有序推进，整体态势比较平稳，村党组织换届已经基本结束，而村委会换届也正处于关键时刻。截止2月16日，全县776个行政村已完成党组织换届774个，已完成换届的村委会257个、村经济合作社35个、村监会17个。</P><!--advertisement code begin--><!--advertisement code end-->
<P>&nbsp;&nbsp;&nbsp; 听取前阶段换届工作情况汇报后，林晓峰指出，村级组织换届主战场在乡镇和村一级，各乡镇一定要高度重视，牢牢把握换届选举工作的主动权，集中精力、全力以赴，确保2月底基本完成村级组织换届工作，确保省里规定的“五种情况人员”零当选，确保村级组织换届工作平稳有序推进。林晓峰强调，各有关部门要各司其职、协同作战，构建齐抓共管的换届选举工作机制。领导小组办公室要发挥各级党组织在换届选举中的领导核心作用，进一步整合力量，加强工作的指导、督导及来信来访工作的联调联处，积极推进村级组织换届健康有序开展。（记者 董少芬）</P>', N'hsg', N'upload/sytp3.jpg', 80, NULL, CAST(0x0000ABA2001A3994 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (39, N'赵一德：大力度推进城乡统筹综合改革 努力实现经济社会跨越式发展', N'促销公告', N'&nbsp;&nbsp;&nbsp;&nbsp; 在全市上下精心谋划“十二五”和明年工作之际，市委副书记、市长赵一德近日来到泰顺县调研工作。他指出，要以“三分三改”为核心，大项目为牵引，创新为动力，因地制宜，发挥优势，激发活力，大力度推进城乡统筹综合改革，努力实现欠发达地区经济社会跨越式发展。 
<P>　　调研中，赵一德一行实地察看了该县新城区九年一贯制学校、茶文化城、体育中心等项目，考察了泰顺影视城等项目规划选址前期工作和东溪乡农房改造实施情况。他还听取了泰顺县委、县政府的工作汇报，并就“十二五”和明年工作向当地征求意见建议。</P>
<P>　　赵一德说，“十二五”时期是温州发展的重要战略机遇期，前不久召开的市委理论学习中心组读书会和市政府工作务虚会，对“十二五”和明年的工作进行了谋划。各地各部门都要按照省委、省政府和市委、市政府的工作要求，结合实际，精心谋划，抢抓机遇，合力推进，确保明年的工作开好局、起好步以及“十二五”总体目标的实现。</P>
<P>　　赵一德指出，“十二五”时期是泰顺等欠发达地区的生态优势呈现期、基础设施的改善期、统筹城乡的关键期，如何将这些地区现有生态资源的积蓄转化为区位竞争的优势，如何大力推进以交通为重点的基础设施建设，如何结合全市功能区的规划布局调整，加大统筹城乡力度，都是需要我们进一步谋划并予以推进的。一要以“三分三改”为核心，大力推进城乡统筹综合改革。当前，要牢固树立抓城乡统筹综合改革就是抓住扩大消费、改善民生的结合点的理念，切实把城乡统筹综合改革作为“三农”工作的重中之重来抓，进一步优化人口和生产力布局，科学推进中心村镇建设，更好地形成集聚效应，改善群众生产生活条件；坚持因地制宜，实施分类指导，有效推进农房改造等建设；按照试点先行要求，有序推进一批示范点建设；完善进城农民社会保障、公共服务均等化和金融服务等政策配套，协调推进城乡统筹综合改革；以政府为主导、农民为主体，坚持依法、有偿、自愿的原则，和谐推进改革实施。二要以大项目为牵引，促进泰顺生态特色优势产业跨越式发展。今后一个时期，市里将会有一批重大产业项目和交通等基础设施项目布局在泰顺。要把生态保护提升与产业转型发展互动、大项目推进与基础设施配套建设同步考虑，加快培育发展特色优势生态产业，整合资源推进重大基础设施建设，以大项目带动产业生态化、服务化和文化化的目标实现。三要以创新为动力，进一步激发发展活力。进一步创新民生改善、结对帮扶、管理考核等机制，加大对欠发达地区政策扶持力度，激发当地干部带领群众致富奔小康的热情和激情。</P>
<P>　　市政府秘书长詹永枢随同调研。&nbsp;（记者 尤海峰）</P>
<META name=ContentEnd><!--ZJEG_RSS.content.end--><!--<$[信息内容]>end-->', N'hsg', N'upload/sytp4.jpg', 78, NULL, CAST(0x0000ABA2001A3994 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (40, N'台北举办机器人竞赛', N'促销公告', N'<P style="TEXT-ALIGN: center" align=center><A href="http://news.xinhuanet.com/photo/2010-11/28/c_12825682_2.htm"><IMG id={12825679_1} title="" src="http://news.xinhuanet.com/photo/2010-11/28/12825682_21n.jpg" align=center border=0 sourcename="本地文件" sourcedescription="网上抓取的文件"></A></P>
<P style="TEXT-ALIGN: left" align=left>&nbsp;&nbsp; 11月28日，机器人在2010台湾二足机器人竞赛上参加足球赛。　　</P>
<P style="TEXT-ALIGN: left" align=left>&nbsp;&nbsp; 当日，2010台湾二足机器人竞赛在台湾师范大学举行，竞赛分为足球赛、夺宝赛、舞蹈比赛、直线竞走等四项，吸引了台湾各院校的70多支队伍、100多名师生参赛。</P>', N'hsg', N'upload/sytp5.jpg', 9, NULL, CAST(0x0000ABA2001A3995 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (41, N'我市食品安全工作迎考', N'促销公告', N'<P>　　食品安全无小事，从“农田到餐桌”都要形成监管合力。1月22日，省考核小组来温调研去年我市食品安全工作开展情况，并对相关工作进行了综合考评。</P>
<P>　　去年以来，我市全面完成食品安全大整治百日行动“6个100%”目标任务，先后开展了食品安全隐患大排查大清理、校园及周边食品安全专项联合检查、“禁鱼清螺”专项行动等整治工作，有效净化了全市的食品安全环境。据了解，专项整治共检查各类食品生产经营单位119646户次，查处各类违法行为3153起，取缔无证无照生产经营单位2956家。目前，我市建立食品安全工作责任网格8861个，并统一设置了96317食品安全举报电话。</P>
<P>　　记者从汇报会上获悉，今年起我市将加快推进食品安全综合协调体制改革和职能调整，探索设立基层食品安全监管工作体系。在推进县（<SPAN style="FONT-FAMILY: 楷体,楷体_GB2312">市、区</SPAN>）食品安全监管部门派驻乡镇（<SPAN style="FONT-FAMILY: 楷体,楷体_GB2312">街道</SPAN>）的相关执法机构整合的基础上，逐步建立起市、县、乡镇（<SPAN style="FONT-FAMILY: 楷体,楷体_GB2312">街道</SPAN>）三级食品安全综合协调机构，并对监管工作进行优化创新。另外，我市将以餐桌主要食品和食品小行业等为整治重点，集中治理和解决“地沟油”、“病死猪”、“瘦肉精”、“非法添加”等热点问题。</P>
<P>　　1月下旬起，省食安办考核小组将对全省11个市的食品安全工作进行综合考评。据悉，1月23日考核组将到乐清对包括农贸菜场、超市等在内的6个点进行调研。</P>
<META name=ContentEnd><!--ZJEG_RSS.content.end--><!--<$[信息内容]>end-->', N'hsg', N'upload/sytp1.jpg', 93, NULL, CAST(0x0000ABA2001A3995 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (42, N'早班车：埃及总统向副总统移交部分权力', N'促销公告', N'<P style="TEXT-ALIGN: center" align=center><A href="http://news.xinhuanet.com/world/2011-02/11/c_121063187.htm" target=_blank><STRONG><FONT color=blue>埃及总统穆巴拉克向副总统移交部分权力</FONT></STRONG></A></P>
<P style="TEXT-ALIGN: center" align=center><SPAN><SPAN><IMG id={C2B2FFDD-7FE1-41BA-8A79-547F54FE49AB} title="" style="BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px" hspace=0 src="http://news.xinhuanet.com/world/2011-02/11/121063802_11n.jpg" align=center border=0 sourcedescription="" sourcename=""></SPAN></SPAN></P>
<P>&nbsp;&nbsp;&nbsp;<FONT face=仿宋_GB2312 color=navy>这张2月10日拍摄的电视截图显示，埃及总统穆巴拉克发表电视讲话。埃及总统穆巴拉克当晚发表电视讲话宣布将部分权力移交给副总统苏莱曼。 新华社发</FONT></P>
<P><SPAN>&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><SPAN>新华网开罗２月１０日电（记者 冯康 朱俊清）埃及总统穆巴拉克当地时间１０日晚发表电视讲话，表示决定根据宪法将部分权力移交给副总统苏莱曼，而他本人则不会辞去总统职务。</SPAN></P>
<P><SPAN>&nbsp;&nbsp;&nbsp;&nbsp;穆巴拉克在讲话中说，根据宪法，他将肩负自己捍卫国家稳定的职责，直至９月举行自由而公正的新一届总统选举后埃及实现平稳的权力过渡。</SPAN></P>
<P><SPAN>&nbsp;&nbsp;&nbsp;&nbsp;穆巴拉克表示，抗议者要求实现民主的呼声是正当而合法的，而他在倾听和回应青年人的要求时并未感到不安。他强调副总统苏莱曼与各反对派的对话必须在维护国家利益的基础上继续下去。</SPAN></P>
<P><SPAN>&nbsp;&nbsp;&nbsp;&nbsp;穆巴拉克说，他已要求对埃及宪法第７６、７７、８８、９３和１８９条等５项条款进行修改，这些条款分别对总统候选人资格、总统任期、选举司法监督、人民议会议员资格和总统修改宪法的权力等内容作出相应规定。</SPAN></P>
<P><SPAN>&nbsp;&nbsp;&nbsp;&nbsp;他同时要求删除宪法第１７９条，即关于反恐的条款，这为取消埃及长期实施的紧急状态法创造了条件。</SPAN></P>
<P><SPAN>&nbsp;&nbsp;&nbsp;&nbsp;他还表示会严惩在抗议活动中制造暴力冲突的不法分子，遇害抗议者的鲜血不会白流。</SPAN></P>
<P style="TEXT-ALIGN: center" align=center><SPAN><A href="http://news.xinhuanet.com/world/2011-02/11/c_121063601.htm" target=_blank><FONT color=blue><STRONG>俄总统下令武装日俄争议岛屿 将部署两栖攻击舰</STRONG></FONT></A></SPAN></P><SPAN>
<P style="TEXT-ALIGN: center" align=center><IMG id={4A31662D-2C1B-473A-9A76-5F08FCDE22D4} title="" style="WIDTH: 458px; HEIGHT: 330px" src="http://news.xinhuanet.com/world/2011-02/11/121063802_21n.jpg" align=center border=0></P>
<P style="TEXT-ALIGN: center" align=center><A href="http://news.xinhuanet.com/world/2011-02/09/c_121057461.htm" target=_blank><FONT color=blue><STRONG>南千岛群岛（日本称北方四岛）的价值所在</STRONG></FONT></A></P></SPAN>
<P style="TEXT-ALIGN: left" align=left><SPAN>&nbsp;&nbsp;&nbsp; </SPAN><SPAN>俄罗斯总统德米特里·梅德韦杰夫９日说，俄罗斯将在与日本存在争议的南千岛群岛（日方称北方四岛）部署更多先进武器。</SPAN></P>
<P style="MARGIN: 0px 3px 15px; TEXT-INDENT: 30px">日本外务大臣前原诚司１０日回应，无论俄方采取何种措施，日本方面对这一争议地区的态度“绝对不动摇”。</P>
<P style="MARGIN: 0px 3px 15px; TEXT-INDENT: 30px"><STRONG>加力</STRONG></P>
<P style="MARGIN: 0px 3px 15px; TEXT-INDENT: 30px">梅德韦杰夫９日在一场会议上说，俄罗斯必须在南千岛群岛部署“必要的、足够的、先进的武器”，“为俄罗斯领土不可分割的一部分提供安全保障”。</P>
<P style="MARGIN: 0px 3px 15px; TEXT-INDENT: 30px">俄罗斯国防部长和地区发展部长参加会议。</P>
<P style="MARGIN: 0px 3px 15px; TEXT-INDENT: 30px">千岛群岛位于堪察加半岛与北海道之间，群岛南部齿舞、色丹、国后和择捉四岛被日本称为北方四岛。长期以来，俄日两国在四岛归属问题上互不让步。</P>
<P style="MARGIN: 0px 3px 15px; TEXT-INDENT: 30px">俄方多名高级官员近来登上争议岛屿视察，引发日本方面不满。</P>
<P style="MARGIN: 0px 3px 15px; TEXT-INDENT: 30px">梅德韦杰夫当天在会议上说：“我们将尽可能加强在南千岛群岛的军事存在，同时发展与邻国的伙伴关系。”</P>
<P style="MARGIN: 0px 3px 15px; TEXT-INDENT: 30px">会议期间，俄国防部长阿纳托利·谢尔久科夫告诉梅德韦杰夫：“我们清楚将在那里部署何种武器，以及该采取何种措施重建军事设施。”</P>
<P style="MARGIN: 0px 3px 15px; TEXT-INDENT: 30px">俄塔社援引一名俄罗斯国防部官员的话报道，俄罗斯、法国合作建造的４艘“西北风”级两栖攻击舰将部分部署在这片区域。</P>
<P style="TEXT-ALIGN: center" align=center><A href="http://news.xinhuanet.com/world/2011-02/11/c_121063219.htm" target=_blank><FONT color=blue><STRONG>我货轮用燃烧弹抗击海盗 枪林弹雨似电影</STRONG></FONT></A></P>
<P style="TEXT-ALIGN: center" align=center><SPAN><FONT style="FONT-SIZE: 12pt" size=1><IMG id={3BF5D001-9CD3-4EC7-B5F5-36F7B0B7AF90} title="" style="WIDTH: 512px; HEIGHT: 384px" src="http://news.xinhuanet.com/world/2011-02/11/121063802_31n.jpg" align=center border=0></FONT></SPAN></P>
<P style="FONT-SIZE: 12pt; MARGIN: 0px 3px 15px; TEXT-INDENT: 30px; TEXT-ALIGN: center" align=center><FONT style="FONT-SIZE: 12pt" face=仿宋_GB2312 color=blue size=1>索马里海盗</FONT></P>
<P style="FONT-SIZE: 12pt" align=center><SPAN><FONT style="FONT-SIZE: 12pt" size=1><IMG id={5D977437-047A-4294-AAE5-CAB7881A5AF8} title="" style="BORDER-RIGHT: rgb(0,0,0) 0px solid; BORDER-TOP: rgb(0,0,0) 0px solid; BORDER-LEFT: rgb(0,0,0) 0px solid; WIDTH: 508px; BORDER-BOTTOM: rgb(0,0,0) 0px solid; HEIGHT: 339px" height=399 src="http://news.xinhuanet.com/world/2011-02/11/121063802_41n.jpg" width=600 align=center border=0></FONT></SPAN></P>
<P style="FONT-SIZE: 12pt" align=center><SPAN><FONT style="FONT-SIZE: 12pt" face=仿宋_GB2312 color=blue size=1>索马里海盗</FONT></SPAN></P>
<P>　　2月1日，农历年廿九，我国南方部分地区俗称小年夜，中国海运所有的船舶上都洋溢着浓浓的节日喜庆气氛，“流动的国土”上随处可见“中国红”。</P>
<P>　　刚刚离开印度港口的中海货运所属“嘉宁山”轮航行在茫茫的印度洋东南部海域，静静地驶向目的地南非德班港。此处距我护航编队东集合点东偏南1050海里，距索马里沿海1200海里。紧张忙碌了一天的船员们顾不上休息，开始进行以海盗实施强行登船为假想敌的桌面演习和撤离演练。同时值班人员一丝也没有放松，按照集团和公司防海盗的要求，密切注视着茫茫大海……</P>
<P>　<FONT color=blue>　<STRONG>发现海盗正在逼近</STRONG></FONT></P>
<P>　　14时30分，嘉宁山轮位于0645.7N/06925.7E，值班二副发现正船头7海里处有一艘航向不稳定的船舶正在逼近。海盗！高度警惕的值班船员们的第一个反应便是遇到海盗了。在极短的时间里，判断出这是一艘海盗母船，正快速向嘉宁山轮驶来。情况危急，船长周泽彬立即拉响了保安和遇险警报，全船各就各位，严阵以待。</P>
<P>　　与此同时，中海货运值班人员也接到船方遭受海盗袭击的报告，公司应急指挥即刻启动，邱国宣总经理、陈彬副总经理等领导第一时间赶到应急指挥中心。消息同时也迅速传到了集团、中国海上搜救中心和中国海军护航编队529舰，一场岸船联动的反海盗战斗打响了。</P>
<P>　　李绍德总裁第一时间接到报告后，当即研究对策，制订应对方案，指示船头船尾升起五星红旗，船舶保持S形航线。马泽华书记和其他集团领导也及时通过中海货运领导转达了对船员的关心和慰问。</P>
<P>　　此时，26名嘉宁山轮船员正与海盗们在印度洋上斗智斗勇。船长坐镇驾驶台，下令船舶右转20度，正面避开海盗。</P>
<P>　　海盗们感到第一步“潜伏突击”的行径可能已被发觉后，母船便疯狂地全速追击，不顾一切地连续向嘉宁山轮发起了进攻。但海盗的野蛮行径，没有使中国海运的船员们屈服，大家在船长周泽彬和政委王细豪的带领下，众志成城抗击海盗。</P>', N'hsg', N'upload/sytp2.jpg', 98, NULL, CAST(0x0000ABA2001A3995 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (43, N'创新思维求突破 创新制度求提速——访苍南县代县长董庆华', N'促销公告', N'本报记者 沙默 缪小霞 
<P></P>
<P>报道组 丁素素</P><!--advertisement code begin--><!--advertisement code end-->
<P>&nbsp;&nbsp;&nbsp; “逆水行舟，不进则退，小进也是退。”这是苍南县代县长董庆华考察天津速度、唐山效率之后的感受。他表示，发展速度的快慢和发展平台的好坏相辅相成。对照苍南当前的发展状况，要化大压力为大行动，实现难题大突破、思想大转变，打造浙南闽北最具活力的工贸生态滨海城市。下一步，苍南主要就是要抓好“一二三四工程”。</P>
<P>&nbsp;&nbsp;&nbsp; 作为苍南未来发展的大平台，首先要主攻一条沿海产业带发展。“4.3万亩的江南海涂围垦区，是我们未来推进工业发展和城市化发展的主平台，与龙港规划合二为一，从而实现从农民城向现代化新城脱胎换骨的转变。还有从炎亭到霞关的海岸线，可开发的潜力很大。”董庆华说，随着新78省道的开通，还有规划中的高速复线，这片海岸旅游开发条件已经成熟，也是未来城乡统筹发展的主平台。这两大平台，将促使“北面城市化、南面旅游休闲”发展蓝图的实现。为了突出沿海产业带的主平台作用，该县将加快工程建设进度，江南海涂围垦确保年内完成堵口合龙，大渔湾围垦主体工程力争实现开工，“台北小镇”3000亩吹填造地工程全面启动。同时充分利用苍南作为浙江对接海西“桥头堡”的区位优势，积极做好产业对接、项目对接，努力打造台湾农民创业园等合作平台，争取在引进台资上取得重大突破。</P>
<P>&nbsp;&nbsp;&nbsp; 其次，要突出灵溪和龙港两大镇。董庆华说，这两个中心城镇的人口占全县一半，经济总量和财政收入占全县四分之三，是苍南发展的重点。其中作为政治中心的灵溪，除了做精做美新区，还要把老城改造好，将参茸市场、水产品市场等原有的市场优势做强做大。龙港作为温州的五个强镇扩权试点镇之一，要以鳌江流域中心城市的定位去发展。</P>
<P>&nbsp;&nbsp;&nbsp; 此外，还要紧抓龙金大道、78省道、104国道等三条线。董庆华认为，龙金大道是该县传统产业的转型提升带，涉及金乡的台挂历产业、钱库的箱包产业、宜山的纺织产业等块状经济；78省道是该县高效生态农业带，包括马站的农业、桥墩的食品行业等都已初见规模；104国道则是当地的商贸市场一条线，在改造提升传统市场的同时，将大力发展新兴市场。</P>
<P>&nbsp;&nbsp;&nbsp; “要促成这些工程的梦想成真，必须着重抓好投资拉动、生态文明、和谐稳定和机关效能等四项工作。”董庆华说，苍南县要在下半年推出“重点工程大提速”，重点项目领导挂钩督办等制度，倒排时间、倒排进度，确保全年完成38亿工业性投资任务，57个工业项目全部开工，重点工程建设项目开工率、竣工率、年度投资计划完成率均达到或超过100%。要把生态文明的理念贯穿于经济社会发展的全过程，大力推进平原地区绿化扩面提质，加大对生态保护地区的扶持力度；积极鼓励发展循环经济、绿色经济和低碳经济，深入开展“十小行业”整治，强制淘汰高能耗工艺、设备，年内要完成龙港镇污水处理厂和灵溪污水管网建设。</P>
<P>&nbsp;&nbsp;&nbsp; “当前，我们抓落实最为要紧的就是要破解三大难题。”董庆华认为，对上要破解项目审批的难题，对中要破解机关效能的难题，对下要破解政策处理的难题。如今，该县以创新思维求突破，以创新制度求提速，想方设法实现三大难题的化解。董庆华说，三大难题归根到底都是人的问题，关键是领导干部要转变观念，实现机关效能的大提速，认真解决作风上存在的突出问题，在政府系统大力推广“马上就办”的服务理念，做到定下来的事雷厉风行、看准了的事一抓到底，不推诿、不拖拉、不折腾。营造一种务实创新、激励成功、有利创业、敢闯敢干的发展氛围，形成一种“想干事、会干事、干成事”的环境，为百姓的事和发展的事，要不怕信访、不怕追究，塑造一个有为的政府形象。</P>', N'hsg', N'upload/sytp3.jpg', 82, NULL, CAST(0x0000ABA2001A3995 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (44, N'浙江省副省长、温州市委书记陈德荣访谈', N'促销公告', N'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 温州市创新市委理论学习中心组学习形式，在中心组专题学习前，由四套班子领导带队，100多人的阵容，10月25日至10月30日，6天时间，行程1600公里，深入11个县（市、区）和3个功能区的52个考察点进行现场交流。看他人学习先进经验，比自身寻找差距不足。 
<P>　　“十二五”怎么规划？哪些是群众关切的民生工程？当下怎样鼓起干劲奋起直追？各地“一把手”不但在现场激情表态，还把承诺原原本本晒到网上接受群众监督。“互看互学”已经成为温州近期的热点词汇。</P>
<P>　　当前温州发展进入了怎样的阶段？今后将朝哪个方向转型，实现怎样的转变？“互看互学”活动是在怎样的背景下实施的？见到实效的关键又在哪里？浙江日报记者日前对浙江省副省长、温州市委书记陈德荣进行了专访。</P>
<P><FONT face=楷体_GB2312>　　问：温州发展已进入怎样的阶段？当前温州的转型升级，迫切需要解决的是什么问题？</FONT></P>
<P>　　答：改革开放30多年来，温州人民创造了温州模式，发展取得了辉煌成就。当前温州正处于转型发展的重要时期，温州具有建设生态型、现代化、国际性大都市的基础和条件，发展前景十分广阔，但与国内先进城市和省内兄弟城市相比，温州的发展速度不快、发展档次不高、人民群众满意度较低。</P>
<P>　　究其原因，温州发展的问题主要是投资不足。十多年来温州的全社会平均投资率远远低于全国、全省的平均水平。没有投入，就不可能有经济总量的增长、质量的提升和民生的改善。而投资不足的主要原因是投资环境不好。</P>
<P>　　仔细分析，当前温州的环境问题主要分生产、生活、生态三个方面——生产环境方面，发展空间供给不足，基础设施不完善不配套，商务成本高；生活环境方面，房价太高，教育卫生等优质公共品供给不足，城市文化内涵有待提高；生态环境方面，环境污染较为严重，城市绿化水平低，市容环境卫生差。</P>
<P>　　进入21世纪特别是国际金融危机以后，温州的发展正加快由资源驱动型向投资驱动型、创新驱动型转变，需要集聚资金和人才等高端要素。抓环境就是引人才、招项目，就是抓投资，就是抓发展。同时，随着经济的发展，群众对居住、出行、医疗保健和教育、休闲等公共品的需求越来越大，对人居环境的要求越来越高，环境问题成为群众反响最强烈的民生问题，环境成为最大的公共品。抓环境也就是抓民生。</P>
<P>　　因此，对于当前和今后一段时期的温州来说，最为重大而紧迫的中心任务，就是解决环境问题。我们已充分认识到改善环境是转型之要、利民之举、党政之责，在充分发挥市场配置资源基础性作用的同时，要充分发挥政府“有形之手”的作用，着力抓好环境建设，带动全社会投资，着力推进转型发展，全力优化改善民生，再创温州新辉煌。</P>
<P>　<FONT face=楷体_GB2312>　问：“互看互学”活动是在怎样的背景下实施的？它的组织形式和特点又是怎样？</FONT></P>
<P>　　答：温州市委市政府当前正在开展三方面工作：一是进一步解放思想、更新观念。在前阶段工作的基础上，通过组织开展“互看互学”活动，进一步统一思想、凝聚共识，切实增强加快发展的紧迫感和责任感。二是深化体制机制改革。狠下决心，着手推进城市建设管理体制、市区财政体制、国资管理体制、行政审批制度和农村试验区综合改革等重大改革，建立权责利相统一的体制机制，切实为加快发展提供有力保障。三是推进重大项目建设。结合“十二五”规划，研究实施“十大建设工程”和“十大民生工程”，各县（市、区）也要结合实际，推出 “双十工程”，各条线要理出“十大项目”，以重大项目建设来改善大环境、推进大发展。</P>
<P>　　开展“互看互学”活动的主要目的，是认真学习、深刻领会党的十七届五中全会精神，深入贯彻落实科学发展观，按照省委“两创”总战略要求，以加快转型发展、再创温州辉煌为主题，以推进解放思想、转变领导作风、促进工作落实为目的，通过开展“学先进、看现场、找差距、比干劲”，努力在温州形成“抢抓机遇、克难攻坚、大干快上、创先争优”的发展氛围。</P>
<P>　　6天的“互看互学”现场会，组织了市、县两级和有关部门负责人以及部分党代表、人大代表、政协委员，深入改革发展第一线，到温州11个县（市、区）和瓯江口新区、温州经济技术开发区、温州生态园等功能区，实地察看各地经济社会发展过程中可听、可看、可学的内容。大家看的是新项目、大项目、好项目，每个项目都是民生关注点和经济增长点；学的是好做法、巧思路、新经验，在看与学中找准位置、明确方向。</P>
<P>　　其实，“互看互学”本身也是干部体制与考核方式改革的一个举措，从会上听变成现场看，从相马变为赛马，是骡子是马拉出来遛遛。</P>
<P>　　他山之石，可以攻玉；耳听为虚、眼见为实。我们就是要通过“互看互学”，看看人家，再看看自己，学先进、找差距，从而努力形成你追我赶、大干快上的发展新局面。</P>
<P>　　<FONT face=楷体_GB2312>问：“互看互学”活动取得了怎样的效果？如何将它体现在今后的实际工作中？ </FONT></P>
<P>　　答：这次“互看互学”活动，各地各单位做了精心的、充分的准备，活动进程环环相扣、井然有序。所有与会人员集中精力、克服疲劳、连续作战，通过“互看互学”，学到了经验，看到了差距，感受了压力，振奋了精神，统一了认识，解放了思想，理清了思路，推进了工作。在各方面的共同努力下，活动取得了预期效果。</P>
<P>　　能不能把“互看互学”活动的成果落到实处，关键看效果，以成败论英雄。这次活动中，各地的思路与表态均挂到了网上接受全市人民的监督，所有现场要“立此存照”，看看今年的工地明年能“长”成什么样子。市委对各地负责人的要求，是要以对党和人民事业高度负责的态度，对自己的承诺一诺千金、说到做到。温州市委市政府将要把“互看互学”纳入对各县（市、区）的考核内容，加强对各个项目的进度督查。</P>
<P>　　其实，每个人心中都有一杆秤，每个人都可以称一称自己的分量。从今年的“互看互学”中，我们的确看到了各地发展中的一些问题。首先，一些项目存在个头偏小、进度偏慢的情况，往往是围得空地多工地少，效果图多实景少。其次，整体活动的准备水平参差不齐，个别地方不够认真不够重视，相应的效果也就不够明显。再次，各县（市、区）有了很大的压力，但部门感受到的压力相对较小。一个地方的整体工作只有形成横向到边、纵向到底的责任体系，经纬织成一张网络，才能一网打尽、一抓到底，推动事业发展。所以，下一步，我们要立即着手研究各个部门各条战线的责任，做到“千斤重担大家挑，人人肩上有指标”，齐心协力共推温州转型发展。</P>
<P>　　“互看互学”活动是考核激励干部的一种形式，以后将持续进行下去，不断了解和掌握各地各部门的工作进度和工作效果。同时，我们还将继续组织开展群众测评活动，老百姓对城市建设、社会治安、生态环境、党风廉政、办事效率等方面的满意度也作为考核指标，以群众的评判来真实、准确、客观地反映一个地方经济社会发展情况，最终把当地老百姓是否满意、是否高兴、是否答应，作为评判工作成败的重要标准，这也是我们一切工作的出发点和落脚点。</P>
<P>　　我们要通过“互看互学”，把即时的状态转化为工作的常态，把宏伟的奋斗目标转化为实实在在的具体项目，把班子的责任与压力转化为全体干部的责任与动力，把语言的力量转化为行动的力量，努力开创温州科学发展、和谐发展、跨越发展的新局面。</P>', N'hsg', N'upload/sytp4.jpg', 30, NULL, CAST(0x0000ABA2001A3995 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (45, N'城镇居民前三季度统计显示 温州人均收入支出均增', N'促销公告', N'<DIV align=left>&nbsp;&nbsp; 市统计调查队发布最新统计数据显示，前三季度，我市城镇居民人均可支配收入20389元，增长11.5%，其中，工资性收入和转移性收入成为我市城镇居民增收的两大支撑点；城镇居民人均消费性支出14819元，增长10.4%，其中，教育文化娱乐服务支出增长最快。</DIV>
<DIV align=left>　　据统计，前三季度，我市城镇居民家庭人均总收入21384元，比上年同期增长11.8%。由于受政府提高职工最低工资标准、企业效益好转调高职工工资、事业单位进行绩效工资改革和机关实行阳光工资等利好影响，使得工资性收入对城镇居民增收的贡献最大。前三季度城镇居民人均工资性收入10770元，增长13%，占家庭总收入的50.3%。</DIV>
<DIV align=left>　　今年，我市给60岁以上老人发放基础养老金，让80多万城乡居民受益，加上国家提高离退休人员养老金标准和增发节日补贴等因素，使转移性收入成为增长最快的部分，前三季度，我市城镇居民人均转移性收入3528元，同比增长18.5%。其中，城镇居民离退休金和养老金收入累计达2568元，增长22.3%。</DIV>
<DIV align=left>　　经营性收入增幅缓慢，前三季度，人均经营性收入5405元，增长6.7%。就今年运行情况看，经营性收入呈现稳步回升走势，一、二、三季度经营性收入分别增长6.0%、6.1%和8.1%。</DIV>
<DIV align=left>　　由于受房地产市场调控政策和其他投资收益下降的影响，财产性收入增幅回落，全市城镇居民家庭人均财产性收入1681元，增长8%，增幅比上年同期回落3.8个百分点，比上半年增幅回落7.8个百分点。</DIV>', N'hsg', N'upload/sytp5.jpg', 59, NULL, CAST(0x0000ABA2001A3995 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (46, N'市委市政府建立抗灾救灾工作领导小组', N'促销公告', N'<P>　　“虽然房屋倒了、电线倒了，但我们的斗志绝不会倒，相信这么多部门携手抗灾救灾定能早日完成灾后重建。”瑞安供电公司运维检修部副主任虞永新，10月10日又率队扑入了电力抢修中。市委市政府10月10日印发了《关于建立温州市抗灾救灾工作领导小组的通知》，我市40余家单位派出精干力量，“抱团”指导和帮助灾区开展抗灾救灾工作。</P>
<P>　　抗灾救灾工作领导小组下设办公室和7个工作组。7个工作组分别为农业水利、民政救助工作组，城建、市政设施恢复工作组，交通、电力设施修复工作组，金融、保险理赔工作组，教育、卫生医疗、防疫工作组，工业、商业恢复工作组，以及宣传工作组。</P>
<P>　　在前期各方开展抗灾救灾的工作基础上，7个工作组将更系统地整合救援资源，以更集中的力量、更系统的方案投入灾后重建工作。从农业到工业、从交通到电力、从灾民安置到保险理赔、从设施抢修到卫生防疫……一张抗灾救灾的大网已全方位拉开。</P>
<P>　　农业在“菲特”台风中遭受了毁灭性的打击。据市委农办（市农业局）统计，截至8日全市农业直接经济损失达18.4亿元。对此，农业水利、民政救助工作组的组长陈向东介绍，该组成员单位已全体总动员，紧急调配人力物力财力投入抗灾救灾。在前阶段救灾工作的基础上，下一步将全面核灾和查险排险，并做好技术指导服务，帮助灾民补救作物和养殖物。</P>
<P>　　电力、交通设施也遭受了重创。对此，交通、电力设施恢复工作组已投入几千人次抢修交通和电力。在省电力公司的大力支持下，温州供电公司已组织了181支抢修队投入应急抢修中，截至10日17时，我市因台风影响而断电的乡镇已经全部恢复供电，行政村95%恢复供电。在全市交通运输系统广大干部职工的应急抢通下，截至昨日，45条中断的公路已全部恢复畅通。</P>
<P>　　灾后食品安全、卫生防疫也是不容忽视的重要工作。市食品药品监督管理局、市食安办已下发紧急通知，要求各地加大灾区食品经营单位的监督检查力度，严禁被洪水浸泡、污染、变质的食品上市流通。并重点检查灾民安置点、临时食堂和饮食摊店，严加监控被洪水浸泡过的食品或食品原料、半成品等。</P>
<P>　　与此同时，受灾企业的恢复生产及灾后保险理赔等工作也正紧锣密鼓地开展。经信、金融等部门正积极协调保险理赔、贴息贷款、减免税费等工作，为受灾企业减轻负担。在政府部门的指导和帮助下，目前全市受灾企业都在积极地进行生产自救。</P>', N'hsg', N'upload/sytp1.jpg', 45, NULL, CAST(0x0000ABA2001A3995 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (47, N'温州将打造进口商品基地', N'促销公告', N'<P>　　自今年6月份温州进口商品市场获得国家商务部授牌后，越来越多的国际一线奢侈品牌向温州抛来了“橄榄枝”。近日，意大利普拉达、法国波马酒业、LV集团旗下品牌DONDUP总部负责人先后组团来温，考察温州进口商品市场，并表达深度合作的意向。</P>
<P>　　“温州人有着强大的购买力和对高端时尚的接受力，我们希望从这里起步开拓中国市场。”DONDUP董事局主席马西莫表示。马西莫一行所考察的温州进口商品市场是国家商务部重点扶持的浙江省首个全球高端专业进口物品展贸中心，享有政府优惠政策，并配备保税仓库、保税展示、电子商务、进口代理等配套服务，将打造成高端奢侈品牌的聚集地。</P>
<P>　　“进口贸易一直是温州外经贸发展中的薄弱环节，今年市委市政府高度重视进口贸易，加大对高端消费品的进口，大力推动我市打造高端消费品之都、时尚购物之都的步伐。”市商务局相关负责人表示。</P>
<P>　　据了解，温州市政府、市商务局、温州空港国际购物有限公司经与商务部相关司局的多轮谈判，于今年5月份在北京签署合作协议，协议明确规定温州进口商品市场由温州空港国际购物有限公司具体实施运营、国家商务部投资促进事务局予以协助。</P>
<P>　　目前，温州进口商品市场已经获得全世界五大洲58个国家或地区的官方支持，这些国家或地区的驻华使馆及商务机构在国家商务部相关司局的商品准入名单中均已获得许可。据介绍，市场运营方已与南非驻中国的钻石专营机构达成意向，在市场设立面向亚洲的区域钻石交易中心，预期其年交易额超百亿元。与此同时，海关对我市进口商品市场给予高度认可，批准市场运营方设立保税仓资格。</P>
<P>　　据悉，温州进口商品市场临时展厅将于12月10日对外开放，展厅内将同时展出部分来自世界各地的进口商品。</P>', N'hsg', N'upload/sytp2.jpg', 14, NULL, CAST(0x0000ABA2001A3995 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (48, N'怎样从眼睛等处看出身体好不好', N'促销公告', N'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 每一天一早起来，看着镜子中的自己会不会有异样的感觉。不一定是大的改变只是一些细微之处的改变，仔细观察一下，那也许正是身体在向你求助。因为现代人的生活越来越忙碌，真正静下心来的时间少之又少。那些平素被我们忽略的健康问题就越积越多，到最后越来越严重，千里之堤毁于蚁穴，最后健康亮红灯，忙忙碌碌了许久也不得不停下来。其实很多疾病只要我们生活中仔细注意及早发现都是可以在细微的时候就化解掉的。这里就告诉大家一些平常照镜子就可以发现的却容易被人忽视的疾病先兆。<BR _extended="true">　　<BR _extended="true">　　<B _extended="true">1.看眼睛</B><BR _extended="true">　　<BR _extended="true">　　脂肪粒：脂肪粒的形成有可能是因为你眼部妆容堵塞毛孔造成的，但是还有一种可能就是身体内胆固醇过高的缘故，摄入的脂肪量过高，脂肪堆积就容易形成脂肪粒。还有一种很重要的原因就是身体里的脾脏可能比较虚弱引起的，脾脏虚弱代谢脂肪就会比较缓慢。<BR _extended="true">　　<BR _extended="true">　　红血丝：由于现代人用眼压力比较大，出现眼部问题比较多，并不是一看到眼睛里都是红血丝就着急点眼药水。这个时候你大可以活动一下僵直酸痛的肩部，因为眼部红血丝也有可能是身体上的血液循环不畅导致的，活动一下之后再好好休息一下，就可以缓解这个眼部问题了。<BR _extended="true">　　<BR _extended="true">　　眼白泛黄：照镜子的时候仔细看看自己的眼睛，如果眼睛不再清澈眼白出现浑浊的情况就一定要引起注意了。一般是肝、胆等脏器性疾病的有问题的先兆，如果有这种情况最好到医院检查一下身体。<BR _extended="true">　　<BR _extended="true">　　<B _extended="true">2.观唇色</B><BR _extended="true">　　<BR _extended="true">　　唇色发白：注意唇色的变化可以发现身体正在发生的变化，能够及早的发现潜在疾病。因为唇部表皮很薄可以轻而易举的反映血液情况，唇色过白有可能是体内缺少血红细胞不足所致，在饮食中添加动物肝脏等就可以减轻贫血的情况。<BR _extended="true">　　<BR _extended="true">　　唇色艳红：唇色过白不是好事，但是唇色过艳同样代表身体已经出现问题，过于鲜艳的唇色再加上有厌食或者伴随强烈口气的话，多半是肝火过旺、脾胃失调。当然如果体温上升，也会有唇部或者双颊等局部发红的状况，这个时候有可能是体温的变化，需要注意。<BR _extended="true">　　<BR _extended="true">　　嘴唇发紫：这里所说的颜色是发青黑或者紫色的唇色，如果长期是这种颜色那一定要引起足够的注意，因为有可能是心脏等器官出现问题。一般心脏或者肺部出现问题都会表现为唇色发紫为前兆。<BR _extended="true">　　<BR _extended="true">　<B _extended="true">　3.吐舌头</B><BR _extended="true">　　<BR _extended="true">　　观察舌头颜色和舌苔，正常舌头舌苔是薄白色的。慢性疾病的变化会通过舌苔的变化表现出来，如果你有未治愈的慢性病则需要在日常的生活中观察舌苔的变化。<BR _extended="true">　　<BR _extended="true">　　舌苔太厚：舌头上的舌苔变厚、腐腻，有可能是肠胃消化功能不良，饮食过量也会引起这种种情况发生，这个时候注意调整饮食结构适度饮食就可以了，不过要是舌苔边的粘腻、变色或者有味道的话，就要去医院检查一下了。<BR _extended="true">　　<BR _extended="true">　　舌苔过薄：与舌苔过后相反的舌苔太薄的话，有气血不足的症状但是属于正常，如果当你发现舌苔薄厚发生变化之后，就要引起注意了，因为有可能是疾病变重的前兆。<BR _extended="true">　　<BR _extended="true">　　舌头颜色：舌头颜色也是一个重要的讯号，简单的介绍几种颜色代表的意义。舌头发紫一般是身体血液缺氧的表现，舌头光亮但是舌苔少有可能是缺少维生素B等。<BR _extended="true">　　<BR _extended="true">　　通过照镜子这个简单的小动作自查一下，及时发现身体上的小问题及早解决。身体健康才是美丽的先决条件，健康的美是才是最平凡却不可忽视的魅力。<BR _extended="true">', N'hsg', N'upload/sytp3.jpg', 80, NULL, CAST(0x0000ABA2001A3995 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (49, N'李克强：要以更大力度推进改革和结构调整', N'促销公告', N'<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">新华网北京10月20日电（记者汪文品）国务院总理李克强10月18日主持召开国务院常务会议，听取半年多来国务院出台的促改革、调结构措施落实情况汇报，部署进一步抓好夯实经济稳中向好基础的相关工作。他要求，四季度要以更大力度推进改革和结构调整。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">自3月17日，新一届政府履职以来，国务院总理李克强已主持召开26次国务院常务会议，有序地围绕调结构、稳增长、促改革推出了一系列政策措施，不断释放改革红利，激发市场活力，推动经济转型，为经济平稳运行注入了新的动力和活力。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">18日公布的三季度中国经济“成绩单”令人欣慰，经济增速扭转了此前连续两个季度的下滑，反弹至7.8%，呈现稳中有升、稳中向好的积极态势，稳增长初见成效。多项经济指标显示，我国经济发展内生动力增强，结构调整和产业升级呈现积极变化。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">时至中国经济2013年“收官之战”的四季度，李克强总理18日在国务院常务会议上强调指出，要以更大力度推进改革和结构调整，继续抓好已出台措施的落实，使改革红利不断释放，让政策效应持续发挥，真正做到既利当前更惠长远，夯实稳中向好基础，促进经济提质增效，增强发展内生动力和长远后劲。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">回望过去半年，党和政府出台了一系列“稳增长、调结构、促改革”政策措施，包括简政放权，取消和下放了200多项行政审批事项；货币政策保持定力，盘活存量、用好增量；扩大了“营改增”试点范围，积极推动利率市场化进程、铁路等基础设施投融资体制、资源性产品价格、政府购买公共服务等领域改革。推进结构性改革，引入民资，在金融、石油、电力、铁路、电信、能源开发、公用事业、服务业等领域放宽市场准入；加强薄弱环节建设，增加节能环保、棚户区改造、城市基础设施、中西部铁路等方面的投资，加大对集中连片特困地区的支持力度。还专门出台政策措施，促进养老、健康、文化、教育等服务业发展。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">四季度是确保全年经济目标顺利实现的关键，是检验各项政策措施落实的关键，是考验宏观经济回升是否可持续的关键。此次国务院常务会议要求各地区、各部门要以政策兑现为目标，毫不松劲抓落实。国务院将组织督查各地区、各部门各项促改革、调结构措施的落实情况。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">面对政策措施落实中的薄弱环节，各地区、各部门务必要加快完善和细化配套措施，以务实高效的工作，让政策措施尽快“落地”，进一步稳定来之不易的积极向好的市场预期与社会信心。</P>
<P style="TEXT-INDENT: 30px; MARGIN: 0px 3px 15px">各地区、各部门还要以转变政府职能为抓手，继续深化改革——加快实施政府职能转变，扭转政令不畅的“堰塞湖”现象，克服拖延应付和打折扣、搞变通的行为，研究推进改革的具体措施，让市场作用得到更好发挥，让政府管理更加到位，努力营造各类主体公平竞争的市场环境。</P><!--/enpcontent-->', N'hsg', N'upload/sytp4.jpg', 7, NULL, CAST(0x0000ABA2001A3995 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (50, N'我市新型城市化水平2年连升3位', N'促销公告', N'<P>　　据省统计局最近发布的全省及<SPAN>11</SPAN>个市的新型城市化发展进程综合评价结果显示，<SPAN>2012</SPAN>年我市综合评价得分为<SPAN>78.06</SPAN>分，比上年提高<SPAN>6.76</SPAN>分，评价得分居全省第<SPAN>7</SPAN>位，与<SPAN>2010</SPAN>年的第<SPAN>10</SPAN>位、<SPAN>2011</SPAN>年的第<SPAN>9</SPAN>位相比，取得了<SPAN>2</SPAN>年连升<SPAN>3</SPAN>位的突破性成效，提升幅度居全省首位。从五大领域的综合评价指标看，我市生活舒适实现度（<SPAN>86.1%</SPAN>）、社会和谐（<SPAN>85.1%</SPAN>）表现最为突出。（市统计局）</P>', N'hsg', N'upload/sytp5.jpg', 47, NULL, CAST(0x0000ABA2001A3995 AS DateTime))
INSERT [dbo].[xinwentongzhi] ([ID], [biaoti], [leibie], [neirong], [tianjiaren], [shouyetupian], [dianjilv], [zhaiyao], [addtime]) VALUES (51, N'观复嘟嘟过分', N'通知公告', N'发的更广泛的', N'hsg', N'', 1, N'', CAST(0x0000ABA2002E4C58 AS DateTime))
SET IDENTITY_INSERT [dbo].[xinwentongzhi] OFF
/****** Object:  Table [dbo].[toupiaoxinxi]    Script Date: 04/19/2020 03:10:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[toupiaoxinxi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[huodongbianhao] [varchar](50) NULL,
	[biaoti] [varchar](300) NULL,
	[Axuanxiang] [varchar](50) NULL,
	[Alianjie] [varchar](50) NULL,
	[Apiaoshu] [varchar](50) NULL,
	[Bxuanxiang] [varchar](50) NULL,
	[Blianjie] [varchar](50) NULL,
	[Bpiaoshu] [varchar](50) NULL,
	[Cxuanxiang] [varchar](50) NULL,
	[Clianjie] [varchar](50) NULL,
	[Cpiaoshu] [varchar](50) NULL,
	[Dxuanxiang] [varchar](50) NULL,
	[Dlianjie] [varchar](50) NULL,
	[Dpiaoshu] [varchar](50) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[toupiaoxinxi] ON
INSERT [dbo].[toupiaoxinxi] ([ID], [huodongbianhao], [biaoti], [Axuanxiang], [Alianjie], [Apiaoshu], [Bxuanxiang], [Blianjie], [Bpiaoshu], [Cxuanxiang], [Clianjie], [Cpiaoshu], [Dxuanxiang], [Dlianjie], [Dpiaoshu], [addtime]) VALUES (1, N'033', N'最高法：重大敏感危害生产安全犯罪案件可依法提级管辖', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', CAST(0x0000ABA2001A39A0 AS DateTime))
INSERT [dbo].[toupiaoxinxi] ([ID], [huodongbianhao], [biaoti], [Axuanxiang], [Alianjie], [Apiaoshu], [Bxuanxiang], [Blianjie], [Bpiaoshu], [Cxuanxiang], [Clianjie], [Cpiaoshu], [Dxuanxiang], [Dlianjie], [Dpiaoshu], [addtime]) VALUES (2, N'004', N'北京市食品办通报 7批次不合格食品本周退市', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', CAST(0x0000ABA2001A39A1 AS DateTime))
INSERT [dbo].[toupiaoxinxi] ([ID], [huodongbianhao], [biaoti], [Axuanxiang], [Alianjie], [Apiaoshu], [Bxuanxiang], [Blianjie], [Bpiaoshu], [Cxuanxiang], [Clianjie], [Cpiaoshu], [Dxuanxiang], [Dlianjie], [Dpiaoshu], [addtime]) VALUES (3, N'004', N'最高法：重大敏感危害生产安全犯罪案件可依法提级管辖', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', CAST(0x0000ABA2001A39A1 AS DateTime))
INSERT [dbo].[toupiaoxinxi] ([ID], [huodongbianhao], [biaoti], [Axuanxiang], [Alianjie], [Apiaoshu], [Bxuanxiang], [Blianjie], [Bpiaoshu], [Cxuanxiang], [Clianjie], [Cpiaoshu], [Dxuanxiang], [Dlianjie], [Dpiaoshu], [addtime]) VALUES (4, N'004', N'国航浙江分公司在温招聘空中乘务员', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', CAST(0x0000ABA2001A39A1 AS DateTime))
INSERT [dbo].[toupiaoxinxi] ([ID], [huodongbianhao], [biaoti], [Axuanxiang], [Alianjie], [Apiaoshu], [Bxuanxiang], [Blianjie], [Bpiaoshu], [Cxuanxiang], [Clianjie], [Cpiaoshu], [Dxuanxiang], [Dlianjie], [Dpiaoshu], [addtime]) VALUES (5, N'017', N'最高法：重大敏感危害生产安全犯罪案件可依法提级管辖', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', CAST(0x0000ABA2001A39A1 AS DateTime))
INSERT [dbo].[toupiaoxinxi] ([ID], [huodongbianhao], [biaoti], [Axuanxiang], [Alianjie], [Apiaoshu], [Bxuanxiang], [Blianjie], [Bpiaoshu], [Cxuanxiang], [Clianjie], [Cpiaoshu], [Dxuanxiang], [Dlianjie], [Dpiaoshu], [addtime]) VALUES (6, N'04190153414727', N'刚发的电饭锅刚发的', N'发鬼地方个的', N'www.qq.com', N'4', N'反倒是地方', N'www.qq.com', N'1', N'方式大幅度', N'www.qq.com', N'1', N'第三方第三方', N'www.qq.com', N'0', CAST(0x0000ABA200265D7C AS DateTime))
INSERT [dbo].[toupiaoxinxi] ([ID], [huodongbianhao], [biaoti], [Axuanxiang], [Alianjie], [Apiaoshu], [Bxuanxiang], [Blianjie], [Bpiaoshu], [Cxuanxiang], [Clianjie], [Cpiaoshu], [Dxuanxiang], [Dlianjie], [Dpiaoshu], [addtime]) VALUES (7, N'04190252072652', N'给对方梵蒂冈法规的', N'A发光飞碟', N'www.qq.com', N'2', N'B福鼎', N'www.qq.com', N'2', N'C刚发的', N'www.qq.com', N'0', N'D发郭德纲', N'www.qq.com', N'0', CAST(0x0000ABA2002F67F0 AS DateTime))
INSERT [dbo].[toupiaoxinxi] ([ID], [huodongbianhao], [biaoti], [Axuanxiang], [Alianjie], [Apiaoshu], [Bxuanxiang], [Blianjie], [Bpiaoshu], [Cxuanxiang], [Clianjie], [Cpiaoshu], [Dxuanxiang], [Dlianjie], [Dpiaoshu], [addtime]) VALUES (8, N'04190252072652', N'刚发的电饭锅刚发的', N'发鬼地方个的', N'www.qq.com', N'1', N'反倒是地方', N'www.163.com', N'2', N'方式大幅度', N'www.qq.com', N'0', N'第三方第三方', N'www.qq.com', N'0', CAST(0x0000ABA20030294C AS DateTime))
SET IDENTITY_INSERT [dbo].[toupiaoxinxi] OFF
/****** Object:  Table [dbo].[toupiao]    Script Date: 04/19/2020 03:10:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[toupiao](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[huodongbianhao] [varchar](50) NULL,
	[biaoti] [varchar](50) NULL,
	[xuanxiang] [varchar](50) NULL,
	[yonghuming] [varchar](50) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[toupiao] ON
INSERT [dbo].[toupiao] ([ID], [huodongbianhao], [biaoti], [xuanxiang], [yonghuming], [addtime]) VALUES (1, N'031', NULL, N'', N'022', CAST(0x0000ABA2001A399A AS DateTime))
INSERT [dbo].[toupiao] ([ID], [huodongbianhao], [biaoti], [xuanxiang], [yonghuming], [addtime]) VALUES (2, N'032', NULL, N'', N'003', CAST(0x0000ABA2001A399A AS DateTime))
INSERT [dbo].[toupiao] ([ID], [huodongbianhao], [biaoti], [xuanxiang], [yonghuming], [addtime]) VALUES (3, N'023', NULL, N'', N'034', CAST(0x0000ABA2001A399A AS DateTime))
INSERT [dbo].[toupiao] ([ID], [huodongbianhao], [biaoti], [xuanxiang], [yonghuming], [addtime]) VALUES (4, N'020', NULL, N'', N'026', CAST(0x0000ABA2001A399A AS DateTime))
INSERT [dbo].[toupiao] ([ID], [huodongbianhao], [biaoti], [xuanxiang], [yonghuming], [addtime]) VALUES (5, N'001', NULL, N'', N'001', CAST(0x0000ABA2001A399A AS DateTime))
INSERT [dbo].[toupiao] ([ID], [huodongbianhao], [biaoti], [xuanxiang], [yonghuming], [addtime]) VALUES (6, N'04190153414727', NULL, N'A选项', N'555', CAST(0x0000ABA20029E143 AS DateTime))
INSERT [dbo].[toupiao] ([ID], [huodongbianhao], [biaoti], [xuanxiang], [yonghuming], [addtime]) VALUES (7, N'04190153414727', NULL, N'A选项', N'555', CAST(0x0000ABA2002A0A44 AS DateTime))
INSERT [dbo].[toupiao] ([ID], [huodongbianhao], [biaoti], [xuanxiang], [yonghuming], [addtime]) VALUES (8, N'04190153414727', NULL, N'A', N'555', CAST(0x0000ABA2002A4DF2 AS DateTime))
INSERT [dbo].[toupiao] ([ID], [huodongbianhao], [biaoti], [xuanxiang], [yonghuming], [addtime]) VALUES (9, N'04190153414727', NULL, N'B', N'555', CAST(0x0000ABA2002A5163 AS DateTime))
INSERT [dbo].[toupiao] ([ID], [huodongbianhao], [biaoti], [xuanxiang], [yonghuming], [addtime]) VALUES (10, N'04190153414727', NULL, N'A', N'555', CAST(0x0000ABA2002A539A AS DateTime))
INSERT [dbo].[toupiao] ([ID], [huodongbianhao], [biaoti], [xuanxiang], [yonghuming], [addtime]) VALUES (11, N'04190153414727', NULL, N'A', N'555', CAST(0x0000ABA2002A7A0E AS DateTime))
INSERT [dbo].[toupiao] ([ID], [huodongbianhao], [biaoti], [xuanxiang], [yonghuming], [addtime]) VALUES (12, N'04190153414727', NULL, N'A', N'555', CAST(0x0000ABA2002A7F1B AS DateTime))
INSERT [dbo].[toupiao] ([ID], [huodongbianhao], [biaoti], [xuanxiang], [yonghuming], [addtime]) VALUES (13, N'04190153414727', NULL, N'C', N'555', CAST(0x0000ABA2002A84B8 AS DateTime))
INSERT [dbo].[toupiao] ([ID], [huodongbianhao], [biaoti], [xuanxiang], [yonghuming], [addtime]) VALUES (14, N'04190252072652', NULL, N'A', N'555', CAST(0x0000ABA2002FAA6F AS DateTime))
INSERT [dbo].[toupiao] ([ID], [huodongbianhao], [biaoti], [xuanxiang], [yonghuming], [addtime]) VALUES (15, N'04190252072652', N'刚发的电饭锅刚发的', N'A', N'555', CAST(0x0000ABA2003191C4 AS DateTime))
INSERT [dbo].[toupiao] ([ID], [huodongbianhao], [biaoti], [xuanxiang], [yonghuming], [addtime]) VALUES (16, N'04190252072652', N'刚发的电饭锅刚发的', N'B', N'555', CAST(0x0000ABA20031966E AS DateTime))
INSERT [dbo].[toupiao] ([ID], [huodongbianhao], [biaoti], [xuanxiang], [yonghuming], [addtime]) VALUES (17, N'04190252072652', N'刚发的电饭锅刚发的', N'B', N'555', CAST(0x0000ABA20031A17E AS DateTime))
SET IDENTITY_INSERT [dbo].[toupiao] OFF
/****** Object:  Table [dbo].[shoucangjilu]    Script Date: 04/19/2020 03:10:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[shoucangjilu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[xwid] [varchar](50) NULL,
	[ziduan] [varchar](50) NULL,
	[biao] [varchar](50) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pinglun]    Script Date: 04/19/2020 03:10:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pinglun](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[xinwenID] [varchar](50) NULL,
	[pinglunneirong] [varchar](300) NULL,
	[pinglunren] [varchar](50) NULL,
	[pingfen] [varchar](50) NULL,
	[biao] [varchar](50) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[liuyanban]    Script Date: 04/19/2020 03:10:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[liuyanban](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[cheng] [varchar](50) NULL,
	[xingbie] [varchar](2) NULL,
	[QQ] [varchar](50) NULL,
	[youxiang] [varchar](50) NULL,
	[dianhua] [varchar](50) NULL,
	[neirong] [varchar](500) NULL,
	[addtime] [datetime] NULL,
	[huifuneirong] [varchar](500) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[liuyanban] ON
INSERT [dbo].[liuyanban] ([ID], [cheng], [xingbie], [QQ], [youxiang], [dianhua], [neirong], [addtime], [huifuneirong]) VALUES (1, N'fdsfd', N'1', N'6645465', N'1233@QQ123.com', N'13755025005gdf', N'地方', CAST(0x0000ABA2002EC05C AS DateTime), N'好几个')
SET IDENTITY_INSERT [dbo].[liuyanban] OFF
/****** Object:  Table [dbo].[huodongxinxi]    Script Date: 04/19/2020 03:10:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[huodongxinxi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[huodongbianhao] [varchar](50) NULL,
	[huodongmingcheng] [varchar](50) NULL,
	[huodongriqi] [varchar](50) NULL,
	[huodongdidian] [varchar](50) NULL,
	[huodongjieshao] [varchar](50) NULL,
	[faburen] [varchar](50) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[huodongxinxi] ON
INSERT [dbo].[huodongxinxi] ([ID], [huodongbianhao], [huodongmingcheng], [huodongriqi], [huodongdidian], [huodongjieshao], [faburen], [addtime]) VALUES (1, N'033', N'A活动', N'2020-3-20', N'河滨东路139号', N'', N'014', CAST(0x0000ABA2001A3998 AS DateTime))
INSERT [dbo].[huodongxinxi] ([ID], [huodongbianhao], [huodongmingcheng], [huodongriqi], [huodongdidian], [huodongjieshao], [faburen], [addtime]) VALUES (2, N'004', N'R活动', N'2020-3-20', N'复兴街27号', N'', N'025', CAST(0x0000ABA2001A3998 AS DateTime))
INSERT [dbo].[huodongxinxi] ([ID], [huodongbianhao], [huodongmingcheng], [huodongriqi], [huodongdidian], [huodongjieshao], [faburen], [addtime]) VALUES (3, N'017', N'S活动', N'2020-4-13', N'龙翔路11号', N'', N'020', CAST(0x0000ABA2001A3998 AS DateTime))
INSERT [dbo].[huodongxinxi] ([ID], [huodongbianhao], [huodongmingcheng], [huodongriqi], [huodongdidian], [huodongjieshao], [faburen], [addtime]) VALUES (4, N'032', N'F活动', N'2020-5-16', N'解放路73号', N'', N'015', CAST(0x0000ABA2001A3998 AS DateTime))
INSERT [dbo].[huodongxinxi] ([ID], [huodongbianhao], [huodongmingcheng], [huodongriqi], [huodongdidian], [huodongjieshao], [faburen], [addtime]) VALUES (5, N'001', N'X活动', N'2020-3-20', N'东城路99号', N'', N'001', CAST(0x0000ABA2001A3998 AS DateTime))
INSERT [dbo].[huodongxinxi] ([ID], [huodongbianhao], [huodongmingcheng], [huodongriqi], [huodongdidian], [huodongjieshao], [faburen], [addtime]) VALUES (6, N'04190153414727', N'很过分打道回府', N'2020-05-08', N'和规范化电饭锅', N'规范化复合弓', N'555', CAST(0x0000ABA2001F4190 AS DateTime))
INSERT [dbo].[huodongxinxi] ([ID], [huodongbianhao], [huodongmingcheng], [huodongriqi], [huodongdidian], [huodongjieshao], [faburen], [addtime]) VALUES (7, N'04190252072652', N'A活动', N'2020-05-08', N'和规范化电饭锅', N'规范化复合弓', N'555', CAST(0x0000ABA2002F4CFC AS DateTime))
SET IDENTITY_INSERT [dbo].[huodongxinxi] OFF
/****** Object:  Table [dbo].[huodong]    Script Date: 04/19/2020 03:10:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[huodong](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[yonghuming] [varchar](50) NULL,
	[huodongbianhao] [varchar](50) NULL,
	[huodongmingcheng] [varchar](50) NULL,
	[huodongriqi] [varchar](50) NULL,
	[huodongdidian] [varchar](50) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[huodong] ON
INSERT [dbo].[huodong] ([ID], [yonghuming], [huodongbianhao], [huodongmingcheng], [huodongriqi], [huodongdidian], [addtime]) VALUES (1, N'008', N'006', N'R活动', N'2020-3-29', N'复兴街27号', CAST(0x0000ABA2001A399B AS DateTime))
INSERT [dbo].[huodong] ([ID], [yonghuming], [huodongbianhao], [huodongmingcheng], [huodongriqi], [huodongdidian], [addtime]) VALUES (2, N'027', N'020', N'H活动', N'2020-4-10', N'开明路22号', CAST(0x0000ABA2001A399B AS DateTime))
INSERT [dbo].[huodong] ([ID], [yonghuming], [huodongbianhao], [huodongmingcheng], [huodongriqi], [huodongdidian], [addtime]) VALUES (3, N'022', N'008', N'A活动', N'2020-4-10', N'泰兴路22号', CAST(0x0000ABA2001A399B AS DateTime))
INSERT [dbo].[huodong] ([ID], [yonghuming], [huodongbianhao], [huodongmingcheng], [huodongriqi], [huodongdidian], [addtime]) VALUES (4, N'019', N'010', N'J活动', N'2020-4-10', N'建兴路138号', CAST(0x0000ABA2001A399B AS DateTime))
INSERT [dbo].[huodong] ([ID], [yonghuming], [huodongbianhao], [huodongmingcheng], [huodongriqi], [huodongdidian], [addtime]) VALUES (5, N'001', N'001', N'F活动', N'2020-4-24', N'上江小区2幢', CAST(0x0000ABA2001A399B AS DateTime))
INSERT [dbo].[huodong] ([ID], [yonghuming], [huodongbianhao], [huodongmingcheng], [huodongriqi], [huodongdidian], [addtime]) VALUES (6, N'555', N'001', N'X活动', N'2020-3-20', N'东城路99号', CAST(0x0000ABA2001DAB8C AS DateTime))
INSERT [dbo].[huodong] ([ID], [yonghuming], [huodongbianhao], [huodongmingcheng], [huodongriqi], [huodongdidian], [addtime]) VALUES (7, N'555', N'04190153414727', N'很过分打道回府', N'2020-05-08', N'和规范化电饭锅', CAST(0x0000ABA20023485F AS DateTime))
INSERT [dbo].[huodong] ([ID], [yonghuming], [huodongbianhao], [huodongmingcheng], [huodongriqi], [huodongdidian], [addtime]) VALUES (12, N'555', N'04190252072652', N'A活动', N'2020-05-08', N'和规范化电饭锅', CAST(0x0000ABA2002F97A3 AS DateTime))
INSERT [dbo].[huodong] ([ID], [yonghuming], [huodongbianhao], [huodongmingcheng], [huodongriqi], [huodongdidian], [addtime]) VALUES (9, N'555', N'004', N'R活动', N'2020-3-20', N'复兴街27号', CAST(0x0000ABA2002CC0C6 AS DateTime))
SET IDENTITY_INSERT [dbo].[huodong] OFF
/****** Object:  Table [dbo].[dx]    Script Date: 04/19/2020 03:10:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dx](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[leibie] [varchar](50) NULL,
	[content] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[dx] ON
INSERT [dbo].[dx] ([ID], [leibie], [content]) VALUES (1, N'系统公告', N'<P>&nbsp;&nbsp;&nbsp; 欢迎大家登陆我站，我站主要是为广大朋友精心制作的一个系统，希望大家能够在我站获得一个好心情，谢谢！</P><P>&nbsp;&nbsp;&nbsp; 自强不息，海纳百川，努力学习！</P>')
INSERT [dbo].[dx] ([ID], [leibie], [content]) VALUES (2, N'系统简介', N'<p>以人为本：公司的软、硬环境的设计和管理都应满足人性化的要求，让人性化的关怀触手可及。</p><p>公司精神:团队精神 创新精神 挑战精神 奉献精神</p><p>企业宗旨：诚信为本，稳健经营</p><p>企业价值观：与客户同忧乐</p>')
INSERT [dbo].[dx] ([ID], [leibie], [content]) VALUES (3, N'关于我们', N'&nbsp; &nbsp; 本公司坚持走:以质量求生存,以科技求发展,重合同守信用的道路,生产经营得到迅速发展。我们将以优质的产品和最完善的售后服务来真诚与各界朋友开展广泛的合作,共同创造一个美好的未来!<br />  <br />  公司行为准则:忠信仁义，以人为本。 <br />  忠：即忠诚，  包括三重含义：企业忠于国家、忠于民族；企业忠于客户；员工忠于企业。 <br />  信：即诚信，做企业要立足根本道德、信义，要诚实、讲信用。 <br />  仁：即仁爱，上司对下属要仁爱、体贴，同事之间要关怀、友爱。 <br />  义：即大义，公司在与合作伙伴、客户的交往过程中，不做损人利己的事，维护自己利益的前提是不损害他人利益；对民族、社会要共襄义举，要识大义，明是非。 <br />')
INSERT [dbo].[dx] ([ID], [leibie], [content]) VALUES (4, N'联系方式', N'联系人：xxxxxxxx<br />  电话：0000-0000000<br />  手机：010000000000<br />  传真：0000-0000000<br />  邮件：xxxxxxxx@163.com<br />  地址：您公司的地址<br />  网址：http://www.xxxx.com<br />')
SET IDENTITY_INSERT [dbo].[dx] OFF
/****** Object:  Table [dbo].[allusers]    Script Date: 04/19/2020 03:10:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[allusers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[pwd] [varchar](50) NULL,
	[cx] [varchar](50) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[allusers] ON
INSERT [dbo].[allusers] ([ID], [username], [pwd], [cx], [addtime]) VALUES (1, N'hsg', N'hsg', N'超级管理员', CAST(0x0000ABA2001A3983 AS DateTime))
SET IDENTITY_INSERT [dbo].[allusers] OFF
/****** Object:  Default [DF__youqingli__addti__023D5A04]    Script Date: 04/19/2020 03:10:24 ******/
ALTER TABLE [dbo].[youqinglianjie] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__yonghuzhu__addti__07020F21]    Script Date: 04/19/2020 03:10:24 ******/
ALTER TABLE [dbo].[yonghuzhuce] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__yonghuzhuc__issh__07F6335A]    Script Date: 04/19/2020 03:10:24 ******/
ALTER TABLE [dbo].[yonghuzhuce] ADD  DEFAULT ('否') FOR [issh]
GO
/****** Object:  Default [DF__yaoqing__issh__173876EA]    Script Date: 04/19/2020 03:10:24 ******/
ALTER TABLE [dbo].[yaoqing] ADD  DEFAULT ('否') FOR [issh]
GO
/****** Object:  Default [DF__yaoqing__addtime__182C9B23]    Script Date: 04/19/2020 03:10:24 ******/
ALTER TABLE [dbo].[yaoqing] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__xinwenton__tianj__0425A276]    Script Date: 04/19/2020 03:10:24 ******/
ALTER TABLE [dbo].[xinwentongzhi] ADD  DEFAULT ('hsg') FOR [tianjiaren]
GO
/****** Object:  Default [DF__xinwenton__addti__0519C6AF]    Script Date: 04/19/2020 03:10:24 ******/
ALTER TABLE [dbo].[xinwentongzhi] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__toupiaoxi__addti__15502E78]    Script Date: 04/19/2020 03:10:24 ******/
ALTER TABLE [dbo].[toupiaoxinxi] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__toupiao__addtime__117F9D94]    Script Date: 04/19/2020 03:10:24 ******/
ALTER TABLE [dbo].[toupiao] ADD  CONSTRAINT [DF__toupiao__addtime__117F9D94]  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__shoucangj__addti__0DAF0CB0]    Script Date: 04/19/2020 03:10:24 ******/
ALTER TABLE [dbo].[shoucangjilu] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__pinglun__addtime__0BC6C43E]    Script Date: 04/19/2020 03:10:24 ******/
ALTER TABLE [dbo].[pinglun] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__liuyanban__addti__09DE7BCC]    Script Date: 04/19/2020 03:10:24 ******/
ALTER TABLE [dbo].[liuyanban] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__huodongxi__addti__0F975522]    Script Date: 04/19/2020 03:10:24 ******/
ALTER TABLE [dbo].[huodongxinxi] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__huodong__addtime__1367E606]    Script Date: 04/19/2020 03:10:24 ******/
ALTER TABLE [dbo].[huodong] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__allusers__cx__7E6CC920]    Script Date: 04/19/2020 03:10:24 ******/
ALTER TABLE [dbo].[allusers] ADD  DEFAULT ('普通管理员') FOR [cx]
GO
/****** Object:  Default [DF__allusers__addtim__7F60ED59]    Script Date: 04/19/2020 03:10:24 ******/
ALTER TABLE [dbo].[allusers] ADD  DEFAULT (getdate()) FOR [addtime]
GO
