
<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK"  %>
<html xmlns:v="urn:schemas-microsoft-com:vml"
xmlns:o="urn:schemas-microsoft-com:office:office"
xmlns:w="urn:schemas-microsoft-com:office:word"
xmlns:m="http://schemas.microsoft.com/office/2004/12/omml"
xmlns:st1="urn:schemas-microsoft-com:office:smarttags"
xmlns="http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=Content-Type content="text/html; charset=gb2312">
<meta name=ProgId content=Word.Document>
<meta name=Generator content="Microsoft Word 14">
<meta name=Originator content="Microsoft Word 14">
<link rel=File-List href="http%20(sms).files/filelist.xml">
<title>中国短信网--HTTP接口文档</title>
<o:SmartTagType namespaceuri="urn:schemas-microsoft-com:office:smarttags"
 name="chmetcnv"/>
<o:SmartTagType namespaceuri="urn:schemas-microsoft-com:office:smarttags"
 name="chsdate"/>
<!--[if gte mso 9]><xml>
 <o:DocumentProperties>
  <o:Author>萝卜家园</o:Author>
  <o:LastAuthor>FtpDown</o:LastAuthor>
  <o:Revision>2</o:Revision>
  <o:TotalTime>256</o:TotalTime>
  <o:Created>2014-07-21T03:27:00Z</o:Created>
  <o:LastSaved>2014-07-21T03:27:00Z</o:LastSaved>
  <o:Pages>9</o:Pages>
  <o:Words>860</o:Words>
  <o:Characters>4903</o:Characters>
  <o:Company>www.Luobo.cc</o:Company>
  <o:Lines>40</o:Lines>
  <o:Paragraphs>11</o:Paragraphs>
  <o:CharactersWithSpaces>5752</o:CharactersWithSpaces>
  <o:Version>14.00</o:Version>
 </o:DocumentProperties>
 <o:OfficeDocumentSettings>
  <o:TargetScreenSize>800x600</o:TargetScreenSize>
 </o:OfficeDocumentSettings>
</xml><![endif]-->
<link rel=themeData href="http%20(sms).files/themedata.thmx">
<link rel=colorSchemeMapping href="http%20(sms).files/colorschememapping.xml">
<!--[if gte mso 9]><xml>
 <w:WordDocument>
  <w:TrackMoves>false</w:TrackMoves>
  <w:TrackFormatting/>
  <w:PunctuationKerning/>
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
   <w:DontUseIndentAsNumberingTabStop/>
   <w:FELineBreak11/>
   <w:WW11IndentRules/>
   <w:DontAutofitConstrainedTables/>
   <w:AutofitLikeWW11/>
   <w:HangulWidthLikeWW11/>
   <w:UseNormalStyleForList/>
   <w:DontVertAlignCellWithSp/>
   <w:DontBreakConstrainedForcedTables/>
   <w:DontVertAlignInTxbx/>
   <w:Word11KerningPairs/>
   <w:CachedColBalance/>
   <w:UseFELayout/>
  </w:Compatibility>
  <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>
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
 <w:LatentStyles DefLockedState="false" DefUnhideWhenUsed="false"
  DefSemiHidden="false" DefQFormat="false" LatentStyleCount="267">
  <w:LsdException Locked="false" QFormat="true" Name="Normal"/>
  <w:LsdException Locked="false" QFormat="true" Name="heading 1"/>
  <w:LsdException Locked="false" QFormat="true" Name="heading 2"/>
  <w:LsdException Locked="false" QFormat="true" Name="heading 3"/>
  <w:LsdException Locked="false" QFormat="true" Name="heading 4"/>
  <w:LsdException Locked="false" QFormat="true" Name="heading 5"/>
  <w:LsdException Locked="false" QFormat="true" Name="heading 6"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   QFormat="true" Name="heading 7"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   QFormat="true" Name="heading 8"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   QFormat="true" Name="heading 9"/>
  <w:LsdException Locked="false" Priority="39" Name="toc 1"/>
  <w:LsdException Locked="false" Priority="39" Name="toc 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   QFormat="true" Name="caption"/>
  <w:LsdException Locked="false" QFormat="true" Name="Title"/>
  <w:LsdException Locked="false" QFormat="true" Name="Subtitle"/>
  <w:LsdException Locked="false" Priority="99" Name="Hyperlink"/>
  <w:LsdException Locked="false" QFormat="true" Name="Strong"/>
  <w:LsdException Locked="false" QFormat="true" Name="Emphasis"/>
  <w:LsdException Locked="false" Priority="99" SemiHidden="true"
   Name="Placeholder Text"/>
  <w:LsdException Locked="false" Priority="1" QFormat="true" Name="No Spacing"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 1"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 1"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 1"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 1"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 1"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 1"/>
  <w:LsdException Locked="false" Priority="99" SemiHidden="true" Name="Revision"/>
  <w:LsdException Locked="false" Priority="34" QFormat="true"
   Name="List Paragraph"/>
  <w:LsdException Locked="false" Priority="29" QFormat="true" Name="Quote"/>
  <w:LsdException Locked="false" Priority="30" QFormat="true"
   Name="Intense Quote"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 1"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 1"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 1"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 1"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 1"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 1"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 1"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 1"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 2"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 2"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 2"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 2"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 2"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 2"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 2"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 2"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 2"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 2"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 2"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 2"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 2"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 2"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 3"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 3"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 3"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 3"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 3"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 3"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 3"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 3"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 3"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 3"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 3"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 3"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 3"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 3"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 4"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 4"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 4"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 4"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 4"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 4"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 4"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 4"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 4"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 4"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 4"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 4"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 4"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 4"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 5"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 5"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 5"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 5"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 5"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 5"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 5"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 5"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 5"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 5"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 5"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 5"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 5"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 5"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 6"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 6"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 6"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 6"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 6"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 6"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 6"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 6"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 6"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 6"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 6"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 6"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 6"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 6"/>
  <w:LsdException Locked="false" Priority="19" QFormat="true"
   Name="Subtle Emphasis"/>
  <w:LsdException Locked="false" Priority="21" QFormat="true"
   Name="Intense Emphasis"/>
  <w:LsdException Locked="false" Priority="31" QFormat="true"
   Name="Subtle Reference"/>
  <w:LsdException Locked="false" Priority="32" QFormat="true"
   Name="Intense Reference"/>
  <w:LsdException Locked="false" Priority="33" QFormat="true" Name="Book Title"/>
  <w:LsdException Locked="false" Priority="37" SemiHidden="true"
   UnhideWhenUsed="true" Name="Bibliography"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="TOC Heading"/>
 </w:LatentStyles>
</xml><![endif]--><!--[if !mso]><object
 classid="clsid:38481807-CA0E-42D2-BF39-B33AF135CC4D" id=ieooui></object>
<style>
st1\:*{behavior:url(#ieooui) }
</style>
<![endif]-->
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:Batang;
	panose-1:2 3 6 0 0 1 1 1 1 1;
	mso-font-alt:"Arial Unicode MS";
	mso-font-charset:129;
	mso-generic-font-family:auto;
	mso-font-format:other;
	mso-font-pitch:fixed;
	mso-font-signature:0 151388160 16 0 524288 0;}
@font-face
	{font-family:宋体;
	panose-1:2 1 6 0 3 1 1 1 1 1;
	mso-font-alt:SimSun;
	mso-font-charset:134;
	mso-generic-font-family:auto;
	mso-font-pitch:variable;
	mso-font-signature:3 135135232 16 0 262145 0;}
@font-face
	{font-family:Dotum;
	panose-1:2 11 6 0 0 1 1 1 1 1;
	mso-font-alt:\B3CB\C6C0;
	mso-font-charset:129;
	mso-generic-font-family:swiss;
	mso-font-pitch:variable;
	mso-font-signature:-1342176593 1775729915 48 0 524447 0;}
@font-face
	{font-family:黑体;
	panose-1:2 1 6 0 3 1 1 1 1 1;
	mso-font-alt:SimHei;
	mso-font-charset:134;
	mso-generic-font-family:auto;
	mso-font-pitch:variable;
	mso-font-signature:1 135135232 16 0 262144 0;}
@font-face
	{font-family:黑体;
	panose-1:2 1 6 0 3 1 1 1 1 1;
	mso-font-alt:SimHei;
	mso-font-charset:134;
	mso-generic-font-family:auto;
	mso-font-pitch:variable;
	mso-font-signature:1 135135232 16 0 262144 0;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;
	mso-font-charset:0;
	mso-generic-font-family:swiss;
	mso-font-pitch:variable;
	mso-font-signature:-520092929 1073786111 9 0 415 0;}
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;
	mso-font-charset:0;
	mso-generic-font-family:swiss;
	mso-font-pitch:variable;
	mso-font-signature:536871559 0 0 0 415 0;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;
	mso-font-charset:0;
	mso-generic-font-family:swiss;
	mso-font-pitch:variable;
	mso-font-signature:1627400839 -2147483648 8 0 66047 0;}
@font-face
	{font-family:"\@宋体";
	panose-1:2 1 6 0 3 1 1 1 1 1;
	mso-font-charset:134;
	mso-generic-font-family:auto;
	mso-font-pitch:variable;
	mso-font-signature:3 135135232 16 0 262145 0;}
@font-face
	{font-family:"\@黑体";
	panose-1:2 1 6 0 3 1 1 1 1 1;
	mso-font-charset:134;
	mso-generic-font-family:auto;
	mso-font-pitch:variable;
	mso-font-signature:1 135135232 16 0 262144 0;}
@font-face
	{font-family:"\@Dotum";
	panose-1:2 11 6 0 0 1 1 1 1 1;
	mso-font-charset:129;
	mso-generic-font-family:swiss;
	mso-font-pitch:variable;
	mso-font-signature:-1342176593 1775729915 48 0 524447 0;}
@font-face
	{font-family:"\@Batang";
	panose-1:0 0 0 0 0 0 0 0 0 0;
	mso-font-charset:129;
	mso-generic-font-family:auto;
	mso-font-format:other;
	mso-font-pitch:fixed;
	mso-font-signature:0 151388160 16 0 524288 0;}
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
	text-autospace:none;
	word-break:break-all;
	font-size:10.0pt;
	mso-bidi-font-size:12.0pt;
	font-family:Batang;
	mso-hansi-font-family:"Times New Roman";
	mso-bidi-font-family:"Times New Roman";
	mso-font-kerning:1.0pt;
	mso-fareast-language:KO;}
h1
	{mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-next:正文缩进;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:21.6pt;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	text-indent:-21.6pt;
	line-height:150%;
	mso-pagination:lines-together;
	page-break-after:avoid;
	mso-outline-level:1;
	mso-list:l1 level1 lfo1;
	tab-stops:list 21.6pt;
	font-size:14.0pt;
	mso-bidi-font-size:10.0pt;
	font-family:"Arial","sans-serif";
	mso-font-kerning:22.0pt;
	mso-bidi-font-weight:normal;}
h2
	{mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-next:正文缩进;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:28.8pt;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	text-indent:-28.8pt;
	line-height:150%;
	mso-pagination:lines-together;
	page-break-after:avoid;
	mso-outline-level:2;
	mso-list:l1 level2 lfo1;
	tab-stops:list 28.8pt;
	font-size:12.0pt;
	mso-bidi-font-size:10.0pt;
	font-family:"Arial","sans-serif";
	mso-font-kerning:1.0pt;
	mso-bidi-font-weight:normal;}
h3
	{mso-style-name:"标题 3\,h3\,Bold Head\,bh\,H3\,level_3\,PIM 3\,Level 3 Head\,Heading 3 - old\,sect1\.2\.3\,sect1\.2\.31\,sect1\.2\.32\,sect1\.2\.311\,sect1\.2\.33\,sect1\.2\.312\,3rd level\,3\,1\.1\.1";
	mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-next:正文缩进;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	text-indent:-36.0pt;
	mso-pagination:lines-together;
	page-break-after:avoid;
	mso-outline-level:3;
	mso-list:l1 level3 lfo1;
	tab-stops:list 36.0pt;
	font-size:10.5pt;
	mso-bidi-font-size:10.0pt;
	font-family:"Arial","sans-serif";
	mso-font-kerning:1.0pt;
	mso-bidi-font-weight:normal;}
h4
	{mso-style-name:"标题 4\,bullet\,bl\,bb";
	mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-next:正文缩进;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:43.2pt;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	text-indent:-43.2pt;
	line-height:150%;
	mso-pagination:lines-together;
	page-break-after:avoid;
	mso-outline-level:4;
	mso-list:l1 level4 lfo1;
	tab-stops:list 43.2pt;
	font-size:10.5pt;
	mso-bidi-font-size:10.0pt;
	font-family:"Arial","sans-serif";
	mso-font-kerning:1.0pt;
	mso-bidi-font-weight:normal;}
h5
	{mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-next:正文缩进;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:50.4pt;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	text-indent:-50.4pt;
	line-height:150%;
	mso-pagination:lines-together;
	page-break-after:avoid;
	mso-outline-level:5;
	mso-list:l1 level5 lfo1;
	tab-stops:list 50.4pt;
	font-size:10.5pt;
	mso-bidi-font-size:10.0pt;
	font-family:"Times New Roman","serif";
	mso-font-kerning:1.0pt;
	mso-bidi-font-weight:normal;}
h6
	{mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-next:正文;
	margin-top:12.0pt;
	margin-right:0cm;
	margin-bottom:3.0pt;
	margin-left:57.6pt;
	text-align:justify;
	text-justify:inter-ideograph;
	text-indent:-57.6pt;
	line-height:150%;
	mso-pagination:widow-orphan;
	mso-outline-level:6;
	mso-list:l1 level6 lfo1;
	tab-stops:list 57.6pt;
	mso-layout-grid-align:none;
	punctuation-wrap:simple;
	text-autospace:none;
	font-size:10.0pt;
	font-family:"Arial","sans-serif";
	mso-bidi-font-family:"Times New Roman";
	font-weight:normal;
	font-style:italic;
	mso-bidi-font-style:normal;
	mso-no-proof:yes;}
p.MsoToc1, li.MsoToc1, div.MsoToc1
	{mso-style-update:auto;
	mso-style-priority:39;
	mso-style-unhide:no;
	mso-style-next:正文;
	margin-top:6.0pt;
	margin-right:0cm;
	margin-bottom:6.0pt;
	margin-left:0cm;
	mso-pagination:none;
	font-size:12.0pt;
	font-family:"Arial","sans-serif";
	mso-fareast-font-family:宋体;
	text-transform:uppercase;
	mso-font-kerning:1.0pt;}
p.MsoToc2, li.MsoToc2, div.MsoToc2
	{mso-style-update:auto;
	mso-style-priority:39;
	mso-style-unhide:no;
	mso-style-next:正文;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:21.0pt;
	margin-bottom:.0001pt;
	mso-para-margin-top:0cm;
	mso-para-margin-right:0cm;
	mso-para-margin-bottom:0cm;
	mso-para-margin-left:2.0gd;
	mso-para-margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	mso-pagination:none;
	text-autospace:none;
	word-break:break-all;
	font-size:10.0pt;
	mso-bidi-font-size:12.0pt;
	font-family:Batang;
	mso-hansi-font-family:"Times New Roman";
	mso-bidi-font-family:"Times New Roman";
	mso-font-kerning:1.0pt;
	mso-fareast-language:KO;}
p.MsoNormalIndent, li.MsoNormalIndent, div.MsoNormalIndent
	{mso-style-unhide:no;
	margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	text-indent:21.0pt;
	mso-char-indent-count:2.0;
	mso-pagination:none;
	text-autospace:none;
	word-break:break-all;
	font-size:10.0pt;
	mso-bidi-font-size:12.0pt;
	font-family:Batang;
	mso-hansi-font-family:"Times New Roman";
	mso-bidi-font-family:"Times New Roman";
	mso-font-kerning:1.0pt;
	mso-fareast-language:KO;}
p.MsoHeader, li.MsoHeader, div.MsoHeader
	{mso-style-unhide:no;
	margin:0cm;
	margin-bottom:.0001pt;
	text-align:center;
	mso-pagination:none;
	tab-stops:center 207.65pt right 415.3pt;
	layout-grid-mode:char;
	text-autospace:none;
	word-break:break-all;
	border:none;
	mso-border-bottom-alt:solid windowtext .75pt;
	padding:0cm;
	mso-padding-alt:0cm 0cm 1.0pt 0cm;
	font-size:9.0pt;
	font-family:Batang;
	mso-hansi-font-family:"Times New Roman";
	mso-bidi-font-family:"Times New Roman";
	mso-font-kerning:1.0pt;
	mso-fareast-language:KO;}
p.MsoFooter, li.MsoFooter, div.MsoFooter
	{mso-style-unhide:no;
	margin:0cm;
	margin-bottom:.0001pt;
	mso-pagination:none;
	tab-stops:center 207.65pt right 415.3pt;
	layout-grid-mode:char;
	text-autospace:none;
	word-break:break-all;
	font-size:9.0pt;
	font-family:Batang;
	mso-hansi-font-family:"Times New Roman";
	mso-bidi-font-family:"Times New Roman";
	mso-font-kerning:1.0pt;
	mso-fareast-language:KO;}
p.MsoBodyText, li.MsoBodyText, div.MsoBodyText
	{mso-style-unhide:no;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:6.0pt;
	margin-left:14.2pt;
	line-height:12.0pt;
	mso-pagination:lines-together;
	font-size:10.5pt;
	mso-bidi-font-size:10.0pt;
	font-family:"Arial","sans-serif";
	mso-fareast-font-family:宋体;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	mso-style-unhide:no;
	color:blue;
	text-decoration:underline;
	text-underline:single;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-unhide:no;
	color:purple;
	text-decoration:underline;
	text-underline:single;}
tt
	{mso-style-unhide:no;
	mso-ansi-font-size:12.0pt;
	mso-bidi-font-size:12.0pt;
	font-family:宋体;
	mso-ascii-font-family:宋体;
	mso-fareast-font-family:宋体;
	mso-hansi-font-family:宋体;
	mso-bidi-font-family:宋体;}
p.TITLE, li.TITLE, div.TITLE
	{mso-style-name:TITLE;
	mso-style-unhide:no;
	mso-style-parent:页眉;
	margin:0cm;
	margin-bottom:.0001pt;
	text-align:center;
	mso-pagination:widow-orphan;
	text-autospace:none;
	word-break:break-all;
	font-size:16.0pt;
	mso-bidi-font-size:12.0pt;
	font-family:"Tahoma","sans-serif";
	mso-fareast-font-family:Batang;
	mso-bidi-font-family:"Times New Roman";
	mso-fareast-language:KO;
	font-weight:bold;}
.MsoChpDefault
	{mso-style-type:export-only;
	mso-default-props:yes;
	mso-fareast-font-family:宋体;}
 /* Page Definitions */
 @page
	{mso-page-border-surround-header:no;
	mso-page-border-surround-footer:no;
	mso-footnote-separator:url("http%20\(sms\).files/header.htm") fs;
	mso-footnote-continuation-separator:url("http%20\(sms\).files/header.htm") fcs;
	mso-endnote-separator:url("http%20\(sms\).files/header.htm") es;
	mso-endnote-continuation-separator:url("http%20\(sms\).files/header.htm") ecs;}
@page WordSection1
	{size:595.3pt 841.9pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;
	mso-header-margin:42.55pt;
	mso-footer-margin:49.6pt;
	mso-header:url("http%20\(sms\).files/header.htm") h1;
	mso-footer:url("http%20\(sms\).files/header.htm") f1;
	mso-paper-source:0;
	layout-grid:15.6pt;}
div.WordSection1
	{page:WordSection1;}
 /* List Definitions */
 @list l0
	{mso-list-id:133985575;
	mso-list-template-ids:-1656344440;}
@list l0:level1
	{mso-level-number-format:chinese-counting-thousand;
	mso-level-text:%1、;
	mso-level-tab-stop:21.0pt;
	mso-level-number-position:left;
	margin-left:0cm;
	text-indent:0cm;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%2\)";
	mso-level-tab-stop:42.0pt;
	mso-level-number-position:left;
	margin-left:42.0pt;
	text-indent:-21.0pt;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:63.0pt;
	mso-level-number-position:right;
	margin-left:63.0pt;
	text-indent:-21.0pt;}
@list l0:level4
	{mso-level-tab-stop:84.0pt;
	mso-level-number-position:left;
	margin-left:84.0pt;
	text-indent:-21.0pt;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%5\)";
	mso-level-tab-stop:105.0pt;
	mso-level-number-position:left;
	margin-left:105.0pt;
	text-indent:-21.0pt;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:126.0pt;
	mso-level-number-position:right;
	margin-left:126.0pt;
	text-indent:-21.0pt;}
@list l0:level7
	{mso-level-tab-stop:147.0pt;
	mso-level-number-position:left;
	margin-left:147.0pt;
	text-indent:-21.0pt;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%8\)";
	mso-level-tab-stop:168.0pt;
	mso-level-number-position:left;
	margin-left:168.0pt;
	text-indent:-21.0pt;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:189.0pt;
	mso-level-number-position:right;
	margin-left:189.0pt;
	text-indent:-21.0pt;}
@list l1
	{mso-list-id:259918391;
	mso-list-template-ids:-1580031542;}
@list l1:level1
	{mso-level-style-link:"标题 1";
	mso-level-text:%1;
	mso-level-tab-stop:21.6pt;
	mso-level-number-position:left;
	margin-left:21.6pt;
	text-indent:-21.6pt;}
@list l1:level2
	{mso-level-style-link:"标题 2";
	mso-level-text:"%1\.%2";
	mso-level-tab-stop:28.8pt;
	mso-level-number-position:left;
	margin-left:28.8pt;
	text-indent:-28.8pt;}
@list l1:level3
	{mso-level-style-link:"标题 3";
	mso-level-text:"%1\.%2\.%3";
	mso-level-tab-stop:36.0pt;
	mso-level-number-position:left;
	margin-left:36.0pt;
	text-indent:-36.0pt;}
@list l1:level4
	{mso-level-style-link:"标题 4";
	mso-level-text:"%1\.%2\.%3\.%4";
	mso-level-tab-stop:43.2pt;
	mso-level-number-position:left;
	margin-left:43.2pt;
	text-indent:-43.2pt;}
