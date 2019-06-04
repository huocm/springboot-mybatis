<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="Error.jsp"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<title>金程健康_健康体检_全方位健康管理解决服务商</title>
    </head>
    <body>

    	<%@include file="header.jsp" %>		
    	
		<div class="list_banner" id="list_banner">
			<img src="<%=basePath %>images/sub_images/nban1.jpg"/>
		</div>
		<div class="list_banner_bg">
		<%  
		     String id = request.getParameter("id");
		     String cid =  request.getParameter("cid") ;
		     String tag = "";
		     
		     System.out.println("<br>------初始化;tag="+tag);
		     System.out.println("------初始化;id="+id);
		     System.out.println("------初始化;cid="+cid);	

		     if(id.equals("2")){
		    	 System.out.println("------进入条件;id="+id);
		    	 if(cid.equals("1")){
		    		 tag="患病风险评估"; 
		    	 }
		    	 //if(cid.equals("2")){
              	///	tag="心理健康评估";
		    	 //}
		    	 if(cid.equals("3")){
              		tag="中医体质评估";
		    	 }
		    	 if(cid.equals("4")){
              		tag="个性化运动评估";
              	 }
		    	 if(cid.equals("5")){
              		tag="膳食营养评估";
              	 }
              	if(cid==null|| cid.equals("")){
              		tag="健康评估";
              		cid="1";
              	 }
              	System.out.println("------进入条件;cid="+cid);
		     }
		     else
		     {
		    	 //out.println("<br>------进入条件;id="+id+";id==1?"+(id=="1"));
		    	 if(id.equals("1")){             
              		tag="健康档案";
              		//out.println("-----------------tag="+tag);
		    	 }
                 if(id.equals("2")){
              		tag="健康评估";
              		cid="1";
                 }
                 if(id.equals("3")){
              		tag="健康干预";
                 }
                 if(id.equals("4")){
              		tag="健康教育";
                 }
                 if(id.equals("5")){
              		tag="健康咨询";
                 }
                 if(id.equals("6")){
              		tag="私人医生";
                 }
                 if(id==null||id.equals("")){
              		tag="健康档案";
              		id="1";
                 }
              }
 //out.println("<br>;tag="+tag);
 //out.println(";id="+id);
 //out.println(";cid="+cid);
 
		 %>
			<span class="home"><a href="index.jsp">首页</a>><a href="management.jsp?id=1">健康管理</a>><a><%= tag%></a></span>
			<div class="midd">

				<div class="midd_lef">

					<h2>健康管理</h2>
					<div class="list_hr" style="float:left;">
					</div>

					<div class="lis">
											<span><a href="<%=basePath %>management.jsp?id=1">健康档案</a></span>
											<span><a href="<%=basePath %>management.jsp?id=2&cid=1">健康评估</a></span>
											<ul style="display:none" id="m3">
													<li style="list-style:none;"><a style="color:#336699;" id="lis_son" href="<%=basePath %>management.jsp?id=2&cid=1">患病风险评估</a></li>
													
													<li style="list-style:none;"><a style="color:#336699;" id="lis_son" href="<%=basePath %>management.jsp?id=2&cid=3">中医体质评估</a></li>
													<li style="list-style:none;"><a style="color:#336699;" id="lis_son" href="<%=basePath %>management.jsp?id=2&cid=4">个性化运动评估</a></li>
													<li style="list-style:none;"><a style="color:#336699;" id="lis_son" href="<%=basePath %>management.jsp?id=2&cid=5">膳食营养评估</a></li>
												</ul>
											<span><a href="<%=basePath %>management.jsp?id=3">健康干预</a></span>
											<span><a href="<%=basePath %>management.jsp?id=4">健康教育</a></span>
											<span><a href="<%=basePath %>management.jsp?id=5">健康咨询</a></span>
											<span><a href="<%=basePath %>management.jsp?id=6">私人医生</a></span>

					
					</div>
					<div class="list_hr2" style="float:right;">

					</div>
					<div id="clear"></div>
				</div>
				
				
				<div class="midd_right">
					<div class="midd_right_top">
						<span style="visibility:hidden">入职体检</span>
						<p><%=tag %></p>
					</div><br/>
				<div id="content1" class="midd_right_midd">
						<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  健康档案，是记录每个人从出生到死亡的所有生命体征的变化，以及自身所从事过的与健康相关的一切行为与事件的档案。具体的内容主要包括每个人的生活习惯、以往病史、诊治情况、家族病史、现病史、体检结果及疾病的发生、发展、治疗和转归的过程等。</p>

 <br>

     		<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  通过健康管理系统，为客户建立并保存完整的健康档案，以便动态观察身体健康状况。健康档案是自我保健不可缺少的医学资料，它记录了每个人疾病的发生、发展、治疗和转归的过程。通过比较一段时间来所检查的资料和数据，你可发现自己健康状况的变化，疾病发展趋向、治疗效果等情况，有利于下一步医疗保健的决策。为自己建立健康档案是一件既简便又有价值的事情，如果过去未重视这方面的工作，那么从现在开始积累和保存好医疗检查资料，逐渐完善健康档案。</p>
	<br>
	<img src="<%=basePath %>images/sub_images/13733324832745.jpg">
	<br>
	<br>
	<strong>建立健康档案的意义</strong>

      <p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  据初步估计，目前98%的人群都没有专业的、科学的、动态的、系统的、即刻的个性化电子档案，健全的健康档案对任何人都是至关重要的。档案包含健康与疾病两方面的，根据整体健康管理理念来设计的全面档案系统。</p>
