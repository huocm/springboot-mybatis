<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%//@include file="../../sessionValidate.jsp" %>
<%@include file="../../taglibs.jsp" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link rel="stylesheet" href="jsp/css/mainstyle.css" type="text/css">
<title>合同信息打印</title>
     <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
     <script language="JavaScript" src="<s:url value='/js/global.js'/>" ></script>
     <script language="JavaScript" src="<s:url value='/jscript/date.js'/>" ></script>
     <script language="JavaScript" src="<%= basePath %>/js/myAjax.js" ></script>
<style type="text/css">
<!--
.STYLE5 {	color: #000000;
	font-size: 12px;
}
-->
</style>
</head>

<html xmlns:v="urn:schemas-microsoft-com:vml"
xmlns:o="urn:schemas-microsoft-com:office:office"
xmlns:w="urn:schemas-microsoft-com:office:word"
xmlns:m="http://schemas.microsoft.com/office/2004/12/omml"
xmlns="http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=Content-Type content="text/html; charset=gb2312">
<meta name=ProgId content=Word.Document>
<meta name=Generator content="Microsoft Word 14">
<meta name=Originator content="Microsoft Word 14">
<!-- 
<link rel=File-List href="金程健康%20合约书（已审）.files/filelist.xml">
<link rel=Edit-Time-Data href="金程健康%20合约书（已审）.files/editdata.mso">
 -->

<!--[if !mso]>
<style>
v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style>
<![endif]--><!--[if gte mso 9]><xml>
 <o:DocumentProperties>
  <o:Author>hp</o:Author>
  <o:LastAuthor>FtpDown</o:LastAuthor>
  <o:Revision>2</o:Revision>
  <o:TotalTime>44</o:TotalTime>
  <o:Created>2014-07-01T23:31:00Z</o:Created>
  <o:LastSaved>2014-07-01T23:31:00Z</o:LastSaved>
  <o:Pages>5</o:Pages>
  <o:Words>695</o:Words>
  <o:Characters>3964</o:Characters>
  <o:Company>Hewlett-Packard</o:Company>
  <o:Lines>33</o:Lines>
  <o:Paragraphs>9</o:Paragraphs>
  <o:CharactersWithSpaces>4650</o:CharactersWithSpaces>
  <o:Version>14.00</o:Version>
 </o:DocumentProperties>
 <o:OfficeDocumentSettings>
  <o:RelyOnVML/>
  <o:AllowPNG/>
 </o:OfficeDocumentSettings>
</xml><![endif]-->
<!--
<link rel=themeData href="金程健康%20合约书（已审）.files/themedata.thmx">
<link rel=colorSchemeMapping href="金程健康%20合约书（已审）.files/colorschememapping.xml">
-->

<!--[if gte mso 9]><xml>
 <w:WordDocument>
  <w:SpellingState>Clean</w:SpellingState>
  <w:GrammarState>Clean</w:GrammarState>
  <w:TrackMoves>false</w:TrackMoves>
  <w:TrackFormatting/>
  <w:PunctuationKerning/>
  <w:DrawingGridHorizontalSpacing>5.25 磅</w:DrawingGridHorizontalSpacing>
  <w:DrawingGridVerticalSpacing>7.8 磅</w:DrawingGridVerticalSpacing>
  <w:DisplayHorizontalDrawingGridEvery>0</w:DisplayHorizontalDrawingGridEvery>
  <w:DisplayVerticalDrawingGridEvery>2</w:DisplayVerticalDrawingGridEvery>
  <w:ValidateAgainstSchemas/>
  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>
  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>
  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>
  <w:DoNotPromoteQF/>
  <w:LidThemeOther>EN-US</w:LidThemeOther>
  <w:LidThemeAsian>ZH-CN</w:LidThemeAsian>
  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>
  <w:Compatibility>
   <w:SpaceForUL/>
   <w:BalanceSingleByteDoubleByteWidth/>
   <w:DoNotLeaveBackslashAlone/>
   <w:ULTrailSpace/>
   <w:DoNotExpandShiftReturn/>
   <w:AdjustLineHeightInTable/>
   <w:BreakWrappedTables/>
   <w:SnapToGridInCell/>
   <w:WrapTextWithPunct/>
   <w:UseAsianBreakRules/>
   <w:DontGrowAutofit/>
   <w:SplitPgBreakAndParaMark/>
   <w:UseFELayout/>
  </w:Compatibility>
  <m:mathPr>
   <m:mathFont m:val="Cambria Math"/>
   <m:brkBin m:val="before"/>
   <m:brkBinSub m:val="&#45;-"/>
   <m:smallFrac m:val="off"/>
   <m:dispDef/>
   <m:lMargin m:val="0"/>
   <m:rMargin m:val="0"/>
   <m:defJc m:val="centerGroup"/>
   <m:wrapIndent m:val="1440"/>
   <m:intLim m:val="subSup"/>
   <m:naryLim m:val="undOvr"/>
  </m:mathPr></w:WordDocument>
