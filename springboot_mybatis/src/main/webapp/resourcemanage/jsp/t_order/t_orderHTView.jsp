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
<title>��ͬ��Ϣ��ӡ</title>
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
<link rel=File-List href="��̽���%20��Լ�飨����.files/filelist.xml">
<link rel=Edit-Time-Data href="��̽���%20��Լ�飨����.files/editdata.mso">
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
<link rel=themeData href="��̽���%20��Լ�飨����.files/themedata.thmx">
<link rel=colorSchemeMapping href="��̽���%20��Լ�飨����.files/colorschememapping.xml">
-->

<!--[if gte mso 9]><xml>
 <w:WordDocument>
  <w:SpellingState>Clean</w:SpellingState>
  <w:GrammarState>Clean</w:GrammarState>
  <w:TrackMoves>false</w:TrackMoves>
  <w:TrackFormatting/>
  <w:PunctuationKerning/>
  <w:DrawingGridHorizontalSpacing>5.25 ��</w:DrawingGridHorizontalSpacing>
  <w:DrawingGridVerticalSpacing>7.8 ��</w:DrawingGridVerticalSpacing>
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
	{font-family:����;
	panose-1:2 1 6 0 3 1 1 1 1 1;
	mso-font-alt:SimSun;
	mso-font-charset:134;
	mso-generic-font-family:auto;
	mso-font-pitch:variable;
	mso-font-signature:3 135135232 16 0 262145 0;}
@font-face
	{font-family:����;
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
	{font-family:"\@����";
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
	mso-fareast-font-family:����;
	mso-fareast-theme-font:minor-fareast;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:"Times New Roman";
	mso-bidi-theme-font:minor-bidi;
	mso-font-kerning:1.0pt;}
p.MsoHeader, li.MsoHeader, div.MsoHeader
	{mso-style-noshow:yes;
	mso-style-priority:99;
	mso-style-link:"ҳü Char";
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
	mso-fareast-font-family:����;
	mso-fareast-theme-font:minor-fareast;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:"Times New Roman";
	mso-bidi-theme-font:minor-bidi;
	mso-font-kerning:1.0pt;}
p.MsoFooter, li.MsoFooter, div.MsoFooter
	{mso-style-link:"ҳ�� Char";
	margin:0cm;
	margin-bottom:.0001pt;
	mso-pagination:none;
	tab-stops:center 207.65pt right 415.3pt;
	layout-grid-mode:char;
	font-size:9.0pt;
	font-family:"Calibri","sans-serif";
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:����;
	mso-fareast-theme-font:minor-fareast;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:"Times New Roman";
	mso-bidi-theme-font:minor-bidi;
	mso-font-kerning:1.0pt;}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-noshow:yes;
	mso-style-priority:99;
	mso-style-link:"��ע���ı� Char";
	margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	mso-pagination:none;
	font-size:9.0pt;
	font-family:"Calibri","sans-serif";
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:����;
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
	mso-fareast-font-family:����;
	mso-fareast-theme-font:minor-fareast;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:"Times New Roman";
	mso-bidi-theme-font:minor-bidi;
	mso-font-kerning:1.0pt;}
span.Char
	{mso-style-name:"ҳü Char";
	mso-style-noshow:yes;
	mso-style-priority:99;
	mso-style-unhide:no;
	mso-style-locked:yes;
	mso-style-link:ҳü;
	mso-ansi-font-size:9.0pt;
	mso-bidi-font-size:9.0pt;}
span.Char0
	{mso-style-name:"ҳ�� Char";
	mso-style-noshow:yes;
	mso-style-priority:99;
	mso-style-unhide:no;
	mso-style-locked:yes;
	mso-style-link:ҳ��;
	mso-ansi-font-size:9.0pt;
	mso-bidi-font-size:9.0pt;}
span.Char1
	{mso-style-name:"��ע���ı� Char";
	mso-style-noshow:yes;
	mso-style-priority:99;
	mso-style-unhide:no;
	mso-style-locked:yes;
	mso-style-link:��ע���ı�;
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
	mso-footnote-separator:url("��̽���%20��Լ�飨����.files/header.htm") fs;
	mso-footnote-continuation-separator:url("��̽���%20��Լ�飨����.files/header.htm") fcs;
	mso-endnote-separator:url("��̽���%20��Լ�飨����.files/header.htm") es;
	mso-endnote-continuation-separator:url("��̽���%20��Լ�飨����.files/header.htm") ecs;}