<ol>
 <li>可以即刻查询的、动态的电子档案，无论您身在何地都可以随时查询。</li>  
  <li>具备个性的、隐私的、专属客户个人的非实名的电子档案。</li> 
  <li>全面采集、系统整理、专业分析的电子档案。</li> 
  <li>可以与您随时互动的，真正有重大价值的健康日志。</li> 
  <li>在任何地方就诊都可以应用的重要依据，为医疗行为提供进一步详实的参考。</li> 
  <li>指导帮助建立良好的生活习惯，有效完成生活方式五大基石的促进和维护。</li> 
 <li>长期连续的记载可以充分反映您整个健康趋势和治疗情况，以此为基础来评价全面健康状态。</li> 
</ol>
         基于以上原因，金程健康建立完善专业的全年动态健康档案，为客户的整体健康动态管理提供依据。 
<br>
 
<br>
<strong>健康档案的内容：</strong>
      <ol>
        <li> 历年体检报告</li>
        <li>病史资料（医院就诊记录和病历）</li>
        <li>实验室检查报告（各种化验单原件或者复印件）</li>
        <li>影像资料（包括CT、B超、摄片等）</li>
        <li>健康问卷</li>
        </ol>
</div>

<div id="content20"  class="midd_right_midd">
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  健康评估是健康管理服务中重要的一环，即通过收集与跟踪反映个人身体健康状况的各种信息，利用预测模型来确定参加者目前的健康状况及发展趋势，使参加者能了解是否有发生某种慢性病的危险性，以及和其它人相比，危险性有多大。然后，将根据疾病评估结果，针对健康危险因素为个人提供保持和改善健康的方法。帮助个人降低患慢性病的危险性，维持良好健康状态减少发病，提升生活质量。</p>
<br>
<table width="720" height="152" border="0" align="center" cellspacing="0" cellpadding="0">
	<tbody>
		<tr>
			<td width="195" height="35" bgcolor="#bbe8ef">
				<p align="center">
					<span style="font-size: 14px"><strong>在线健康评估涵盖</strong></span></p>
			</td>
			<td bgcolor="#bbe8ef">
				<p align="center">
					<span style="font-size: 14px"><strong>健康评估重要意义</strong></span></p>
			</td>
		</tr>
		<tr>
			<td width="195" height="35" bgcolor="#eeeeee">
				<p align="center">
					&nbsp;患病风险评估</p>
			</td>
			<td bgcolor="#eeeeee">
				<p>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;认识健康风险，最大程度避免重大疾病的发生</p>
			</td>
		</tr>
		<!-- 
		<tr>
			<td width="195" height="35" bgcolor="#e2e2e2">
				<p align="center">
					心理健康评估</p>
			</td>
			<td bgcolor="#e2e2e2">
				<p>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;给自己减压，让工作、人际、生活得到最佳平衡</p>
			</td>
		</tr>
		 -->
		<tr>
			<td width="195" height="35" bgcolor="#eeeeee">
				<p align="center">
					&nbsp;中医体质评估</p>
			</td>
			<td bgcolor="#eeeeee">
				<p>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;为疾病防治、养生、保健、康复提供依据</p>
			</td>
		</tr>
		<tr>
			<td width="195" height="35" bgcolor="#e2e2e2">
				<p align="center">
					&nbsp;膳食营养评估</p>
			</td>
			<td bgcolor="#e2e2e2">
				<p>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;合理膳食，吃出健康体质</p>
			</td>
		</tr>
		<tr>
			<td width="195" height="35" bgcolor="#eeeeee">
				<p align="center">
					&nbsp;个性运动评估</p>
			</td>
			<td bgcolor="#eeeeee">
				<p>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 制定个性化有氧运动处方，合理运动</p>
			</td>
		</tr>
	</tbody>