@list l1:level5
	{mso-level-style-link:"标题 5";
	mso-level-text:"%1\.%2\.%3\.%4\.%5";
	mso-level-tab-stop:50.4pt;
	mso-level-number-position:left;
	margin-left:50.4pt;
	text-indent:-50.4pt;}
@list l1:level6
	{mso-level-style-link:"标题 6";
	mso-level-text:"%1\.%2\.%3\.%4\.%5\.%6";
	mso-level-tab-stop:57.6pt;
	mso-level-number-position:left;
	margin-left:57.6pt;
	text-indent:-57.6pt;}
@list l1:level7
	{mso-level-text:"%1\.%2\.%3\.%4\.%5\.%6\.%7";
	mso-level-tab-stop:64.8pt;
	mso-level-number-position:left;
	margin-left:64.8pt;
	text-indent:-64.8pt;}
@list l1:level8
	{mso-level-text:"%1\.%2\.%3\.%4\.%5\.%6\.%7\.%8";
	mso-level-tab-stop:72.0pt;
	mso-level-number-position:left;
	margin-left:72.0pt;
	text-indent:-72.0pt;}
@list l1:level9
	{mso-level-text:"%1\.%2\.%3\.%4\.%5\.%6\.%7\.%8\.%9";
	mso-level-tab-stop:79.2pt;
	mso-level-number-position:left;
	margin-left:79.2pt;
	text-indent:-79.2pt;}
@list l2
	{mso-list-id:264269059;
	mso-list-template-ids:592848716;}
@list l2:level1
	{mso-level-number-format:chinese-counting-thousand;
	mso-level-text:%1、;
	mso-level-tab-stop:21.0pt;
	mso-level-number-position:left;
	margin-left:21.0pt;
	text-indent:-21.0pt;}
@list l2:level2
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%2\)";
	mso-level-tab-stop:42.0pt;
	mso-level-number-position:left;
	margin-left:42.0pt;
	text-indent:-21.0pt;}
@list l2:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:63.0pt;
	mso-level-number-position:right;
	margin-left:63.0pt;
	text-indent:-21.0pt;}
@list l2:level4
	{mso-level-tab-stop:84.0pt;
	mso-level-number-position:left;
	margin-left:84.0pt;
	text-indent:-21.0pt;}
@list l2:level5
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%5\)";
	mso-level-tab-stop:105.0pt;
	mso-level-number-position:left;
	margin-left:105.0pt;
	text-indent:-21.0pt;}
@list l2:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:126.0pt;
	mso-level-number-position:right;
	margin-left:126.0pt;
	text-indent:-21.0pt;}
@list l2:level7
	{mso-level-tab-stop:147.0pt;
	mso-level-number-position:left;
	margin-left:147.0pt;
	text-indent:-21.0pt;}
@list l2:level8
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%8\)";
	mso-level-tab-stop:168.0pt;
	mso-level-number-position:left;
	margin-left:168.0pt;
	text-indent:-21.0pt;}
@list l2:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:189.0pt;
	mso-level-number-position:right;
	margin-left:189.0pt;
	text-indent:-21.0pt;}
@list l3
	{mso-list-id:540245090;
	mso-list-template-ids:-1580031542;}
@list l3:level1
	{mso-level-text:%1;
	mso-level-tab-stop:21.6pt;
	mso-level-number-position:left;
	margin-left:21.6pt;
	text-indent:-21.6pt;}
@list l3:level2
	{mso-level-text:"%1\.%2";
	mso-level-tab-stop:28.8pt;
	mso-level-number-position:left;
	margin-left:28.8pt;
	text-indent:-28.8pt;}
@list l3:level3
	{mso-level-text:"%1\.%2\.%3";
	mso-level-tab-stop:36.0pt;
	mso-level-number-position:left;
	margin-left:36.0pt;
	text-indent:-36.0pt;}
@list l3:level4
	{mso-level-text:"%1\.%2\.%3\.%4";
	mso-level-tab-stop:43.2pt;
	mso-level-number-position:left;
	margin-left:43.2pt;
	text-indent:-43.2pt;}
@list l3:level5
	{mso-level-text:"%1\.%2\.%3\.%4\.%5";
	mso-level-tab-stop:50.4pt;
	mso-level-number-position:left;
	margin-left:50.4pt;
	text-indent:-50.4pt;}
@list l3:level6
	{mso-level-text:"%1\.%2\.%3\.%4\.%5\.%6";
	mso-level-tab-stop:57.6pt;
	mso-level-number-position:left;
	margin-left:57.6pt;
	text-indent:-57.6pt;}
@list l3:level7
	{mso-level-text:"%1\.%2\.%3\.%4\.%5\.%6\.%7";
	mso-level-tab-stop:64.8pt;
	mso-level-number-position:left;
	margin-left:64.8pt;
	text-indent:-64.8pt;}
@list l3:level8
	{mso-level-text:"%1\.%2\.%3\.%4\.%5\.%6\.%7\.%8";
	mso-level-tab-stop:72.0pt;
	mso-level-number-position:left;
	margin-left:72.0pt;
	text-indent:-72.0pt;}
@list l3:level9
	{mso-level-text:"%1\.%2\.%3\.%4\.%5\.%6\.%7\.%8\.%9";
	mso-level-tab-stop:79.2pt;
	mso-level-number-position:left;
	margin-left:79.2pt;
	text-indent:-79.2pt;}
@list l4
	{mso-list-id:681475738;
	mso-list-type:hybrid;
	mso-list-template-ids:858952694;}
@list l4:level1
	{mso-level-text:%1、;
	mso-level-tab-stop:18.0pt;
	mso-level-number-position:left;
	margin-left:18.0pt;
	text-indent:-18.0pt;}
@list l4:level2
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%2\)";
	mso-level-tab-stop:42.0pt;
	mso-level-number-position:left;
	margin-left:42.0pt;
	text-indent:-21.0pt;}
@list l4:level3
	{mso-level-tab-stop:108.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l4:level4
	{mso-level-tab-stop:144.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l4:level5
	{mso-level-tab-stop:180.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l4:level6
	{mso-level-tab-stop:216.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l4:level7
	{mso-level-tab-stop:252.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l4:level8
	{mso-level-tab-stop:288.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l4:level9
	{mso-level-tab-stop:324.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l5
	{mso-list-id:977223841;
	mso-list-template-ids:481584842;
	mso-list-style-name:样式1;}
@list l5:level1
	{mso-level-number-format:chinese-counting-thousand;
	mso-level-text:"%1\)";
	mso-level-tab-stop:21.0pt;
	mso-level-number-position:left;
	margin-left:21.0pt;
	text-indent:-21.0pt;
	letter-spacing:0pt;}
@list l5:level2
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%2\)";
	mso-level-tab-stop:42.0pt;
	mso-level-number-position:left;
	margin-left:42.0pt;
	text-indent:-21.0pt;}
@list l5:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:63.0pt;
	mso-level-number-position:right;
	margin-left:63.0pt;
	text-indent:-21.0pt;}
@list l5:level4
	{mso-level-tab-stop:84.0pt;
	mso-level-number-position:left;
	margin-left:84.0pt;
	text-indent:-21.0pt;}
@list l5:level5
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%5\)";
	mso-level-tab-stop:105.0pt;
	mso-level-number-position:left;
	margin-left:105.0pt;
	text-indent:-21.0pt;}
@list l5:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:126.0pt;
	mso-level-number-position:right;
	margin-left:126.0pt;
	text-indent:-21.0pt;}
@list l5:level7
	{mso-level-tab-stop:147.0pt;
	mso-level-number-position:left;
	margin-left:147.0pt;
	text-indent:-21.0pt;}
@list l5:level8
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%8\)";
	mso-level-tab-stop:168.0pt;
	mso-level-number-position:left;
	margin-left:168.0pt;
	text-indent:-21.0pt;}
@list l5:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:189.0pt;
	mso-level-number-position:right;
	margin-left:189.0pt;
	text-indent:-21.0pt;}
@list l6
	{mso-list-id:1324236950;
	mso-list-template-ids:992222718;}
@list l6:level1
	{mso-level-number-format:chinese-counting-thousand;
	mso-level-text:%1、;
	mso-level-tab-stop:0cm;
	mso-level-number-position:left;
	margin-left:0cm;
	text-indent:0cm;}
@list l6:level2
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%2\)";
	mso-level-tab-stop:42.0pt;
	mso-level-number-position:left;
	margin-left:42.0pt;
	text-indent:-21.0pt;}
@list l6:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:63.0pt;
	mso-level-number-position:right;
	margin-left:63.0pt;
	text-indent:-21.0pt;}
@list l6:level4
	{mso-level-tab-stop:84.0pt;
	mso-level-number-position:left;
	margin-left:84.0pt;
	text-indent:-21.0pt;}
@list l6:level5
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%5\)";
	mso-level-tab-stop:105.0pt;
	mso-level-number-position:left;
	margin-left:105.0pt;
	text-indent:-21.0pt;}
@list l6:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:126.0pt;
	mso-level-number-position:right;
	margin-left:126.0pt;
	text-indent:-21.0pt;}
@list l6:level7
	{mso-level-tab-stop:147.0pt;
	mso-level-number-position:left;
	margin-left:147.0pt;
	text-indent:-21.0pt;}
@list l6:level8
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%8\)";
	mso-level-tab-stop:168.0pt;
	mso-level-number-position:left;
	margin-left:168.0pt;
	text-indent:-21.0pt;}
@list l6:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:189.0pt;
	mso-level-number-position:right;
	margin-left:189.0pt;
	text-indent:-21.0pt;}
@list l7
	{mso-list-id:1433165965;
	mso-list-type:simple;
	mso-list-template-ids:-1285883580;}
@list l7:level1
	{mso-level-number-format:chinese-counting-thousand;
	mso-level-text:%1;
	mso-level-tab-stop:0cm;
	mso-level-number-position:left;
	margin-left:0cm;
	text-indent:0cm;
	letter-spacing:0pt;}
@list l8
	{mso-list-id:2011442925;
	mso-list-template-ids:481584842;}
@list l8:level1
	{mso-level-text:"%1\)";
	mso-level-tab-stop:21.0pt;
	mso-level-number-position:left;
	margin-left:21.0pt;
	text-indent:-21.0pt;
	letter-spacing:0pt;}
@list l8:level2
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%2\)";
	mso-level-tab-stop:42.0pt;
	mso-level-number-position:left;
	margin-left:42.0pt;
	text-indent:-21.0pt;}
@list l8:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:63.0pt;
	mso-level-number-position:right;
	margin-left:63.0pt;
	text-indent:-21.0pt;}
@list l8:level4
	{mso-level-tab-stop:84.0pt;
	mso-level-number-position:left;
	margin-left:84.0pt;
	text-indent:-21.0pt;}
@list l8:level5
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%5\)";
	mso-level-tab-stop:105.0pt;
	mso-level-number-position:left;
	margin-left:105.0pt;
	text-indent:-21.0pt;}
@list l8:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:126.0pt;
	mso-level-number-position:right;
	margin-left:126.0pt;
	text-indent:-21.0pt;}
@list l8:level7
	{mso-level-tab-stop:147.0pt;
	mso-level-number-position:left;
	margin-left:147.0pt;
	text-indent:-21.0pt;}
@list l8:level8
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%8\)";
	mso-level-tab-stop:168.0pt;
	mso-level-number-position:left;
	margin-left:168.0pt;
	text-indent:-21.0pt;}
@list l8:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:189.0pt;
	mso-level-number-position:right;
	margin-left:189.0pt;
	text-indent:-21.0pt;}
@list l9
	{mso-list-id:2039162892;
	mso-list-template-ids:459850822;}
@list l9:level1
	{mso-level-number-format:chinese-counting-thousand;
	mso-level-text:%1、;
	mso-level-tab-stop:0cm;
	mso-level-number-position:left;
	margin-left:0cm;
	text-indent:0cm;
	letter-spacing:0pt;}
@list l9:level2
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%2\)";
	mso-level-tab-stop:42.0pt;
	mso-level-number-position:left;
	margin-left:42.0pt;
	text-indent:-21.0pt;}
@list l9:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:63.0pt;
	mso-level-number-position:right;
	margin-left:63.0pt;
	text-indent:-21.0pt;}
@list l9:level4
	{mso-level-tab-stop:84.0pt;
	mso-level-number-position:left;
	margin-left:84.0pt;
	text-indent:-21.0pt;}
@list l9:level5
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%5\)";
	mso-level-tab-stop:105.0pt;
	mso-level-number-position:left;
	margin-left:105.0pt;
	text-indent:-21.0pt;}
@list l9:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:126.0pt;
	mso-level-number-position:right;
	margin-left:126.0pt;
	text-indent:-21.0pt;}
@list l9:level7
	{mso-level-tab-stop:147.0pt;
	mso-level-number-position:left;
	margin-left:147.0pt;
	text-indent:-21.0pt;}
@list l9:level8
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%8\)";
	mso-level-tab-stop:168.0pt;
	mso-level-number-position:left;
	margin-left:168.0pt;
	text-indent:-21.0pt;}
@list l9:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:189.0pt;
	mso-level-number-position:right;
	margin-left:189.0pt;
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
	mso-style-unhide:no;
	mso-style-parent:"";
	mso-padding-alt:0cm 5.4pt 0cm 5.4pt;
	mso-para-margin:0cm;
	mso-para-margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	font-size:10.0pt;
	font-family:"Times New Roman","serif";}
</style>
<![endif]--><!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext="edit" spidmax="2049"/>
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext="edit">
  <o:idmap v:ext="edit" data="1"/>
 </o:shapelayout></xml><![endif]-->
</head>

<body lang=ZH-CN link=blue vlink=purple style='tab-interval:21.0pt;text-justify-trim:
punctuation'>

<div class=WordSection1 style='layout-grid:15.6pt'>

<p class=MsoNormal align=center style='text-align:center'><b style='mso-bidi-font-weight:
normal'><span lang=EN-US style='font-size:26.0pt;font-family:黑体;mso-hansi-font-family:
宋体;mso-fareast-language:ZH-CN'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal align=center style='text-align:center'><b style='mso-bidi-font-weight:
normal'><span lang=EN-US style='font-size:26.0pt;font-family:黑体;mso-hansi-font-family:
宋体;mso-fareast-language:ZH-CN'>HTTP</span></b><b style='mso-bidi-font-weight:
normal'><span style='font-size:26.0pt;font-family:黑体;mso-hansi-font-family:
宋体;mso-fareast-language:ZH-CN'>接口文档<span lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal align=center style='text-align:center'><b style='mso-bidi-font-weight:
normal'><span style='font-size:12.0pt;font-family:宋体;mso-ascii-font-family:
Batang;mso-hansi-font-family:"Times New Roman";mso-fareast-language:ZH-CN'>接口域名：</span></b><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:12.0pt;
mso-fareast-font-family:宋体;mso-fareast-language:ZH-CN'>api.sms.cn<o:p></o:p></span></b></p>

<p class=MsoNormal align=center style='text-align:center'><b style='mso-bidi-font-weight:
normal'><span lang=EN-US style='font-size:12.0pt;mso-fareast-font-family:宋体;
mso-fareast-language:ZH-CN'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoToc1 style='tab-stops:right dotted 414.8pt'><!--[if supportFields]><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:15.0pt'><span
style='mso-element:field-begin'></span><span
style='mso-spacerun:yes'>&nbsp;</span>TOC \o &quot;1-3&quot; \h \z \u <span
style='mso-element:field-separator'></span></span></b><![endif]--><span
class=MsoHyperlink><span lang=EN-US style='mso-no-proof:yes'><a
href="#_Toc357868056"><b style='mso-bidi-font-weight:normal'><span lang=EN-US
style='font-family:宋体;letter-spacing:.1pt'><span lang=EN-US>一、密码验证方式</span></span></b><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'><span style='mso-tab-count:1 dotted'>... </span></span><!--[if supportFields]><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'><span style='mso-element:field-begin'></span></span><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'> PAGEREF _Toc357868056 \h </span><span style='color:windowtext;
display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
style='mso-element:field-separator'></span></span><![endif]--><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'>1</span><span style='color:windowtext;display:none;
mso-hide:screen;text-decoration:none;text-underline:none'><!--[if gte mso 9]><xml>
 <w:data>08D0C9EA79F9BACE118C8200AA004BA90B02000000080000000E0000005F0054006F0063003300350037003800360038003000350036000000</w:data>
</xml><![endif]--></span><!--[if supportFields]><span style='color:windowtext;
display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
style='mso-element:field-end'></span></span><![endif]--></a></span></span><span
lang=EN-US style='font-size:10.5pt;mso-bidi-font-size:11.0pt;font-family:"Calibri","sans-serif";
mso-bidi-font-family:"Times New Roman";text-transform:none;mso-no-proof:yes'><o:p></o:p></span></p>

<p class=MsoToc1 style='tab-stops:right dotted 414.8pt'><span
class=MsoHyperlink><span lang=EN-US style='mso-no-proof:yes'><a
href="#_Toc357868057"><b style='mso-bidi-font-weight:normal'><span lang=EN-US
style='font-family:宋体;letter-spacing:.1pt'><span lang=EN-US>二、字符编码</span></span></b><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'><span style='mso-tab-count:1 dotted'>... </span></span><!--[if supportFields]><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'><span style='mso-element:field-begin'></span></span><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'> PAGEREF _Toc357868057 \h </span><span style='color:windowtext;
display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
style='mso-element:field-separator'></span></span><![endif]--><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'>1</span><span style='color:windowtext;display:none;
mso-hide:screen;text-decoration:none;text-underline:none'><!--[if gte mso 9]><xml>
 <w:data>08D0C9EA79F9BACE118C8200AA004BA90B02000000080000000E0000005F0054006F0063003300350037003800360038003000350037000000</w:data>
</xml><![endif]--></span><!--[if supportFields]><span style='color:windowtext;
display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
style='mso-element:field-end'></span></span><![endif]--></a></span></span><span
lang=EN-US style='font-size:10.5pt;mso-bidi-font-size:11.0pt;font-family:"Calibri","sans-serif";
mso-bidi-font-family:"Times New Roman";text-transform:none;mso-no-proof:yes'><o:p></o:p></span></p>

<p class=MsoToc1 style='tab-stops:right dotted 414.8pt'><span
class=MsoHyperlink><span lang=EN-US style='mso-no-proof:yes'><a
href="#_Toc357868058"><b style='mso-bidi-font-weight:normal'><span lang=EN-US
style='font-family:宋体;letter-spacing:.1pt'><span lang=EN-US>三、响应格式</span></span></b><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'><span style='mso-tab-count:1 dotted'>... </span></span><!--[if supportFields]><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'><span style='mso-element:field-begin'></span></span><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'> PAGEREF _Toc357868058 \h </span><span style='color:windowtext;
display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
style='mso-element:field-separator'></span></span><![endif]--><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'>2</span><span style='color:windowtext;display:none;
mso-hide:screen;text-decoration:none;text-underline:none'><!--[if gte mso 9]><xml>
 <w:data>08D0C9EA79F9BACE118C8200AA004BA90B02000000080000000E0000005F0054006F0063003300350037003800360038003000350038000000</w:data>
</xml><![endif]--></span><!--[if supportFields]><span style='color:windowtext;
display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
style='mso-element:field-end'></span></span><![endif]--></a></span></span><span
lang=EN-US style='font-size:10.5pt;mso-bidi-font-size:11.0pt;font-family:"Calibri","sans-serif";
mso-bidi-font-family:"Times New Roman";text-transform:none;mso-no-proof:yes'><o:p></o:p></span></p>

<p class=MsoToc1 style='tab-stops:right dotted 414.8pt'><span
class=MsoHyperlink><span lang=EN-US style='mso-no-proof:yes'><a
href="#_Toc357868059"><b style='mso-bidi-font-weight:normal'><span lang=EN-US
style='font-family:宋体;letter-spacing:.1pt'><span lang=EN-US>四、短信发送（单条，多条发送）</span></span></b><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'><span style='mso-tab-count:1 dotted'>... </span></span><!--[if supportFields]><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'><span style='mso-element:field-begin'></span></span><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'> PAGEREF _Toc357868059 \h </span><span style='color:windowtext;
display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
style='mso-element:field-separator'></span></span><![endif]--><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'>2</span><span style='color:windowtext;display:none;
mso-hide:screen;text-decoration:none;text-underline:none'><!--[if gte mso 9]><xml>
 <w:data>08D0C9EA79F9BACE118C8200AA004BA90B02000000080000000E0000005F0054006F0063003300350037003800360038003000350039000000</w:data>
</xml><![endif]--></span><!--[if supportFields]><span style='color:windowtext;
display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
style='mso-element:field-end'></span></span><![endif]--></a></span></span><span
lang=EN-US style='font-size:10.5pt;mso-bidi-font-size:11.0pt;font-family:"Calibri","sans-serif";
mso-bidi-font-family:"Times New Roman";text-transform:none;mso-no-proof:yes'><o:p></o:p></span></p>

<p class=MsoToc1 style='tab-stops:right dotted 414.8pt'><span
class=MsoHyperlink><span lang=EN-US style='mso-no-proof:yes'><a
href="#_Toc357868060"><b style='mso-bidi-font-weight:normal'><span lang=EN-US
style='font-family:宋体;letter-spacing:.1pt'><span lang=EN-US>五、接收状态报告</span></span></b><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'><span style='mso-tab-count:1 dotted'>... </span></span><!--[if supportFields]><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'><span style='mso-element:field-begin'></span></span><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'> PAGEREF _Toc357868060 \h </span><span style='color:windowtext;
display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
style='mso-element:field-separator'></span></span><![endif]--><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'>3</span><span style='color:windowtext;display:none;
mso-hide:screen;text-decoration:none;text-underline:none'><!--[if gte mso 9]><xml>
 <w:data>08D0C9EA79F9BACE118C8200AA004BA90B02000000080000000E0000005F0054006F0063003300350037003800360038003000360030000000</w:data>
</xml><![endif]--></span><!--[if supportFields]><span style='color:windowtext;
display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
style='mso-element:field-end'></span></span><![endif]--></a></span></span><span
lang=EN-US style='font-size:10.5pt;mso-bidi-font-size:11.0pt;font-family:"Calibri","sans-serif";
mso-bidi-font-family:"Times New Roman";text-transform:none;mso-no-proof:yes'><o:p></o:p></span></p>