</xml><![endif]--><!--[if gte mso 9]><xml>
 <w:LatentStyles DefLockedState="false" DefUnhideWhenUsed="true"
  DefSemiHidden="true" DefQFormat="false" DefPriority="99"
  LatentStyleCount="267">
  <w:LsdException Locked="false" Priority="0" SemiHidden="false"
   UnhideWhenUsed="false" QFormat="true" Name="Normal"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="false"
   UnhideWhenUsed="false" QFormat="true" Name="heading 1"/>
  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 2"/>
  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 3"/>
  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 4"/>
  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 5"/>
  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 6"/>
  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 7"/>
  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 8"/>
  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 9"/>
  <w:LsdException Locked="false" Priority="39" Name="toc 1"/>
  <w:LsdException Locked="false" Priority="39" Name="toc 2"/>
  <w:LsdException Locked="false" Priority="39" Name="toc 3"/>
  <w:LsdException Locked="false" Priority="39" Name="toc 4"/>
  <w:LsdException Locked="false" Priority="39" Name="toc 5"/>
  <w:LsdException Locked="false" Priority="39" Name="toc 6"/>
  <w:LsdException Locked="false" Priority="39" Name="toc 7"/>
  <w:LsdException Locked="false" Priority="39" Name="toc 8"/>
  <w:LsdException Locked="false" Priority="39" Name="toc 9"/>
  <w:LsdException Locked="false" Priority="0" Name="footer"/>
  <w:LsdException Locked="false" Priority="35" QFormat="true" Name="caption"/>
  <w:LsdException Locked="false" Priority="10" SemiHidden="false"
   UnhideWhenUsed="false" QFormat="true" Name="Title"/>
  <w:LsdException Locked="false" Priority="1" Name="Default Paragraph Font"/>
  <w:LsdException Locked="false" Priority="11" SemiHidden="false"
   UnhideWhenUsed="false" QFormat="true" Name="Subtitle"/>
  <w:LsdException Locked="false" Priority="22" SemiHidden="false"
   UnhideWhenUsed="false" QFormat="true" Name="Strong"/>
  <w:LsdException Locked="false" Priority="20" SemiHidden="false"
   UnhideWhenUsed="false" QFormat="true" Name="Emphasis"/>
  <w:LsdException Locked="false" Priority="59" SemiHidden="false"
   UnhideWhenUsed="false" Name="Table Grid"/>
  <w:LsdException Locked="false" UnhideWhenUsed="false" Name="Placeholder Text"/>
  <w:LsdException Locked="false" Priority="1" SemiHidden="false"
   UnhideWhenUsed="false" QFormat="true" Name="No Spacing"/>
  <w:LsdException Locked="false" Priority="60" SemiHidden="false"
   UnhideWhenUsed="false" Name="Light Shading"/>
  <w:LsdException Locked="false" Priority="61" SemiHidden="false"
   UnhideWhenUsed="false" Name="Light List"/>
  <w:LsdException Locked="false" Priority="62" SemiHidden="false"
   UnhideWhenUsed="false" Name="Light Grid"/>
  <w:LsdException Locked="false" Priority="63" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium Shading 1"/>
  <w:LsdException Locked="false" Priority="64" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium Shading 2"/>
  <w:LsdException Locked="false" Priority="65" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium List 1"/>
  <w:LsdException Locked="false" Priority="66" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium List 2"/>
  <w:LsdException Locked="false" Priority="67" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium Grid 1"/>
  <w:LsdException Locked="false" Priority="68" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium Grid 2"/>
  <w:LsdException Locked="false" Priority="69" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium Grid 3"/>
  <w:LsdException Locked="false" Priority="70" SemiHidden="false"
   UnhideWhenUsed="false" Name="Dark List"/>
  <w:LsdException Locked="false" Priority="71" SemiHidden="false"
   UnhideWhenUsed="false" Name="Colorful Shading"/>
  <w:LsdException Locked="false" Priority="72" SemiHidden="false"
   UnhideWhenUsed="false" Name="Colorful List"/>
  <w:LsdException Locked="false" Priority="73" SemiHidden="false"
   UnhideWhenUsed="false" Name="Colorful Grid"/>
  <w:LsdException Locked="false" Priority="60" SemiHidden="false"
   UnhideWhenUsed="false" Name="Light Shading Accent 1"/>
  <w:LsdException Locked="false" Priority="61" SemiHidden="false"
   UnhideWhenUsed="false" Name="Light List Accent 1"/>
  <w:LsdException Locked="false" Priority="62" SemiHidden="false"
   UnhideWhenUsed="false" Name="Light Grid Accent 1"/>
  <w:LsdException Locked="false" Priority="63" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 1"/>
  <w:LsdException Locked="false" Priority="64" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 1"/>
  <w:LsdException Locked="false" Priority="65" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium List 1 Accent 1"/>
  <w:LsdException Locked="false" UnhideWhenUsed="false" Name="Revision"/>
  <w:LsdException Locked="false" Priority="34" SemiHidden="false"
   UnhideWhenUsed="false" QFormat="true" Name="List Paragraph"/>
  <w:LsdException Locked="false" Priority="29" SemiHidden="false"
   UnhideWhenUsed="false" QFormat="true" Name="Quote"/>
  <w:LsdException Locked="false" Priority="30" SemiHidden="false"
   UnhideWhenUsed="false" QFormat="true" Name="Intense Quote"/>
  <w:LsdException Locked="false" Priority="66" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium List 2 Accent 1"/>
  <w:LsdException Locked="false" Priority="67" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 1"/>
  <w:LsdException Locked="false" Priority="68" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 1"/>
  <w:LsdException Locked="false" Priority="69" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 1"/>
  <w:LsdException Locked="false" Priority="70" SemiHidden="false"
   UnhideWhenUsed="false" Name="Dark List Accent 1"/>
  <w:LsdException Locked="false" Priority="71" SemiHidden="false"
   UnhideWhenUsed="false" Name="Colorful Shading Accent 1"/>
  <w:LsdException Locked="false" Priority="72" SemiHidden="false"
   UnhideWhenUsed="false" Name="Colorful List Accent 1"/>
  <w:LsdException Locked="false" Priority="73" SemiHidden="false"
   UnhideWhenUsed="false" Name="Colorful Grid Accent 1"/>
  <w:LsdException Locked="false" Priority="60" SemiHidden="false"
   UnhideWhenUsed="false" Name="Light Shading Accent 2"/>
  <w:LsdException Locked="false" Priority="61" SemiHidden="false"
   UnhideWhenUsed="false" Name="Light List Accent 2"/>
  <w:LsdException Locked="false" Priority="62" SemiHidden="false"
   UnhideWhenUsed="false" Name="Light Grid Accent 2"/>
  <w:LsdException Locked="false" Priority="63" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 2"/>
  <w:LsdException Locked="false" Priority="64" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 2"/>
  <w:LsdException Locked="false" Priority="65" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium List 1 Accent 2"/>
  <w:LsdException Locked="false" Priority="66" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium List 2 Accent 2"/>
  <w:LsdException Locked="false" Priority="67" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 2"/>
  <w:LsdException Locked="false" Priority="68" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 2"/>
  <w:LsdException Locked="false" Priority="69" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 2"/>
  <w:LsdException Locked="false" Priority="70" SemiHidden="false"
   UnhideWhenUsed="false" Name="Dark List Accent 2"/>
  <w:LsdException Locked="false" Priority="71" SemiHidden="false"
   UnhideWhenUsed="false" Name="Colorful Shading Accent 2"/>
  <w:LsdException Locked="false" Priority="72" SemiHidden="false"
   UnhideWhenUsed="false" Name="Colorful List Accent 2"/>
  <w:LsdException Locked="false" Priority="73" SemiHidden="false"
   UnhideWhenUsed="false" Name="Colorful Grid Accent 2"/>
  <w:LsdException Locked="false" Priority="60" SemiHidden="false"
   UnhideWhenUsed="false" Name="Light Shading Accent 3"/>
  <w:LsdException Locked="false" Priority="61" SemiHidden="false"
   UnhideWhenUsed="false" Name="Light List Accent 3"/>
  <w:LsdException Locked="false" Priority="62" SemiHidden="false"
   UnhideWhenUsed="false" Name="Light Grid Accent 3"/>
  <w:LsdException Locked="false" Priority="63" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 3"/>
  <w:LsdException Locked="false" Priority="64" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 3"/>
  <w:LsdException Locked="false" Priority="65" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium List 1 Accent 3"/>
  <w:LsdException Locked="false" Priority="66" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium List 2 Accent 3"/>
  <w:LsdException Locked="false" Priority="67" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 3"/>
  <w:LsdException Locked="false" Priority="68" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 3"/>
  <w:LsdException Locked="false" Priority="69" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 3"/>
  <w:LsdException Locked="false" Priority="70" SemiHidden="false"
   UnhideWhenUsed="false" Name="Dark List Accent 3"/>
  <w:LsdException Locked="false" Priority="71" SemiHidden="false"
   UnhideWhenUsed="false" Name="Colorful Shading Accent 3"/>
  <w:LsdException Locked="false" Priority="72" SemiHidden="false"
   UnhideWhenUsed="false" Name="Colorful List Accent 3"/>
  <w:LsdException Locked="false" Priority="73" SemiHidden="false"
   UnhideWhenUsed="false" Name="Colorful Grid Accent 3"/>
  <w:LsdException Locked="false" Priority="60" SemiHidden="false"
   UnhideWhenUsed="false" Name="Light Shading Accent 4"/>
  <w:LsdException Locked="false" Priority="61" SemiHidden="false"
   UnhideWhenUsed="false" Name="Light List Accent 4"/>
  <w:LsdException Locked="false" Priority="62" SemiHidden="false"
   UnhideWhenUsed="false" Name="Light Grid Accent 4"/>
  <w:LsdException Locked="false" Priority="63" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 4"/>
  <w:LsdException Locked="false" Priority="64" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 4"/>
  <w:LsdException Locked="false" Priority="65" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium List 1 Accent 4"/>
  <w:LsdException Locked="false" Priority="66" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium List 2 Accent 4"/>
  <w:LsdException Locked="false" Priority="67" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 4"/>
  <w:LsdException Locked="false" Priority="68" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 4"/>
  <w:LsdException Locked="false" Priority="69" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 4"/>
  <w:LsdException Locked="false" Priority="70" SemiHidden="false"
   UnhideWhenUsed="false" Name="Dark List Accent 4"/>
  <w:LsdException Locked="false" Priority="71" SemiHidden="false"
   UnhideWhenUsed="false" Name="Colorful Shading Accent 4"/>
  <w:LsdException Locked="false" Priority="72" SemiHidden="false"
   UnhideWhenUsed="false" Name="Colorful List Accent 4"/>
  <w:LsdException Locked="false" Priority="73" SemiHidden="false"
   UnhideWhenUsed="false" Name="Colorful Grid Accent 4"/>
  <w:LsdException Locked="false" Priority="60" SemiHidden="false"
   UnhideWhenUsed="false" Name="Light Shading Accent 5"/>
  <w:LsdException Locked="false" Priority="61" SemiHidden="false"
   UnhideWhenUsed="false" Name="Light List Accent 5"/>
  <w:LsdException Locked="false" Priority="62" SemiHidden="false"
   UnhideWhenUsed="false" Name="Light Grid Accent 5"/>
  <w:LsdException Locked="false" Priority="63" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 5"/>
  <w:LsdException Locked="false" Priority="64" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 5"/>
  <w:LsdException Locked="false" Priority="65" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium List 1 Accent 5"/>
  <w:LsdException Locked="false" Priority="66" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium List 2 Accent 5"/>
  <w:LsdException Locked="false" Priority="67" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 5"/>
  <w:LsdException Locked="false" Priority="68" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 5"/>
  <w:LsdException Locked="false" Priority="69" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 5"/>
  <w:LsdException Locked="false" Priority="70" SemiHidden="false"
   UnhideWhenUsed="false" Name="Dark List Accent 5"/>
  <w:LsdException Locked="false" Priority="71" SemiHidden="false"
   UnhideWhenUsed="false" Name="Colorful Shading Accent 5"/>
  <w:LsdException Locked="false" Priority="72" SemiHidden="false"
   UnhideWhenUsed="false" Name="Colorful List Accent 5"/>
  <w:LsdException Locked="false" Priority="73" SemiHidden="false"
   UnhideWhenUsed="false" Name="Colorful Grid Accent 5"/>
  <w:LsdException Locked="false" Priority="60" SemiHidden="false"
   UnhideWhenUsed="false" Name="Light Shading Accent 6"/>
  <w:LsdException Locked="false" Priority="61" SemiHidden="false"
   UnhideWhenUsed="false" Name="Light List Accent 6"/>
  <w:LsdException Locked="false" Priority="62" SemiHidden="false"
   UnhideWhenUsed="false" Name="Light Grid Accent 6"/>
  <w:LsdException Locked="false" Priority="63" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 6"/>
  <w:LsdException Locked="false" Priority="64" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 6"/>
  <w:LsdException Locked="false" Priority="65" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium List 1 Accent 6"/>
  <w:LsdException Locked="false" Priority="66" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium List 2 Accent 6"/>
  <w:LsdException Locked="false" Priority="67" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 6"/>
  <w:LsdException Locked="false" Priority="68" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 6"/>
  <w:LsdException Locked="false" Priority="69" SemiHidden="false"
   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 6"/>
  <w:LsdException Locked="false" Priority="70" SemiHidden="false"
   UnhideWhenUsed="false" Name="Dark List Accent 6"/>
  <w:LsdException Locked="false" Priority="71" SemiHidden="false"
   UnhideWhenUsed="false" Name="Colorful Shading Accent 6"/>
  <w:LsdException Locked="false" Priority="72" SemiHidden="false"
   UnhideWhenUsed="false" Name="Colorful List Accent 6"/>
  <w:LsdException Locked="false" Priority="73" SemiHidden="false"
   UnhideWhenUsed="false" Name="Colorful Grid Accent 6"/>
  <w:LsdException Locked="false" Priority="19" SemiHidden="false"
   UnhideWhenUsed="false" QFormat="true" Name="Subtle Emphasis"/>
  <w:LsdException Locked="false" Priority="21" SemiHidden="false"
   UnhideWhenUsed="false" QFormat="true" Name="Intense Emphasis"/>
  <w:LsdException Locked="false" Priority="31" SemiHidden="false"
   UnhideWhenUsed="false" QFormat="true" Name="Subtle Reference"/>
  <w:LsdException Locked="false" Priority="32" SemiHidden="false"
   UnhideWhenUsed="false" QFormat="true" Name="Intense Reference"/>
  <w:LsdException Locked="false" Priority="33" SemiHidden="false"
   UnhideWhenUsed="false" QFormat="true" Name="Book Title"/>
  <w:LsdException Locked="false" Priority="37" Name="Bibliography"/>
  <w:LsdException Locked="false" Priority="39" QFormat="true" Name="TOC Heading"/>
 </w:LatentStyles>