</table>
</div>

<div id="content21"  class="midd_right_midd">
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  全球公认最有效的降低患病风险方法---患病风险评估，体检指标正常≠健康，89.9%的用户在使用后，成功预防了癌症、心脏病、高血压等疾病。在中华预防医学会专家指导下，权威开发了此套疾病风险评估软件。</p>
<br>
<table width="720" cellspacing="1" cellpadding="1" bordercolor="#ffffff" border="1">
	<colgroup>
		<col width="265">
		<col width="283">
	</colgroup>
	<tbody>
		<tr height="50">
			<td height="50" bgcolor="#bbe8ef" align="center" colspan="2">
				<p>
					&nbsp;<strong><span style="font-size: 14px">患病风险评估</span></strong><br>
					（由中华预防医学会专家评估，共23页的评估报告 ）&nbsp;</p>
			</td>
		</tr>
		<tr height="39">
			<td width="360" height="39" bgcolor="#d0eed9" style="text-align: center">
				<strong>评估项目</strong></td>
			<td width="360" bgcolor="#d0eed9" style="text-align: center">
				<strong>报告结果</strong></td>
		</tr>
		<tr height="54">
			<td width="360" height="54" bgcolor="#eaeaea">
				<p>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 缺血性心血管疾病&nbsp; | &nbsp;糖尿病&nbsp; |&nbsp;&nbsp;肺癌&nbsp; |&nbsp;&nbsp;高血压&nbsp; |&nbsp;&nbsp;代谢综合征</p>
				<p>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 肥胖症&nbsp; |&nbsp;&nbsp;骨质疏松性骨折&nbsp; |&nbsp;&nbsp;前列腺癌&nbsp; |&nbsp;&nbsp;乳腺癌&nbsp; |&nbsp;&nbsp;血脂异常</p>
			</td>
			<td width="360" bgcolor="#eaeaea">
				<p>
					&nbsp;&nbsp;&nbsp;&nbsp;</p>
				<p>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;各项疾病风险评估报告&nbsp; |&nbsp;&nbsp;健康生活方式评价&nbsp; |&nbsp;&nbsp;体力水平评价</p>
				<p>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;个性化运动处方&nbsp; |&nbsp;&nbsp;个性化膳食处方&nbsp; |&nbsp;&nbsp;改善行动指南等</p>
				<p>
					&nbsp;</p>
			</td>
		</tr>
	</tbody>
</table>
<br>
<br>
<table width="450" height="80" align="left" cellspacing="0" cellpadding="0" border="0">
	<tbody>
		<tr>
			<td width="582" height="5">
				<strong>金程《患病风险评估报告》</strong></td>
			<td width="129">
				&nbsp;</td>
		</tr>
		<tr>
			<td valign="bottom" height="20">
				1、中华预防医学会健康风险评估与控制专业委员会权威指导。</td>
			<td valign="center" align="left" rowspan="2">
				<img src="<%=basePath %>images/sub_images/13728300528767.png" alt="" original="/uploads/ckfinder/images/20130703/13728300528767.png" style="display: inline;"></td>
		</tr>
		<tr>
			<td height="20">
				2、累计评估量已经达到数十万人。&nbsp;&nbsp;</td>
		</tr>
	</tbody>
</table>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<p><strong>评估报告样例</strong></p>
<p>
	<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img style="width: 531px; height: 499px; display: inline;" src="images/sub_images/13744795616933.jpg" alt=""></strong></p>