<p class=MsoToc2 style='margin-left:20.0pt;tab-stops:right dotted 414.8pt'><span
class=MsoHyperlink><span lang=EN-US style='mso-no-proof:yes'><a
href="#_Toc357868061"><b style='mso-bidi-font-weight:normal'><span
style='font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'>5.1 </span></b><b style='mso-bidi-font-weight:normal'><span
lang=EN-US style='font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
.1pt;mso-fareast-language:ZH-CN'><span lang=EN-US>主动获取状态</span></span></b><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'><span style='mso-tab-count:1 dotted'>... </span></span><!--[if supportFields]><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'><span style='mso-element:field-begin'></span></span><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'> PAGEREF _Toc357868061 \h </span><span style='color:windowtext;
display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
style='mso-element:field-separator'></span></span><![endif]--><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'>3</span><span style='color:windowtext;display:none;
mso-hide:screen;text-decoration:none;text-underline:none'><!--[if gte mso 9]><xml>
 <w:data>08D0C9EA79F9BACE118C8200AA004BA90B02000000080000000E0000005F0054006F0063003300350037003800360038003000360031000000</w:data>
</xml><![endif]--></span><!--[if supportFields]><span style='color:windowtext;
display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
style='mso-element:field-end'></span></span><![endif]--></a></span></span><span
lang=EN-US style='font-size:10.5pt;mso-bidi-font-size:11.0pt;font-family:"Calibri","sans-serif";
mso-fareast-font-family:宋体;mso-bidi-font-family:"Times New Roman";mso-fareast-language:
ZH-CN;mso-no-proof:yes'><o:p></o:p></span></p>

<p class=MsoToc1 style='tab-stops:right dotted 414.8pt'><span
class=MsoHyperlink><span lang=EN-US style='mso-no-proof:yes'><a
href="#_Toc357868062"><b style='mso-bidi-font-weight:normal'><span lang=EN-US
style='font-family:宋体;letter-spacing:.1pt'><span lang=EN-US>六、接收上行短信（回复）</span></span></b><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'><span style='mso-tab-count:1 dotted'>... </span></span><!--[if supportFields]><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'><span style='mso-element:field-begin'></span></span><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'> PAGEREF _Toc357868062 \h </span><span style='color:windowtext;
display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
style='mso-element:field-separator'></span></span><![endif]--><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'>4</span><span style='color:windowtext;display:none;
mso-hide:screen;text-decoration:none;text-underline:none'><!--[if gte mso 9]><xml>
 <w:data>08D0C9EA79F9BACE118C8200AA004BA90B02000000080000000E0000005F0054006F0063003300350037003800360038003000360032000000</w:data>
</xml><![endif]--></span><!--[if supportFields]><span style='color:windowtext;
display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
style='mso-element:field-end'></span></span><![endif]--></a></span></span><span
lang=EN-US style='font-size:10.5pt;mso-bidi-font-size:11.0pt;font-family:"Calibri","sans-serif";
mso-bidi-font-family:"Times New Roman";text-transform:none;mso-no-proof:yes'><o:p></o:p></span></p>

<p class=MsoToc2 style='margin-left:20.0pt;tab-stops:right dotted 414.8pt'><span
class=MsoHyperlink><span lang=EN-US style='mso-no-proof:yes'><a
href="#_Toc357868063"><b style='mso-bidi-font-weight:normal'><span
style='font-family:宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>6.1 </span></b><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-family:宋体;
letter-spacing:.1pt;mso-fareast-language:ZH-CN'><span lang=EN-US>主动接收上行短信（回复）</span></span></b><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'><span style='mso-tab-count:1 dotted'>... </span></span><!--[if supportFields]><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'><span style='mso-element:field-begin'></span></span><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'> PAGEREF _Toc357868063 \h </span><span style='color:windowtext;
display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
style='mso-element:field-separator'></span></span><![endif]--><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'>4</span><span style='color:windowtext;display:none;
mso-hide:screen;text-decoration:none;text-underline:none'><!--[if gte mso 9]><xml>
 <w:data>08D0C9EA79F9BACE118C8200AA004BA90B02000000080000000E0000005F0054006F0063003300350037003800360038003000360033000000</w:data>
</xml><![endif]--></span><!--[if supportFields]><span style='color:windowtext;
display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
style='mso-element:field-end'></span></span><![endif]--></a></span></span><span
lang=EN-US style='font-size:10.5pt;mso-bidi-font-size:11.0pt;font-family:"Calibri","sans-serif";
mso-fareast-font-family:宋体;mso-bidi-font-family:"Times New Roman";mso-fareast-language:
ZH-CN;mso-no-proof:yes'><o:p></o:p></span></p>

<p class=MsoToc1 style='tab-stops:right dotted 414.8pt'><span
class=MsoHyperlink><span lang=EN-US style='mso-no-proof:yes'><a
href="#_Toc357868064"><b style='mso-bidi-font-weight:normal'><span lang=EN-US
style='font-family:宋体;letter-spacing:.1pt'><span lang=EN-US>七、取剩余短信条数</span></span></b><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'><span style='mso-tab-count:1 dotted'>... </span></span><!--[if supportFields]><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'><span style='mso-element:field-begin'></span></span><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'> PAGEREF _Toc357868064 \h </span><span style='color:windowtext;
display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
style='mso-element:field-separator'></span></span><![endif]--><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'>5</span><span style='color:windowtext;display:none;
mso-hide:screen;text-decoration:none;text-underline:none'><!--[if gte mso 9]><xml>
 <w:data>08D0C9EA79F9BACE118C8200AA004BA90B02000000080000000E0000005F0054006F0063003300350037003800360038003000360034000000</w:data>
</xml><![endif]--></span><!--[if supportFields]><span style='color:windowtext;
display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
style='mso-element:field-end'></span></span><![endif]--></a></span></span><span
lang=EN-US style='font-size:10.5pt;mso-bidi-font-size:11.0pt;font-family:"Calibri","sans-serif";
mso-bidi-font-family:"Times New Roman";text-transform:none;mso-no-proof:yes'><o:p></o:p></span></p>

<p class=MsoToc1 style='tab-stops:right dotted 414.8pt'><span
class=MsoHyperlink><span lang=EN-US style='mso-no-proof:yes'><a
href="#_Toc357868065"><b style='mso-bidi-font-weight:normal'><span lang=EN-US
style='font-family:宋体;letter-spacing:.1pt'><span lang=EN-US>八、取已发送总条数</span></span></b><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'><span style='mso-tab-count:1 dotted'>... </span></span><!--[if supportFields]><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'><span style='mso-element:field-begin'></span></span><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'> PAGEREF _Toc357868065 \h </span><span style='color:windowtext;
display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
style='mso-element:field-separator'></span></span><![endif]--><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'>5</span><span style='color:windowtext;display:none;
mso-hide:screen;text-decoration:none;text-underline:none'><!--[if gte mso 9]><xml>
 <w:data>08D0C9EA79F9BACE118C8200AA004BA90B02000000080000000E0000005F0054006F0063003300350037003800360038003000360035000000</w:data>
</xml><![endif]--></span><!--[if supportFields]><span style='color:windowtext;
display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
style='mso-element:field-end'></span></span><![endif]--></a></span></span><span
lang=EN-US style='font-size:10.5pt;mso-bidi-font-size:11.0pt;font-family:"Calibri","sans-serif";
mso-bidi-font-family:"Times New Roman";text-transform:none;mso-no-proof:yes'><o:p></o:p></span></p>

<p class=MsoToc1 style='tab-stops:right dotted 414.8pt'><span
class=MsoHyperlink><span lang=EN-US style='mso-no-proof:yes'><a
href="#_Toc357868066"><b style='mso-bidi-font-weight:normal'><span lang=EN-US
style='font-family:宋体;letter-spacing:.1pt'><span lang=EN-US>九、接口安全（绑定IP</span></span></b><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-family:宋体;
letter-spacing:.1pt'><span lang=EN-US>）</span></span></b><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'><span style='mso-tab-count:1 dotted'>... </span></span><!--[if supportFields]><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'><span style='mso-element:field-begin'></span></span><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'> PAGEREF _Toc357868066 \h </span><span style='color:windowtext;
display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
style='mso-element:field-separator'></span></span><![endif]--><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'>6</span><span style='color:windowtext;display:none;
mso-hide:screen;text-decoration:none;text-underline:none'><!--[if gte mso 9]><xml>
 <w:data>08D0C9EA79F9BACE118C8200AA004BA90B02000000080000000E0000005F0054006F0063003300350037003800360038003000360036000000</w:data>
</xml><![endif]--></span><!--[if supportFields]><span style='color:windowtext;
display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
style='mso-element:field-end'></span></span><![endif]--></a></span></span><span
lang=EN-US style='font-size:10.5pt;mso-bidi-font-size:11.0pt;font-family:"Calibri","sans-serif";
mso-bidi-font-family:"Times New Roman";text-transform:none;mso-no-proof:yes'><o:p></o:p></span></p>

<p class=MsoToc1 style='tab-stops:right dotted 414.8pt'><span
class=MsoHyperlink><span lang=EN-US style='mso-no-proof:yes'><a
href="#_Toc357868067"><b style='mso-bidi-font-weight:normal'><span lang=EN-US
style='font-family:宋体;letter-spacing:.1pt'><span lang=EN-US>十、取发送记录</span></span></b><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'><span style='mso-tab-count:1 dotted'>... </span></span><!--[if supportFields]><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'><span style='mso-element:field-begin'></span></span><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'> PAGEREF _Toc357868067 \h </span><span style='color:windowtext;
display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
style='mso-element:field-separator'></span></span><![endif]--><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'>6</span><span style='color:windowtext;display:none;
mso-hide:screen;text-decoration:none;text-underline:none'><!--[if gte mso 9]><xml>
 <w:data>08D0C9EA79F9BACE118C8200AA004BA90B02000000080000000E0000005F0054006F0063003300350037003800360038003000360037000000</w:data>
</xml><![endif]--></span><!--[if supportFields]><span style='color:windowtext;
display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
style='mso-element:field-end'></span></span><![endif]--></a></span></span><span
lang=EN-US style='font-size:10.5pt;mso-bidi-font-size:11.0pt;font-family:"Calibri","sans-serif";
mso-bidi-font-family:"Times New Roman";text-transform:none;mso-no-proof:yes'><o:p></o:p></span></p>

<p class=MsoToc1 style='tab-stops:right dotted 414.8pt'><span
class=MsoHyperlink><span lang=EN-US style='mso-no-proof:yes'><a
href="#_Toc357868068"><b style='mso-bidi-font-weight:normal'><span lang=EN-US
style='font-family:宋体;letter-spacing:.1pt'><span lang=EN-US>十一、修改密码</span></span></b><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'><span style='mso-tab-count:1 dotted'>... </span></span><!--[if supportFields]><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'><span style='mso-element:field-begin'></span></span><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'> PAGEREF _Toc357868068 \h </span><span style='color:windowtext;
display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
style='mso-element:field-separator'></span></span><![endif]--><span
style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
text-underline:none'>7</span><span style='color:windowtext;display:none;
mso-hide:screen;text-decoration:none;text-underline:none'><!--[if gte mso 9]><xml>
 <w:data>08D0C9EA79F9BACE118C8200AA004BA90B02000000080000000E0000005F0054006F0063003300350037003800360038003000360038000000</w:data>
</xml><![endif]--></span><!--[if supportFields]><span style='color:windowtext;
display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
style='mso-element:field-end'></span></span><![endif]--></a></span></span><span
lang=EN-US style='font-size:10.5pt;mso-bidi-font-size:11.0pt;font-family:"Calibri","sans-serif";
mso-bidi-font-family:"Times New Roman";text-transform:none;mso-no-proof:yes'><o:p></o:p></span></p>

<p class=MsoNormal><!--[if supportFields]><b style='mso-bidi-font-weight:normal'><span
lang=EN-US style='font-size:15.0pt;mso-fareast-font-family:宋体;mso-fareast-language:
ZH-CN'><span style='mso-element:field-end'></span></span></b><![endif]--><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:15.0pt;
mso-fareast-font-family:宋体;mso-fareast-language:ZH-CN'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal><b style='mso-bidi-font-weight:normal'><span lang=EN-US
style='font-size:9.0pt;mso-fareast-font-family:宋体;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal style='mso-outline-level:1'><a name="_Toc357868056"></a><a
name="_Toc217125537"><span style='mso-bookmark:_Toc357868056'><b
style='mso-bidi-font-weight:normal'><span style='font-size:14.0pt;font-family:
宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>一、<span style='color:black'>密码验证方式</span></span></b></span></a><span
style='mso-bookmark:_Toc357868056'></span><span style='mso-bookmark:_Toc217125537'></span><span
lang=EN-US style='font-size:10.5pt;font-family:宋体;color:black;letter-spacing:
.1pt;mso-fareast-language:ZH-CN'><span style='mso-tab-count:1'> </span><o:p></o:p></span></p>

<p class=MsoNormal style='margin-left:21.0pt;text-indent:21.0pt'><span
style='font-size:10.5pt;font-family:宋体;color:black;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'>接口密码使用“登录密码”与“用户名”拼接字符串后能过<span lang=EN-US>md5</span>加密进行验证<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='margin-left:21.0pt;text-indent:21.0pt'><span
style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
.1pt;mso-fareast-language:ZH-CN'>如登录密码是：<span lang=EN-US>123123<o:p></o:p></span></span></p>

<p class=MsoNormal style='margin-left:21.0pt;text-indent:21.0pt'><span
style='font-size:10.5pt;font-family:宋体;color:black;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'>如用户名</span><span style='font-size:10.5pt;
font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:.1pt;mso-fareast-language:
ZH-CN'>是：<span lang=EN-US>test<o:p></o:p></span></span></p>

<p class=MsoNormal style='margin-left:21.0pt;text-indent:21.0pt'><span
style='font-size:10.5pt;font-family:宋体;color:black;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'>接口密码（<span lang=EN-US>pwd</span>）<span lang=EN-US>=md5(</span>登录密码<span
lang=EN-US>+</span>用户名<span lang=EN-US>)<o:p></o:p></span></span></p>

<p class=MsoNormal style='margin-left:21.0pt;text-indent:21.0pt'><span
lang=EN-US style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;
letter-spacing:.1pt;mso-fareast-language:ZH-CN'>pwd=md5(123123test)<o:p></o:p></span></p>

<p class=MsoNormal style='margin-left:21.0pt;text-indent:21.0pt;mso-char-indent-count:
2.28'><span lang=EN-US style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:
Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>pwd=</span><span
lang=EN-US>b<st1:chmetcnv TCSC="0" NumberType="1" Negative="False"
HasSpace="False" SourceValue="9887" UnitName="C" w:st="on">9887c</st1:chmetcnv>5ebb23ebb294acab183ecf0769</span><span
lang=EN-US style='font-size:10.5pt;font-family:宋体;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'><o:p></o:p></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='margin-left:28.5pt;text-indent:-28.5pt;mso-char-indent-count:
-2.0;mso-outline-level:1'><a name="_Toc357868057"><b style='mso-bidi-font-weight:
normal'><span style='font-size:14.0pt;font-family:宋体;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'>二、字符编码</span></b></a><span style='mso-bookmark:
_Toc357868057'></span><span lang=EN-US style='font-size:10.5pt;font-family:
宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p></o:p></span></p>

<p class=MsoNormal style='margin-left:21.0pt;mso-para-margin-left:2.1gd'><span
style='font-size:10.5pt;font-family:宋体;letter-spacing:.1pt;mso-fareast-language:
ZH-CN'>服务器接收数据可以是<span lang=EN-US>GBK</span>或<span lang=EN-US>UTF-8</span>编码字符<span
lang=EN-US>,</span>默认接收</span><span lang=KO style='font-size:10.5pt;font-family:
宋体;mso-bidi-font-family:宋体;letter-spacing:.1pt'>数</span><span style='font-size:
10.5pt;font-family:宋体;mso-bidi-font-family:宋体;letter-spacing:.1pt;mso-fareast-language:
ZH-CN'>据是</span><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:宋体;letter-spacing:.1pt'>GBK</span><span lang=KO
style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;letter-spacing:
.1pt'>编码</span><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>,</span><span
style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;letter-spacing:
.1pt;mso-fareast-language:ZH-CN'>如提交的是<span lang=EN-US>UTF-8</span></span><span
style='font-size:10.5pt;font-family:宋体;letter-spacing:.1pt;mso-fareast-language:
ZH-CN'>编码字符</span><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>,</span><span
style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;letter-spacing:
.1pt;mso-fareast-language:ZH-CN'>需要添加参数<span lang=EN-US>encode=utf8</span>。<span
lang=EN-US><br>
</span></span><span lang=KO style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
宋体;letter-spacing:.1pt'>请</span><span lang=KO style='font-size:10.5pt;
font-family:宋体;mso-bidi-font-family:Dotum;letter-spacing:.1pt'>求</span><span
lang=KO style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;
letter-spacing:.1pt'>响应</span><span style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>返回</span><span
lang=KO style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;
letter-spacing:.1pt'>内</span><span lang=KO style='font-size:10.5pt;font-family:
宋体;mso-bidi-font-family:Dotum;letter-spacing:.1pt'>容</span><span
style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;letter-spacing:
.1pt;mso-fareast-language:ZH-CN'>是</span><span lang=EN-US style='font-size:
10.5pt;font-family:宋体;mso-bidi-font-family:宋体;letter-spacing:.1pt'>GBK</span><span
lang=KO style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;
letter-spacing:.1pt'>编码</span><span style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>。</span><span
lang=EN-US style='font-size:10.5pt;font-family:宋体;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'><o:p></o:p></span></p>

<p class=MsoNormal><b style='mso-bidi-font-weight:normal'><span lang=EN-US
style='font-size:9.0pt;mso-fareast-font-family:宋体;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal style='mso-outline-level:1'><a name="_Toc357868058"><b
style='mso-bidi-font-weight:normal'><span style='font-size:14.0pt;font-family:
宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>三、响应格式</span></b></a><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:14.0pt;
font-family:宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p></o:p></span></b></p>

<p class=MsoNormal style='margin-left:21.0pt;mso-para-margin-left:2.1gd'><span
style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;letter-spacing:
.1pt;mso-fareast-language:ZH-CN'>所为响应即每次向服务器提交请求后返回值<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='margin-left:21.0pt;mso-para-margin-left:2.1gd'><span
style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;letter-spacing:
.1pt;mso-fareast-language:ZH-CN'>响应值</span><span style='font-size:10.5pt;
font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:.1pt;mso-fareast-language:
ZH-CN'>格式为纯文本<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal><b style='mso-bidi-font-weight:normal'><span lang=EN-US
style='font-size:9.0pt;mso-fareast-font-family:宋体;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal style='mso-outline-level:1'><a name="_Toc357868059"><b
style='mso-bidi-font-weight:normal'><span style='font-size:14.0pt;font-family:
宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>四、短信发送（单条，多条发送）</span></b></a><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:14.0pt;
font-family:宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p></o:p></span></b></p>

<p class=MsoNormal style='text-indent:24.4pt;mso-char-indent-count:2.0'><span
lang=EN-US style='font-size:12.0pt;font-family:宋体;mso-bidi-font-family:Arial;
letter-spacing:.1pt;mso-fareast-language:ZH-CN'>GET/POST</span><span
style='font-size:12.0pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
.1pt;mso-fareast-language:ZH-CN'>操作格式：<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:24.4pt;mso-char-indent-count:2.0'><span
lang=EN-US style='font-size:12.0pt;font-family:宋体;mso-bidi-font-family:Arial;
letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='text-indent:24.4pt;mso-char-indent-count:2.28'><span
lang=EN-US style='font-size:10.5pt;mso-fareast-font-family:宋体;letter-spacing:
.1pt;mso-fareast-language:ZH-CN'>http://api.sms.cn/mt/?uid=</span><span
style='font-size:10.5pt;font-family:宋体;mso-ascii-font-family:Verdana;
letter-spacing:.1pt;mso-fareast-language:ZH-CN'>用户账号</span><span lang=EN-US
style='font-size:10.5pt;mso-fareast-font-family:宋体;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'>&amp;pwd=MD532</span><span style='font-size:10.5pt;
font-family:宋体;mso-ascii-font-family:Batang;mso-hansi-font-family:"Times New Roman";
letter-spacing:.1pt;mso-fareast-language:ZH-CN'>位密码</span><span lang=EN-US
style='font-size:10.5pt;mso-fareast-font-family:宋体;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'>&amp;mobile=</span><span style='font-size:10.5pt;
font-family:宋体;mso-ascii-font-family:Batang;mso-hansi-font-family:"Times New Roman";
letter-spacing:.1pt;mso-fareast-language:ZH-CN'>号码</span><span lang=EN-US
style='font-size:10.5pt;mso-fareast-font-family:宋体;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'>&amp;mobileids=</span><span style='font-size:10.5pt;
font-family:宋体;mso-fareast-language:ZH-CN'>消息</span><span style='font-size:
10.5pt;font-family:宋体;mso-bidi-font-family:宋体;mso-fareast-language:ZH-CN'>编号</span><span
lang=EN-US style='font-size:10.5pt;mso-fareast-font-family:宋体;letter-spacing:
.1pt;mso-fareast-language:ZH-CN'>&amp;content=</span><span style='font-size:
10.5pt;font-family:宋体;mso-ascii-font-family:Batang;mso-hansi-font-family:"Times New Roman";
letter-spacing:.1pt;mso-fareast-language:ZH-CN'>内容</span><span lang=EN-US
style='font-size:10.5pt;mso-fareast-font-family:宋体;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'><o:p></o:p></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;mso-fareast-font-family:
宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal><span style='font-size:10.5pt;font-family:宋体;mso-ascii-font-family:
Batang;mso-hansi-font-family:"Times New Roman";letter-spacing:.1pt;mso-fareast-language:
ZH-CN'>接口参数说明</span><span lang=EN-US style='font-size:10.5pt;mso-fareast-font-family:
宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>:<o:p></o:p></span></p>

<div align=center>