</xml><![endif]-->
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:宋体;
	panose-1:2 1 6 0 3 1 1 1 1 1;
	mso-font-alt:SimSun;
	mso-font-charset:134;
	mso-generic-font-family:auto;
	mso-font-pitch:variable;
	mso-font-signature:3 135135232 16 0 262145 0;}
@font-face
	{font-family:宋体;
	panose-1:2 1 6 0 3 1 1 1 1 1;
	mso-font-alt:SimSun;
	mso-font-charset:134;
	mso-generic-font-family:auto;
	mso-font-pitch:variable;
	mso-font-signature:3 135135232 16 0 262145 0;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;
	mso-font-charset:0;
	mso-generic-font-family:swiss;
	mso-font-pitch:variable;
	mso-font-signature:-520092929 1073786111 9 0 415 0;}
@font-face
	{font-family:"\@宋体";
	panose-1:2 1 6 0 3 1 1 1 1 1;
	mso-font-charset:134;
	mso-generic-font-family:auto;
	mso-font-pitch:variable;
	mso-font-signature:3 135135232 16 0 262145 0;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-parent:"";
	margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	mso-pagination:none;
	font-size:10.5pt;
	mso-bidi-font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:宋体;
	mso-fareast-theme-font:minor-fareast;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:"Times New Roman";
	mso-bidi-theme-font:minor-bidi;
	mso-font-kerning:1.0pt;}
p.MsoHeader, li.MsoHeader, div.MsoHeader
	{mso-style-noshow:yes;
	mso-style-priority:99;
	mso-style-link:"页眉 Char";
	margin:0cm;
	margin-bottom:.0001pt;
	text-align:center;
	mso-pagination:none;
	tab-stops:center 207.65pt right 415.3pt;
	layout-grid-mode:char;
	border:none;
	mso-border-bottom-alt:solid windowtext .75pt;
	padding:0cm;
	mso-padding-alt:0cm 0cm 1.0pt 0cm;
	font-size:9.0pt;
	font-family:"Calibri","sans-serif";
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:宋体;
	mso-fareast-theme-font:minor-fareast;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:"Times New Roman";
	mso-bidi-theme-font:minor-bidi;
	mso-font-kerning:1.0pt;}
p.MsoFooter, li.MsoFooter, div.MsoFooter
	{mso-style-link:"页脚 Char";
	margin:0cm;
	margin-bottom:.0001pt;
	mso-pagination:none;
	tab-stops:center 207.65pt right 415.3pt;
	layout-grid-mode:char;
	font-size:9.0pt;
	font-family:"Calibri","sans-serif";
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:宋体;
	mso-fareast-theme-font:minor-fareast;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:"Times New Roman";
	mso-bidi-theme-font:minor-bidi;
	mso-font-kerning:1.0pt;}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-noshow:yes;
	mso-style-priority:99;
	mso-style-link:"批注框文本 Char";
	margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	mso-pagination:none;
	font-size:9.0pt;
	font-family:"Calibri","sans-serif";
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:宋体;
	mso-fareast-theme-font:minor-fareast;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:"Times New Roman";
	mso-bidi-theme-font:minor-bidi;
	mso-font-kerning:1.0pt;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	mso-style-unhide:no;
	mso-style-qformat:yes;
	margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	text-indent:21.0pt;
	mso-char-indent-count:2.0;
	mso-pagination:none;
	font-size:10.5pt;
	mso-bidi-font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:宋体;
	mso-fareast-theme-font:minor-fareast;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:"Times New Roman";
	mso-bidi-theme-font:minor-bidi;
	mso-font-kerning:1.0pt;}
span.Char
	{mso-style-name:"页眉 Char";
	mso-style-noshow:yes;
	mso-style-priority:99;
	mso-style-unhide:no;
	mso-style-locked:yes;
	mso-style-link:页眉;
	mso-ansi-font-size:9.0pt;
	mso-bidi-font-size:9.0pt;}
span.Char0
	{mso-style-name:"页脚 Char";
	mso-style-noshow:yes;
	mso-style-priority:99;
	mso-style-unhide:no;
	mso-style-locked:yes;
	mso-style-link:页脚;
	mso-ansi-font-size:9.0pt;
	mso-bidi-font-size:9.0pt;}
span.Char1
	{mso-style-name:"批注框文本 Char";
	mso-style-noshow:yes;
	mso-style-priority:99;
	mso-style-unhide:no;
	mso-style-locked:yes;
	mso-style-link:批注框文本;
	mso-ansi-font-size:9.0pt;
	mso-bidi-font-size:9.0pt;}
span.GramE
	{mso-style-name:"";
	mso-gram-e:yes;}
.MsoChpDefault
	{mso-style-type:export-only;
	mso-default-props:yes;
	font-family:"Calibri","sans-serif";
	mso-bidi-font-family:"Times New Roman";
	mso-bidi-theme-font:minor-bidi;}
 /* Page Definitions */
 @page
	{mso-page-border-surround-header:no;
	mso-page-border-surround-footer:no;
	mso-footnote-separator:url("金程健康%20合约书（已审）.files/header.htm") fs;
	mso-footnote-continuation-separator:url("金程健康%20合约书（已审）.files/header.htm") fcs;
	mso-endnote-separator:url("金程健康%20合约书（已审）.files/header.htm") es;
	mso-endnote-continuation-separator:url("金程健康%20合约书（已审）.files/header.htm") ecs;}
@page WordSection1
	{size:595.3pt 841.9pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;
	mso-header-margin:42.55pt;
	mso-footer-margin:49.6pt;
	mso-header:url("金程健康%20合约书（已审）.files/header.htm") h1;
	mso-footer:url("金程健康%20合约书（已审）.files/header.htm") f1;
	mso-paper-source:0;
	layout-grid:15.6pt;}