</div>

<div id="content3" class="midd_right_midd">
  <p>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  健康干预是对个体及群体的健康危险因素进行全面管理的过程。是变被动的疾病治疗为主动的管理健康，达到节约医疗费用支出、维护健康的目的；是从社会、心理、环境、营养、运动的角度来对每个人进行全面的健康保障服务，帮助、指导人们成功有效地把握与维护自身的健康。</p>
<br>

 <strong>生活方式健康干预</strong>
      <p>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  生活方式健康干预包括饮食结构、工作、睡眠、运动等诸多方面调整。过重的压力造成精神紧张，不良的生活习惯，如吸烟、过量饮酒、缺乏运动、过度劳累等，都是危害人体健康的不良因素。</p>
<br>
<strong>“生物—心理—社会医学模式”</strong>

       <p>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  现代医学研究表明，很多疾病的发病原因并不是生物因素，而是由不良的生活方式、心理因素、环境因素的综合影响所造成的。这种新的医学观念被称为“生物—心理—社会医学模式”，从健康干预方面来说，对人们的生活方式，心理因素，生活环境的科学调整，显得尤为重要。</p>
</div>

<div   id="content22"  class="midd_right_midd" >
						<h3>
	<strong><img style="width: 180px; float: right; height: 178px; display: block;" src="<%=basePath %>images/sub_images/13727294782595.jpg" alt=""></strong><span style="font-size: 12px"><strong>金程为您提供解决咨询和健康干预</strong></span></h3>
<p>
	&nbsp;</p>
<ul style="list-style-type: square">
	<li>
		&nbsp;应对突如其来的生活打击而造成的心理危机&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
	<li>
		&nbsp;恋爱、婚姻、家庭、就业等现实生活带来的烦恼</li>
	<li>
		&nbsp;心身疾病患者所具有的特殊行为模式的矫正和治疗</li>
	<li>
		&nbsp;酒和药物等物质依赖、不良生活习惯和非健康行为模式的矫正</li>
	<li>
		&nbsp;择业前对自己心理特点有一个全面的了解，使 自己的潜能得以更好地发挥</li>
	<li>
		&nbsp;当你感觉到自己的生活质量、目前状况不满意时</li>
</ul>
<p>
	&nbsp;</p>

</div>

<div id="content23"  class="midd_right_midd">
						<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong> </strong>中医体质是指人体生命过程中，在先天禀赋和后天获得的基础上所形成的形态结构、生理功能和心理状态方面综合的、相对稳定的固有特质。是人类在生长、发育过程中所形成的与自然、社会环境相适应的人体个体特征。</p>
<p>
	&nbsp;</p>
<p>
	<strong>中医体质评估的依据</strong></p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 中医体质学者经过近30年的研究，建立了体质辨识的标准化工具&mdash;&mdash;《中医体质分类与判定》，并应用该标准在全国范围进行了数十万例流行病学调查，显示出良好的实用性和可操作性。根据《中医体质分类与判定》标准而设计的中医体质评估系统，简明实用、可操作性强，符合医疗法规和法律要求。</p>
<p>
	&nbsp;</p>
<p>
	<strong>中医体质评估方法</strong></p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 本系统中医体质评估采用自助服务方式，用户在界面显示的体质辨识临床表现问卷条目中，自主选择符合自己症状的临床表现，最后由系统自动提示用户属于哪种体质，并说明该种体质的成因、特征、发病倾向以及体质养生方法。</p>
<p>
	&nbsp;</p>
<p>
	&nbsp;<strong>评估报告样例</strong></p>
<p>
	&nbsp;</p>
<p>
	<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img style="width: 532px; height: 695px; display: inline;" src="images/sub_images/13744848487112.jpg" alt="" original="/uploads/ckfinder/images/20130722/13744848487112.jpg"></strong></p>
<p>
	&nbsp;</p>

					</div>

<div id="content24" class="midd_right_midd">
						<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 随着人们生活水平的提高，大家愈来愈重视运动锻炼，运动健身人所共知。不同的人运动的目的不同，运动员运动是为了获奖，健康人运动是为了保持健康，肥胖人运动是为了瘦身，病人运动是为了康复。但我们发现，运动≠健康。美国每年约有100人因运动死亡，我国近几年运动猝死的人约200例。如何让运动=健康，这就需要运动前做健康评估，以便进行科学的运动。</p>