@page WordSection1
	{size:595.3pt 841.9pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;
	mso-header-margin:42.55pt;
	mso-footer-margin:49.6pt;
	mso-header:url("��̽���%20��Լ�飨����.files/header.htm") h1;
	mso-footer:url("��̽���%20��Լ�飨����.files/header.htm") f1;
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
	mso-level-text:%1��;
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
	mso-level-text:��%1��;
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
	{mso-level-text:%1��;
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
	{mso-level-text:%1��;
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
	mso-level-text:��%1��;
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
	{mso-level-text:%1��;
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
	{mso-style-name:��ͨ���;
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
style='font-size:20.0pt;font-family:����;mso-ascii-font-family:"Times New Roman";
mso-bidi-font-family:"Times New Roman"'>��Լ��</span></b><b><span lang=EN-US
style='font-size:20.0pt;font-family:"Times New Roman","serif";mso-fareast-font-family:
����'><o:p></o:p></span></b></p>

<p class=MsoNormal style='background:white'><span lang=EN-US style='mso-bidi-font-size:
12.0pt;font-family:"Times New Roman","serif";mso-fareast-font-family:����'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='background:white'><b><span style='font-size:11.0pt;
font-family:����;mso-bidi-font-family:"Times New Roman"'>�׷���<span lang=EN-US><o:p>${t_order.customername }</o:p></span></span></b></p>

<p class=MsoNormal style='background:white'><b><span style='font-size:11.0pt;
font-family:����;mso-bidi-font-family:"Times New Roman"'>�ҷ����Ϻ���̽����������޹�˾<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='background:white'><span lang=EN-US style='mso-bidi-font-size:
12.0pt;font-family:"Times New Roman","serif";mso-fareast-font-family:����'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='text-indent:21.75pt;background:white'><span
class=GramE><span style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'>�ҷ�ϵרҵ</span></span><span style='mso-bidi-font-size:10.5pt;
font-family:����;mso-bidi-font-family:"Times New Roman"'>�ĵ���<span class=GramE>������</span>����������ṩҽ����ѯ������Ӧ�׷�Ҫ�������Ƽ�һ������ʼ׷������������Ƽ������������������ҽ��ר�Һ��Ƚ���ҽ����ʩ����Ϊ�׷��ṩ���õ�����ҽ�ƽ�������Ϊ���õ��ƽ��ס���˫��ҵ��չ�����õط����ڼ׷���Ϊ˫���������ڶ��ȶ��ĺ�����ϵ�����Ż��ݻ�����ԭ�򣬾�˫���Ѻ�Э�̣�������º���Э�飺<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:21.75pt;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:-24.0pt;line-height:
20.0pt;mso-line-height-rule:exactly;mso-list:l1 level1 lfo1;tab-stops:42.0pt list 60.0pt;
background:white'><![if !supportLists]><b><span lang=EN-US style='mso-bidi-font-size:
10.5pt;font-family:����;mso-bidi-font-family:����'><span style='mso-list:Ignore'>��һ��<span
style='font:7.0pt "Times New Roman"'>&nbsp; </span></span></span></b><![endif]><b><span
style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:"Times New Roman"'>�ס���˫����Ȩ��������<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoListParagraph style='margin-left:39.75pt;text-indent:-18.0pt;
mso-char-indent-count:0;line-height:20.0pt;mso-line-height-rule:exactly;
mso-list:l5 level1 lfo6;tab-stops:42.0pt;background:white'><![if !supportLists]><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
����;mso-bidi-font-weight:bold'><span style='mso-list:Ignore'>1��<span
style='font:7.0pt "Times New Roman"'> </span></span></span><![endif]><span
style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:"Times New Roman"'>�ҷ��ܼ׷�ί�У�Ϊ�׷���˾Ա���ṩ����������ؽ�������<b><span
lang=EN-US><o:p></o:p></span></b></span></p>

<p class=MsoListParagraph style='margin-left:0cm;text-indent:21.3pt;mso-char-indent-count:
0;line-height:20.0pt;mso-line-height-rule:exactly;mso-list:l5 level1 lfo6;
background:white'><![if !supportLists]><span lang=EN-US style='mso-bidi-font-size:
10.5pt;font-family:����;mso-bidi-font-family:����;mso-bidi-font-weight:bold'><span
style='mso-list:Ignore'>2��<span style='font:7.0pt "Times New Roman"'>&nbsp; </span></span></span><![endif]><span
style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:"Times New Roman"'>δ���ҷ���Ȩ���׷��������κ���ʽʹ�á���̽�������Ʒ�����ֻ�ͼ�Ρ��̱�ȼ���������ݣ������Լ׷������δ���ҷ�ͬ�����ҷ����������������ƹ㣬���������������롰��̽�����Ʒ����صĲ�Ʒ���羭���ּ׷�Υ���Υ��������Լ�����ֺ��ҷ�֪ʶ��Ȩ�ģ����ҷ���ʵ���ҷ���Ȩ�ܾ��ṩ�κη�����׷�׷����ط������Ρ���ȨҪ��׷�ֹͣ��Ȩ��Ϊ��֧����ؾ����⳥�ȡ�<b><span
lang=EN-US><o:p></o:p></span></b></span></p>

<p class=MsoListParagraph style='margin-left:39.3pt;text-indent:-18.0pt;
mso-char-indent-count:0;line-height:20.0pt;mso-line-height-rule:exactly;
mso-list:l0 level1 lfo7;background:white'><![if !supportLists]><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
����;mso-bidi-font-weight:bold'><span style='mso-list:Ignore'>3��<span
style='font:7.0pt "Times New Roman"'> </span></span></span><![endif]><span
style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:"Times New Roman"'>˫��ȷ�����������ϵ�˼���ϵ��ʽ��<b><span
lang=EN-US><o:p></o:p></span></b></span></p>

<p class=MsoNormal style='text-indent:17.95pt;mso-char-indent-count:1.71;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:"Times New Roman"'>�׷������ϵ�ˣ�<u><span
lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;${t_order.linkman }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></u>����ϵ�绰��
<u><span lang=EN-US>
<span style='mso-spacerun:yes'>&nbsp;${t_order.linktel }
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>
</span>
</u>��<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span>�������䣺<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span>��</u>�׷�����ǰ�߸������ս������Ա���������Ա����䡢����״������Ч���֤���������Ե����ʼ���ʽ����ķ�ʽ֪ͨ�ҷ���ϵ�� ��<u><span
lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></u>����ϵ�绰��<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></u>���������䣺<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span>��</u>�ҷ��ڽӵ����֪ͨ��Ӧ��ʱ����<span class=GramE>����</span>����������Ӧ��׼����������ȷ�����˳�����С�<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:17.95pt;mso-char-indent-count:1.71;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:"Times New Roman"'>�κ�һ�������ϵ�˱������Ӧ��ǰ��ʱ��������ϵ��ʽ����֪ͨ�Է�������Ӧ��������ȷ����ϵ�˼���ϵ��ʽ��Ϊ˫��ҵ��ͨȷ��������δ������Լ����������ϵ����������ı���ȣ��κ�һ������Ȩ�����Ͽɡ�<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:17.95pt;mso-char-indent-count:1.71;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'>4</span><span style='mso-bidi-font-size:10.5pt;font-family:
����;mso-bidi-font-family:"Times New Roman"'>�����ʱ������ص���˫��Э��Լ������׷�ԭ���������Ŷ���Ҫ������ʱ��ģ��׷�Ӧ������ǰ������������ʼ���ʽ֪ͨ�ҷ���ϵ�ˣ���쵱�������Աδ�μ���ȷ�������ģ��׷�Ӧ��ǰһ����������ʼ���ʽ֪ͨ�ҷ���ϵ�ˣ��ҷ����ڽӵ�������ʱ���ȷ��֪ͨ�󾡿찲���������Ա������졣��׷�δ�������涨ʱ����֪ͨ�ҷ�������ʱ��ģ��ҷ�<span
class=GramE>��</span>�ʹ���ʱ�������������Ա�޷���ʱ�������е��κ����Ρ�<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:17.95pt;mso-char-indent-count:1.71;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'><span style='mso-spacerun:yes'>&nbsp;</span>5</span><span
style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:"Times New Roman"'>�������ܼ����������������������������Ů�Ծ������µĸ�����Ŀ�����򳣹滯���ӳ٣�������������״�����׷�Ӧ����ҷ�����ԤԼ���ʱ�䣬������ԤԼʱ��������������Ŀ����ȷϵ��������ԭ�����������ģ��׷�����ԤԼ���ʱ���ǰ�������ҷ���ϵ���Ա���������Ա������δ�ܰ���ԤԼʱ���ٴ����ģ�����Ϊ������<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:17.95pt;mso-char-indent-count:1.71;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'><span style='mso-spacerun:yes'>&nbsp;</span>6</span><span
style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:"Times New Roman"'>��Ϊ�˸��õ�Ϊ<span
class=GramE>�ҷ�Ա��</span>�ṩ����������񣬽����������ݵ������ҷ�����ȫ��Ա����Ȩ�׷��������������챨�漰���������Ϣ���׷�����챨���е�������Ϣ�����ϸ�ı�������<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly;
background:white'><span lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:
����;mso-bidi-font-family:"Times New Roman";color:black'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly;
background:white'><span lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:
����;mso-bidi-font-family:"Times New Roman";color:black'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='text-indent:21.1pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><b><span
style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:"Times New Roman"'>�ڶ���</span></b><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman";color:black'><span style='mso-spacerun:yes'>&nbsp; </span></span><b><span
style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:"Times New Roman"'>�������Լ��<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:17.95pt;mso-char-indent-count:1.71;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'>1</span><span style='mso-bidi-font-size:10.5pt;font-family:
����;mso-bidi-font-family:"Times New Roman"'>�����ص㣺<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></u></span><u><span lang=EN-US style='font-size:9.0pt;font-family:
"Times New Roman","serif";mso-fareast-font-family:����;color:black;background:
white'>&nbsp;</span></u><u><span lang=EN-US style='mso-bidi-font-size:10.5pt;
font-family:����;mso-bidi-font-family:"Times New Roman"'><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><o:p></o:p></span></u></p>

<p class=MsoNormal style='text-indent:17.95pt;mso-char-indent-count:1.71;
line-height:20.0pt;mso-line-height-rule:exactly;background:white;mso-layout-grid-align:
none'><span lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;
mso-bidi-font-family:"Times New Roman"'>2</span><span style='mso-bidi-font-size:
10.5pt;font-family:����;mso-bidi-font-family:"Times New Roman"'>�������ã�<span
lang=EN-US>

<fmt:formatNumber value="${t_order.saleprice }" pattern="0.00"/> 

<o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:17.95pt;mso-char-indent-count:1.71;
line-height:20.0pt;mso-line-height-rule:exactly;background:white;mso-layout-grid-align:
none'><span lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;
mso-bidi-font-family:"Times New Roman"'><span
style='mso-spacerun:yes'>&nbsp;&nbsp; </span></span>
<span style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:"Times New Roman"'>
<!-- ��ͳһ�ײ� -->
�ײ���Ϣ�б�
<br>
<table id="table0" width="100%" border="0" cellspacing="0" cellpadding="0">
			                           <tr>
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>�ײ�����</td>
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>������</td>
										<!--<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>����ŵ�</td>
										 <td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>�ɱ���</td> -->
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>�۸�(Ԫ)</td>
										<!-- <td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>�ۿۺ�۸�</td> -->
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>��Ա����</td>
										
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
none'><span lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;
mso-bidi-font-family:"Times New Roman"'><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><span style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'>��<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span>ʿ <u><span
lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
style='mso-spacerun:yes'>&nbsp;</span><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;</span></span></u>Ԫ<span lang=EN-US>/</span>�ˣ�����<u><span
lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><o:p></o:p></span></u></span></p>

<p class=MsoNormal style='text-indent:86.1pt;mso-char-indent-count:8.2;
line-height:20.0pt;mso-line-height-rule:exactly;background:white;mso-layout-grid-align:
none'><span style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'>Ůʿ��δ�飩<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></u>Ԫ<span lang=EN-US>/</span>�ˣ�����<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><o:p></o:p></span></u></span></p>

<p class=MsoNormal style='text-indent:86.1pt;mso-char-indent-count:8.2;
line-height:20.0pt;mso-line-height-rule:exactly;background:white;mso-layout-grid-align:
none'><span style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'>Ůʿ���ѻ飩<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;</span></span></u>Ԫ<span
lang=EN-US>/</span>�ˣ�����<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><o:p></o:p></span></u></span></p>

<p class=MsoNormal style='text-indent:17.95pt;mso-char-indent-count:1.71;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'><span style='mso-spacerun:yes'>&nbsp;&nbsp; </span></span><span
style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:"Times New Roman"'>�������ײ�<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:17.95pt;mso-char-indent-count:1.71;
line-height:20.0pt;mso-line-height-rule:exactly;background:white;mso-layout-grid-align:
none'><span lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;
mso-bidi-font-family:"Times New Roman"'><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span></span><span
style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:"Times New Roman"'>�ײ�<span
class=GramE>һ</span>�� ��<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span>ʿ <u><span
lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
style='mso-spacerun:yes'>&nbsp;</span><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;</span></span></u>Ԫ<span
lang=EN-US>/</span>�ˣ�����<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><o:p></o:p></span></u></span></p>

<p class=MsoNormal style='text-indent:86.1pt;mso-char-indent-count:8.2;
line-height:20.0pt;mso-line-height-rule:exactly;background:white;mso-layout-grid-align:
none'><span style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'>Ůʿ��δ�飩<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></u>Ԫ<span lang=EN-US>/</span>�ˣ�����<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><o:p></o:p></span></u></span></p>

<p class=MsoNormal style='text-indent:86.1pt;mso-char-indent-count:8.2;
line-height:20.0pt;mso-line-height-rule:exactly;background:white;mso-layout-grid-align:
none'><span style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'>Ůʿ���ѻ飩<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span style='mso-spacerun:yes'>&nbsp;</span></span></u>Ԫ<span
lang=EN-US>/</span>�ˣ�����<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><o:p></o:p></span></u></span></p>

<p class=MsoNormal style='text-indent:17.95pt;mso-char-indent-count:1.71;
line-height:20.0pt;mso-line-height-rule:exactly;background:white;mso-layout-grid-align:
none'><span lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;
mso-bidi-font-family:"Times New Roman"'><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span></span><span
style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:"Times New Roman"'>�ײͶ���
��<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span>ʿ <u><span
lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
style='mso-spacerun:yes'>&nbsp;</span><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;</span></span></u>Ԫ<span lang=EN-US>/</span>�ˣ�����<u><span
lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><o:p></o:p></span></u></span></p>

<p class=MsoNormal style='text-indent:86.1pt;mso-char-indent-count:8.2;
line-height:20.0pt;mso-line-height-rule:exactly;background:white;mso-layout-grid-align:
none'><span style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'>Ůʿ��δ�飩<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></u>Ԫ<span lang=EN-US>/</span>�ˣ�����<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><o:p></o:p></span></u></span></p>

<p class=MsoNormal style='text-indent:86.1pt;mso-char-indent-count:8.2;
line-height:20.0pt;mso-line-height-rule:exactly;background:white;mso-layout-grid-align:
none'><span style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'>Ůʿ���ѻ飩<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;</span></span></u>Ԫ<span
lang=EN-US>/</span>�ˣ�����<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><o:p></o:p></span></u></span></p>

<p class=MsoNormal style='text-indent:17.95pt;mso-char-indent-count:1.71;
line-height:20.0pt;mso-line-height-rule:exactly;background:white;mso-layout-grid-align:
none'><span lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;
mso-bidi-font-family:"Times New Roman"'><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span></span><span
style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:"Times New Roman"'>�ײ�����
��<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span>ʿ <u><span
lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
style='mso-spacerun:yes'>&nbsp;</span><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></u>Ԫ<span
lang=EN-US>/</span>�ˣ�����<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><o:p></o:p></span></u></span></p>

<p class=MsoNormal style='text-indent:86.1pt;mso-char-indent-count:8.2;
line-height:20.0pt;mso-line-height-rule:exactly;background:white;mso-layout-grid-align:
none'><span style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'>Ůʿ��δ�飩<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></u>Ԫ<span lang=EN-US>/</span>�ˣ�����<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><o:p></o:p></span></u></span></p>

<p class=MsoNormal style='text-indent:86.1pt;mso-char-indent-count:8.2;
line-height:20.0pt;mso-line-height-rule:exactly;background:white;mso-layout-grid-align:
none'><span style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'>Ůʿ���ѻ飩<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span style='mso-spacerun:yes'>&nbsp;&nbsp;</span></span></u>Ԫ<span
lang=EN-US>/</span>�ˣ�����<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><o:p></o:p></span></u></span></p>
 -->
 
 
<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'>3</span><span style='mso-bidi-font-size:10.5pt;font-family:
����;mso-bidi-font-family:"Times New Roman"'>�������Ŀ��<span lang=EN-US>_<u>_</u></span><u>�������</u><span
lang=EN-US>__</span>���ҷ����ա��������칫�����ڽ�һ���淶�Ҹ���Ŀ����֪ͨ��������<span class=GramE>������</span><span
lang=EN-US>[2011]14</span>�ţ��ļ�Ҫ�󣬶ԷǾ�ҵ��죬�ܼ��߱�������Ҫ������Ҹα��濹ԭ���Ҹ���<span class=GramE>�԰��</span>�Ҹ���Ŀ���ģ��ҷ��辭�ܼ��߱�����Ըǩ��ͬ�ⷽ��ִ�У���ֻ�����ܼ��߱����Ʒ������ڳ�����챨����Ҹ���Ŀ��������档�׷�δ���ܼ���ͬ����Ȩ��֪�ܼ��߸���Ŀ�������������ҷ�������Ϊ�׷����ܼ�����ṩ�Ҹα��濹ԭ���Ҹ���<span
class=GramE>�԰��</span>�Ҹ���Ŀ�ļ�⡣���׷�ͨ��������;�����ֶ�֪�������������������ܼ���Ա���ҷ�����ģ��ҷ�����е��κξ������Σ��׷�ͬ���������ܼ���Ա�е��ɴ˲�����ȫ�����Ρ�<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:17.95pt;mso-char-indent-count:1.71;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'>4</span><span style='mso-bidi-font-size:10.5pt;font-family:
����;mso-bidi-font-family:"Times New Roman"'>�����㷽ʽ�� �� ��ͬǩ��ʱһ���Ը���<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:17.95pt;mso-char-indent-count:1.71;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><span style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'>�� ��ͬǩ��ʱԤ������<span lang=EN-US>______________</span>����������<span
lang=EN-US>15</span>����������һ���Ը���β��<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:17.95pt;mso-char-indent-count:1.71;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><span style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'>�� ����<span lang=EN-US>_____________________________________________<o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:17.85pt;mso-char-indent-count:1.7;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'>5</span><span style='mso-bidi-font-size:10.5pt;font-family:
����;mso-bidi-font-family:"Times New Roman"'>�����ʽ���� ֧Ʊ<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span>��
�ֽ�<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span>��
����<span class=GramE>ת��</span><span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:21.0pt;line-height:20.0pt;mso-line-height-rule:
exactly;background:white'><span class=GramE><span style='mso-bidi-font-size:
10.5pt;font-family:����;mso-bidi-font-family:"Times New Roman"'>������</span></span><span
style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:"Times New Roman"'>ѡ�񲿷�������������н��㣬�ҷ�Ӧ�����������<span
lang=EN-US>10</span>���������ڽ��׷���Ա����������ϸ�������洫����ʼ��ķ�ʽ�ύ�׷����׷��ں˶����������������ڼ�ʱ����ǩ��ȷ�ϲ�֧���ҷ�ʣ�������á����׷�������������δ���������������ɾܾ�����ģ�����Ϊ�׷��Ͽ��ҷ��Ķ�����ϸ��ͬʱ���׷�Ӧ�����й��������е�<span
class=GramE>�ڴ�</span>������֧��������Ϣ��<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:21.0pt;line-height:20.0pt;mso-line-height-rule:
exactly;background:white'><span lang=EN-US style='mso-bidi-font-size:10.5pt;
font-family:����;mso-bidi-font-family:"Times New Roman"'>6</span><span
style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:"Times New Roman"'>���ҷ�<span
class=GramE>�ʻ�</span>���£�<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:15.75pt;mso-char-indent-count:1.5;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:"Times New Roman"'>�ҷ���������<u><span
lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><o:p></o:p></span></u></span></p>

<p class=MsoNormal style='text-indent:15.75pt;mso-char-indent-count:1.5;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:"Times New Roman"'>��<span
lang=EN-US><span style='mso-spacerun:yes'>&nbsp; </span></span>��<span
lang=EN-US><span style='mso-spacerun:yes'>&nbsp; </span></span>�У�<u><span
lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><o:p></o:p></span></u></span></p>

<p class=MsoNormal style='text-indent:15.75pt;mso-char-indent-count:1.5;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:"Times New Roman"'>�����˺�<span
lang=EN-US><span style='mso-spacerun:yes'>&nbsp; </span></span>��<u><span
lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><o:p></o:p></span></u></span></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'>7</span><span style='mso-bidi-font-size:10.5pt;font-family:
����;mso-bidi-font-family:"Times New Roman"'>����׷�ԭ��������Ա����ԭ�������������Լ����Ŀ�����еĲ�����Ŀ�ģ�����Ϊ�׷���Ը���������Ŀ���ҷ����˲���������á�<u><span
lang=EN-US><o:p></o:p></span></u></span></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'>8</span><span style='mso-bidi-font-size:10.5pt;font-family:
����;mso-bidi-font-family:"Times New Roman"'>���׷��ͻ�������Ŀ����������Ȩ��Ӧ���ܼ���Ա�����ܼ죬���������˴�Ϊ��ʹ�����С�<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman";color:black'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman";color:black'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:-24.0pt;line-height:
20.0pt;mso-line-height-rule:exactly;mso-list:l4 level1 lfo2;tab-stops:list 0cm;
background:white'><![if !supportLists]><b><span lang=EN-US style='mso-bidi-font-size:
10.5pt;font-family:����;mso-bidi-font-family:����'><span style='mso-list:Ignore'>������<span
style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span></span></b><![endif]><b><span
style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:"Times New Roman"'>���������֪<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:26.25pt;mso-char-indent-count:2.5;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'>1</span><span style='mso-bidi-font-size:10.5pt;font-family:
����;mso-bidi-font-family:"Times New Roman"'>�����ʱ��Я��������Ч֤��<span lang=EN-US> (</span>�����֤�����յ�<span
lang=EN-US>), </span>�Ա㽨�����˵�����<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:26.25pt;mso-char-indent-count:2.5;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'>2</span><span style='mso-bidi-font-size:10.5pt;font-family:
����;mso-bidi-font-family:"Times New Roman"'>����쵱�����漰��ѪҺ�����Ŀ������������<span
lang=EN-US> (HP)</span>������⡢����<span lang=EN-US>B</span>��<span lang=EN-US> (</span>�ε�<span
class=GramE>��</span>Ƣ��<span lang=EN-US>)</span>�糿��ո������漰�ո���Ŀ��������Ľ�������Ӫ�����<span
lang=EN-US>(</span>��ְ������<span lang=EN-US>)</span>��<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:26.25pt;mso-char-indent-count:2.5;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'>3</span><span style='mso-bidi-font-size:10.5pt;font-family:
����;mso-bidi-font-family:"Times New Roman"'>�����ǰ����ע�ⲻҪ��ʳ���塢����������ʳ�<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:26.25pt;mso-char-indent-count:2.5;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'>4</span><span style='mso-bidi-font-size:10.5pt;font-family:
����;mso-bidi-font-family:"Times New Roman"'>�� ���ǰһ������<span lang=EN-US>8</span>��֮���ٽ���<span
lang=EN-US> (</span>����ˮ<span lang=EN-US>), </span>��֤˯�ߣ���������˶��������������Ա�֤�������׼ȷ�ԡ�<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:26.25pt;mso-char-indent-count:2.5;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'>5</span><span style='mso-bidi-font-size:10.5pt;font-family:
����;mso-bidi-font-family:"Times New Roman"'>���μ�<span lang=EN-US>X</span>�߼�飬�����Ŵ��н�����������������и���������׼�����е��ܼ���������<span
lang=EN-US>X</span>�߼�顢����������<span lang=EN-US> (HP)</span>������⡢˫��<span
lang=EN-US>X</span><span class=GramE>�߹��ܶ�</span>��顣<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:26.25pt;mso-char-indent-count:2.5;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'>6</span><span style='mso-bidi-font-size:10.5pt;font-family:
����;mso-bidi-font-family:"Times New Roman"'>��<span lang=EN-US>B</span>������¸������ӹ������������ס�ǰ���ٵ�����ʱ�������ڰ��׳�ӯ״̬�½��У�
Ӧ�ڼ�ǰ<span lang=EN-US>2</span>Сʱ��ˮ<span lang=EN-US>1000</span>�������ң�����С�㣬���ֱ����ѻ�Ů��<span
lang=EN-US> (</span>��������ʷ<span lang=EN-US>)</span>�������������ʱ�������<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'>7</span><span style='mso-bidi-font-size:10.5pt;font-family:
����;mso-bidi-font-family:"Times New Roman"'>���ѻ�Ů�Լ�鸾��ǰ�����ſ���Һ������<span
class=GramE>��</span>�����������Ƽ�飬��ԤԼʱ����顣<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'>8</span><span style='mso-bidi-font-size:10.5pt;font-family:
����;mso-bidi-font-family:"Times New Roman"'>��δ��Ů�ԡ��ѻ�Ů��<span lang=EN-US> (</span>����<span
class=GramE>����ʷ</span><span lang=EN-US>)</span>���и����������Ƽ�鼰����������顣<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'>9</span><span style='mso-bidi-font-size:10.5pt;font-family:
����;mso-bidi-font-family:"Times New Roman"'>������ѹ���۵ס���϶�Ƽ����Ŀ����������۾�����������۾����Ա���ҩˮ��<span
class=GramE>����</span>��<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'>10</span><span style='mso-bidi-font-size:10.5pt;font-family:
����;mso-bidi-font-family:"Times New Roman"'>����Ѫѹ�����򲡵����Լ������ߣ�������Я������ҩ�����ɿո������Ŀ���ٷ��á�<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'>11</span><span style='mso-bidi-font-size:10.5pt;font-family:
����;mso-bidi-font-family:"Times New Roman"'>����������д���񣬷�����������Ʒ<span lang=EN-US>
(</span>������Ʒ�����б���<span lang=EN-US>)</span>��������Ҫ����ͷ���̨��ʿ��ϵ��<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly;background:white;mso-layout-grid-align:
none'><span style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman";color:black'>�����ر�ע������׷�Ӧ�������ǰ��ϸ��֪��Ӧ�������Ա���Ա�������<span
class=GramE>����</span>��ȷ����������������ԱΥ������ע������������������׼ȷ��������������ֵģ��ҷ����е���Ӧ���Ρ�<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:-24.0pt;line-height:
20.0pt;mso-line-height-rule:exactly;mso-list:l4 level1 lfo2;tab-stops:list 0cm;
background:white'><![if !supportLists]><b><span lang=EN-US style='mso-bidi-font-size:
10.5pt;font-family:����;mso-bidi-font-family:����'><span style='mso-list:Ignore'>������<span
style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span></span></b><![endif]><b><span
style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:"Times New Roman"'>��챨������<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='margin-right:-7.65pt;mso-para-margin-right:-.73gd;
text-indent:17.95pt;mso-char-indent-count:1.71;line-height:20.0pt;mso-line-height-rule:
exactly;background:white'><span lang=EN-US style='mso-bidi-font-size:10.5pt;
font-family:����;mso-bidi-font-family:"Times New Roman"'>1</span><span
style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:"Times New Roman"'>���ҷ��������ʮ���������ڽ��ܼ���Ա���������������ʼ���ʽ�ʹ����׷���ϵ�ˣ���׷�������ϵ������ǰ��֪�ҷ���<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='margin-right:-7.65pt;mso-para-margin-right:-.73gd;
text-indent:17.95pt;mso-char-indent-count:1.71;line-height:20.0pt;mso-line-height-rule:
exactly;background:white'><span lang=EN-US style='mso-bidi-font-size:10.5pt;
font-family:����;mso-bidi-font-family:"Times New Roman"'>2</span><span
style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:"Times New Roman"'>��<span
class=GramE>�ҷ���</span>�ṩҽ����ѯ���񡣼׷������ַ��ܼ�����˽��֪��Ȩ����Ϊ�ģ�һ�к�����ɼ׷����и���<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:17.95pt;mso-char-indent-count:1.71;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'>3</span><span style='mso-bidi-font-size:10.5pt;font-family:
����;mso-bidi-font-family:"Times New Roman"'>���׷������Աδ��������ɱ��ν�����죬�ɴ�����Ŷ���챨��������Ӧ�ɼ׷��е�������Ρ�<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:17.95pt;mso-char-indent-count:1.71;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='text-indent:17.95pt;mso-char-indent-count:1.71;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:-24.0pt;line-height:
20.0pt;mso-line-height-rule:exactly;mso-list:l4 level1 lfo2;tab-stops:list 0cm;
background:white'><![if !supportLists]><b><span lang=EN-US style='mso-bidi-font-size:
10.5pt;font-family:����;mso-bidi-font-family:����'><span style='mso-list:Ignore'>������<span
style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span></span></b><![endif]><b><span
style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:"Times New Roman"'>��������<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='margin-left:18.0pt;line-height:20.0pt;mso-line-height-rule:
exactly;background:white'><span style='mso-bidi-font-size:10.5pt;font-family:
����;mso-bidi-font-family:"Times New Roman"'>��ͬ��Ч��Ϊ<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></u>��<u><span
lang=EN-US><span style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span></span></u>��<u><span
lang=EN-US><span style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></u>��
��<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></u>��<u><span
lang=EN-US><span style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></u>��<u><span
lang=EN-US><span style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></u>��ֹ��<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='margin-left:18.0pt;line-height:20.0pt;mso-line-height-rule:
exactly;background:white'><b><span lang=EN-US style='mso-bidi-font-size:10.5pt;
font-family:����;mso-bidi-font-family:"Times New Roman"'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal style='margin-left:18.0pt;line-height:20.0pt;mso-line-height-rule:
exactly;background:white'><b><span lang=EN-US style='mso-bidi-font-size:10.5pt;
font-family:����;mso-bidi-font-family:"Times New Roman"'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:-24.0pt;line-height:
20.0pt;mso-line-height-rule:exactly;mso-list:l4 level1 lfo2;tab-stops:list 0cm;
background:white'><![if !supportLists]><b><span lang=EN-US style='mso-bidi-font-size:
10.5pt;font-family:����;mso-bidi-font-family:����'><span style='mso-list:Ignore'>������<span
style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span></span></b><![endif]><b><span
style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:"Times New Roman"'>��������<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly;
background:white'><u><span lang=EN-US style='mso-bidi-font-size:10.5pt;
font-family:����;mso-bidi-font-family:"Times New Roman"'><span
style='mso-spacerun:yes'>&nbsp;${ t_order.memo2 }</span><o:p></o:p></span></u></p>


<p class=MsoNormal style='margin-left:42.0pt;text-indent:-24.0pt;line-height:
20.0pt;mso-line-height-rule:exactly;mso-list:l4 level1 lfo2;tab-stops:list 0cm;
background:white'><![if !supportLists]><b><span lang=EN-US style='mso-bidi-font-size:
10.5pt;font-family:����;mso-bidi-font-family:����'><span style='mso-list:Ignore'>������<span
style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span></span></b><![endif]><b><span
style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:"Times New Roman"'>����Լ��<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'>1</span><span style='mso-bidi-font-size:10.5pt;font-family:
����;mso-bidi-font-family:"Times New Roman"'>�����б�Э��δ�����ˣ��ס���˫�������Ѻ�Э�̵�ԭ�����Խ����<span
style='color:black'>����Э�̽���ģ��κ�һ�������ҷ�Ӫҵ�����ڵ�����Ժ�������ϡ�</span><span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'>2</span><span style='mso-bidi-font-size:10.5pt;font-family:
����;mso-bidi-font-family:"Times New Roman"'>����Э�龭�ס���˫��ǩ�ֻ���¼�����Ч��δ����Э��˫������ͬ�⣬��Э�鲻���޸ĺͱ����<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'>3</span><span style='mso-bidi-font-size:10.5pt;font-family:
����;mso-bidi-font-family:"Times New Roman"'>����Э��Լ�������۸�����ݵȱ���Ϊ��ҵ���ܣ��ס���˫�������������Ա���ֱ����ͬ��ֹ��һ�ꡣ����һ��Υ���������񣬸��Է������ʧ�ģ���ΥԼ��Ӧ�е���Ӧ���ɼ��⳥���Ρ�<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'>4</span><span style='mso-bidi-font-size:10.5pt;font-family:
����;mso-bidi-font-family:"Times New Roman"'>���κ�һ��Υ����Э��涨֮����ΥԼ��Ӧ�е���Ӧ��ΥԼ���β�����Լ���⳥�ɴ���ɵ�һ��ֱ�Ӿ�����ʧ����Ԥ������ؾ�����ʧ��ΥԼ�����Ӱ��ס���˫���������к�ͬ�ڵ��������<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'>5</span><span style='mso-bidi-font-size:10.5pt;font-family:
����;mso-bidi-font-family:"Times New Roman"'>����Э�鸽���Ǳ�Э�鲻�ɷָ����ɲ��֣��뱾Э�����ͬ��Ч����<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'>6</span><span style='mso-bidi-font-size:10.5pt;font-family:
����;mso-bidi-font-family:"Times New Roman"'>����Э��һʽ���ݣ�˫����ִһ�ݣ�����ͬ�ȵķ���Ч����<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly;
background:white'><span lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:
����;mso-bidi-font-family:"Times New Roman"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly;
background:white'><span style='mso-bidi-font-size:10.5pt;font-family:����;
mso-bidi-font-family:"Times New Roman"'>��<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp; </span></span>����<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span>��<span lang=EN-US><span style='mso-spacerun:yes'>&nbsp; </span></span>����<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly;
background:white'><span style='mso-bidi-font-size:10.5pt;font-family:����;
mso-bidi-font-family:"Times New Roman"'>��<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp; </span></span>ַ��<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span>��<span lang=EN-US><span style='mso-spacerun:yes'>&nbsp; </span></span>ַ��<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly;
background:white'><span style='mso-bidi-font-size:10.5pt;font-family:����;
mso-bidi-font-family:"Times New Roman"'>��<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp; </span></span>����<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span>��<span lang=EN-US><span style='mso-spacerun:yes'>&nbsp; </span></span>����<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly;
background:white'><span style='mso-bidi-font-size:10.5pt;font-family:����;
mso-bidi-font-family:"Times New Roman"'>��<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp; </span></span>�棺<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span>��<span lang=EN-US><span style='mso-spacerun:yes'>&nbsp; </span></span>�棺<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly;
background:white'><span style='mso-bidi-font-size:10.5pt;font-family:����;
mso-bidi-font-family:"Times New Roman"'>��ϵ�ˣ�<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span>��ϵ�ˣ�<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly;
background:white'><span lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:
����;mso-bidi-font-family:"Times New Roman"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly;
background:white'><span style='mso-bidi-font-size:10.5pt;font-family:����;
mso-bidi-font-family:"Times New Roman"'>��˾ǩ�£�<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span>��˾ǩ�£�<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly;
background:white'><span lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:
����;mso-bidi-font-family:"Times New Roman"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly;
background:white'><span style='mso-bidi-font-size:10.5pt;font-family:����;
mso-bidi-font-family:"Times New Roman"'>��<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp; </span></span>�ڣ�<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span></span>��<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span></span>��<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span></span>��<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;</span></span>��<span
lang=EN-US><span style='mso-spacerun:yes'>&nbsp; </span></span>�ڣ�<span
lang=EN-US><span style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span></span>��<span
lang=EN-US><span style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span></span>��<span
lang=EN-US><span style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span></span>��<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:20.0pt;mso-line-height-rule:exactly;background:white'><span
lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:����;mso-bidi-font-family:
"Times New Roman"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal><span lang=EN-US><o:p>&nbsp;</o:p></span></p>

</div>



<script  language="javascript">
function   fprint()
{  try{
		   demo.style.display=(demo.style.display == "none")?"block":"none";
		   window.print();
		   demo.style.display = "block";
	  }catch(e){ alert("��ע����Ĵ�ӡ����\n\n.���ܴ�ӡ����û׼���ã�\n.���ܴ�ӡ�������˹��ϡ�");}
   
		   
}
</script>

<div  id=demo style="display:block" align="center">
<br>
<!--
<input  type="button"  name="dy"  value="��ӡ"  onclick="btnPrint(document.windows)"  > &nbsp;&nbsp;
-->
<input  type="button"  class="btn"  name="dy"  value="    ��ӡ    "  onclick="fprint()"  > &nbsp;&nbsp;

<input type="button" class="btn" value="    ����    " name="B1" onClick="javascript:history.back(-1)">&nbsp;&nbsp;

<input  type="button"  class="btn"  name="gb"  value="   �ر�    "  onclick="window.close()"  >
 
<!--
 <input  type="button"  name="gb"  value="�ر�"  onclick="window.close()"  >
 -->

</div>

<br>
<br>

</body>

</html>