div.WordSection1
	{page:WordSection1;}
 /* List Definitions */
 @list l0
	{mso-list-id:32579842;
	mso-list-type:hybrid;
	mso-list-template-ids:-902805440 1408659600 67698713 67698715 67698703 67698713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-start-at:3;
	mso-level-text:%1、;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:39.3pt;
	text-indent:-18.0pt;
	mso-ansi-font-weight:normal;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%2\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:63.3pt;
	text-indent:-21.0pt;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:84.3pt;
	text-indent:-21.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:105.3pt;
	text-indent:-21.0pt;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%5\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:126.3pt;
	text-indent:-21.0pt;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:147.3pt;
	text-indent:-21.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:168.3pt;
	text-indent:-21.0pt;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%8\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:189.3pt;
	text-indent:-21.0pt;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:210.3pt;
	text-indent:-21.0pt;}
@list l1
	{mso-list-id:402148520;
	mso-list-type:hybrid;
	mso-list-template-ids:578329922 699148888 -805288880 177477642 -2109947094 -968194086 832354554 -886399840 832876182 1527835130;}
@list l1:level1
	{mso-level-number-format:japanese-counting;
	mso-level-text:第%1条;
	mso-level-tab-stop:60.0pt;
	mso-level-number-position:left;
	margin-left:60.0pt;
	text-indent:-42.0pt;}
@list l1:level2
	{mso-level-tab-stop:60.0pt;
	mso-level-number-position:left;
	margin-left:60.0pt;
	text-indent:-21.0pt;}
@list l1:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:81.0pt;
	mso-level-number-position:right;
	margin-left:81.0pt;
	text-indent:-21.0pt;}
@list l1:level4
	{mso-level-tab-stop:102.0pt;
	mso-level-number-position:left;
	margin-left:102.0pt;
	text-indent:-21.0pt;}
@list l1:level5
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%5\)";
	mso-level-tab-stop:123.0pt;
	mso-level-number-position:left;
	margin-left:123.0pt;
	text-indent:-21.0pt;}
@list l1:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:144.0pt;
	mso-level-number-position:right;
	margin-left:144.0pt;
	text-indent:-21.0pt;}
@list l1:level7
	{mso-level-tab-stop:165.0pt;
	mso-level-number-position:left;
	margin-left:165.0pt;
	text-indent:-21.0pt;}
@list l1:level8
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%8\)";
	mso-level-tab-stop:186.0pt;
	mso-level-number-position:left;
	margin-left:186.0pt;
	text-indent:-21.0pt;}
@list l1:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:207.0pt;
	mso-level-number-position:right;
	margin-left:207.0pt;
	text-indent:-21.0pt;}
@list l2
	{mso-list-id:432752437;
	mso-list-type:hybrid;
	mso-list-template-ids:-1986990708 481442874 67698713 67698715 67698703 67698713 67698715 67698703 67698713 67698715;}
@list l2:level1
	{mso-level-text:%1、;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:39.0pt;
	text-indent:-18.0pt;}
@list l2:level2
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%2\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:63.0pt;
	text-indent:-21.0pt;}
@list l2:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:84.0pt;
	text-indent:-21.0pt;}
@list l2:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:105.0pt;
	text-indent:-21.0pt;}
@list l2:level5
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%5\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:126.0pt;
	text-indent:-21.0pt;}
@list l2:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:147.0pt;
	text-indent:-21.0pt;}
@list l2:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:168.0pt;
	text-indent:-21.0pt;}
@list l2:level8
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%8\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:189.0pt;
	text-indent:-21.0pt;}
@list l2:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:210.0pt;
	text-indent:-21.0pt;}
@list l3
	{mso-list-id:818809603;
	mso-list-type:hybrid;
	mso-list-template-ids:1176004742 481442874 67698713 67698715 67698703 67698713 67698715 67698703 67698713 67698715;}
@list l3:level1
	{mso-level-text:%1、;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:39.0pt;
	text-indent:-18.0pt;}
@list l3:level2
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%2\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:42.0pt;
	text-indent:-21.0pt;}
@list l3:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:63.0pt;
	text-indent:-21.0pt;}
@list l3:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:84.0pt;
	text-indent:-21.0pt;}
@list l3:level5
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%5\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:105.0pt;
	text-indent:-21.0pt;}
@list l3:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:126.0pt;
	text-indent:-21.0pt;}
@list l3:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:147.0pt;
	text-indent:-21.0pt;}
@list l3:level8
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%8\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:168.0pt;
	text-indent:-21.0pt;}
@list l3:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:189.0pt;
	text-indent:-21.0pt;}
@list l4
	{mso-list-id:1206060073;
	mso-list-type:hybrid;
	mso-list-template-ids:-1332442434 798506454 -1791044832 95850382 -860878916 -210331638 1378754838 -1988693274 -43505036 789239866;}
@list l4:level1
	{mso-level-start-at:3;
	mso-level-number-format:japanese-counting;
	mso-level-text:第%1条;
	mso-level-tab-stop:0cm;
	mso-level-number-position:left;
	margin-left:50.2pt;
	text-indent:-36.0pt;}
@list l4:level2
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%2\)";
	mso-level-tab-stop:0cm;
	mso-level-number-position:left;
	margin-left:60.0pt;
	text-indent:-21.0pt;}
@list l4:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:0cm;
	mso-level-number-position:right;
	margin-left:81.0pt;
	text-indent:-21.0pt;}
@list l4:level4
	{mso-level-tab-stop:0cm;
	mso-level-number-position:left;
	margin-left:102.0pt;
	text-indent:-21.0pt;}
@list l4:level5
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%5\)";
	mso-level-tab-stop:0cm;
	mso-level-number-position:left;
	margin-left:123.0pt;
	text-indent:-21.0pt;}
@list l4:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:0cm;
	mso-level-number-position:right;
	margin-left:144.0pt;
	text-indent:-21.0pt;}
@list l4:level7
	{mso-level-tab-stop:0cm;
	mso-level-number-position:left;
	margin-left:165.0pt;
	text-indent:-21.0pt;}
@list l4:level8
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%8\)";
	mso-level-tab-stop:0cm;
	mso-level-number-position:left;
	margin-left:186.0pt;
	text-indent:-21.0pt;}
@list l4:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:0cm;
	mso-level-number-position:right;
	margin-left:207.0pt;
	text-indent:-21.0pt;}
@list l5
	{mso-list-id:2098939028;
	mso-list-type:hybrid;
	mso-list-template-ids:-666236172 -229986756 67698713 67698715 67698703 67698713 67698715 67698703 67698713 67698715;}
@list l5:level1
	{mso-level-text:%1、;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:39.75pt;
	text-indent:-18.0pt;
	mso-ansi-font-weight:normal;}
@list l5:level2
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%2\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:63.75pt;
	text-indent:-21.0pt;}
@list l5:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:84.75pt;
	text-indent:-21.0pt;}
@list l5:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:105.75pt;
	text-indent:-21.0pt;}
@list l5:level5
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%5\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:126.75pt;
	text-indent:-21.0pt;}
@list l5:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:147.75pt;
	text-indent:-21.0pt;}
@list l5:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:168.75pt;
	text-indent:-21.0pt;}
@list l5:level8
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%8\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:189.75pt;
	text-indent:-21.0pt;}
@list l5:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:210.75pt;
	text-indent:-21.0pt;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
-->
</style>
<!--[if gte mso 10]>
<style>
 /* Style Definitions */
 table.MsoNormalTable
	{mso-style-name:普通表格;
	mso-tstyle-rowband-size:0;
	mso-tstyle-colband-size:0;
	mso-style-noshow:yes;
	mso-style-priority:99;
	mso-style-parent:"";
	mso-padding-alt:0cm 5.4pt 0cm 5.4pt;
	mso-para-margin:0cm;
	mso-para-margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	font-size:10.5pt;
	mso-bidi-font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:"Times New Roman";
	mso-bidi-theme-font:minor-bidi;
	mso-font-kerning:1.0pt;}
</style>
<![endif]--><!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext="edit" spidmax="2049"/>
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext="edit">
  <o:idmap v:ext="edit" data="1"/>
 </o:shapelayout></xml><![endif]-->
</head>

<body lang=ZH-CN style='tab-interval:21.0pt;text-justify-trim:punctuation'>

<div class=WordSection1 style='layout-grid:15.6pt'>

<p class=MsoNormal align=center style='text-align:center;background:white'><b><span
style='font-size:20.0pt;font-family:宋体;mso-ascii-font-family:"Times New Roman";
mso-bidi-font-family:"Times New Roman"'>合约书</span></b><b><span lang=EN-US
style='font-size:20.0pt;font-family:"Times New Roman","serif";mso-fareast-font-family:
宋体'><o:p></o:p></span></b></p>