<p>
	&nbsp;</p>
<p>
	<strong>个性运动评估目的</strong></p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 运动评估有两个含义：第一是安全，第二是达到个性化的运动目的。前者需要在运动前做一次静态和动态的健康评估，以把运动风险降到最低；后者是要为不同的人制订一个运动处方。通过评估可以让我们了解到：每周运动的次数、每次运动的时间、运动的方式（有氧运动或无氧运动）以及运动的强度等方面。</p>
<p>
	&nbsp;</p>
<p>
	<strong>个性运动评估意义</strong></p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 评价个性化运动风险、制定运动处方，评价运动效果的作用。在运动健身、疾病康复中具有重要的应用价值。</p>
<p>
	&nbsp;<img style="width: 652px; height: 141px; display: inline;" src="<%=basePath %>images/sub_images/13741363668263.bmp" alt=""></p>
<p>
	&nbsp;</p>
<p>
	&nbsp;</p>
<p>
	<strong>评估报告样例</strong></p>
<p>
	&nbsp;</p>
<p>
	<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img style="width: 531px; height: 499px; display: inline;" src="images/sub_images/13744797588331.jpg" alt=""></strong></p>
<p>
	&nbsp;</p>
<p>
	&nbsp;</p>

					</div>

<div id="content25" class="midd_right_midd">
						<p>
	<strong>膳食营养评估目的</strong></p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 通过人的个性化循证医学取得机体健康状况、和各项体检指标依据，评价人的健康状况，根据《营养学》进行个性化营养状况评估、进行膳食设计、膳食配合比设计或配餐。调整不合理的膳食结构和生活饮食习惯，最终达到膳食平衡的目的。</p>
<p>
	&nbsp;</p>
<p>
	<strong>膳食营养管理方法</strong></p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 以先算后吃，机体评估缺啥就吃啥，差多少吃多少为原则。</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 健康体检→健康评估→饮食习惯评估→循证膳食评估→健康膳食结构设计→膳食配合比设计→膳食结构调整→膳食循证实施→保持质量记录。</p>
<p>
	可根据体质、健康状况和个性化需求每3-6个月一次循环。</p>
<p>
	&nbsp;</p>
<p>
	<strong>膳食营养评估意义</strong></p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 有目标、有计划地科学膳食搭配，不仅呵护健康、更能有的放矢预防多种常见危害人体健康的慢性病如糖尿病、冠心病等疾病的发生，提高生活质量是膳食营养评估的最终目的。</p>
<p>
	&nbsp;&nbsp;&nbsp;<img src="<%=basePath %>images/sub_images/13741365219883.bmp" alt="" style="display: inline;"></p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
<p>
	&nbsp;<strong>评估报告样例</strong></p>
<p>
	&nbsp;</p>
<p>
	<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/sub_images/13744809124162.jpg" alt=""  style="display: inline;"></strong></p>
<p>
	&nbsp;</p>
<p>
	&nbsp;</p>
<p>
	&nbsp;</p>