<table class=MsoNormalTable border=1 cellspacing=0 cellpadding=0 width=559
 style='width:419.05pt;border-collapse:collapse;border:none;mso-border-alt:
 solid black .75pt;mso-yfti-tbllook:63;mso-padding-alt:0cm 5.4pt 0cm 5.4pt;
 mso-border-insideh:.75pt solid black;mso-border-insidev:.75pt solid black'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;page-break-inside:avoid;
  height:20.75pt'>
  <td width=83 style='width:62.5pt;border:solid black 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-alt:solid black .75pt;mso-border-right-alt:solid windowtext .5pt;
  background:#B3B3B3;padding:0cm 5.4pt 0cm 5.4pt;height:20.75pt'>
  <p class=MsoNormal align=center style='text-align:center'><span
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;text-transform:
  uppercase;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>参数名</span><span
  lang=EN-US style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;
  text-transform:uppercase;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p></o:p></span></p>
  </td>
  <td width=87 style='width:65.4pt;border:solid black 1.0pt;border-left:none;
  mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  background:#B3B3B3;padding:0cm 5.4pt 0cm 5.4pt;height:20.75pt'>
  <p class=MsoNormal align=center style='text-align:center'><span
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;text-transform:
  uppercase;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>参数字段</span><span
  lang=EN-US style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;
  letter-spacing:.1pt'><o:p></o:p></span></p>
  </td>
  <td width=388 style='width:291.15pt;border:solid black 1.0pt;border-left:
  none;mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  background:#B3B3B3;padding:0cm 5.4pt 0cm 5.4pt;height:20.75pt'>
  <p class=MsoNormal align=center style='text-align:center'><span
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;text-transform:
  uppercase;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>参数</span><span
  lang=KO style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;
  text-transform:uppercase;letter-spacing:.1pt'>说</span><span lang=KO
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Dotum;text-transform:
  uppercase;letter-spacing:.1pt'>明</span><span lang=EN-US style='font-size:
  10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:.1pt'><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:1;page-break-inside:avoid;height:18.35pt'>
  <td width=83 style='width:62.5pt;border-top:none;border-left:solid black 1.0pt;
  border-bottom:solid black 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  mso-border-right-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:18.35pt'>
  <p class=MsoNormal align=center style='text-align:center'><span lang=EN-US
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>uid<o:p></o:p></span></p>
  </td>
  <td width=87 style='width:65.4pt;border-top:none;border-left:none;border-bottom:
  solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:solid black .75pt;
  mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:18.35pt'>
  <p class=MsoNormal><span style='font-size:10.5pt;font-family:宋体;mso-ascii-font-family:
  Verdana;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>用户账号</span><span
  lang=EN-US style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;
  letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p></o:p></span></p>
  </td>
  <td width=388 style='width:291.15pt;border-top:none;border-left:none;
  border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:
  solid black .75pt;mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:18.35pt'>
  <p class=MsoNormal><span style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
  Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>登录名<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:2;page-break-inside:avoid;height:22.9pt'>
  <td width=83 style='width:62.5pt;border-top:none;border-left:solid black 1.0pt;
  border-bottom:solid black 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  mso-border-right-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:22.9pt'>
  <p class=MsoNormal align=center style='text-align:center'><span lang=EN-US
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>pwd<o:p></o:p></span></p>
  </td>
  <td width=87 style='width:65.4pt;border-top:none;border-left:none;border-bottom:
  solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:solid black .75pt;
  mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:22.9pt'>
  <p class=MsoNormal><span style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
  Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>用户密</span><span
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>码</span><span lang=EN-US style='font-size:
  10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:.1pt;
  mso-fareast-language:ZH-CN'><o:p></o:p></span></p>
  </td>
  <td width=388 style='width:291.15pt;border-top:none;border-left:none;
  border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:
  solid black .75pt;mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:22.9pt'>
  <p class=MsoNormal><span lang=EN-US style='font-size:9.0pt;font-family:宋体;
  mso-bidi-font-family:Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>32</span><span
  style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>位<span lang=EN-US>MD5</span>加密<span
  lang=EN-US>md5(</span>密码<span lang=EN-US>+uid)<o:p></o:p></span></span></p>
  <p class=MsoNormal><span style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:
  Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>如登录密码是：<span
  lang=EN-US>123123 </span>，<span lang=EN-US>uid</span>是：<span lang=EN-US>test;<o:p></o:p></span></span></p>
  <p class=MsoNormal><span lang=EN-US style='font-size:9.0pt;font-family:宋体;
  mso-bidi-font-family:Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>pwd=md5(123123test)<o:p></o:p></span></p>
  <p class=MsoNormal><span lang=EN-US style='font-size:9.0pt;font-family:宋体;
  mso-bidi-font-family:Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>pwd=</span><span
  lang=EN-US>b<st1:chmetcnv TCSC="0" NumberType="1" Negative="False"
  HasSpace="False" SourceValue="9887" UnitName="C" w:st="on">9887c</st1:chmetcnv>5ebb23ebb294acab183ecf0769</span><span
  lang=EN-US style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:Arial;
  letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:3;page-break-inside:avoid;height:22.5pt'>
  <td width=83 style='width:62.5pt;border-top:none;border-left:solid black 1.0pt;
  border-bottom:solid black 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  mso-border-right-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:22.5pt'>
  <p class=MsoNormal align=center style='text-align:center'><span lang=EN-US
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;color:gray;
  letter-spacing:.1pt;mso-fareast-language:ZH-CN'>time<o:p></o:p></span></p>
  </td>
  <td width=87 style='width:65.4pt;border-top:none;border-left:none;border-bottom:
  solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:solid black .75pt;
  mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:22.5pt'>
  <p class=MsoNormal><span style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
  Arial;color:gray;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>定时时间<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=388 style='width:291.15pt;border-top:none;border-left:none;
  border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:
  solid black .75pt;mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:22.5pt'>
  <p class=MsoNormal><span style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:
  Arial;color:#333333;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>可选项，及时发送时参数无
  格式<span lang=EN-US>:YYYY-MM-DD HH:MM</span>　如：</span><span lang=EN-US
  style='color:#333333'>&quot;</span><span lang=EN-US style='font-size:9.0pt;
  font-family:宋体;mso-bidi-font-family:Arial;color:#333333;letter-spacing:.1pt;
  mso-fareast-language:ZH-CN'>2010-05-27 12:01</span><span lang=EN-US
  style='color:#333333'>&quot;</span><span lang=EN-US style='font-size:9.0pt;
  font-family:宋体;mso-bidi-font-family:Arial;color:#333333;letter-spacing:.1pt;
  mso-fareast-language:ZH-CN'> (</span><span style='font-size:9.0pt;font-family:
  宋体;mso-bidi-font-family:Arial;color:#333333;letter-spacing:.1pt;mso-fareast-language:
  ZH-CN'>年<span lang=EN-US>-</span>月<span lang=EN-US>-</span>日 时<span
  lang=EN-US>:</span>分<span lang=EN-US>),</span>发送时间以北京时间为准<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:4;page-break-inside:avoid;height:22.5pt'>
  <td width=83 style='width:62.5pt;border-top:none;border-left:solid black 1.0pt;
  border-bottom:solid black 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  mso-border-right-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:22.5pt'>
  <p class=MsoNormal align=center style='text-align:center'><span lang=EN-US
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;color:gray;
  letter-spacing:.1pt;mso-fareast-language:ZH-CN'>mid<o:p></o:p></span></p>
  </td>
  <td width=87 style='width:65.4pt;border-top:none;border-left:none;border-bottom:
  solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:solid black .75pt;
  mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:22.5pt'>
  <p class=MsoNormal><span style='font-size:10.5pt;font-family:宋体;mso-ascii-font-family:
  Verdana;mso-hansi-font-family:Verdana;color:gray;mso-fareast-language:ZH-CN'>子扩展号</span><span
  lang=EN-US style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;
  color:gray;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p></o:p></span></p>
  </td>
  <td width=388 style='width:291.15pt;border-top:none;border-left:none;
  border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:
  solid black .75pt;mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:22.5pt'>
  <p class=MsoNormal><span style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:
  Arial;color:#333333;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>可选项，根据用户账号是否支持扩展</span><span
  lang=EN-US style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;
  color:#333333;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:5;page-break-inside:avoid;height:22.5pt'>
  <td width=83 style='width:62.5pt;border-top:none;border-left:solid black 1.0pt;
  border-bottom:solid black 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  mso-border-right-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:22.5pt'>
  <p class=MsoNormal align=center style='text-align:center'><span lang=EN-US
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;color:gray;
  letter-spacing:.1pt;mso-fareast-language:ZH-CN'>encode<o:p></o:p></span></p>
  </td>
  <td width=87 style='width:65.4pt;border-top:none;border-left:none;border-bottom:
  solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:solid black .75pt;
  mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:22.5pt'>
  <p class=MsoNormal><span style='font-size:10.5pt;font-family:宋体;mso-ascii-font-family:
  Verdana;mso-hansi-font-family:Verdana;color:gray;mso-fareast-language:ZH-CN'>字符编码</span><span
  lang=EN-US style='font-size:10.5pt;font-family:"Verdana","sans-serif";
  mso-fareast-font-family:宋体;color:gray;mso-fareast-language:ZH-CN'><o:p></o:p></span></p>
  </td>
  <td width=388 style='width:291.15pt;border-top:none;border-left:none;
  border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:
  solid black .75pt;mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:22.5pt'>
  <p class=MsoNormal><span style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:
  Arial;color:#333333;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>可选项，</span><span
  style='font-size:9.0pt;font-family:宋体;color:#333333;letter-spacing:.1pt;
  mso-fareast-language:ZH-CN'>默认接收</span><span lang=KO style='font-size:9.0pt;
  font-family:宋体;mso-bidi-font-family:宋体;color:#333333;letter-spacing:.1pt'>数</span><span
  style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:宋体;color:#333333;
  letter-spacing:.1pt;mso-fareast-language:ZH-CN'>据是</span><span lang=EN-US
  style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:宋体;color:#333333;
  letter-spacing:.1pt'>GBK</span><span lang=KO style='font-size:9.0pt;
  font-family:宋体;mso-bidi-font-family:宋体;color:#333333;letter-spacing:.1pt'>编码</span><span
  lang=EN-US style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:宋体;
  color:#333333;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>,</span><span
  style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:宋体;color:#333333;
  letter-spacing:.1pt;mso-fareast-language:ZH-CN'>如提交的是<span lang=EN-US>UTF-8</span></span><span
  style='font-size:9.0pt;font-family:宋体;color:#333333;letter-spacing:.1pt;
  mso-fareast-language:ZH-CN'>编码字符</span><span lang=EN-US style='font-size:
  9.0pt;font-family:宋体;mso-bidi-font-family:宋体;color:#333333;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>,</span><span style='font-size:9.0pt;
  font-family:宋体;mso-bidi-font-family:宋体;color:#333333;letter-spacing:.1pt;
  mso-fareast-language:ZH-CN'>需要添加参数<span lang=EN-US> encode=utf8</span></span><span
  lang=EN-US style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:Arial;
  color:#333333;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:6;page-break-inside:avoid;height:58.85pt'>
  <td width=83 style='width:62.5pt;border-top:none;border-left:solid black 1.0pt;
  border-bottom:solid black 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  mso-border-right-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:58.85pt'>
  <p class=MsoNormal align=center style='text-align:center'><span lang=EN-US
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>mobile<o:p></o:p></span></p>
  </td>
  <td width=87 style='width:65.4pt;border-top:none;border-left:none;border-bottom:
  solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:solid black .75pt;
  mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:58.85pt'>
  <p class=MsoNormal><span style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
  Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>接收号码<span lang=EN-US
  style='color:red'><o:p></o:p></span></span></p>
  </td>
  <td width=388 style='width:291.15pt;border-top:none;border-left:none;
  border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:
  solid black .75pt;mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:58.85pt'>
  <p class=MsoNormal><span style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:
  Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>同时发送给多个号码时<span
  lang=EN-US>,</span>号码之间用英文半角逗号分隔<span lang=EN-US>(<span style='color:red'>,</span>);</span></span><span
  style='font-size:9.0pt;font-family:宋体;mso-fareast-language:ZH-CN'>小</span><span
  style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:宋体;mso-fareast-language:
  ZH-CN'>灵</span><span style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:
  Batang;mso-fareast-language:ZH-CN'>通需加</span><span style='font-size:9.0pt;
  font-family:宋体;mso-bidi-font-family:宋体;mso-fareast-language:ZH-CN'>区号</span><span
  lang=EN-US style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:Arial;
  letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p></o:p></span></p>
  <p class=MsoNormal><span style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:
  Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>如<span lang=EN-US>:13972827282,13072827282,02185418874<o:p></o:p></span></span></p>
  <p class=MsoNormal align=left style='text-align:left'><b style='mso-bidi-font-weight:
  normal'><span lang=EN-US style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:
  Arial;color:red;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>GET</span></b><b
  style='mso-bidi-font-weight:normal'><span style='font-size:9.0pt;font-family:
  宋体;mso-bidi-font-family:Arial;color:red;letter-spacing:.1pt;mso-fareast-language:
  ZH-CN'>　 </span></b><span style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:
  Arial;color:red;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>方式每次最多可以提交<span
  lang=EN-US>50</span>条号码<span lang=EN-US><o:p></o:p></span></span></p>
  <p class=MsoNormal><b style='mso-bidi-font-weight:normal'><span lang=EN-US
  style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:Arial;color:red;
  letter-spacing:.1pt;mso-fareast-language:ZH-CN'>POST</span></b><b
  style='mso-bidi-font-weight:normal'><span style='font-size:9.0pt;font-family:
  宋体;mso-bidi-font-family:Arial;color:red;letter-spacing:.1pt;mso-fareast-language:
  ZH-CN'>　</span></b><span style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:
  Arial;color:red;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>方式每次最多可以提交<span
  lang=EN-US>2000</span>条号码</span><span lang=EN-US style='font-size:9.0pt;
  font-family:宋体;mso-bidi-font-family:Arial;color:lime;letter-spacing:.1pt;
  mso-fareast-language:ZH-CN'>[</span><span style='font-size:9.0pt;font-family:
  宋体;mso-bidi-font-family:Arial;color:lime;letter-spacing:.1pt;mso-fareast-language:
  ZH-CN'>建议用<span lang=EN-US>POST</span>方式提交<span lang=EN-US>]</span></span><span
  lang=EN-US style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:Arial;
  color:red;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:7;page-break-inside:avoid;height:58.85pt'>
  <td width=83 style='width:62.5pt;border-top:none;border-left:solid black 1.0pt;
  border-bottom:solid black 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  mso-border-right-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:58.85pt'>
  <p class=MsoNormal align=center style='text-align:center'><span lang=EN-US
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>mobileids<o:p></o:p></span></p>
  </td>
  <td width=87 style='width:65.4pt;border-top:none;border-left:none;border-bottom:
  solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:solid black .75pt;
  mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:58.85pt'>
  <p class=MsoNormal><span style='font-size:9.0pt;font-family:宋体;mso-fareast-language:
  ZH-CN'>消息</span><span style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:
  宋体;mso-fareast-language:ZH-CN'>编号</span><span lang=EN-US style='font-size:
  10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:.1pt;
  mso-fareast-language:ZH-CN'><o:p></o:p></span></p>
  </td>
  <td width=388 style='width:291.15pt;border-top:none;border-left:none;
  border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:
  solid black .75pt;mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:58.85pt'>
  <p class=MsoNormal><span style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:
  宋体;mso-fareast-language:ZH-CN'>可选项<span lang=EN-US><o:p></o:p></span></span></p>
  <p class=MsoNormal><span style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:
  宋体;mso-fareast-language:ZH-CN'>该参数</span><span style='font-size:9.0pt;
  font-family:宋体;mso-bidi-font-family:Batang;mso-fareast-language:ZH-CN'>用于</span><span
  style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:宋体;mso-fareast-language:
  ZH-CN'>发</span><span style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:
  Batang;mso-fareast-language:ZH-CN'>送短信收取</span><span style='font-size:9.0pt;
  font-family:宋体;mso-bidi-font-family:宋体;mso-fareast-language:ZH-CN'>状态报</span><span
  style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:Batang;mso-fareast-language:
  ZH-CN'>告用，格式</span><span style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:
  宋体;mso-fareast-language:ZH-CN'>为</span><span style='font-size:9.0pt;
  font-family:宋体;mso-fareast-language:ZH-CN'>消息</span><span style='font-size:
  9.0pt;font-family:宋体;mso-bidi-font-family:宋体;mso-fareast-language:ZH-CN'>编号</span><span
  lang=EN-US style='font-size:9.0pt;font-family:宋体;mso-fareast-language:ZH-CN'>+</span><span
  style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>逗号</span><span style='font-size:9.0pt;
  font-family:宋体;mso-bidi-font-family:Batang;mso-fareast-language:ZH-CN'>；与接收号码一一对应，可以重</span><span
  style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:宋体;mso-fareast-language:
  ZH-CN'>复</span><span style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:
  Batang;mso-fareast-language:ZH-CN'>出</span><span style='font-size:9.0pt;
  font-family:宋体;mso-bidi-font-family:宋体;mso-fareast-language:ZH-CN'>现</span><span
  style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:Batang;mso-fareast-language:
  ZH-CN'>多次。</span><span lang=EN-US style='font-size:9.0pt;font-family:宋体;
  mso-fareast-language:ZH-CN'><o:p></o:p></span></p>
  <p class=MsoNormal><span style='font-size:9.0pt;font-family:宋体;mso-fareast-language:
  ZH-CN'>消息</span><span style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:
  宋体;mso-fareast-language:ZH-CN'>编号</span><span lang=EN-US style='font-size:
  9.0pt;font-family:宋体;mso-fareast-language:ZH-CN'>:</span><span
  style='font-size:9.0pt;font-family:宋体;mso-fareast-language:ZH-CN'>全部由</span><span
  style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:宋体;mso-fareast-language:
  ZH-CN'>数</span><span style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:
  Batang;mso-fareast-language:ZH-CN'>字</span><span style='font-size:9.0pt;
  font-family:宋体;mso-bidi-font-family:宋体;mso-fareast-language:ZH-CN'>组</span><span
  style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:Batang;mso-fareast-language:
  ZH-CN'>成接收</span><span style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:
  宋体;mso-fareast-language:ZH-CN'>状态报</span><span style='font-size:9.0pt;
  font-family:宋体;mso-bidi-font-family:Batang;mso-fareast-language:ZH-CN'>告的</span><span
  style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:宋体;mso-fareast-language:
  ZH-CN'>时</span><span style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:
  Batang;mso-fareast-language:ZH-CN'>候用到，</span><span style='font-size:9.0pt;
  font-family:宋体;mso-bidi-font-family:宋体;mso-fareast-language:ZH-CN'>该</span><span
  style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:Batang;mso-fareast-language:
  ZH-CN'>消息</span><span style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:
  宋体;mso-fareast-language:ZH-CN'>编号</span><span style='font-size:9.0pt;
  font-family:宋体;mso-bidi-font-family:Batang;mso-fareast-language:ZH-CN'>的格式</span><span
  style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:宋体;mso-fareast-language:
  ZH-CN'>为</span><span style='font-size:9.0pt;font-family:宋体;mso-fareast-language:
  ZH-CN'>目</span><span style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:
  宋体;mso-fareast-language:ZH-CN'>标号码</span><span lang=EN-US style='font-size:
  9.0pt;font-family:宋体;mso-fareast-language:ZH-CN'>+</span><span
  style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:宋体;mso-fareast-language:
  ZH-CN'>当</span><span style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:
  Batang;mso-fareast-language:ZH-CN'>前</span><span style='font-size:9.0pt;
  font-family:宋体;mso-bidi-font-family:宋体;mso-fareast-language:ZH-CN'>时间</span><span
  style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:Batang;mso-fareast-language:
  ZH-CN'>戳整</span><span style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:
  宋体;mso-fareast-language:ZH-CN'>数</span><span style='font-size:9.0pt;
  font-family:宋体;mso-bidi-font-family:Batang;mso-fareast-language:ZH-CN'>，精确到毫秒，确保唯一性。供收取</span><span
  style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:宋体;mso-fareast-language:
  ZH-CN'>状态报</span><span style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:
  Batang;mso-fareast-language:ZH-CN'>告用</span><span style='font-size:9.0pt;
  font-family:宋体;mso-fareast-language:ZH-CN'> 如<span lang=EN-US>: 1590049111112869461937;<o:p></o:p></span></span></p>
  <p class=MsoNormal><span lang=EN-US style='font-size:9.0pt;font-family:宋体;
  mso-bidi-font-family:Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:8;mso-yfti-lastrow:yes;page-break-inside:avoid;
  height:57.6pt'>
  <td width=83 style='width:62.5pt;border-top:none;border-left:solid black 1.0pt;
  border-bottom:solid black 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  mso-border-right-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:57.6pt'>
  <p class=MsoNormal align=center style='text-align:center'><span lang=EN-US
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>content<o:p></o:p></span></p>
  </td>
  <td width=87 style='width:65.4pt;border-top:none;border-left:none;border-bottom:
  solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:solid black .75pt;
  mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:57.6pt'>
  <p class=MsoNormal><span style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
  Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>短信</span><span
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>内</span><span style='font-size:10.5pt;
  font-family:宋体;mso-bidi-font-family:Dotum;letter-spacing:.1pt;mso-fareast-language:
  ZH-CN'>容</span><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
  mso-bidi-font-family:Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p></o:p></span></p>
  </td>
  <td width=388 style='width:291.15pt;border-top:none;border-left:none;
  border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:
  solid black .75pt;mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:57.6pt'>
  <p class=MsoNormal><span style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:
  Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>发送内容需要进行<span
  lang=EN-US>URL</span>字符标准化转码。<span lang=EN-US><br>
  {URL</span>字符编码说明<span lang=EN-US>:</span>返回字符串，此字符串中除了</span><span
  lang=EN-US style='font-size:9.0pt;mso-bidi-font-family:Arial;color:#99CC00;
  letter-spacing:.1pt;mso-fareast-language:ZH-CN'>-_.</span><span
  style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>之外的所有非字母数字字符都将被替换成百分号（</span><span
  lang=EN-US style='font-size:9.0pt;mso-bidi-font-family:Arial;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>%</span><span style='font-size:9.0pt;
  font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:.1pt;mso-fareast-language:
  ZH-CN'>）后跟两位十六进制数，空格则编码为加号（</span><span lang=EN-US style='font-size:9.0pt;
  mso-bidi-font-family:Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>+</span><span
  style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>）<span lang=EN-US>}<o:p></o:p></span></span></p>
  <p class=MsoNormal><span lang=EN-US style='font-size:9.0pt;font-family:宋体;
  mso-bidi-font-family:Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>ASP</span><span
  style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>：<span lang=EN-US>server.URLEncode(</span></span><span
  lang=EN-US style='font-size:9.0pt'>&quot;</span><span style='font-size:9.0pt;
  font-family:宋体;mso-bidi-font-family:宋体;letter-spacing:.1pt;mso-fareast-language:
  ZH-CN'>短信内容</span><span lang=EN-US style='font-size:9.0pt'>&quot;</span><span
  lang=EN-US style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:Arial;
  letter-spacing:.1pt;mso-fareast-language:ZH-CN'>)<o:p></o:p></span></p>
  <p class=MsoNormal><span lang=EN-US style='font-size:9.0pt;font-family:宋体;
  mso-bidi-font-family:Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>PHP</span><span
  style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>：<span lang=EN-US>urlencode(</span></span><span
  lang=EN-US style='font-size:9.0pt'>&quot;</span><span style='font-size:9.0pt;
  font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:.1pt;mso-fareast-language:
  ZH-CN'>短信内容</span><span lang=EN-US style='font-size:9.0pt'>&quot;</span><span
  lang=EN-US style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:Arial;
  letter-spacing:.1pt;mso-fareast-language:ZH-CN'>)<o:p></o:p></span></p>
  <p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
  style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>JAVA</span><span style='font-size:9.0pt;
  font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:.1pt;mso-fareast-language:
  ZH-CN'>：<span lang=EN-US>java.net.URLEncoder.encode(</span></span><span
  lang=EN-US style='font-size:9.0pt'>&quot;</span><span style='font-size:9.0pt;
  font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:.1pt;mso-fareast-language:
  ZH-CN'>短信内容</span><span lang=EN-US style='font-size:9.0pt'>&quot;</span><span
  lang=EN-US style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:Arial;
  letter-spacing:.1pt;mso-fareast-language:ZH-CN'>)<o:p></o:p></span></p>
  </td>
 </tr>
</table>

</div>

<p class=MsoNormal><b style='mso-bidi-font-weight:normal'><span
style='font-size:10.5pt;font-family:宋体;mso-ascii-font-family:Batang;mso-hansi-font-family:
"Times New Roman";letter-spacing:.1pt;mso-fareast-language:ZH-CN'>例</span></b><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:10.5pt;
mso-fareast-font-family:宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>:<o:p></o:p></span></b></p>

<p class=MsoNormal><b style='mso-bidi-font-weight:normal'><span
style='font-size:10.5pt;font-family:宋体;mso-ascii-font-family:Batang;mso-hansi-font-family:
"Times New Roman";letter-spacing:.1pt;mso-fareast-language:ZH-CN'>接</span></b><b
style='mso-bidi-font-weight:normal'><span style='font-size:10.5pt;mso-fareast-font-family:
宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'> </span></b><b
style='mso-bidi-font-weight:normal'><span style='font-size:10.5pt;font-family:
宋体;mso-ascii-font-family:Batang;mso-hansi-font-family:"Times New Roman";
letter-spacing:.1pt;mso-fareast-language:ZH-CN'>收</span></b><b
style='mso-bidi-font-weight:normal'><span style='font-size:10.5pt;mso-fareast-font-family:
宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'> </span></b><b
style='mso-bidi-font-weight:normal'><span style='font-size:10.5pt;font-family:
宋体;mso-ascii-font-family:Batang;mso-hansi-font-family:"Times New Roman";
letter-spacing:.1pt;mso-fareast-language:ZH-CN'>号：</span></b><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:10.5pt;
mso-fareast-font-family:宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>13900008888,1390000test,13100006666<o:p></o:p></span></b></p>

<p class=MsoNormal><b style='mso-bidi-font-weight:normal'><span
style='font-size:10.5pt;font-family:宋体;mso-ascii-font-family:Batang;mso-hansi-font-family:
"Times New Roman";letter-spacing:.1pt;mso-fareast-language:ZH-CN'>发送内容：发送测试</span></b><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:10.5pt;
mso-fareast-font-family:宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p></o:p></span></b></p>

<p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
style='font-size:10.5pt;mso-fareast-font-family:宋体;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'><a
href="http://api.sms7.cn/mt/?uid=test&amp;pwd=fa246d0262c3925617b0c72bb20eeb1d&amp;mobile=13900008888,13900009999,13100006666,0218882228&amp;mobileids=1390000888812869461937,1390000999912869461937,1310000666612869461937&amp;content=%D6%D0%B9%FA%B6%CC%D0%C5%CD%F8%B7%A2%CB%CD%B2%E2%CA%D4">http://api.sms.cn/mt/?uid=<span
style='font-size:10.0pt;mso-bidi-font-size:12.0pt'>test</span>&amp;pwd=<span
style='font-size:10.0pt;mso-bidi-font-size:12.0pt;mso-fareast-font-family:Batang;
color:windowtext;letter-spacing:0pt;mso-fareast-language:KO;text-decoration:
none;text-underline:none'>b9887c5ebb23ebb294acab183ecf0769</span>&amp;mobile=13900008888,1390000test,13100006666&amp;mobileids=13900008888<span
style='mso-fareast-font-family:Batang;mso-fareast-language:KO'>12869461937</span>,1390000test12869461937,1310000666612869461937&amp;content=<span
style='font-size:10.0pt;mso-bidi-font-size:12.0pt;mso-fareast-font-family:Batang;
color:windowtext;letter-spacing:0pt;mso-fareast-language:KO;text-decoration:
none;text-underline:none'> </span><span style='font-size:10.0pt;mso-bidi-font-size:
12.0pt;mso-fareast-font-family:Batang;mso-fareast-language:KO'>%B7%A2%CB%CD%B2%E2%CA%D4
</span></a></span><span class=MsoHyperlink><span lang=EN-US style='letter-spacing:
.1pt'><o:p></o:p></span></span></p>

<p class=MsoNormal><a name="_Toc78008631"><span style='font-size:10.5pt;
font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:.1pt;mso-fareast-language:
ZH-CN'>发成功时</span></a><span style='mso-bookmark:_Toc78008631'><span lang=KO
style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;letter-spacing:
.1pt'>响应</span></span><span style='mso-bookmark:_Toc78008631'><span
style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;letter-spacing:
.1pt;mso-fareast-language:ZH-CN'>状态码值</span></span><span style='mso-bookmark:
_Toc78008631'><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>: <o:p></o:p></span></span></p>

<p class=MsoNormal><span style='mso-bookmark:_Toc78008631'><span lang=EN-US
style='mso-fareast-language:ZH-CN'>sms&amp;stat=100&amp;message=</span></span><span
style='mso-bookmark:_Toc78008631'><span style='font-family:宋体;mso-bidi-font-family:
宋体;mso-fareast-language:ZH-CN'>发</span></span><span style='mso-bookmark:_Toc78008631'><span
style='mso-hansi-font-family:Batang;mso-bidi-font-family:Batang;mso-fareast-language:
ZH-CN'>送成</span></span><span style='mso-bookmark:_Toc78008631'><span
style='mso-fareast-language:ZH-CN'>功</span></span><span style='mso-bookmark:
_Toc78008631'><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><br
style='mso-special-character:line-break'>
<![if !supportLineBreakNewLine]><br style='mso-special-character:line-break'>
<![endif]></span></span><span lang=EN-US style='font-size:10.5pt;font-family:
宋体;mso-bidi-font-family:Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p></o:p></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>stat
</span><span style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;
letter-spacing:.1pt;mso-fareast-language:ZH-CN'>状态码<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal><span lang=EN-US style='mso-fareast-language:ZH-CN'>message</span><span
lang=EN-US style='mso-fareast-font-family:宋体;mso-fareast-language:ZH-CN'> </span><span
style='font-family:宋体;mso-ascii-font-family:Batang;mso-hansi-font-family:"Times New Roman";
mso-fareast-language:ZH-CN'>状态说明</span><span lang=EN-US style='mso-fareast-font-family:
宋体;mso-fareast-language:ZH-CN'><o:p></o:p></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><br>
</span><span style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;
letter-spacing:.1pt;mso-fareast-language:ZH-CN'>返回发送的状态码<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal><b style='mso-bidi-font-weight:normal'><span
style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
.1pt;mso-fareast-language:ZH-CN'>状态码<span lang=EN-US><span style='mso-tab-count:
1'> </span><span style='mso-tab-count:1'>&nbsp;&nbsp;&nbsp; </span></span>说明<span
lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal><a name=code></a><span lang=EN-US style='font-size:10.5pt;
font-family:宋体;mso-bidi-font-family:Arial;color:#99CC00;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'><span style='mso-tab-count:1'>&nbsp;&nbsp;&nbsp; </span>100
</span><span style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;
color:#99CC00;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>发送成功<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:Arial;color:#99CC00;letter-spacing:.1pt;mso-fareast-language:
ZH-CN'><span style='mso-tab-count:1'>&nbsp;&nbsp;&nbsp; </span>101 </span><span
style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;color:#99CC00;
letter-spacing:.1pt;mso-fareast-language:ZH-CN'>验证失败<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:Arial;color:#99CC00;letter-spacing:.1pt;mso-fareast-language:
ZH-CN'><span style='mso-tab-count:1'>&nbsp;&nbsp;&nbsp; </span>102 </span><span
style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;color:#99CC00;
letter-spacing:.1pt;mso-fareast-language:ZH-CN'>短信不足<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:Arial;color:#99CC00;letter-spacing:.1pt;mso-fareast-language:
ZH-CN'><span style='mso-tab-count:1'>&nbsp;&nbsp;&nbsp; </span>103 </span><span
style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;color:#99CC00;
letter-spacing:.1pt;mso-fareast-language:ZH-CN'>操作失败<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:Arial;color:#99CC00;letter-spacing:.1pt;mso-fareast-language:
ZH-CN'><span style='mso-tab-count:1'>&nbsp;&nbsp;&nbsp; </span>104 </span><span
style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;color:#99CC00;
letter-spacing:.1pt;mso-fareast-language:ZH-CN'>非法字符<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:Arial;color:#99CC00;letter-spacing:.1pt;mso-fareast-language:
ZH-CN'><span style='mso-tab-count:1'>&nbsp;&nbsp;&nbsp; </span>105 </span><span
style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;color:#99CC00;
letter-spacing:.1pt;mso-fareast-language:ZH-CN'>内容过多<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:Arial;color:#99CC00;letter-spacing:.1pt;mso-fareast-language:
ZH-CN'><span style='mso-tab-count:1'>&nbsp;&nbsp;&nbsp; </span>106 </span><span
style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;color:#99CC00;
letter-spacing:.1pt;mso-fareast-language:ZH-CN'>号码过多<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:Arial;color:#99CC00;letter-spacing:.1pt;mso-fareast-language:
ZH-CN'><span style='mso-tab-count:1'>&nbsp;&nbsp;&nbsp; </span>107 </span><span
style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;color:#99CC00;
letter-spacing:.1pt;mso-fareast-language:ZH-CN'>频率过快<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:Arial;color:#99CC00;letter-spacing:.1pt;mso-fareast-language:
ZH-CN'><span style='mso-tab-count:1'>&nbsp;&nbsp;&nbsp; </span>108 </span><span
style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;color:#99CC00;
letter-spacing:.1pt;mso-fareast-language:ZH-CN'>号码内容空<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:Arial;color:#99CC00;letter-spacing:.1pt;mso-fareast-language:
ZH-CN'><span style='mso-tab-count:1'>&nbsp;&nbsp;&nbsp; </span>110 </span><span
style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;color:#99CC00;
letter-spacing:.1pt;mso-fareast-language:ZH-CN'>禁止频繁单条发送<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:Arial;color:#99CC00;letter-spacing:.1pt;mso-fareast-language:
ZH-CN'><span style='mso-tab-count:1'>&nbsp;&nbsp;&nbsp; </span>112<span
style='mso-tab-count:1'> </span></span><span style='font-size:10.5pt;
font-family:宋体;mso-bidi-font-family:Arial;color:#99CC00;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'>号码错误<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:Arial;color:#99CC00;letter-spacing:.1pt;mso-fareast-language:
ZH-CN'><span style='mso-tab-count:1'>&nbsp;&nbsp;&nbsp; </span>113 </span><span
style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;color:#99CC00;
letter-spacing:.1pt;mso-fareast-language:ZH-CN'>定时时间格式不对<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:Arial;color:#99CC00;letter-spacing:.1pt;mso-fareast-language:
ZH-CN'><span style='mso-tab-count:1'>&nbsp;&nbsp;&nbsp; </span>114<span
style='mso-tab-count:1'> </span></span><span style='font-size:10.5pt;
font-family:宋体;mso-bidi-font-family:Arial;color:#99CC00;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'>账号被锁，<span lang=EN-US>10</span>分钟后登录<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:Arial;color:#99CC00;letter-spacing:.1pt;mso-fareast-language:
ZH-CN'><span style='mso-tab-count:1'>&nbsp;&nbsp;&nbsp; </span>116 </span><span
style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;color:#99CC00;
letter-spacing:.1pt;mso-fareast-language:ZH-CN'>禁止接口发送<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:Arial;color:#99CC00;letter-spacing:.1pt;mso-fareast-language:
ZH-CN'><span style='mso-tab-count:1'>&nbsp;&nbsp;&nbsp; </span>117 </span><span
style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;color:#99CC00;
letter-spacing:.1pt;mso-fareast-language:ZH-CN'>绑定<span lang=EN-US>IP</span>不正确<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:Arial;color:#99CC00;letter-spacing:.1pt;mso-fareast-language:
ZH-CN'><span style='mso-tab-count:1'>&nbsp;&nbsp;&nbsp; </span>120 </span><span
style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;color:#99CC00;
letter-spacing:.1pt;mso-fareast-language:ZH-CN'>系统升级</span><span lang=EN-US
style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;mso-fareast-language:
ZH-CN'><o:p></o:p></span></p>

<p class=MsoNormal style='mso-outline-level:1'><a name="_Toc357868060"><b
style='mso-bidi-font-weight:normal'><span style='font-size:14.0pt;font-family:
宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>五、接收状态报告</span></b></a><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:14.0pt;
font-family:宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p></o:p></span></b></p>

<p class=MsoNormal style='text-indent:24.5pt;mso-char-indent-count:2.0;
mso-outline-level:2'><a name="_Toc357868061"><b style='mso-bidi-font-weight:
normal'><span lang=EN-US style='font-size:12.0pt;font-family:宋体;mso-bidi-font-family:
Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>5.1 </span></b></a><span
style='mso-bookmark:_Toc357868061'><b style='mso-bidi-font-weight:normal'><span
style='font-size:12.0pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
.1pt;mso-fareast-language:ZH-CN'>主动获取状态</span></b></span><b style='mso-bidi-font-weight:
normal'><span lang=EN-US style='font-size:12.0pt;font-family:宋体;mso-bidi-font-family:
Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p></o:p></span></b></p>

<p class=MsoNormal style='text-indent:24.4pt;mso-char-indent-count:2.0'><span
lang=EN-US style='font-size:12.0pt;font-family:宋体;mso-bidi-font-family:Arial;
letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='text-indent:24.4pt;mso-char-indent-count:2.0'><span
lang=EN-US style='font-size:12.0pt;font-family:宋体;mso-bidi-font-family:Arial;
letter-spacing:.1pt;mso-fareast-language:ZH-CN'>GET/POST</span><span
style='font-size:12.0pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
.1pt;mso-fareast-language:ZH-CN'>操作格式：<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:24.4pt;mso-char-indent-count:2.0'><span
lang=EN-US style='font-size:12.0pt;font-family:宋体;mso-bidi-font-family:Arial;
letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='text-indent:24.4pt;mso-char-indent-count:2.28'><span
lang=EN-US style='font-size:10.5pt;mso-fareast-font-family:宋体;letter-spacing:
.1pt;mso-fareast-language:ZH-CN'>http://api.sms.cn/st/?uid=</span><span
style='font-size:10.5pt;font-family:宋体;mso-ascii-font-family:Verdana;
letter-spacing:.1pt;mso-fareast-language:ZH-CN'>用户账号</span><span lang=EN-US
style='font-size:10.5pt;mso-fareast-font-family:宋体;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'>&amp;pwd=MD532</span><span style='font-size:10.5pt;
font-family:宋体;mso-ascii-font-family:Batang;mso-hansi-font-family:"Times New Roman";
letter-spacing:.1pt;mso-fareast-language:ZH-CN'>位密码</span><span lang=EN-US
style='font-size:10.5pt;mso-fareast-font-family:宋体;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'><o:p></o:p></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;mso-fareast-font-family:
宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal><span style='font-size:10.5pt;font-family:宋体;mso-ascii-font-family:
Batang;mso-hansi-font-family:"Times New Roman";letter-spacing:.1pt;mso-fareast-language:
ZH-CN'>接口参数说明</span><span lang=EN-US style='font-size:10.5pt;mso-fareast-font-family:
宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>:<o:p></o:p></span></p>

<div align=center>

<table class=MsoNormalTable border=1 cellspacing=0 cellpadding=0 width=559
 style='width:419.05pt;border-collapse:collapse;border:none;mso-border-alt:
 solid black .75pt;mso-yfti-tbllook:63;mso-padding-alt:0cm 5.4pt 0cm 5.4pt;
 mso-border-insideh:.75pt solid black;mso-border-insidev:.75pt solid black'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;page-break-inside:avoid;
  height:20.75pt'>
  <td width=83 style='width:62.5pt;border:solid black 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-alt:solid black .75pt;mso-border-right-alt:solid windowtext .5pt;
  background:#B3B3B3;padding:0cm 5.4pt 0cm 5.4pt;height:20.75pt'>
  <p class=MsoNormal align=center style='text-align:center'><span
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;text-transform:
  uppercase;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>参数名</span><span
  lang=EN-US style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;
  text-transform:uppercase;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p></o:p></span></p>
  </td>
  <td width=87 style='width:65.4pt;border:solid black 1.0pt;border-left:none;
  mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  background:#B3B3B3;padding:0cm 5.4pt 0cm 5.4pt;height:20.75pt'>
  <p class=MsoNormal align=center style='text-align:center'><span
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;text-transform:
  uppercase;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>参数字段</span><span
  lang=EN-US style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;
  letter-spacing:.1pt'><o:p></o:p></span></p>
  </td>
  <td width=388 style='width:291.15pt;border:solid black 1.0pt;border-left:
  none;mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  background:#B3B3B3;padding:0cm 5.4pt 0cm 5.4pt;height:20.75pt'>
  <p class=MsoNormal align=center style='text-align:center'><span
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;text-transform:
  uppercase;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>参数</span><span
  lang=KO style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;
  text-transform:uppercase;letter-spacing:.1pt'>说</span><span lang=KO
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Dotum;text-transform:
  uppercase;letter-spacing:.1pt'>明</span><span lang=EN-US style='font-size:
  10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:.1pt'><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:1;page-break-inside:avoid;height:18.35pt'>
  <td width=83 style='width:62.5pt;border-top:none;border-left:solid black 1.0pt;
  border-bottom:solid black 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  mso-border-right-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:18.35pt'>
  <p class=MsoNormal align=center style='text-align:center'><span lang=EN-US
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>uid<o:p></o:p></span></p>
  </td>
  <td width=87 style='width:65.4pt;border-top:none;border-left:none;border-bottom:
  solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:solid black .75pt;
  mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:18.35pt'>
  <p class=MsoNormal><span style='font-size:10.5pt;font-family:宋体;mso-ascii-font-family:
  Verdana;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>用户账号</span><span
  lang=EN-US style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;
  letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p></o:p></span></p>
  </td>
  <td width=388 style='width:291.15pt;border-top:none;border-left:none;
  border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:
  solid black .75pt;mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:18.35pt'>
  <p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
  mso-bidi-font-family:Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:2;mso-yfti-lastrow:yes;page-break-inside:avoid;
  height:22.9pt'>
  <td width=83 style='width:62.5pt;border-top:none;border-left:solid black 1.0pt;
  border-bottom:solid black 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  mso-border-right-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:22.9pt'>
  <p class=MsoNormal align=center style='text-align:center'><span lang=EN-US
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>pwd<o:p></o:p></span></p>
  </td>
  <td width=87 style='width:65.4pt;border-top:none;border-left:none;border-bottom:
  solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:solid black .75pt;
  mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:22.9pt'>
  <p class=MsoNormal><span style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
  Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>用户密</span><span
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>码</span><span lang=EN-US style='font-size:
  10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:.1pt;
  mso-fareast-language:ZH-CN'><o:p></o:p></span></p>
  </td>
  <td width=388 style='width:291.15pt;border-top:none;border-left:none;
  border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:
  solid black .75pt;mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:22.9pt'>
  <p class=MsoNormal><span lang=EN-US style='font-size:9.0pt;font-family:宋体;
  mso-bidi-font-family:Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>32</span><span
  style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>位<span lang=EN-US>MD5</span>加密<span
  lang=EN-US> md5(</span>登录密码<span lang=EN-US>+</span></span><span
  style='font-size:9.0pt;font-family:宋体;mso-ascii-font-family:Verdana;
  letter-spacing:.1pt;mso-fareast-language:ZH-CN'>用户账号</span><span lang=EN-US
  style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>)<o:p></o:p></span></p>
  </td>
 </tr>
</table>

</div>

<p class=MsoNormal><b style='mso-bidi-font-weight:normal'><span
style='font-size:10.5pt;font-family:宋体;mso-ascii-font-family:Batang;mso-hansi-font-family:
"Times New Roman";letter-spacing:.1pt;mso-fareast-language:ZH-CN'>例</span></b><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:10.5pt;
mso-fareast-font-family:宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>:<o:p></o:p></span></b></p>

<p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;mso-fareast-font-family:
宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>http://api.sms.cn/st/?uid=</span><span
lang=EN-US style='font-size:10.5pt;font-family:"Verdana","sans-serif";
mso-fareast-font-family:宋体;mso-hansi-font-family:宋体;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'>test</span><span lang=EN-US style='font-size:10.5pt;
mso-fareast-font-family:宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>&amp;pwd=</span><span
lang=EN-US>b<st1:chmetcnv TCSC="0" NumberType="1" Negative="False"
HasSpace="False" SourceValue="9887" UnitName="C" w:st="on">9887c</st1:chmetcnv>5ebb23ebb294acab183ecf0769</span><span
lang=EN-US style='mso-fareast-font-family:宋体;mso-fareast-language:ZH-CN'><o:p></o:p></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal><span lang=KO style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:宋体;letter-spacing:.1pt'>响应</span><span style='font-size:
10.5pt;font-family:宋体;mso-bidi-font-family:宋体;letter-spacing:.1pt;mso-fareast-language:
ZH-CN'>返回值</span><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>:<o:p></o:p></span></p>

<p class=MsoNormal><span lang=EN-US style='mso-fareast-font-family:宋体;
mso-fareast-language:ZH-CN'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal><b style='mso-bidi-font-weight:normal'><span lang=EN-US
style='font-size:10.5pt;mso-fareast-font-family:宋体;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'>18817660001,100,188176600011234556789,</span></b><span
lang=EN-US> </span><b style='mso-bidi-font-weight:normal'><span lang=EN-US
style='font-size:10.5pt;mso-fareast-font-family:宋体;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'>2011-03-11 11:22:11<o:p></o:p></span></b></p>

<p class=MsoNormal><b style='mso-bidi-font-weight:normal'><span lang=EN-US
style='font-size:10.5pt;mso-fareast-font-family:宋体;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'>18817660002,100,188176600021234556311,</span></b><span
lang=EN-US> </span><b style='mso-bidi-font-weight:normal'><span lang=EN-US
style='font-size:10.5pt;mso-fareast-font-family:宋体;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'>2011-03-11 11:28:22<o:p></o:p></span></b></p>

<p class=MsoNormal><b style='mso-bidi-font-weight:normal'><span lang=EN-US
style='font-size:10.5pt;mso-fareast-font-family:宋体;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal><span style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
Arial;mso-fareast-language:ZH-CN'>说明：<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal><b style='mso-bidi-font-weight:normal'><span
style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;mso-fareast-language:
ZH-CN'>手机号<span lang=EN-US>,</span>状态<span lang=EN-US>,</span>发送唯一编号<span
lang=EN-US>,</span>状态返回时间<span lang=EN-US>+</span>换行<span lang=EN-US><o:p></o:p></span></span></b></p>

<p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:Arial;mso-fareast-language:ZH-CN'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal><span style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
Arial;mso-fareast-language:ZH-CN'>每条状态记录以换行分隔，一行一条状态记录<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:Arial;mso-fareast-language:ZH-CN'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:Arial;mso-fareast-language:ZH-CN'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='mso-outline-level:1'><a name="_Toc357868062"><b
style='mso-bidi-font-weight:normal'><span style='font-size:14.0pt;font-family:
宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>六、接收上行短信（回复）</span></b></a><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:14.0pt;
font-family:宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p></o:p></span></b></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-outline-level:2'><a
name="_Toc357868063"><b style='mso-bidi-font-weight:normal'><span lang=EN-US
style='font-size:14.0pt;font-family:宋体;letter-spacing:.1pt;mso-fareast-language:
ZH-CN'>6.1 </span></b></a><span style='mso-bookmark:_Toc357868063'><b
style='mso-bidi-font-weight:normal'><span style='font-size:14.0pt;font-family:
宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>主动接收上行短信（回复）</span></b></span><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:14.0pt;
font-family:宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p></o:p></span></b></p>

<p class=MsoNormal style='text-indent:24.4pt;mso-char-indent-count:2.0'><span
style='font-size:12.0pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
.1pt;mso-fareast-language:ZH-CN'>操作的格式：<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:24.4pt;mso-char-indent-count:2.28'><span
lang=EN-US style='font-size:10.5pt;mso-fareast-font-family:宋体;letter-spacing:
.1pt;mso-fareast-language:ZH-CN'>http://api.sms.cn/rx/?uid=</span><span
style='font-size:10.5pt;font-family:宋体;mso-ascii-font-family:Verdana;
letter-spacing:.1pt;mso-fareast-language:ZH-CN'>用户账号</span><span lang=EN-US
style='font-size:10.5pt;mso-fareast-font-family:宋体;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'>&amp;pwd=MD532</span><span style='font-size:10.5pt;
font-family:宋体;mso-ascii-font-family:Batang;mso-hansi-font-family:"Times New Roman";
letter-spacing:.1pt;mso-fareast-language:ZH-CN'>位密码</span><span lang=EN-US
style='font-size:10.5pt;mso-fareast-font-family:宋体;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'><o:p></o:p></span></p>

<p class=MsoNormal style='text-indent:21.0pt'><span style='font-size:10.5pt;
font-family:宋体;mso-ascii-font-family:Batang;mso-hansi-font-family:"Times New Roman";
color:#C00000;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>注：</span><span
style='font-size:10.5pt;font-family:宋体;mso-ascii-font-family:Batang;mso-hansi-font-family:
"Times New Roman";letter-spacing:.1pt;mso-fareast-language:ZH-CN'>提取的回复短信不能在重复提取</span><span
lang=EN-US style='font-size:10.5pt;mso-fareast-font-family:宋体;letter-spacing:
.1pt;mso-fareast-language:ZH-CN'><o:p></o:p></span></p>

<p class=MsoNormal><span style='font-size:10.5pt;font-family:宋体;mso-ascii-font-family:
Batang;mso-hansi-font-family:"Times New Roman";letter-spacing:.1pt;mso-fareast-language:
ZH-CN'>接口参数说明</span><span lang=EN-US style='font-size:10.5pt;mso-fareast-font-family:
宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>:<o:p></o:p></span></p>

<div align=center>

<table class=MsoNormalTable border=1 cellspacing=0 cellpadding=0 width=559
 style='width:419.05pt;border-collapse:collapse;border:none;mso-border-alt:
 solid black .75pt;mso-yfti-tbllook:63;mso-padding-alt:0cm 5.4pt 0cm 5.4pt;
 mso-border-insideh:.75pt solid black;mso-border-insidev:.75pt solid black'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;page-break-inside:avoid;
  height:20.75pt'>
  <td width=83 style='width:62.5pt;border:solid black 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-alt:solid black .75pt;mso-border-right-alt:solid windowtext .5pt;
  background:#B3B3B3;padding:0cm 5.4pt 0cm 5.4pt;height:20.75pt'>
  <p class=MsoNormal align=center style='text-align:center'><span
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;text-transform:
  uppercase;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>参数</span><span
  lang=EN-US style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;
  text-transform:uppercase;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p></o:p></span></p>
  </td>
  <td width=87 style='width:65.4pt;border:solid black 1.0pt;border-left:none;
  mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  background:#B3B3B3;padding:0cm 5.4pt 0cm 5.4pt;height:20.75pt'>
  <p class=MsoNormal align=center style='text-align:center'><span
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;text-transform:
  uppercase;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>参数字段名</span><span
  lang=EN-US style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;
  letter-spacing:.1pt'><o:p></o:p></span></p>
  </td>
  <td width=388 style='width:291.15pt;border:solid black 1.0pt;border-left:
  none;mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  background:#B3B3B3;padding:0cm 5.4pt 0cm 5.4pt;height:20.75pt'>
  <p class=MsoNormal align=center style='text-align:center'><span lang=KO
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;text-transform:
  uppercase;letter-spacing:.1pt'>说</span><span lang=KO style='font-size:10.5pt;
  font-family:宋体;mso-bidi-font-family:Dotum;text-transform:uppercase;
  letter-spacing:.1pt'>明</span><span lang=EN-US style='font-size:10.5pt;
  font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:.1pt'><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:1;page-break-inside:avoid;height:18.35pt'>
  <td width=83 style='width:62.5pt;border-top:none;border-left:solid black 1.0pt;
  border-bottom:solid black 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  mso-border-right-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:18.35pt'>
  <p class=MsoNormal align=center style='text-align:center'><span lang=EN-US
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>uid<o:p></o:p></span></p>
  </td>
  <td width=87 style='width:65.4pt;border-top:none;border-left:none;border-bottom:
  solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:solid black .75pt;
  mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:18.35pt'>
  <p class=MsoNormal><span style='font-size:10.5pt;font-family:宋体;mso-ascii-font-family:
  Verdana;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>用户账号</span><span
  lang=EN-US style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;
  letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p></o:p></span></p>
  </td>
  <td width=388 style='width:291.15pt;border-top:none;border-left:none;
  border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:
  solid black .75pt;mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:18.35pt'>
  <p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
  mso-bidi-font-family:Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:2;mso-yfti-lastrow:yes;page-break-inside:avoid;
  height:22.9pt'>
  <td width=83 style='width:62.5pt;border-top:none;border-left:solid black 1.0pt;
  border-bottom:solid black 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  mso-border-right-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:22.9pt'>
  <p class=MsoNormal align=center style='text-align:center'><span lang=EN-US
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>pwd<o:p></o:p></span></p>
  </td>
  <td width=87 style='width:65.4pt;border-top:none;border-left:none;border-bottom:
  solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:solid black .75pt;
  mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:22.9pt'>
  <p class=MsoNormal><span style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
  Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>用户密</span><span
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>码</span><span lang=EN-US style='font-size:
  10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:.1pt;
  mso-fareast-language:ZH-CN'><o:p></o:p></span></p>
  </td>
  <td width=388 style='width:291.15pt;border-top:none;border-left:none;
  border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:
  solid black .75pt;mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:22.9pt'>
  <p class=MsoNormal><span style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
  Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>小</span><span
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>写</span><span lang=EN-US style='font-size:
  10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:.1pt;
  mso-fareast-language:ZH-CN'>32</span><span style='font-size:10.5pt;
  font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:.1pt;mso-fareast-language:
  ZH-CN'>位<span lang=EN-US>MD5</span>加密<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
</table>

</div>

<p class=MsoNormal><b style='mso-bidi-font-weight:normal'><span lang=EN-US
style='font-size:10.5pt;mso-fareast-font-family:宋体;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal><b style='mso-bidi-font-weight:normal'><span
style='font-size:10.5pt;font-family:宋体;mso-ascii-font-family:Batang;mso-hansi-font-family:
"Times New Roman";letter-spacing:.1pt;mso-fareast-language:ZH-CN'>例</span></b><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:10.5pt;
mso-fareast-font-family:宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>:<o:p></o:p></span></b></p>

<p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
style='font-size:10.5pt;mso-fareast-font-family:宋体;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'><a
href="http://api.sms7.cn/rx/?uid=test&amp;pwd=fa246d0262c3925617b0c72bb20eeb1d">http://api.sms.cn/rx/?uid=<span
style='font-size:10.0pt;mso-bidi-font-size:12.0pt'>test</span>&amp;pwd=b9887c5ebb23ebb294acab183ecf0769</a>
<o:p></o:p></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><br>
</span><span lang=KO style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
宋体;letter-spacing:.1pt'>响应</span><span style='font-size:10.5pt;font-family:
宋体;mso-bidi-font-family:宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>结果</span><span
lang=KO style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;
letter-spacing:.1pt'>为纯文本</span><span lang=EN-US style='font-size:10.5pt;
font-family:宋体;mso-bidi-font-family:宋体;letter-spacing:.1pt'>,</span><span
lang=KO style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;
letter-spacing:.1pt'>每次可</span><span style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>接收</span><span
lang=KO style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;
letter-spacing:.1pt'>多条回复信息：</span><span lang=EN-US style='font-family:"Arial","sans-serif";
mso-fareast-language:ZH-CN'><o:p></o:p></span></p>

<p class=MsoNormal><span style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>状态码<span lang=EN-US>{&amp;}</span></span><span
style='mso-bidi-font-size:10.0pt;font-family:宋体;mso-ascii-font-family:Verdana;
mso-hansi-font-family:Verdana;mso-bidi-font-family:宋体;mso-font-kerning:0pt;
mso-ansi-language:ZH-CN;mso-fareast-language:ZH-CN'>回复号码</span><span
style='mso-bidi-font-size:10.0pt;font-family:"Verdana","sans-serif";mso-fareast-font-family:
宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;mso-ansi-language:ZH-CN;
mso-fareast-language:ZH-CN'>||</span><span style='mso-bidi-font-size:10.0pt;
font-family:宋体;mso-ascii-font-family:Verdana;mso-hansi-font-family:Verdana;
mso-bidi-font-family:宋体;mso-font-kerning:0pt;mso-ansi-language:ZH-CN;
mso-fareast-language:ZH-CN'>回复内容</span><span style='mso-bidi-font-size:10.0pt;
font-family:"Verdana","sans-serif";mso-fareast-font-family:宋体;mso-bidi-font-family:
宋体;mso-font-kerning:0pt;mso-ansi-language:ZH-CN;mso-fareast-language:ZH-CN'>||</span><span
style='mso-bidi-font-size:10.0pt;font-family:宋体;mso-ascii-font-family:Verdana;
mso-hansi-font-family:Verdana;mso-bidi-font-family:宋体;mso-font-kerning:0pt;
mso-ansi-language:ZH-CN;mso-fareast-language:ZH-CN'>回复时间</span><span
style='mso-bidi-font-size:10.0pt;font-family:"Verdana","sans-serif";mso-fareast-font-family:
宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;mso-ansi-language:ZH-CN;
mso-fareast-language:ZH-CN'>||</span><span style='mso-bidi-font-size:10.0pt;
font-family:宋体;mso-ascii-font-family:Verdana;mso-hansi-font-family:Verdana;
mso-bidi-font-family:宋体;mso-font-kerning:0pt;mso-ansi-language:ZH-CN;
mso-fareast-language:ZH-CN'>回复网关号</span><span lang=EN-US style='font-size:10.5pt;
font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:.1pt;mso-fareast-language:
ZH-CN'>{&amp;}</span><span style='mso-bidi-font-size:10.0pt;font-family:宋体;
mso-ascii-font-family:Verdana;mso-hansi-font-family:Verdana;mso-bidi-font-family:
宋体;mso-font-kerning:0pt;mso-ansi-language:ZH-CN;mso-fareast-language:ZH-CN'>回复号码</span><span
style='mso-bidi-font-size:10.0pt;font-family:"Verdana","sans-serif";mso-fareast-font-family:
宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;mso-ansi-language:ZH-CN;
mso-fareast-language:ZH-CN'>||</span><span style='mso-bidi-font-size:10.0pt;
font-family:宋体;mso-ascii-font-family:Verdana;mso-hansi-font-family:Verdana;
mso-bidi-font-family:宋体;mso-font-kerning:0pt;mso-ansi-language:ZH-CN;
mso-fareast-language:ZH-CN'>回复内容</span><span style='mso-bidi-font-size:10.0pt;
font-family:"Verdana","sans-serif";mso-fareast-font-family:宋体;mso-bidi-font-family:
宋体;mso-font-kerning:0pt;mso-ansi-language:ZH-CN;mso-fareast-language:ZH-CN'>||</span><span
style='mso-bidi-font-size:10.0pt;font-family:宋体;mso-ascii-font-family:Verdana;
mso-hansi-font-family:Verdana;mso-bidi-font-family:宋体;mso-font-kerning:0pt;
mso-ansi-language:ZH-CN;mso-fareast-language:ZH-CN'>回复时间</span><span
style='mso-bidi-font-size:10.0pt;font-family:"Verdana","sans-serif";mso-fareast-font-family:
宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;mso-ansi-language:ZH-CN;
mso-fareast-language:ZH-CN'>||</span><span style='mso-bidi-font-size:10.0pt;
font-family:宋体;mso-ascii-font-family:Verdana;mso-hansi-font-family:Verdana;
mso-bidi-font-family:宋体;mso-font-kerning:0pt;mso-ansi-language:ZH-CN;
mso-fareast-language:ZH-CN'>回复网关号</span><span style='mso-bidi-font-size:10.0pt;
font-family:"Verdana","sans-serif";mso-fareast-font-family:宋体;mso-bidi-font-family:
宋体;mso-font-kerning:0pt;mso-ansi-language:ZH-CN;mso-fareast-language:ZH-CN'>…….</span><span
lang=EN-US style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;
letter-spacing:.1pt;mso-fareast-language:ZH-CN'><br style='mso-special-character:
line-break'>
<![if !supportLineBreakNewLine]><br style='mso-special-character:line-break'>
<![endif]><o:p></o:p></span></p>

<p class=MsoNormal><b style='mso-bidi-font-weight:normal'><span
style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;letter-spacing:
.1pt;mso-fareast-language:ZH-CN'>例</span></b><b style='mso-bidi-font-weight:
normal'><span lang=KO style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
宋体;letter-spacing:.1pt'>响应</span></b><b style='mso-bidi-font-weight:normal'><span
style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;letter-spacing:
.1pt;mso-fareast-language:ZH-CN'>结果值</span></b><b style='mso-bidi-font-weight:
normal'><span lang=EN-US style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>:<o:p></o:p></span></b></p>

<p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>100{&amp;}13912341234||</span><span
style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
.1pt;mso-fareast-language:ZH-CN'>短信测试回复<span lang=EN-US>||<st1:chsdate
IsROCDate="False" IsLunarDate="False" Day="27" Month="5" Year="2008" w:st="on">2008-05-27</st1:chsdate>
12:10:11||1068112227282{&amp;}15912343333||</span>短信测试回复<span lang=EN-US>2||2009-05-27
13:11:11||106811222728200<br>
</span>返回发送的状态码<span lang=EN-US><br style='mso-special-character:line-break'>
<![if !supportLineBreakNewLine]><br style='mso-special-character:line-break'>
<![endif]><o:p></o:p></span></span></p>

<p class=MsoNormal><span style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>无回复内容时返回空<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:Arial;color:#C00000;letter-spacing:.1pt;mso-fareast-language:
ZH-CN'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal><span style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
Arial;color:#C00000;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>注：对回复的内容中有<span
lang=EN-US>||</span>会自动转成全角｜｜字符串<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-outline-level:1'><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:14.0pt;
font-family:宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal style='mso-outline-level:1'><a name="_Toc357868064"></a><a
name="_Toc264911965"><span style='mso-bookmark:_Toc357868064'><b
style='mso-bidi-font-weight:normal'><span style='font-size:14.0pt;font-family:
宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>七、取剩余短信条数</span></b></span></a><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:14.0pt;
font-family:宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p></o:p></span></b></p>

<p class=MsoNormal style='text-indent:24.4pt;mso-char-indent-count:2.0'><span
style='font-size:12.0pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
.1pt;mso-fareast-language:ZH-CN'>操作格式：<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:24.4pt;mso-char-indent-count:2.0'><span
lang=EN-US style='font-size:12.0pt;font-family:宋体;mso-bidi-font-family:Arial;
letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='text-indent:24.4pt;mso-char-indent-count:2.28'><span
lang=EN-US style='font-size:10.5pt;mso-fareast-font-family:宋体;letter-spacing:
.1pt;mso-fareast-language:ZH-CN'>http://api.sms.cn/mm/?uid=</span><span
style='font-size:10.5pt;font-family:宋体;mso-ascii-font-family:Verdana;
letter-spacing:.1pt;mso-fareast-language:ZH-CN'>用户账号</span><span lang=EN-US
style='font-size:10.5pt;mso-fareast-font-family:宋体;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'>&amp;pwd=MD5</span><span style='font-size:10.5pt;
font-family:宋体;mso-ascii-font-family:Batang;mso-hansi-font-family:"Times New Roman";
letter-spacing:.1pt;mso-fareast-language:ZH-CN'>位</span><span lang=EN-US
style='font-size:10.5pt;mso-fareast-font-family:宋体;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'>32</span><span style='font-size:10.5pt;font-family:
宋体;mso-ascii-font-family:Batang;mso-hansi-font-family:"Times New Roman";
letter-spacing:.1pt;mso-fareast-language:ZH-CN'>密码</span><span lang=EN-US
style='font-size:10.5pt;mso-fareast-font-family:宋体;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'><o:p></o:p></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;mso-fareast-font-family:
宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal><span style='font-size:10.5pt;font-family:宋体;mso-ascii-font-family:
Batang;mso-hansi-font-family:"Times New Roman";letter-spacing:.1pt;mso-fareast-language:
ZH-CN'>接口参数说明</span><span lang=EN-US style='font-size:10.5pt;mso-fareast-font-family:
宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>:<o:p></o:p></span></p>

<div align=center>

<table class=MsoNormalTable border=1 cellspacing=0 cellpadding=0 width=559
 style='width:419.05pt;border-collapse:collapse;border:none;mso-border-alt:
 solid black .75pt;mso-yfti-tbllook:63;mso-padding-alt:0cm 5.4pt 0cm 5.4pt;
 mso-border-insideh:.75pt solid black;mso-border-insidev:.75pt solid black'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;page-break-inside:avoid;
  height:20.75pt'>
  <td width=83 style='width:62.5pt;border:solid black 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-alt:solid black .75pt;mso-border-right-alt:solid windowtext .5pt;
  background:#B3B3B3;padding:0cm 5.4pt 0cm 5.4pt;height:20.75pt'>
  <p class=MsoNormal align=center style='text-align:center'><span
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;text-transform:
  uppercase;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>参数</span><span
  lang=EN-US style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;
  text-transform:uppercase;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p></o:p></span></p>
  </td>
  <td width=87 style='width:65.4pt;border:solid black 1.0pt;border-left:none;
  mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  background:#B3B3B3;padding:0cm 5.4pt 0cm 5.4pt;height:20.75pt'>
  <p class=MsoNormal align=center style='text-align:center'><span
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;text-transform:
  uppercase;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>参数字段名</span><span
  lang=EN-US style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;
  letter-spacing:.1pt'><o:p></o:p></span></p>
  </td>
  <td width=388 style='width:291.15pt;border:solid black 1.0pt;border-left:
  none;mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  background:#B3B3B3;padding:0cm 5.4pt 0cm 5.4pt;height:20.75pt'>
  <p class=MsoNormal align=center style='text-align:center'><span lang=KO
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;text-transform:
  uppercase;letter-spacing:.1pt'>说</span><span lang=KO style='font-size:10.5pt;
  font-family:宋体;mso-bidi-font-family:Dotum;text-transform:uppercase;
  letter-spacing:.1pt'>明</span><span lang=EN-US style='font-size:10.5pt;
  font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:.1pt'><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:1;page-break-inside:avoid;height:18.35pt'>
  <td width=83 style='width:62.5pt;border-top:none;border-left:solid black 1.0pt;
  border-bottom:solid black 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  mso-border-right-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:18.35pt'>
  <p class=MsoNormal align=center style='text-align:center'><span lang=EN-US
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>uid<o:p></o:p></span></p>
  </td>
  <td width=87 style='width:65.4pt;border-top:none;border-left:none;border-bottom:
  solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:solid black .75pt;
  mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:18.35pt'>
  <p class=MsoNormal><span style='font-size:10.5pt;font-family:宋体;mso-ascii-font-family:
  Verdana;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>用户账号</span><span
  lang=EN-US style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;
  letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p></o:p></span></p>
  </td>
  <td width=388 style='width:291.15pt;border-top:none;border-left:none;
  border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:
  solid black .75pt;mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:18.35pt'>
  <p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
  mso-bidi-font-family:Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:2;mso-yfti-lastrow:yes;page-break-inside:avoid;
  height:22.9pt'>
  <td width=83 style='width:62.5pt;border-top:none;border-left:solid black 1.0pt;
  border-bottom:solid black 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  mso-border-right-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:22.9pt'>
  <p class=MsoNormal align=center style='text-align:center'><span lang=EN-US
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>pwd<o:p></o:p></span></p>
  </td>
  <td width=87 style='width:65.4pt;border-top:none;border-left:none;border-bottom:
  solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:solid black .75pt;
  mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:22.9pt'>
  <p class=MsoNormal><span style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
  Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>用户密</span><span
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>码</span><span lang=EN-US style='font-size:
  10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:.1pt;
  mso-fareast-language:ZH-CN'><o:p></o:p></span></p>
  </td>
  <td width=388 style='width:291.15pt;border-top:none;border-left:none;
  border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:
  solid black .75pt;mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:22.9pt'>
  <p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
  mso-bidi-font-family:Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>32</span><span
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>位<span lang=EN-US>MD5</span>加密<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
</table>

</div>

<p class=MsoNormal><b style='mso-bidi-font-weight:normal'><span lang=EN-US
style='font-size:10.5pt;mso-fareast-font-family:宋体;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal><b style='mso-bidi-font-weight:normal'><span
style='font-size:10.5pt;font-family:宋体;mso-ascii-font-family:Batang;mso-hansi-font-family:
"Times New Roman";letter-spacing:.1pt;mso-fareast-language:ZH-CN'>例</span></b><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:10.5pt;
mso-fareast-font-family:宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>:<o:p></o:p></span></b></p>

<p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
style='font-size:10.5pt;mso-fareast-font-family:宋体;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'><a
href="http://http.c123.com/mm/?uid=9999&amp;pwd=fa246d0262c3925617b0c72bb20eeb1d">http://api.sms.cn/mm/?uid=<span
style='font-size:10.0pt;mso-bidi-font-size:12.0pt'>test</span>&amp;pwd=fa246d0262c3925617b0c72bb20eeb1d</a>
<o:p></o:p></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><br>
</span><span lang=KO style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
宋体;letter-spacing:.1pt'>响应</span><span style='font-size:10.5pt;font-family:
宋体;mso-bidi-font-family:宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>结果</span><span
lang=KO style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;
letter-spacing:.1pt'>为纯文本：</span><span lang=EN-US style='font-family:"Arial","sans-serif";
mso-fareast-language:ZH-CN'><o:p></o:p></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>sms&amp;stat=</span><span
style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
.1pt;mso-fareast-language:ZH-CN'>状态码<span lang=EN-US>&amp;remain=</span>剩余可发短信<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><br
style='mso-special-character:line-break'>
<![if !supportLineBreakNewLine]><br style='mso-special-character:line-break'>
<![endif]><o:p></o:p></span></p>

<p class=MsoNormal><b style='mso-bidi-font-weight:normal'><span
style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;letter-spacing:
.1pt;mso-fareast-language:ZH-CN'>例</span></b><b style='mso-bidi-font-weight:
normal'><span lang=KO style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
宋体;letter-spacing:.1pt'>响应</span></b><b style='mso-bidi-font-weight:normal'><span
style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;letter-spacing:
.1pt;mso-fareast-language:ZH-CN'>结果值</span></b><b style='mso-bidi-font-weight:
normal'><span lang=EN-US style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>:<o:p></o:p></span></b></p>

<p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>sms&amp;stat=100&amp;remain=100<o:p></o:p></span></p>

<p class=MsoNormal style='mso-outline-level:1'><a name="_Toc357868065"></a><a
name="_Toc264911966"><span style='mso-bookmark:_Toc357868065'><b
style='mso-bidi-font-weight:normal'><span style='font-size:14.0pt;font-family:
宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>八、取已发送总条数</span></b></span></a><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:14.0pt;
font-family:宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p></o:p></span></b></p>

<p class=MsoNormal style='text-indent:24.4pt;mso-char-indent-count:2.0'><span
style='font-size:12.0pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
.1pt;mso-fareast-language:ZH-CN'>操作格式：<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:24.4pt;mso-char-indent-count:2.0'><span
lang=EN-US style='font-size:12.0pt;font-family:宋体;mso-bidi-font-family:Arial;
letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='text-indent:24.4pt;mso-char-indent-count:2.28'><span
lang=EN-US style='font-size:10.5pt;mso-fareast-font-family:宋体;letter-spacing:
.1pt;mso-fareast-language:ZH-CN'>http://api.sms.cn/mm/?uid=</span><span
style='font-size:10.5pt;font-family:宋体;mso-ascii-font-family:Verdana;
letter-spacing:.1pt;mso-fareast-language:ZH-CN'>用户账号</span><span lang=EN-US
style='font-size:10.5pt;mso-fareast-font-family:宋体;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'>&amp;pwd=MD5</span><span style='font-size:10.5pt;
font-family:宋体;mso-ascii-font-family:Batang;mso-hansi-font-family:"Times New Roman";
letter-spacing:.1pt;mso-fareast-language:ZH-CN'>位</span><span lang=EN-US
style='font-size:10.5pt;mso-fareast-font-family:宋体;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'>32</span><span style='font-size:10.5pt;font-family:
宋体;mso-ascii-font-family:Batang;mso-hansi-font-family:"Times New Roman";
letter-spacing:.1pt;mso-fareast-language:ZH-CN'>密码</span><span lang=EN-US
style='font-size:10.5pt;mso-fareast-font-family:宋体;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'>&amp;cmd=send<o:p></o:p></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;mso-fareast-font-family:
宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal><span style='font-size:10.5pt;font-family:宋体;mso-ascii-font-family:
Batang;mso-hansi-font-family:"Times New Roman";letter-spacing:.1pt;mso-fareast-language:
ZH-CN'>接口参数说明</span><span lang=EN-US style='font-size:10.5pt;mso-fareast-font-family:
宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>:<o:p></o:p></span></p>

<div align=center>

<table class=MsoNormalTable border=1 cellspacing=0 cellpadding=0 width=559
 style='width:419.05pt;border-collapse:collapse;border:none;mso-border-alt:
 solid black .75pt;mso-yfti-tbllook:63;mso-padding-alt:0cm 5.4pt 0cm 5.4pt;
 mso-border-insideh:.75pt solid black;mso-border-insidev:.75pt solid black'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;page-break-inside:avoid;
  height:20.75pt'>
  <td width=83 style='width:62.5pt;border:solid black 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-alt:solid black .75pt;mso-border-right-alt:solid windowtext .5pt;
  background:#B3B3B3;padding:0cm 5.4pt 0cm 5.4pt;height:20.75pt'>
  <p class=MsoNormal align=center style='text-align:center'><span
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;text-transform:
  uppercase;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>参数</span><span
  lang=EN-US style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;
  text-transform:uppercase;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p></o:p></span></p>
  </td>
  <td width=87 style='width:65.4pt;border:solid black 1.0pt;border-left:none;
  mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  background:#B3B3B3;padding:0cm 5.4pt 0cm 5.4pt;height:20.75pt'>
  <p class=MsoNormal align=center style='text-align:center'><span
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;text-transform:
  uppercase;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>参数字段名</span><span
  lang=EN-US style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;
  letter-spacing:.1pt'><o:p></o:p></span></p>
  </td>
  <td width=388 style='width:291.15pt;border:solid black 1.0pt;border-left:
  none;mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  background:#B3B3B3;padding:0cm 5.4pt 0cm 5.4pt;height:20.75pt'>
  <p class=MsoNormal align=center style='text-align:center'><span lang=KO
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;text-transform:
  uppercase;letter-spacing:.1pt'>说</span><span lang=KO style='font-size:10.5pt;
  font-family:宋体;mso-bidi-font-family:Dotum;text-transform:uppercase;
  letter-spacing:.1pt'>明</span><span lang=EN-US style='font-size:10.5pt;
  font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:.1pt'><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:1;page-break-inside:avoid;height:18.35pt'>
  <td width=83 style='width:62.5pt;border-top:none;border-left:solid black 1.0pt;
  border-bottom:solid black 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  mso-border-right-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:18.35pt'>
  <p class=MsoNormal align=center style='text-align:center'><span lang=EN-US
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>uid<o:p></o:p></span></p>
  </td>
  <td width=87 style='width:65.4pt;border-top:none;border-left:none;border-bottom:
  solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:solid black .75pt;
  mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:18.35pt'>
  <p class=MsoNormal><span style='font-size:10.5pt;font-family:宋体;mso-ascii-font-family:
  Verdana;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>用户账号</span><span
  lang=EN-US style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;
  letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p></o:p></span></p>
  </td>
  <td width=388 style='width:291.15pt;border-top:none;border-left:none;
  border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:
  solid black .75pt;mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:18.35pt'>
  <p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
  mso-bidi-font-family:Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:2;page-break-inside:avoid;height:22.9pt'>
  <td width=83 style='width:62.5pt;border-top:none;border-left:solid black 1.0pt;
  border-bottom:solid black 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  mso-border-right-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:22.9pt'>
  <p class=MsoNormal align=center style='text-align:center'><span lang=EN-US
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>pwd<o:p></o:p></span></p>
  </td>
  <td width=87 style='width:65.4pt;border-top:none;border-left:none;border-bottom:
  solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:solid black .75pt;
  mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:22.9pt'>
  <p class=MsoNormal><span style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
  Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>用户密</span><span
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>码</span><span lang=EN-US style='font-size:
  10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:.1pt;
  mso-fareast-language:ZH-CN'><o:p></o:p></span></p>
  </td>
  <td width=388 style='width:291.15pt;border-top:none;border-left:none;
  border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:
  solid black .75pt;mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:22.9pt'>
  <p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
  mso-bidi-font-family:Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>32</span><span
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>位<span lang=EN-US>MD5</span>加密<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:3;mso-yfti-lastrow:yes;page-break-inside:avoid;
  height:22.9pt'>
  <td width=83 style='width:62.5pt;border-top:none;border-left:solid black 1.0pt;
  border-bottom:solid black 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  mso-border-right-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:22.9pt'>
  <p class=MsoNormal align=center style='text-align:center'><span lang=EN-US
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>cmd<o:p></o:p></span></p>
  </td>
  <td width=87 style='width:65.4pt;border-top:none;border-left:none;border-bottom:
  solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:solid black .75pt;
  mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:22.9pt'>
  <p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
  mso-bidi-font-family:Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>send<o:p></o:p></span></p>
  </td>
  <td width=388 style='width:291.15pt;border-top:none;border-left:none;
  border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:
  solid black .75pt;mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:22.9pt'>
  <p class=MsoNormal><span style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
  Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>取已发送条数<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
</table>

</div>

<p class=MsoNormal><b style='mso-bidi-font-weight:normal'><span lang=EN-US
style='font-size:10.5pt;mso-fareast-font-family:宋体;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal><b style='mso-bidi-font-weight:normal'><span
style='font-size:10.5pt;font-family:宋体;mso-ascii-font-family:Batang;mso-hansi-font-family:
"Times New Roman";letter-spacing:.1pt;mso-fareast-language:ZH-CN'>例</span></b><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:10.5pt;
mso-fareast-font-family:宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>:<o:p></o:p></span></b></p>

<p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
style='font-size:10.5pt;mso-fareast-font-family:宋体;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'>http://api.sms.cn/mm/?uid=</span><span lang=EN-US
style='mso-fareast-font-family:宋体;letter-spacing:.1pt;mso-fareast-language:
ZH-CN'>test</span><span lang=EN-US style='font-size:10.5pt;mso-fareast-font-family:
宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>&amp;pwd=fa246d0262c3925617b0c72bb20eeb1d&amp;cmd=send
<o:p></o:p></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><br>
</span><span lang=KO style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
宋体;letter-spacing:.1pt'>响应</span><span style='font-size:10.5pt;font-family:
宋体;mso-bidi-font-family:宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>结果</span><span
lang=KO style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;
letter-spacing:.1pt'>为纯文本：</span><span lang=EN-US style='font-family:"Arial","sans-serif";
mso-fareast-language:ZH-CN'><o:p></o:p></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>sms&amp;stat=</span><span
style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
.1pt;mso-fareast-language:ZH-CN'>状态码<span lang=EN-US>&amp;remain=</span>已发短信<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><br
style='mso-special-character:line-break'>
<![if !supportLineBreakNewLine]><br style='mso-special-character:line-break'>
<![endif]><o:p></o:p></span></p>

<p class=MsoNormal><b style='mso-bidi-font-weight:normal'><span
style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;letter-spacing:
.1pt;mso-fareast-language:ZH-CN'>例</span></b><b style='mso-bidi-font-weight:
normal'><span lang=KO style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
宋体;letter-spacing:.1pt'>响应</span></b><b style='mso-bidi-font-weight:normal'><span
style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;letter-spacing:
.1pt;mso-fareast-language:ZH-CN'>结果值</span></b><b style='mso-bidi-font-weight:
normal'><span lang=EN-US style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>:<o:p></o:p></span></b></p>

<p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>sms&amp;stat=100&amp;remain=100<o:p></o:p></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:Arial;color:#99CC00;letter-spacing:.1pt;mso-fareast-language:
ZH-CN'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='mso-outline-level:1'><a name="_Toc357868066"><b
style='mso-bidi-font-weight:normal'><span style='font-size:14.0pt;font-family:
宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>九、接口安全（绑定<span lang=EN-US>IP</span>）</span></b></a><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:14.0pt;
font-family:宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p></o:p></span></b></p>

<p class=MsoNormal><span style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>为了接口更加的安全，请登录<span
lang=EN-US>WEB</span>平台在“系统设置”中绑定你服务器的<span lang=EN-US>IP</span>地址，可绑定<span
lang=EN-US>10</span>个固定<span lang=EN-US>IP,</span>绑定<span lang=EN-US>IP</span>后只有通过你的服务器来发送短信，防止他人使用<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal><b style='mso-bidi-font-weight:normal'><span lang=EN-US
style='font-size:14.0pt;font-family:宋体;letter-spacing:.1pt;mso-fareast-language:
ZH-CN'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal style='mso-outline-level:1'><a name="_Toc357868067"><b
style='mso-bidi-font-weight:normal'><span style='font-size:14.0pt;font-family:
宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>十、取发送记录</span></b></a><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:14.0pt;
font-family:宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p></o:p></span></b></p>

<p class=MsoNormal style='text-indent:24.4pt;mso-char-indent-count:2.0'><span
style='font-size:12.0pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
.1pt;mso-fareast-language:ZH-CN'>操作的格式：<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:24.4pt;mso-char-indent-count:2.28'><span
lang=EN-US style='font-size:10.5pt;mso-fareast-font-family:宋体;letter-spacing:
.1pt;mso-fareast-language:ZH-CN'>http://api.sms.cn/rd/?uid=</span><span
style='font-size:10.5pt;font-family:宋体;mso-ascii-font-family:Verdana;
letter-spacing:.1pt;mso-fareast-language:ZH-CN'>用户账号</span><span lang=EN-US
style='font-size:10.5pt;mso-fareast-font-family:宋体;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'>&amp;pwd=MD532</span><span style='font-size:10.5pt;
font-family:宋体;mso-ascii-font-family:Batang;mso-hansi-font-family:"Times New Roman";
letter-spacing:.1pt;mso-fareast-language:ZH-CN'>位密码</span><span lang=EN-US
style='font-size:10.5pt;mso-fareast-font-family:宋体;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'>&amp;page=1<o:p></o:p></span></p>

<p class=MsoNormal><span style='font-size:10.5pt;font-family:宋体;mso-ascii-font-family:
Batang;mso-hansi-font-family:"Times New Roman";letter-spacing:.1pt;mso-fareast-language:
ZH-CN'>接口参数说明</span><span lang=EN-US style='font-size:10.5pt;mso-fareast-font-family:
宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>:</span><span
style='font-size:10.5pt;font-family:宋体;mso-ascii-font-family:Batang;mso-hansi-font-family:
"Times New Roman";letter-spacing:.1pt;mso-fareast-language:ZH-CN'>每次最多取</span><span
lang=EN-US style='font-size:10.5pt;mso-fareast-font-family:宋体;letter-spacing:
.1pt;mso-fareast-language:ZH-CN'>50</span><span style='font-size:10.5pt;
font-family:宋体;mso-ascii-font-family:Batang;mso-hansi-font-family:"Times New Roman";
letter-spacing:.1pt;mso-fareast-language:ZH-CN'>条记录，可以根据页数依次取完</span><span
lang=EN-US style='font-size:10.5pt;mso-fareast-font-family:宋体;letter-spacing:
.1pt;mso-fareast-language:ZH-CN'><o:p></o:p></span></p>

<div align=center>

<table class=MsoNormalTable border=1 cellspacing=0 cellpadding=0 width=559
 style='width:419.05pt;border-collapse:collapse;border:none;mso-border-alt:
 solid black .75pt;mso-yfti-tbllook:63;mso-padding-alt:0cm 5.4pt 0cm 5.4pt;
 mso-border-insideh:.75pt solid black;mso-border-insidev:.75pt solid black'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;page-break-inside:avoid;
  height:20.75pt'>
  <td width=83 style='width:62.5pt;border:solid black 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-alt:solid black .75pt;mso-border-right-alt:solid windowtext .5pt;
  background:#B3B3B3;padding:0cm 5.4pt 0cm 5.4pt;height:20.75pt'>
  <p class=MsoNormal align=center style='text-align:center'><span
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;text-transform:
  uppercase;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>参数</span><span
  lang=EN-US style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;
  text-transform:uppercase;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p></o:p></span></p>
  </td>
  <td width=87 style='width:65.4pt;border:solid black 1.0pt;border-left:none;
  mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  background:#B3B3B3;padding:0cm 5.4pt 0cm 5.4pt;height:20.75pt'>
  <p class=MsoNormal align=center style='text-align:center'><span
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;text-transform:
  uppercase;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>参数字段名</span><span
  lang=EN-US style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;
  letter-spacing:.1pt'><o:p></o:p></span></p>
  </td>
  <td width=388 style='width:291.15pt;border:solid black 1.0pt;border-left:
  none;mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  background:#B3B3B3;padding:0cm 5.4pt 0cm 5.4pt;height:20.75pt'>
  <p class=MsoNormal align=center style='text-align:center'><span lang=KO
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;text-transform:
  uppercase;letter-spacing:.1pt'>说</span><span lang=KO style='font-size:10.5pt;
  font-family:宋体;mso-bidi-font-family:Dotum;text-transform:uppercase;
  letter-spacing:.1pt'>明</span><span lang=EN-US style='font-size:10.5pt;
  font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:.1pt'><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:1;page-break-inside:avoid;height:18.35pt'>
  <td width=83 style='width:62.5pt;border-top:none;border-left:solid black 1.0pt;
  border-bottom:solid black 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  mso-border-right-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:18.35pt'>
  <p class=MsoNormal align=center style='text-align:center'><span lang=EN-US
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>uid<o:p></o:p></span></p>
  </td>
  <td width=87 style='width:65.4pt;border-top:none;border-left:none;border-bottom:
  solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:solid black .75pt;
  mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:18.35pt'>
  <p class=MsoNormal><span style='font-size:10.5pt;font-family:宋体;mso-ascii-font-family:
  Verdana;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>用户账号</span><span
  lang=EN-US style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;
  letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p></o:p></span></p>
  </td>
  <td width=388 style='width:291.15pt;border-top:none;border-left:none;
  border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:
  solid black .75pt;mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:18.35pt'>
  <p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
  mso-bidi-font-family:Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:2;page-break-inside:avoid;height:22.9pt'>
  <td width=83 style='width:62.5pt;border-top:none;border-left:solid black 1.0pt;
  border-bottom:solid black 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  mso-border-right-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:22.9pt'>
  <p class=MsoNormal align=center style='text-align:center'><span lang=EN-US
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>pwd<o:p></o:p></span></p>
  </td>
  <td width=87 style='width:65.4pt;border-top:none;border-left:none;border-bottom:
  solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:solid black .75pt;
  mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:22.9pt'>
  <p class=MsoNormal><span style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
  Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>用户密</span><span
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>码</span><span lang=EN-US style='font-size:
  10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:.1pt;
  mso-fareast-language:ZH-CN'><o:p></o:p></span></p>
  </td>
  <td width=388 style='width:291.15pt;border-top:none;border-left:none;
  border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:
  solid black .75pt;mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:22.9pt'>
  <p class=MsoNormal><span style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
  Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>小</span><span
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>写</span><span lang=EN-US style='font-size:
  10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:.1pt;
  mso-fareast-language:ZH-CN'>32</span><span style='font-size:10.5pt;
  font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:.1pt;mso-fareast-language:
  ZH-CN'>位<span lang=EN-US>MD5</span>加密<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:3;page-break-inside:avoid;height:22.9pt'>
  <td width=83 style='width:62.5pt;border-top:none;border-left:solid black 1.0pt;
  border-bottom:solid black 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  mso-border-right-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:22.9pt'>
  <p class=MsoNormal align=center style='text-align:center'><span lang=EN-US
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>page<o:p></o:p></span></p>
  </td>
  <td width=87 style='width:65.4pt;border-top:none;border-left:none;border-bottom:
  solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:solid black .75pt;
  mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:22.9pt'>
  <p class=MsoNormal><span style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
  Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>页数<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=388 style='width:291.15pt;border-top:none;border-left:none;
  border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:
  solid black .75pt;mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:22.9pt'>
  <p class=MsoNormal><span style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:
  Arial;color:#333333;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>可选项，</span><span
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>取第多少页记录<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:4;page-break-inside:avoid;height:22.9pt'>
  <td width=83 style='width:62.5pt;border-top:none;border-left:solid black 1.0pt;
  border-bottom:solid black 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  mso-border-right-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:22.9pt'>
  <p class=MsoNormal align=center style='text-align:center'><span lang=EN-US
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>date<o:p></o:p></span></p>
  </td>
  <td width=87 style='width:65.4pt;border-top:none;border-left:none;border-bottom:
  solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:solid black .75pt;
  mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:22.9pt'>
  <p class=MsoNormal><span style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
  Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>日期<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=388 style='width:291.15pt;border-top:none;border-left:none;
  border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:
  solid black .75pt;mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:22.9pt'>
  <p class=MsoNormal><span style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:
  Arial;color:#333333;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>可选项，</span><span
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>取指定日期记录（<span lang=EN-US>2012-12-12</span>）<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:5;page-break-inside:avoid;height:22.9pt'>
  <td width=83 style='width:62.5pt;border-top:none;border-left:solid black 1.0pt;
  border-bottom:solid black 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  mso-border-right-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:22.9pt'>
  <p class=MsoNormal align=center style='text-align:center'><span lang=EN-US
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>key<o:p></o:p></span></p>
  </td>
  <td width=87 style='width:65.4pt;border-top:none;border-left:none;border-bottom:
  solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:solid black .75pt;
  mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:22.9pt'>
  <p class=MsoNormal><span style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
  Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>查询号码<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=388 style='width:291.15pt;border-top:none;border-left:none;
  border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:
  solid black .75pt;mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:22.9pt'>
  <p class=MsoNormal><span style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:
  Arial;color:#333333;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>可选项，</span><span
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>取指定手机号记录<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:6;mso-yfti-lastrow:yes;page-break-inside:avoid;
  height:22.9pt'>
  <td width=83 style='width:62.5pt;border-top:none;border-left:solid black 1.0pt;
  border-bottom:solid black 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  mso-border-right-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:22.9pt'>
  <p class=MsoNormal align=center style='text-align:center'><span lang=EN-US
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>encode<o:p></o:p></span></p>
  </td>
  <td width=87 style='width:65.4pt;border-top:none;border-left:none;border-bottom:
  solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:solid black .75pt;
  mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:22.9pt'>
  <p class=MsoNormal><span style='font-size:10.5pt;font-family:宋体;mso-ascii-font-family:
  Verdana;mso-hansi-font-family:Verdana;color:gray;mso-fareast-language:ZH-CN'>字符编码</span><span
  lang=EN-US style='font-size:10.5pt;font-family:"Verdana","sans-serif";
  mso-fareast-font-family:宋体;color:gray;mso-fareast-language:ZH-CN'><o:p></o:p></span></p>
  </td>
  <td width=388 style='width:291.15pt;border-top:none;border-left:none;
  border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:
  solid black .75pt;mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:22.9pt'>
  <p class=MsoNormal><span style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:
  Arial;color:#333333;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>可选项，</span><span
  style='font-size:9.0pt;font-family:宋体;color:#333333;letter-spacing:.1pt;
  mso-fareast-language:ZH-CN'>默认接收</span><span lang=KO style='font-size:9.0pt;
  font-family:宋体;mso-bidi-font-family:宋体;color:#333333;letter-spacing:.1pt'>数</span><span
  style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:宋体;color:#333333;
  letter-spacing:.1pt;mso-fareast-language:ZH-CN'>据是</span><span lang=EN-US
  style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:宋体;color:#333333;
  letter-spacing:.1pt'>GBK</span><span lang=KO style='font-size:9.0pt;
  font-family:宋体;mso-bidi-font-family:宋体;color:#333333;letter-spacing:.1pt'>编码</span><span
  lang=EN-US style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:宋体;
  color:#333333;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>,</span><span
  style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:宋体;color:#333333;
  letter-spacing:.1pt;mso-fareast-language:ZH-CN'>如提交的是<span lang=EN-US>UTF-8</span></span><span
  style='font-size:9.0pt;font-family:宋体;color:#333333;letter-spacing:.1pt;
  mso-fareast-language:ZH-CN'>编码字符</span><span lang=EN-US style='font-size:
  9.0pt;font-family:宋体;mso-bidi-font-family:宋体;color:#333333;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>,</span><span style='font-size:9.0pt;
  font-family:宋体;mso-bidi-font-family:宋体;color:#333333;letter-spacing:.1pt;
  mso-fareast-language:ZH-CN'>需要添加参数<span lang=EN-US> encode=utf8</span></span><span
  lang=EN-US style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:Arial;
  color:#333333;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p></o:p></span></p>
  </td>
 </tr>
</table>

</div>

<p class=MsoNormal><b style='mso-bidi-font-weight:normal'><span lang=EN-US
style='font-size:10.5pt;mso-fareast-font-family:宋体;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal><b style='mso-bidi-font-weight:normal'><span
style='font-size:10.5pt;font-family:宋体;mso-ascii-font-family:Batang;mso-hansi-font-family:
"Times New Roman";letter-spacing:.1pt;mso-fareast-language:ZH-CN'>例</span></b><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:10.5pt;
mso-fareast-font-family:宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>:<o:p></o:p></span></b></p>

<p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
style='font-size:10.5pt;mso-fareast-font-family:宋体;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'><a
href="http://api.sms7.cn/rx/?uid=test&amp;pwd=fa246d0262c3925617b0c72bb20eeb1d">http://api.sms.cn/rd/?uid=<span
style='font-size:10.0pt;mso-bidi-font-size:12.0pt'>test</span>&amp;pwd=b9887c5ebb23ebb294acab183ecf0769</a>
</span><span lang=EN-US style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><br>
</span><span lang=KO style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
宋体;letter-spacing:.1pt'>响应</span><span style='font-size:10.5pt;font-family:
宋体;mso-bidi-font-family:宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>结果</span><span
lang=KO style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;
letter-spacing:.1pt'>为纯文本</span><span lang=EN-US style='font-size:10.5pt;
font-family:宋体;mso-bidi-font-family:宋体;letter-spacing:.1pt;mso-fareast-language:
ZH-CN'>,</span><span style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>每记录用“<span lang=EN-US>|#|</span>”隔开，每个字段之间用“<span
lang=EN-US>||</span>”<span lang=EN-US>;</span></span><span lang=EN-US
style='font-size:10.5pt;mso-fareast-font-family:宋体;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'><o:p></o:p></span></p>

<p class=MsoNormal><span style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>返回如下格式：<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal><span style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>总记录数<span lang=EN-US>||</span>当前记录数<span
lang=EN-US>||</span>总页数<span lang=EN-US>|#|</span>发送</span><span
style='mso-bidi-font-size:10.0pt;font-family:宋体;mso-ascii-font-family:Verdana;
mso-hansi-font-family:Verdana;mso-bidi-font-family:宋体;mso-font-kerning:0pt;
mso-ansi-language:ZH-CN;mso-fareast-language:ZH-CN'>时间</span><span
style='mso-bidi-font-size:10.0pt;font-family:"Verdana","sans-serif";mso-fareast-font-family:
宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;mso-ansi-language:ZH-CN;
mso-fareast-language:ZH-CN'>||</span><span style='mso-bidi-font-size:10.0pt;
font-family:宋体;mso-ascii-font-family:Verdana;mso-hansi-font-family:Verdana;
mso-bidi-font-family:宋体;mso-font-kerning:0pt;mso-ansi-language:ZH-CN;
mso-fareast-language:ZH-CN'>号码</span><span style='mso-bidi-font-size:10.0pt;
font-family:"Verdana","sans-serif";mso-fareast-font-family:宋体;mso-bidi-font-family:
宋体;mso-font-kerning:0pt;mso-ansi-language:ZH-CN;mso-fareast-language:ZH-CN'>||</span><span
style='mso-bidi-font-size:10.0pt;font-family:宋体;mso-ascii-font-family:Verdana;
mso-hansi-font-family:Verdana;mso-bidi-font-family:宋体;mso-font-kerning:0pt;
mso-ansi-language:ZH-CN;mso-fareast-language:ZH-CN'>内容</span><span
style='mso-bidi-font-size:10.0pt;font-family:"Verdana","sans-serif";mso-fareast-font-family:
宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;mso-ansi-language:ZH-CN;
mso-fareast-language:ZH-CN'>||</span><span style='mso-bidi-font-size:10.0pt;
font-family:宋体;mso-ascii-font-family:Verdana;mso-hansi-font-family:Verdana;
mso-bidi-font-family:宋体;mso-font-kerning:0pt;mso-ansi-language:ZH-CN;
mso-fareast-language:ZH-CN'>状态</span><span lang=EN-US style='font-size:10.5pt;
font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:.1pt;mso-fareast-language:
ZH-CN'>|#|</span><span style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>发送</span><span
style='mso-bidi-font-size:10.0pt;font-family:宋体;mso-ascii-font-family:Verdana;
mso-hansi-font-family:Verdana;mso-bidi-font-family:宋体;mso-font-kerning:0pt;
mso-ansi-language:ZH-CN;mso-fareast-language:ZH-CN'>时间</span><span
style='mso-bidi-font-size:10.0pt;font-family:"Verdana","sans-serif";mso-fareast-font-family:
宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;mso-ansi-language:ZH-CN;
mso-fareast-language:ZH-CN'>||</span><span style='mso-bidi-font-size:10.0pt;
font-family:宋体;mso-ascii-font-family:Verdana;mso-hansi-font-family:Verdana;
mso-bidi-font-family:宋体;mso-font-kerning:0pt;mso-ansi-language:ZH-CN;
mso-fareast-language:ZH-CN'>号码</span><span style='mso-bidi-font-size:10.0pt;
font-family:"Verdana","sans-serif";mso-fareast-font-family:宋体;mso-bidi-font-family:
宋体;mso-font-kerning:0pt;mso-ansi-language:ZH-CN;mso-fareast-language:ZH-CN'>||</span><span
style='mso-bidi-font-size:10.0pt;font-family:宋体;mso-ascii-font-family:Verdana;
mso-hansi-font-family:Verdana;mso-bidi-font-family:宋体;mso-font-kerning:0pt;
mso-ansi-language:ZH-CN;mso-fareast-language:ZH-CN'>内容</span><span
style='mso-bidi-font-size:10.0pt;font-family:"Verdana","sans-serif";mso-fareast-font-family:
宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;mso-ansi-language:ZH-CN;
mso-fareast-language:ZH-CN'>||</span><span style='mso-bidi-font-size:10.0pt;
font-family:宋体;mso-ascii-font-family:Verdana;mso-hansi-font-family:Verdana;
mso-bidi-font-family:宋体;mso-font-kerning:0pt;mso-ansi-language:ZH-CN;
mso-fareast-language:ZH-CN'>状态</span><span lang=EN-US style='font-size:10.5pt;
font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:.1pt;mso-fareast-language:
ZH-CN'>|#|</span><span style='mso-bidi-font-size:10.0pt;font-family:"Verdana","sans-serif";
mso-fareast-font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;
mso-ansi-language:ZH-CN;mso-fareast-language:ZH-CN'>…….</span><span lang=EN-US
style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
.1pt;mso-fareast-language:ZH-CN'><br>
<br>
</span><span style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;
letter-spacing:.1pt;mso-fareast-language:ZH-CN'>无回复内容时返回空<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:9.0pt;mso-fareast-font-family:
宋体;color:gray;mso-fareast-language:ZH-CN'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:9.0pt;mso-fareast-font-family:
宋体;color:gray;mso-fareast-language:ZH-CN'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:9.0pt;mso-fareast-font-family:
宋体;color:gray;mso-fareast-language:ZH-CN'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='mso-outline-level:1'><a name="_Toc357868068"><b
style='mso-bidi-font-weight:normal'><span style='font-size:14.0pt;font-family:
宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>十一、修改密码</span></b></a><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:14.0pt;
font-family:宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p></o:p></span></b></p>

<p class=MsoNormal style='text-indent:24.4pt;mso-char-indent-count:2.0'><span
style='font-size:12.0pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
.1pt;mso-fareast-language:ZH-CN'>操作的格式：<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='text-indent:24.4pt;mso-char-indent-count:2.28'><span
lang=EN-US style='font-size:10.5pt;mso-fareast-font-family:宋体;letter-spacing:
.1pt;mso-fareast-language:ZH-CN'>http://api.sms.cn/pw/?uid=</span><span
style='font-size:10.5pt;font-family:宋体;mso-ascii-font-family:Verdana;
letter-spacing:.1pt;mso-fareast-language:ZH-CN'>用户账号</span><span lang=EN-US
style='font-size:10.5pt;mso-fareast-font-family:宋体;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'>&amp;pwd=MD532</span><span style='font-size:10.5pt;
font-family:宋体;mso-ascii-font-family:Batang;mso-hansi-font-family:"Times New Roman";
letter-spacing:.1pt;mso-fareast-language:ZH-CN'>位旧密码</span><span lang=EN-US
style='font-size:10.5pt;mso-fareast-font-family:宋体;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'>&amp;newpwd=</span><span style='font-size:10.5pt;
font-family:宋体;mso-ascii-font-family:Batang;mso-hansi-font-family:"Times New Roman";
letter-spacing:.1pt;mso-fareast-language:ZH-CN'>新密码</span><span lang=EN-US
style='font-size:10.5pt;mso-fareast-font-family:宋体;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'><br style='mso-special-character:line-break'>
<![if !supportLineBreakNewLine]><br style='mso-special-character:line-break'>
<![endif]><o:p></o:p></span></p>

<div align=center>

<table class=MsoNormalTable border=1 cellspacing=0 cellpadding=0 width=559
 style='width:419.05pt;border-collapse:collapse;border:none;mso-border-alt:
 solid black .75pt;mso-yfti-tbllook:63;mso-padding-alt:0cm 5.4pt 0cm 5.4pt;
 mso-border-insideh:.75pt solid black;mso-border-insidev:.75pt solid black'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;page-break-inside:avoid;
  height:20.75pt'>
  <td width=83 style='width:62.5pt;border:solid black 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-alt:solid black .75pt;mso-border-right-alt:solid windowtext .5pt;
  background:#B3B3B3;padding:0cm 5.4pt 0cm 5.4pt;height:20.75pt'>
  <p class=MsoNormal align=center style='text-align:center'><span
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;text-transform:
  uppercase;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>参数</span><span
  lang=EN-US style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;
  text-transform:uppercase;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p></o:p></span></p>
  </td>
  <td width=87 style='width:65.4pt;border:solid black 1.0pt;border-left:none;
  mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  background:#B3B3B3;padding:0cm 5.4pt 0cm 5.4pt;height:20.75pt'>
  <p class=MsoNormal align=center style='text-align:center'><span
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;text-transform:
  uppercase;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>参数字段名</span><span
  lang=EN-US style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;
  letter-spacing:.1pt'><o:p></o:p></span></p>
  </td>
  <td width=388 style='width:291.15pt;border:solid black 1.0pt;border-left:
  none;mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  background:#B3B3B3;padding:0cm 5.4pt 0cm 5.4pt;height:20.75pt'>
  <p class=MsoNormal align=center style='text-align:center'><span lang=KO
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;text-transform:
  uppercase;letter-spacing:.1pt'>说</span><span lang=KO style='font-size:10.5pt;
  font-family:宋体;mso-bidi-font-family:Dotum;text-transform:uppercase;
  letter-spacing:.1pt'>明</span><span lang=EN-US style='font-size:10.5pt;
  font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:.1pt'><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:1;page-break-inside:avoid;height:18.35pt'>
  <td width=83 style='width:62.5pt;border-top:none;border-left:solid black 1.0pt;
  border-bottom:solid black 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  mso-border-right-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:18.35pt'>
  <p class=MsoNormal align=center style='text-align:center'><span lang=EN-US
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>uid<o:p></o:p></span></p>
  </td>
  <td width=87 style='width:65.4pt;border-top:none;border-left:none;border-bottom:
  solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:solid black .75pt;
  mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:18.35pt'>
  <p class=MsoNormal><span style='font-size:10.5pt;font-family:宋体;mso-ascii-font-family:
  Verdana;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>用户账号</span><span
  lang=EN-US style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;
  letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p></o:p></span></p>
  </td>
  <td width=388 style='width:291.15pt;border-top:none;border-left:none;
  border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:
  solid black .75pt;mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:18.35pt'>
  <p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
  mso-bidi-font-family:Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:2;page-break-inside:avoid;height:22.9pt'>
  <td width=83 style='width:62.5pt;border-top:none;border-left:solid black 1.0pt;
  border-bottom:solid black 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  mso-border-right-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:22.9pt'>
  <p class=MsoNormal align=center style='text-align:center'><span lang=EN-US
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>pwd<o:p></o:p></span></p>
  </td>
  <td width=87 style='width:65.4pt;border-top:none;border-left:none;border-bottom:
  solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:solid black .75pt;
  mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:22.9pt'>
  <p class=MsoNormal><span style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
  Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>用户密</span><span
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>码</span><span lang=EN-US style='font-size:
  10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:.1pt;
  mso-fareast-language:ZH-CN'><o:p></o:p></span></p>
  </td>
  <td width=388 style='width:291.15pt;border-top:none;border-left:none;
  border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:
  solid black .75pt;mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:22.9pt'>
  <p class=MsoNormal><span style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
  Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>小</span><span
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:宋体;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>写</span><span lang=EN-US style='font-size:
  10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:.1pt;
  mso-fareast-language:ZH-CN'>32</span><span style='font-size:10.5pt;
  font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:.1pt;mso-fareast-language:
  ZH-CN'>位<span lang=EN-US>MD5</span>加密<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:3;mso-yfti-lastrow:yes;page-break-inside:avoid;
  height:22.9pt'>
  <td width=83 style='width:62.5pt;border-top:none;border-left:solid black 1.0pt;
  border-bottom:solid black 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  mso-border-right-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:22.9pt'>
  <p class=MsoNormal align=center style='text-align:center'><span lang=EN-US
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'>newpwd<o:p></o:p></span></p>
  </td>
  <td width=87 style='width:65.4pt;border-top:none;border-left:none;border-bottom:
  solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:solid black .75pt;
  mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:22.9pt'>
  <p class=MsoNormal><span style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
  Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>新密码<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=388 style='width:291.15pt;border-top:none;border-left:none;
  border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;mso-border-top-alt:
  solid black .75pt;mso-border-left-alt:solid black .75pt;mso-border-alt:solid black .75pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:22.9pt'>
  <p class=MsoNormal><span style='font-size:9.0pt;font-family:宋体;mso-bidi-font-family:
  Arial;color:#333333;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>填写原始密码，如密码改成<span
  lang=EN-US>:123123 newpwd=123123</span></span><span lang=EN-US
  style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
  .1pt;mso-fareast-language:ZH-CN'><o:p></o:p></span></p>
  </td>
 </tr>
</table>

</div>

<p class=MsoNormal><b style='mso-bidi-font-weight:normal'><span lang=EN-US
style='font-size:10.5pt;mso-fareast-font-family:宋体;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal><b style='mso-bidi-font-weight:normal'><span
style='font-size:10.5pt;font-family:宋体;mso-ascii-font-family:Batang;mso-hansi-font-family:
"Times New Roman";letter-spacing:.1pt;mso-fareast-language:ZH-CN'>例</span></b><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:10.5pt;
mso-fareast-font-family:宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>:<o:p></o:p></span></b></p>

<p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
style='font-size:10.5pt;mso-fareast-font-family:宋体;letter-spacing:.1pt;
mso-fareast-language:ZH-CN'><a
href="http://api.sms7.cn/rx/?uid=test&amp;pwd=fa246d0262c3925617b0c72bb20eeb1d">http://api.sms.cn/pw/?uid=<span
style='font-size:10.0pt;mso-bidi-font-size:12.0pt'>test</span>&amp;pwd=b9887c5ebb23ebb294acab183ecf0769</a>&amp;newpwd=123123
</span><span lang=EN-US style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
宋体;letter-spacing:.1pt;mso-fareast-language:ZH-CN'><br style='mso-special-character:
line-break'>
<![if !supportLineBreakNewLine]><br style='mso-special-character:line-break'>
<![endif]><o:p></o:p></span></p>

<p class=MsoNormal><span lang=KO style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:宋体;letter-spacing:.1pt'>响应</span><span style='font-size:
10.5pt;font-family:宋体;mso-bidi-font-family:宋体;letter-spacing:.1pt;mso-fareast-language:
ZH-CN'>状态码值</span><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>: <o:p></o:p></span></p>

<p class=MsoNormal><span lang=EN-US style='mso-fareast-language:ZH-CN'>sms&amp;stat=100&amp;message=</span><span
style='mso-fareast-language:ZH-CN'>修改成功</span><span lang=EN-US
style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;letter-spacing:
.1pt;mso-fareast-language:ZH-CN'><br style='mso-special-character:line-break'>
<![if !supportLineBreakNewLine]><br style='mso-special-character:line-break'>
<![endif]><o:p></o:p></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:Arial;letter-spacing:.1pt;mso-fareast-language:ZH-CN'>stat
</span><span style='font-size:10.5pt;font-family:宋体;mso-bidi-font-family:Arial;
letter-spacing:.1pt;mso-fareast-language:ZH-CN'>状态码<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal><span lang=EN-US style='mso-fareast-language:ZH-CN'>message</span><span
lang=EN-US style='mso-fareast-font-family:宋体;mso-fareast-language:ZH-CN'> </span><span
style='font-family:宋体;mso-ascii-font-family:Batang;mso-hansi-font-family:"Times New Roman";
mso-fareast-language:ZH-CN'>状态说明</span><span lang=EN-US style='mso-fareast-font-family:
宋体;mso-fareast-language:ZH-CN'><o:p></o:p></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:9.0pt;mso-fareast-font-family:
宋体;color:gray;mso-fareast-language:ZH-CN'><o:p>&nbsp;</o:p></span></p>

</div>

</body>

</html>