<p class=MsoNormal style='background:white'><span lang=EN-US style='mso-bidi-font-size:
12.0pt;font-family:"Times New Roman","serif";mso-fareast-font-family:宋体'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='background:white'><b><span style='font-size:11.0pt;
font-family:宋体;mso-bidi-font-family:"Times New Roman"'>甲方：<span lang=EN-US><o:p>${t_order.customername }</o:p></span></span></b></p>

<p class=MsoNormal style='background:white'><b><span style='font-size:11.0pt;
font-family:宋体;mso-bidi-font-family:"Times New Roman"'>乙方：上海金程健康管理有限公司<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='background:white'><span lang=EN-US style='mso-bidi-font-size:
12.0pt;font-family:"Times New Roman","serif";mso-fareast-font-family:宋体'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='text-indent:21.75pt;background:white'><span
class=GramE><span style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'>乙方系专业</span></span><span style='mso-bidi-font-size:10.5pt;
font-family:宋体;mso-bidi-font-family:"Times New Roman"'>的第三<span class=GramE>方健康</span>管理机构，提供医疗咨询服务。现应甲方要求向其推荐一所最合适甲方的体检机构，推荐的体检机构须有资深的医疗专家和先进的医疗设施，能为甲方提供良好的体检和医疗健康服务。为更好地推进甲、乙双方业务发展，更好地服务于甲方，为双方建立长期而稳定的合作关系，本着互惠互利的原则，经双方友好协商，达成以下合作协议：<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:21.75pt;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:-24.0pt;line-height:
20.0pt;mso-line-height-rule:exactly;mso-list:l1 level1 lfo1;tab-stops:42.0pt list 60.0pt;
background:white'><![if !supportLists]><b><span lang=EN-US style='mso-bidi-font-size:
10.5pt;font-family:宋体;mso-bidi-font-family:宋体'><span style='mso-list:Ignore'>第一条<span
style='font:7.0pt "Times New Roman"'>&nbsp; </span></span></span></b><![endif]><b><span
style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:"Times New Roman"'>甲、乙双方的权利和义务<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoListParagraph style='margin-left:39.75pt;text-indent:-18.0pt;
mso-char-indent-count:0;line-height:20.0pt;mso-line-height-rule:exactly;
mso-list:l5 level1 lfo6;tab-stops:42.0pt;background:white'><![if !supportLists]><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
宋体;mso-bidi-font-weight:bold'><span style='mso-list:Ignore'>1、<span
style='font:7.0pt "Times New Roman"'> </span></span></span><![endif]><span
style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:"Times New Roman"'>乙方受甲方委托，为甲方公司员工提供健康体检等相关健康服务。<b><span
lang=EN-US><o:p></o:p></span></b></span></p>

<p class=MsoListParagraph style='margin-left:0cm;text-indent:21.3pt;mso-char-indent-count:
0;line-height:20.0pt;mso-line-height-rule:exactly;mso-list:l5 level1 lfo6;
background:white'><![if !supportLists]><span lang=EN-US style='mso-bidi-font-size:
10.5pt;font-family:宋体;mso-bidi-font-family:宋体;mso-bidi-font-weight:bold'><span
style='mso-list:Ignore'>2、<span style='font:7.0pt "Times New Roman"'>&nbsp; </span></span></span><![endif]><span
style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:"Times New Roman"'>未经乙方授权，甲方不得以任何形式使用“金程健康”的品牌文字或图形、商标等及其相关内容，不得以甲方名义或未经乙方同意以乙方名义对外进行宣传推广，或在网络上销售与“金程健康”品牌相关的产品，如经发现甲方违规或违反本条款约定，侵害乙方知识产权的，经乙方查实，乙方有权拒绝提供任何服务并向甲方追究相关法律责任、有权要求甲方停止侵权行为及支付相关经济赔偿等。<b><span
lang=EN-US><o:p></o:p></span></b></span></p>

<p class=MsoListParagraph style='margin-left:39.3pt;text-indent:-18.0pt;
mso-char-indent-count:0;line-height:20.0pt;mso-line-height-rule:exactly;
mso-list:l0 level1 lfo7;background:white'><![if !supportLists]><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
宋体;mso-bidi-font-weight:bold'><span style='mso-list:Ignore'>3、<span
style='font:7.0pt "Times New Roman"'> </span></span></span><![endif]><span
style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:"Times New Roman"'>双方确认以下体检联系人及联系方式。<b><span
lang=EN-US><o:p></o:p></span></b></span></p>

<p class=MsoNormal style='text-indent:17.95pt;mso-char-indent-count:1.71;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:"Times New Roman"'>甲方体检联系人：<u><span
lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;${t_order.linkman }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></u>；联系电话：
<u><span lang=EN-US>
<span style='mso-spacerun:yes'>&nbsp;${t_order.linktel }
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>
</span>
</u>；<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span>电子邮箱：<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span>。</u>甲方须提前七个工作日将体检人员的姓名、性别、年龄、婚姻状况及有效身份证明等内容以电子邮件方式或传真的方式通知乙方联系人 ：<u><span
lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></u>；联系电话：<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></u>；电子邮箱：<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span>。</u>乙方在接到体检通知后，应及时安排<span class=GramE>体检机</span>购并做好相应的准备工作，以确保体检顺利进行。<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:17.95pt;mso-char-indent-count:1.71;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:"Times New Roman"'>任何一方体检联系人变更，均应提前及时以上述联系方式书面通知对方，否则应仍以上述确认联系人及联系方式作为双方业务沟通确认渠道。未依本条约定发生的联系或对体检事项的变更等，任何一方均有权不予认可。<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:17.95pt;mso-char-indent-count:1.71;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'>4</span><span style='mso-bidi-font-size:10.5pt;font-family:
宋体;mso-bidi-font-family:"Times New Roman"'>、体检时间和体检地点由双方协商约定。因甲方原因导致整个团队需要变更体检时间的，甲方应至少提前两周以书面或邮件形式通知乙方联系人；体检当天个别人员未参加已确认拟体检的，甲方应提前一周以书面或邮件形式通知乙方联系人；乙方将在接到变更体检时间的确认通知后尽快安排拟体检人员另行体检。如甲方未在上述规定时间内通知乙方变更体检时间的，乙方<span
class=GramE>不</span>就此临时变更造成拟体检人员无法按时进行体检承担任何责任。<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:17.95pt;mso-char-indent-count:1.71;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'><span style='mso-spacerun:yes'>&nbsp;</span>5</span><span
style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:"Times New Roman"'>、若因受检者特殊生理情况（包括但不限于女性经期所致的妇科项目检查或尿常规化验延迟）或遇其他特殊状况，甲方应配合乙方另安排预约体检时间，并按照预约时间期限完成体检项目。若确系再有特殊原因不能如期体检的，甲方需在预约体检时间的前三天与乙方联系予以变更。体检人员仍擅自未能按照预约时间再次体检的，则视为放弃。<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:17.95pt;mso-char-indent-count:1.71;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'><span style='mso-spacerun:yes'>&nbsp;</span>6</span><span
style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:"Times New Roman"'>、为了更好地为<span
class=GramE>乙方员工</span>提供健康管理服务，建立健康数据档案，乙方代表全体员工授权甲方从体检机构获得体检报告及体检数据信息。甲方对体检报告中的所有信息负有严格的保密义务。<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly;
background:white'><span lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:
宋体;mso-bidi-font-family:"Times New Roman";color:black'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly;
background:white'><span lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:
宋体;mso-bidi-font-family:"Times New Roman";color:black'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='text-indent:21.1pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><b><span
style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:"Times New Roman"'>第二条</span></b><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman";color:black'><span style='mso-spacerun:yes'>&nbsp; </span></span><b><span
style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:"Times New Roman"'>体检事项约定<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:17.95pt;mso-char-indent-count:1.71;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'>1</span><span style='mso-bidi-font-size:10.5pt;font-family:
宋体;mso-bidi-font-family:"Times New Roman"'>、体检地点：<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></u></span><u><span lang=EN-US style='font-size:9.0pt;font-family:
"Times New Roman","serif";mso-fareast-font-family:宋体;color:black;background:
white'>&nbsp;</span></u><u><span lang=EN-US style='mso-bidi-font-size:10.5pt;
font-family:宋体;mso-bidi-font-family:"Times New Roman"'><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><o:p></o:p></span></u></p>

<p class=MsoNormal style='text-indent:17.95pt;mso-char-indent-count:1.71;
line-height:20.0pt;mso-line-height-rule:exactly;background:white;mso-layout-grid-align:
none'><span lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:"Times New Roman"'>2</span><span style='mso-bidi-font-size:
10.5pt;font-family:宋体;mso-bidi-font-family:"Times New Roman"'>、体检费用：<span
lang=EN-US>