</div>

					
<div id="content4" class="midd_right_midd">
<p>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 金程拥有京沪穗深等地三甲医院临床一线专家和健康管理师团队，针对人群特点、日常生活习惯及工作环境，将深受欢迎的健康讲座主题分成十大板块和一百多个健康主题。</p>
<br>
<table width="740" border="0" cellspacing="0" cellpadding="0">
	<tbody>
		<tr>
			<td width="69">
				&nbsp;</td>
			<td width="198" align="center">
				<img src="<%=basePath %>images/sub_images/13728364001454.jpg"></td>
			<td width="128">
				<p style="text-align: center">
					<br>
					<strong>慢病管理</strong><br>
					<br>
					&nbsp;</p>
				<p style="text-align: center">
					<br>
					<strong>健康科普</strong><br>
					&nbsp;</p>
			</td>
			<td width="254">
				<p>
					慢性疾病的自我健康管理<br>
					糖尿病自我管理<br>
					三高人群自我保健<br>
					&nbsp;</p>
				<p>
					您的保健品“保健”吗？ &mdash; 如何正确选择保健品<br>
					“健康”和“事业”如何兼得？ &mdash; 金领健康宝典<br>
					环境变一变，健康多又多 &mdash; 健康风水</p>
			</td>
			<td width="69">
				&nbsp;</td>
		</tr>
		<tr>
			<td>
				-----------------</td>
			<td>
				--------------- --------------- ------------------</td>
			<td>
				--------------- ----------------</td>
			<td>
				--------------- --------------- --------------- -----------------</td>
			<td>
				-----------------</td>
		</tr>
		<tr>
			<td>
				&nbsp;</td>
			<td width="198" align="center">
				<img src="<%=basePath %>images/sub_images/13728364327526.jpg" style="display: inline;"></td>
			<td>
				<p style="text-align: center">
					<br>
					<strong>饮食营养</strong><br>
					<br>
					&nbsp;</p>
				<p style="text-align: center">
					<br>
					<strong>白领健康</strong><br>
					&nbsp;</p>
			</td>
			<td>
				<p>
					管住嘴、迈开腿<br>
					反季蔬菜该不该吃 &mdash; 日常饮食的学问<br>
					让我们把压力“吃掉” &mdash; 营养减压<br>
					&nbsp;</p>
				<p>
					办公室白领自我管理<br>
					办公室保健操 &mdash; 工间操<br>
					办公室环境与健康</p>
			</td>
			<td>
				&nbsp;</td>
		</tr>
		<tr>
			<td>
				-----------------</td>
			<td>
				--------------- --------------- ------------------</td>
			<td>
				--------------- ----------------</td>
			<td>
				--------------- --------------- --------------- -----------------</td>
			<td>
				-----------------</td>
		</tr>
		<tr>
			<td>
				&nbsp;</td>
			<td width="198" align="center">
				<img src="<%=basePath %>images/sub_images/13728364497608.jpg"  style="display: inline;"></td>
			<td>
				<p style="text-align: center">
					<br>
					<strong>运动健康<br>
					<br>
					&nbsp;</strong></p>
				<p style="text-align: center">
					<br>
					<strong>心理健康<br>
					&nbsp;</strong></p>
			</td>
			<td>
				<p>
					健康要你迈开腿<br>
					运动是把双刃剑，伤到自己怎么办？<br>
					健康造就人生，运动使人生更精彩<br>
					&nbsp;</p>
				<p>
					天天好心情可能么？ &mdash; 心理健康与压力管理<br>
					和“压力”赛跑 &mdash; 运动减压<br>
					关注情感关爱健康</p>
			</td>
			<td>
				&nbsp;</td>
		</tr>
		<tr>
			<td>
				-----------------</td>
			<td>
				--------------- --------------- ------------------</td>
			<td>
				--------------- ----------------</td>
			<td>
				--------------- --------------- --------------- -----------------</td>
			<td>
				-----------------</td>
		</tr>
		<tr>
			<td>
				&nbsp;</td>
			<td width="198" align="center">
				<img src="<%=basePath %>images/sub_images/13728364674092.jpg" style="display: inline;"></td>
			<td>
				<p style="text-align: center">
					<br>
					<strong>男性保健<br>
					<br>
					&nbsp;</strong></p>
				<p style="text-align: center">
					<br>
					<strong>女性保健<br>
					&nbsp;</strong></p>
			</td>
			<td>
				<p>
					办公室男性健康如何呵护<br>
					前列腺疾病的发生及预防<br>
					男性也有更年期，你知道吗？<br>
					&nbsp;</p>
				<p>
					女性常见病防治<br>
					办公室女性自我保健<br>
					孕期自我保健</p>
			</td>
			<td>
				&nbsp;</td>
		</tr>
		<tr>
			<td>
				-----------------</td>
			<td>
				--------------- --------------- ------------------</td>
			<td>
				--------------- ----------------</td>
			<td>
				--------------- --------------- --------------- -----------------</td>
			<td>
				-----------------</td>
		</tr>
		<tr>
			<td>
				&nbsp;</td>
			<td width="198" align="center">
				<img src="<%=basePath %>images/sub_images/13728365222057.jpg" style="display: inline;"></td>
			<td>
				<p style="text-align: center">
					<br>
					<strong>中医养生<br>
					<br>
					&nbsp;</strong></p>
				<p style="text-align: center">
					<br>
					<strong>青少年健康<br>
					&nbsp;</strong></p>
			</td>
			<td>
				<p>
					<br>
					健康与中医养生<br>
					呼吸系统疾病患者的养生<br>
					四季中医养生<br>
					&nbsp;</p>
				<p>
					孩子，你怎么了？ &mdash; 青少年心理问题<br>
					打开“沉默”的心 &mdash; 如何让你的孩子融入团队<br>
					鼓励你？惩罚你？我该怎么做？ &mdash; 家长也是种职业</p>
			</td>
			<td>
				&nbsp;</td>
		</tr>
	</tbody>