<fmt:formatNumber value="${t_order.saleprice }" pattern="0.00"/> 

<o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:17.95pt;mso-char-indent-count:1.71;
line-height:20.0pt;mso-line-height-rule:exactly;background:white;mso-layout-grid-align:
none'><span lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:"Times New Roman"'><span
style='mso-spacerun:yes'>&nbsp;&nbsp; </span></span>
<span style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:"Times New Roman"'>
<!-- □统一套餐 -->
套餐信息列表：
<br>
<table id="table0" width="100%" border="0" cellspacing="0" cellpadding="0">
			                           <tr>
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>套餐名称</td>
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>体检机构</td>
										<!--<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>体检门店</td>
										 <td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>成本价</td> -->
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>价格(元)</td>
										<!-- <td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>折扣后价格</td> -->
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>人员数量</td>
										
									   </tr>      
									  
									  <s:iterator value="t_order_subList" status="stuts">  
									   <tr>
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>${ memo }</td>
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>${ companypname }</td>
										<!--<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>${ companyname }</td>
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>${ cost }</td>
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>${ profit }</td> -->
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'><fmt:formatNumber value="${saleprice }" pattern="0.00"/> </td>
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'><fmt:formatNumber value="${num }" pattern="0"/> </td>
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>
										
										</td>
									   </tr>   
									   </s:iterator>    
									                    					      							   
								    </table>
<!-- 
<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:17.95pt;mso-char-indent-count:1.71;
line-height:20.0pt;mso-line-height-rule:exactly;background:white;mso-layout-grid-align:
none'><span lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:"Times New Roman"'><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><span style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'>男<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span>士 <u><span
lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
style='mso-spacerun:yes'>&nbsp;</span><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;</span></span></u>元<span lang=EN-US>/</span>人，人数<u><span
lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><o:p></o:p></span></u></span></p>

<p class=MsoNormal style='text-indent:86.1pt;mso-char-indent-count:8.2;
line-height:20.0pt;mso-line-height-rule:exactly;background:white;mso-layout-grid-align:
none'><span style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'>女士（未婚）<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></u>元<span lang=EN-US>/</span>人，人数<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><o:p></o:p></span></u></span></p>

<p class=MsoNormal style='text-indent:86.1pt;mso-char-indent-count:8.2;
line-height:20.0pt;mso-line-height-rule:exactly;background:white;mso-layout-grid-align:
none'><span style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'>女士（已婚）<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;</span></span></u>元<span
lang=EN-US>/</span>人，人数<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><o:p></o:p></span></u></span></p>

<p class=MsoNormal style='text-indent:17.95pt;mso-char-indent-count:1.71;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'><span style='mso-spacerun:yes'>&nbsp;&nbsp; </span></span><span
style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:"Times New Roman"'>□多种套餐<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:17.95pt;mso-char-indent-count:1.71;
line-height:20.0pt;mso-line-height-rule:exactly;background:white;mso-layout-grid-align:
none'><span lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:"Times New Roman"'><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span></span><span
style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:"Times New Roman"'>套餐<span
class=GramE>一</span>： 男<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span>士 <u><span
lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
style='mso-spacerun:yes'>&nbsp;</span><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;</span></span></u>元<span
lang=EN-US>/</span>人，人数<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><o:p></o:p></span></u></span></p>

<p class=MsoNormal style='text-indent:86.1pt;mso-char-indent-count:8.2;
line-height:20.0pt;mso-line-height-rule:exactly;background:white;mso-layout-grid-align:
none'><span style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'>女士（未婚）<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></u>元<span lang=EN-US>/</span>人，人数<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><o:p></o:p></span></u></span></p>

<p class=MsoNormal style='text-indent:86.1pt;mso-char-indent-count:8.2;
line-height:20.0pt;mso-line-height-rule:exactly;background:white;mso-layout-grid-align:
none'><span style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'>女士（已婚）<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span style='mso-spacerun:yes'>&nbsp;</span></span></u>元<span
lang=EN-US>/</span>人，人数<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><o:p></o:p></span></u></span></p>

<p class=MsoNormal style='text-indent:17.95pt;mso-char-indent-count:1.71;
line-height:20.0pt;mso-line-height-rule:exactly;background:white;mso-layout-grid-align:
none'><span lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:"Times New Roman"'><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span></span><span
style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:"Times New Roman"'>套餐二：
男<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span>士 <u><span
lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
style='mso-spacerun:yes'>&nbsp;</span><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;</span></span></u>元<span lang=EN-US>/</span>人，人数<u><span
lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><o:p></o:p></span></u></span></p>

<p class=MsoNormal style='text-indent:86.1pt;mso-char-indent-count:8.2;
line-height:20.0pt;mso-line-height-rule:exactly;background:white;mso-layout-grid-align:
none'><span style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'>女士（未婚）<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></u>元<span lang=EN-US>/</span>人，人数<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><o:p></o:p></span></u></span></p>

<p class=MsoNormal style='text-indent:86.1pt;mso-char-indent-count:8.2;
line-height:20.0pt;mso-line-height-rule:exactly;background:white;mso-layout-grid-align:
none'><span style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'>女士（已婚）<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;</span></span></u>元<span
lang=EN-US>/</span>人，人数<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><o:p></o:p></span></u></span></p>

<p class=MsoNormal style='text-indent:17.95pt;mso-char-indent-count:1.71;
line-height:20.0pt;mso-line-height-rule:exactly;background:white;mso-layout-grid-align:
none'><span lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:"Times New Roman"'><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span></span><span
style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:"Times New Roman"'>套餐三：
男<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span>士 <u><span
lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
style='mso-spacerun:yes'>&nbsp;</span><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></u>元<span
lang=EN-US>/</span>人，人数<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><o:p></o:p></span></u></span></p>

<p class=MsoNormal style='text-indent:86.1pt;mso-char-indent-count:8.2;
line-height:20.0pt;mso-line-height-rule:exactly;background:white;mso-layout-grid-align:
none'><span style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'>女士（未婚）<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></u>元<span lang=EN-US>/</span>人，人数<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><o:p></o:p></span></u></span></p>

<p class=MsoNormal style='text-indent:86.1pt;mso-char-indent-count:8.2;
line-height:20.0pt;mso-line-height-rule:exactly;background:white;mso-layout-grid-align:
none'><span style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'>女士（已婚）<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span style='mso-spacerun:yes'>&nbsp;&nbsp;</span></span></u>元<span
lang=EN-US>/</span>人，人数<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><o:p></o:p></span></u></span></p>
 -->
 
 
<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'>3</span><span style='mso-bidi-font-size:10.5pt;font-family:
宋体;mso-bidi-font-family:"Times New Roman"'>、体检项目：<span lang=EN-US>_<u>_</u></span><u>详见附件</u><span
lang=EN-US>__</span>；乙方依照《卫生部办公厅关于进一步规范乙肝项目检测的通知》（卫办<span class=GramE>政法发</span><span
lang=EN-US>[2011]14</span>号）文件要求，对非就业体检，受检者本人主动要求进行乙肝表面抗原或乙肝两<span class=GramE>对半等</span>乙肝项目检测的，乙方需经受检者本人自愿签字同意方可执行，并只能向受检者本人制发独立于常规体检报告的乙肝项目检测结果报告。甲方未经受检者同意无权得知受检者该项目检验结果，否则乙方将不予为甲方该受检对象提供乙肝表面抗原或乙肝两<span
class=GramE>对半等</span>乙肝项目的检测。若甲方通过非正常途径或手段知晓上述检验结果，导致受检人员向乙方索赔的，乙方不予承担任何经济责任，甲方同意由其向受检人员承担由此产生的全部责任。<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:17.95pt;mso-char-indent-count:1.71;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'>4</span><span style='mso-bidi-font-size:10.5pt;font-family:
宋体;mso-bidi-font-family:"Times New Roman"'>、结算方式： □ 合同签订时一次性付清<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:17.95pt;mso-char-indent-count:1.71;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><span style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'>□ 合同签订时预付定金<span lang=EN-US>______________</span>，体检结束的<span
lang=EN-US>15</span>个工作日内一次性付清尾款<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:17.95pt;mso-char-indent-count:1.71;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><span style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'>□ 其他<span lang=EN-US>_____________________________________________<o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:17.85pt;mso-char-indent-count:1.7;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'>5</span><span style='mso-bidi-font-size:10.5pt;font-family:
宋体;mso-bidi-font-family:"Times New Roman"'>、付款方式：□ 支票<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span>□
现金<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span>□
银行<span class=GramE>转帐</span><span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:21.0pt;line-height:20.0pt;mso-line-height-rule:
exactly;background:white'><span class=GramE><span style='mso-bidi-font-size:
10.5pt;font-family:宋体;mso-bidi-font-family:"Times New Roman"'>体检款如</span></span><span
style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:"Times New Roman"'>选择部分在体检结束后进行结算，乙方应在体检结束后的<span
lang=EN-US>10</span>个工作日内将甲方人员的体检对账明细单以书面传真或邮件的方式提交甲方，甲方在核对无误后五个工作日内及时予以签章确认并支付乙方剩余体检费用。若甲方在上述期限内未提出异议或者无理由拒绝付款的，均视为甲方认可乙方的对账明细。同时，甲方应按照中国人民银行当<span
class=GramE>期贷</span>款利率支付逾期利息。<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:21.0pt;line-height:20.0pt;mso-line-height-rule:
exactly;background:white'><span lang=EN-US style='mso-bidi-font-size:10.5pt;
font-family:宋体;mso-bidi-font-family:"Times New Roman"'>6</span><span
style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:"Times New Roman"'>、乙方<span
class=GramE>帐户</span>如下：<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:15.75pt;mso-char-indent-count:1.5;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:"Times New Roman"'>乙方开户名：<u><span
lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><o:p></o:p></span></u></span></p>