</table>
 
</div>

<div id="content5"  class="midd_right_midd">
<p>	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;        金程健康咨询师，运用健康学以及相关学科的专业知识，遵循健康学原则，通过健康咨询，帮助咨询者解答健康问题的困惑。全面了解营养与健康的基本知识，呵护自己和家人身心健康。有问必答，提供各种疾病的病因、症状、治疗、用药、预防等相关信息。就医咨询，为您排忧解难，指导咨询者怎样避免就医难的问题，更好的缓解目前就医难的困境。</p>

 <br>

<strong>金程为客户提供的健康专家咨询服务包括：</strong>
<ul>
    <li> 功能齐全的医疗服务网络</li>
    <li>人群健康信息分析，风险评估及保险方案</li>
    <li>制定健康保险，设计保险方案</li>
    <li> 提供医疗协助，获得门诊、手术和住院的服务</li>
    <li>案例管理，对家属提供医疗和保险咨询服务</li>
    <li>对疑难病症进行诊疗援助，专家提供第二医疗意 见，协助诊疗决策。</li>
<ul>
   </p>  
</div>

<div id="content6" class="midd_right_midd">

   <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 私人医生的职责是把处于健康和亚健康状态的人维持和回复到健康状态，强调以人为中心、以家庭为单位，致力于整体健康的维护与促进，具有执业医师资格的医生，是健管家服务的主要提供者。</p>

 <br>

     <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    金程的私人医生根据客户提供的个人基本资料及既往体检信息、就医诊疗信息建立会员健康档案，并综合健康信息，设计最佳体检和健管方案。在健康档案和最新体检数据基础上，给予健康评估，制定健康促进计划和慢性疾病的健康处方（包括生活习惯、饮食、运动、疾病监控和预防）。在疾病状态时，保健专家根据临床状况，及时安排最合适的医院和专家，全程贴心的陪医服务，协调病人与医院、专家之间的关系。在长期患有慢性疾病时，保健专家定期根据病情发展的情况，帮助制定健康管理计划，提供慢性疾病的医疗咨询、安排慢性疾病就诊。 </p>

 <br>

<strong>私人医生服务核心精神</strong>

    <ul>
    <li>以人为本、以关怀为己任</li>
    <li>防微杜渐，从健康源头介入</li>
    <li>着眼现实，以解决实际问题为核心目标</li>
    <li>注重服务，以客户体验为重要标准</li>
 </ul>
 
<br>
<strong>私人医生的职能</strong>
 <ul>
   <li>健康守门人和协调者，避免过度医疗、减少浪费</li>
   <li> 以客户为中心参与客户诊疗过程，提供专业支持</li>
   <li>以预防为导向，以期客户少生病、不生病，提高生命质量</li>
   <li>以个人健康为核心，同时提供家庭健康指导，有助于维持家庭的健康和幸福</li>
 </ul>
</div>

                    
				</div> 
			</div>
			<div id="clear"></div>
		</div>
		<div id="clear"></div>

    	<%@include file="footer.jsp" %>	
    			
    </div>
    </body>
</html>	
     <script type="text/javascript" charset="GBK">
        $(".midd_right_midd").hide();
        var a=<%= request.getParameter("id") %>;
        var cid="";
        if(a==null){
           cid = 0;
        }else{
           cid = a;
        }
        if(a==2)
		  {
		     	$("#m3").show();
		     	$("#content"+a+cid).show(); 
		   }
		 else
		   {
		     	$("#m3").hide();
		     	 $("#content"+a).show(); 	
		    }
</script>