<p class=MsoNormal style='text-indent:15.75pt;mso-char-indent-count:1.5;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:"Times New Roman"'>开<span
lang=EN-US><span style='mso-spacerun:yes'>&nbsp; </span></span>户<span
lang=EN-US><span style='mso-spacerun:yes'>&nbsp; </span></span>行：<u><span
lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><o:p></o:p></span></u></span></p>

<p class=MsoNormal style='text-indent:15.75pt;mso-char-indent-count:1.5;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:"Times New Roman"'>银行账号<span
lang=EN-US><span style='mso-spacerun:yes'>&nbsp; </span></span>：<u><span
lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><o:p></o:p></span></u></span></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'>7</span><span style='mso-bidi-font-size:10.5pt;font-family:
宋体;mso-bidi-font-family:"Times New Roman"'>、因甲方原因或体检人员个人原因放弃体检或仅体检约定项目内容中的部分项目的，均视为甲方自愿放弃体检项目，乙方不退补相关体检费用。<u><span
lang=EN-US><o:p></o:p></span></u></span></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'>8</span><span style='mso-bidi-font-size:10.5pt;font-family:
宋体;mso-bidi-font-family:"Times New Roman"'>、甲方客户体检的项目及接受体检的权利应由受检人员本人受检，不得由他人代为行使或享有。<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman";color:black'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman";color:black'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:-24.0pt;line-height:
20.0pt;mso-line-height-rule:exactly;mso-list:l4 level1 lfo2;tab-stops:list 0cm;
background:white'><![if !supportLists]><b><span lang=EN-US style='mso-bidi-font-size:
10.5pt;font-family:宋体;mso-bidi-font-family:宋体'><span style='mso-list:Ignore'>第三条<span
style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span></span></b><![endif]><b><span
style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:"Times New Roman"'>健康体检须知<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:26.25pt;mso-char-indent-count:2.5;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'>1</span><span style='mso-bidi-font-size:10.5pt;font-family:
宋体;mso-bidi-font-family:"Times New Roman"'>、体检时请携带个人有效证件<span lang=EN-US> (</span>如身份证、护照等<span
lang=EN-US>), </span>以便建立个人档案。<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:26.25pt;mso-char-indent-count:2.5;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'>2</span><span style='mso-bidi-font-size:10.5pt;font-family:
宋体;mso-bidi-font-family:"Times New Roman"'>、体检当天如涉及到血液检测项目、幽门螺旋菌<span
lang=EN-US> (HP)</span>哈气检测、腹部<span lang=EN-US>B</span>超<span lang=EN-US> (</span>肝胆<span
class=GramE>胰</span>脾肾<span lang=EN-US>)</span>早晨须空腹，如涉及空腹项目，体检中心将会赠送营养早餐<span
lang=EN-US>(</span>入职体检除外<span lang=EN-US>)</span>。<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:26.25pt;mso-char-indent-count:2.5;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'>3</span><span style='mso-bidi-font-size:10.5pt;font-family:
宋体;mso-bidi-font-family:"Times New Roman"'>、体检前三天注意不要饮食油腻、不易消化的食物。<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:26.25pt;mso-char-indent-count:2.5;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'>4</span><span style='mso-bidi-font-size:10.5pt;font-family:
宋体;mso-bidi-font-family:"Times New Roman"'>、 体检前一天晚上<span lang=EN-US>8</span>点之后不再进餐<span
lang=EN-US> (</span>可饮水<span lang=EN-US>), </span>保证睡眠，避免剧烈运动和情绪激动，以保证体检结果的准确性。<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:26.25pt;mso-char-indent-count:2.5;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'>5</span><span style='mso-bidi-font-size:10.5pt;font-family:
宋体;mso-bidi-font-family:"Times New Roman"'>、参加<span lang=EN-US>X</span>线检查，请勿穿着带有金属饰物或配件的衣物。孕妇及半年内准备怀孕的受检者请勿做<span
lang=EN-US>X</span>线检查、幽门螺旋菌<span lang=EN-US> (HP)</span>哈气检测、双能<span
lang=EN-US>X</span><span class=GramE>线骨密度</span>检查。<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:26.25pt;mso-char-indent-count:2.5;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'>6</span><span style='mso-bidi-font-size:10.5pt;font-family:
宋体;mso-bidi-font-family:"Times New Roman"'>、<span lang=EN-US>B</span>超检查下腹部的子宫及附件、膀胱、前列腺等脏器时，必须在膀胱充盈状态下进行，
应在检前<span lang=EN-US>2</span>小时饮水<span lang=EN-US>1000</span>毫升左右，不解小便，保持憋尿。已婚女性<span
lang=EN-US> (</span>有性生活史<span lang=EN-US>)</span>做阴道超声检查时不需憋尿。<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'>7</span><span style='mso-bidi-font-size:10.5pt;font-family:
宋体;mso-bidi-font-family:"Times New Roman"'>、已婚女性检查妇科前需先排空尿液，经期<span
class=GramE>勿</span>留尿及勿做妇科检查，可预约时间另查。<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'>8</span><span style='mso-bidi-font-size:10.5pt;font-family:
宋体;mso-bidi-font-family:"Times New Roman"'>、未婚女性、已婚女性<span lang=EN-US> (</span>无性<span
class=GramE>生活史</span><span lang=EN-US>)</span>及孕妇请勿做妇科检查及阴道超声检查。<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'>9</span><span style='mso-bidi-font-size:10.5pt;font-family:
宋体;mso-bidi-font-family:"Times New Roman"'>、有眼压、眼底、裂隙灯检查项目请勿戴隐形眼镜，如戴隐形眼镜请自备眼药水和<span
class=GramE>镜盒</span>。<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'>10</span><span style='mso-bidi-font-size:10.5pt;font-family:
宋体;mso-bidi-font-family:"Times New Roman"'>、高血压、糖尿病等慢性疾病患者，请随身携带必需药物，在完成空腹检查项目后再服用。<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'>11</span><span style='mso-bidi-font-size:10.5pt;font-family:
宋体;mso-bidi-font-family:"Times New Roman"'>、体检中心有储物柜，方便存放随身物品<span lang=EN-US>
(</span>贵重物品请自行保管<span lang=EN-US>)</span>。如有需要，请和服务台护士联系。<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly;background:white;mso-layout-grid-align:
none'><span style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman";color:black'>以上特别注意事项，甲方应当在体检前详细告知相应的体检人员，以便体检机构<span
class=GramE>作出</span>正确的体检结果。若体检人员违反上述注意事项而导致体检结果不准确、不完整、不充分的，乙方不承担相应责任。<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:-24.0pt;line-height:
20.0pt;mso-line-height-rule:exactly;mso-list:l4 level1 lfo2;tab-stops:list 0cm;
background:white'><![if !supportLists]><b><span lang=EN-US style='mso-bidi-font-size:
10.5pt;font-family:宋体;mso-bidi-font-family:宋体'><span style='mso-list:Ignore'>第四条<span
style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span></span></b><![endif]><b><span
style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:"Times New Roman"'>体检报告事宜<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='margin-right:-7.65pt;mso-para-margin-right:-.73gd;
text-indent:17.95pt;mso-char-indent-count:1.71;line-height:20.0pt;mso-line-height-rule:
exactly;background:white'><span lang=EN-US style='mso-bidi-font-size:10.5pt;
font-family:宋体;mso-bidi-font-family:"Times New Roman"'>1</span><span
style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:"Times New Roman"'>、乙方在体检后的十个工作日内将受检人员的体检结果以书面或邮件形式送达至甲方联系人，如甲方更换联系人需提前告知乙方。<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='margin-right:-7.65pt;mso-para-margin-right:-.73gd;
text-indent:17.95pt;mso-char-indent-count:1.71;line-height:20.0pt;mso-line-height-rule:
exactly;background:white'><span lang=EN-US style='mso-bidi-font-size:10.5pt;
font-family:宋体;mso-bidi-font-family:"Times New Roman"'>2</span><span
style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:"Times New Roman"'>、<span
class=GramE>乙方仅</span>提供医疗咨询服务。甲方如有侵犯受检者隐私及知情权等行为的，一切后果均由甲方自行负责。<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:17.95pt;mso-char-indent-count:1.71;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'>3</span><span style='mso-bidi-font-size:10.5pt;font-family:
宋体;mso-bidi-font-family:"Times New Roman"'>、甲方体检人员未能如期完成本次健康体检，由此造成团队体检报告延误，则应由甲方承担相关责任。<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:17.95pt;mso-char-indent-count:1.71;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='text-indent:17.95pt;mso-char-indent-count:1.71;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:-24.0pt;line-height:
20.0pt;mso-line-height-rule:exactly;mso-list:l4 level1 lfo2;tab-stops:list 0cm;
background:white'><![if !supportLists]><b><span lang=EN-US style='mso-bidi-font-size:
10.5pt;font-family:宋体;mso-bidi-font-family:宋体'><span style='mso-list:Ignore'>第五条<span
style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span></span></b><![endif]><b><span
style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:"Times New Roman"'>合作期限<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='margin-left:18.0pt;line-height:20.0pt;mso-line-height-rule:
exactly;background:white'><span style='mso-bidi-font-size:10.5pt;font-family:
宋体;mso-bidi-font-family:"Times New Roman"'>合同有效期为<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></u>年<u><span
lang=EN-US><span style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span></span></u>月<u><span
lang=EN-US><span style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></u>日
至<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></u>年<u><span
lang=EN-US><span style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></u>月<u><span
lang=EN-US><span style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></u>日止。<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='margin-left:18.0pt;line-height:20.0pt;mso-line-height-rule:
exactly;background:white'><b><span lang=EN-US style='mso-bidi-font-size:10.5pt;
font-family:宋体;mso-bidi-font-family:"Times New Roman"'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal style='margin-left:18.0pt;line-height:20.0pt;mso-line-height-rule:
exactly;background:white'><b><span lang=EN-US style='mso-bidi-font-size:10.5pt;
font-family:宋体;mso-bidi-font-family:"Times New Roman"'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:-24.0pt;line-height:
20.0pt;mso-line-height-rule:exactly;mso-list:l4 level1 lfo2;tab-stops:list 0cm;
background:white'><![if !supportLists]><b><span lang=EN-US style='mso-bidi-font-size:
10.5pt;font-family:宋体;mso-bidi-font-family:宋体'><span style='mso-list:Ignore'>第六条<span
style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span></span></b><![endif]><b><span
style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:"Times New Roman"'>补充条款<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly;
background:white'><u><span lang=EN-US style='mso-bidi-font-size:10.5pt;
font-family:宋体;mso-bidi-font-family:"Times New Roman"'><span
style='mso-spacerun:yes'>&nbsp;${ t_order.memo2 }</span><o:p></o:p></span></u></p>


<p class=MsoNormal style='margin-left:42.0pt;text-indent:-24.0pt;line-height:
20.0pt;mso-line-height-rule:exactly;mso-list:l4 level1 lfo2;tab-stops:list 0cm;
background:white'><![if !supportLists]><b><span lang=EN-US style='mso-bidi-font-size:
10.5pt;font-family:宋体;mso-bidi-font-family:宋体'><span style='mso-list:Ignore'>第七条<span
style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span></span></b><![endif]><b><span
style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:"Times New Roman"'>其他约定<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'>1</span><span style='mso-bidi-font-size:10.5pt;font-family:
宋体;mso-bidi-font-family:"Times New Roman"'>、如有本协议未尽事宜，甲、乙双方本着友好协商的原则予以解决。<span
style='color:black'>不能协商解决的，任何一方可向乙方营业地所在地人民法院提起诉讼。</span><span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'>2</span><span style='mso-bidi-font-size:10.5pt;font-family:
宋体;mso-bidi-font-family:"Times New Roman"'>、本协议经甲、乙双方签字或盖章即行生效，未经本协议双方书面同意，本协议不作修改和变更。<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'>3</span><span style='mso-bidi-font-size:10.5pt;font-family:
宋体;mso-bidi-font-family:"Times New Roman"'>、本协议约定的体检价格和内容等被视为商业机密，甲、乙双方均有义务予以保密直至合同终止后一年。如有一方违反保密义务，给对方造成损失的，则违约方应承担相应法律及赔偿责任。<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'>4</span><span style='mso-bidi-font-size:10.5pt;font-family:
宋体;mso-bidi-font-family:"Times New Roman"'>、任何一方违反本协议规定之义务，违约方应承担相应的违约责任并向守约方赔偿由此造成的一切直接经济损失及可预见的相关经济损失。违约事项将不影响甲、乙双方继续履行合同内的其他条款。<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'>5</span><span style='mso-bidi-font-size:10.5pt;font-family:
宋体;mso-bidi-font-family:"Times New Roman"'>、本协议附件是本协议不可分割的组成部分，与本协议具有同等效力。<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'>6</span><span style='mso-bidi-font-size:10.5pt;font-family:
宋体;mso-bidi-font-family:"Times New Roman"'>、本协议一式两份，双方各执一份，具有同等的法律效力。<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly;
background:white'><span lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:
宋体;mso-bidi-font-family:"Times New Roman"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly;
background:white'><span style='mso-bidi-font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:"Times New Roman"'>甲<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp; </span></span>方：<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span>乙<span lang=EN-US><span style='mso-spacerun:yes'>&nbsp; </span></span>方：<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly;
background:white'><span style='mso-bidi-font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:"Times New Roman"'>地<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp; </span></span>址：<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span>地<span lang=EN-US><span style='mso-spacerun:yes'>&nbsp; </span></span>址：<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly;
background:white'><span style='mso-bidi-font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:"Times New Roman"'>电<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp; </span></span>话：<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span>电<span lang=EN-US><span style='mso-spacerun:yes'>&nbsp; </span></span>话：<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly;
background:white'><span style='mso-bidi-font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:"Times New Roman"'>传<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp; </span></span>真：<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span>传<span lang=EN-US><span style='mso-spacerun:yes'>&nbsp; </span></span>真：<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly;
background:white'><span style='mso-bidi-font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:"Times New Roman"'>联系人：<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span>联系人：<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly;
background:white'><span lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:
宋体;mso-bidi-font-family:"Times New Roman"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly;
background:white'><span style='mso-bidi-font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:"Times New Roman"'>公司签章：<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span>公司签章：<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly;
background:white'><span lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:
宋体;mso-bidi-font-family:"Times New Roman"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly;
background:white'><span style='mso-bidi-font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:"Times New Roman"'>日<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp; </span></span>期：<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span></span>年<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span></span>月<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span></span>日<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;</span></span>日<span
lang=EN-US><span style='mso-spacerun:yes'>&nbsp; </span></span>期：<span
lang=EN-US><span style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span></span>年<span
lang=EN-US><span style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span></span>月<span
lang=EN-US><span style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span></span>日<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
"Times New Roman"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal><span lang=EN-US><o:p>&nbsp;</o:p></span></p>

</div>



<script  language="javascript">
function   fprint()
{  try{
		   demo.style.display=(demo.style.display == "none")?"block":"none";
		   window.print();
		   demo.style.display = "block";
	  }catch(e){ alert("请注意你的打印机：\n\n.可能打印机还没准备好；\n.可能打印机出现了故障。");}
   
		   
}
</script>

<div  id=demo style="display:block" align="center">
<br>
<!--
<input  type="button"  name="dy"  value="打印"  onclick="btnPrint(document.windows)"  > &nbsp;&nbsp;
-->
<input  type="button"  class="btn"  name="dy"  value="    打印    "  onclick="fprint()"  > &nbsp;&nbsp;

<input type="button" class="btn" value="    返回    " name="B1" onClick="javascript:history.back(-1)">&nbsp;&nbsp;

<input  type="button"  class="btn"  name="gb"  value="   关闭    "  onclick="window.close()"  >
 
<!--
 <input  type="button"  name="gb"  value="关闭"  onclick="window.close()"  >
 -->

</div>

<br>
<br>

</body>

</html>
