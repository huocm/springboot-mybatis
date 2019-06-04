<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="Error.jsp"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<title></title>
    </head>
    <body>


    	<%@include file="header.jsp" %>			
	
		<div class="list_banner" id="list_banner">
			<img src="<%=basePath %>images/sub_images/nban6.jpg"/>
		</div>
		
		<%  
		     String id = request.getParameter("id");
		     String tag = "";
		     System.out.println( id==null  );
		     System.out.println("<br>------初始化;tag="+tag);
		     System.out.println("------初始化;id="+id);
	    	
		     if(id==null){
		    	 id="1";
		    	 tag="公司简介";
		     }
		     
		     if(id.equals("1")){             
          		tag="公司简介";
	    	 }
		     
	    	 else if(id.equals("4")){ 
          		tag="服务优势";
             }
	    	 else if(id.equals("5")){ 
          		tag="资源优势";
             }
	    	 else if(id.equals("6")){ 
          		tag="系统平台";
             }
	    	 else if(id.equals("7")){ 
	          		tag="质量管控";
	         }
	    	 else if(id.equals("8")){ 
	          		tag="联系我们";
	         }
	    	 else if(id.equals("9")){ 
	          		tag="合作机构";
	         }		
	    	 else if(id.equals("10")){ 
	          		tag="人才招聘";
	         }		     		     
	    	 else {
          		tag="公司简介";
          		id="1";
             }
		     System.out.println("<br>------最后;tag="+tag);
		     System.out.println("------最后;id="+id);

		     %>
		     
		<div class="list_banner_bg">
			<span class="home"><a href="<%=basePath %>index.jsp">首页</a>><a href="<%=basePath %>aboutus.jsp">关于金程</a>><a><%=tag %></a></span>
			<div class="midd">

				<div class="midd_lef">

					<h2>关于金程</h2>
					<div class="list_hr" style="float:left;">
					</div>

					<div class="lis">
											<span><a href="<%=basePath %>aboutus.jsp?id=1">公司简介</a></span>
											<span><a href="<%=basePath %>aboutus.jsp?id=9">合作机构</a></span>
											
											<span><a href="<%=basePath %>aboutus.jsp?id=4"">服务优势</a></span>
											<span><a href="<%=basePath %>aboutus.jsp?id=5"">资源优势</a></span>
											<span><a href="<%=basePath %>aboutus.jsp?id=6"">系统平台</a></span>
																				
											<span><a href="<%=basePath %>aboutus.jsp?id=10"">人才招聘 </a></span>			
											<span><a href="<%=basePath %>aboutus.jsp?id=8"">联系我们</a></span>
					</div>
					<div class="list_hr2" style="float:right;">

					</div>
					<div id="clear"></div>
				</div>
				
				
				
<div class="midd_right">
					<div class="midd_right_top">
						<span style="visibility:hidden">公司简介</span>
						<p> <%=tag %> </p>
					</div><br/>
				
							
<div id="content1" class="midd_right_midd">
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 上海金程健康管理有限公司成立于2012年，是一家以“专业、专注、专享”为理念的第三方健康管理公司。公司坚持以客户为导向，提供个性化的体检服务、健康管理档案、健康讲座、中医会诊、绿色就医通道，还提供绿色健康食品和特色保险产品。金程健康，旨在为客户提供全方位的健康管理服务。“金程健康，相伴一生。
	&nbsp;</p>

</div>


<div id="content9" class="midd_right_midd">

<p align="left">
	<img alt=""  src="<%=basePath %>/images/sub_images/hzjg/hzjg1.png"     width="220"  height="140"   />
	<img alt=""  src="<%=basePath %>/images/sub_images/hzjg/hzjg2.png"     width="220"  height="140"   />
	<img alt=""  src="<%=basePath %>/images/sub_images/hzjg/hzjg3.png"     width="220"  height="140"   />
</p>
<p align="left">&nbsp;</p>
<p align="left">
	<img alt=""  src="<%=basePath %>/images/sub_images/hzjg/hzjg4_hsyy.png"     width="250"  height="100"   />
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<img alt=""  src="<%=basePath %>/images/sub_images/hzjg/hzjg5_shdl.png"     width="350"  height="100"   />
</p>
<p align="left">&nbsp;</p>
<p align="left">
	<img alt=""  src="<%=basePath %>/images/sub_images/hzjg/hzjg6_cm.png"     width="200"  height="100"   />
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<img alt=""  src="<%=basePath %>/images/sub_images/hzjg/hzjg7_mndjk.png"     width="200"  height="100"   />
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<img alt=""  src="<%=basePath %>/images/sub_images/hzjg/hzjg8_jc.png"     width="200"  height="100"   />
</p>
<p align="left">&nbsp;</p>
<p align="left">
	<img alt=""  src="<%=basePath %>/images/sub_images/hzjg/hzjg9_rm.png"     width="200"  height="100"   />
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<img alt=""  src="<%=basePath %>/images/sub_images/hzjg/hzjg10_akgb.png"     width="200"  height="100"   />
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<img alt=""  src="<%=basePath %>/images/sub_images/hzjg/hzjg12_rcjk.png"     width="200"  height="100"   />
</p>
<p align="left">&nbsp;</p>
</div>
 
<div id="content4" class="midd_right_midd">
<p>
	<strong>团体体检： </strong>
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 金程健康为客户甄选了最专业的体检中心，确保您享受到最权威，最全面，最专业，最准确的健康体检。
</p>
<p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 金程健康为团体客户提供远程上门体检服务。使您足不出户，就能享受到和体检中心一样的专业服务。金程健康的合作机构均配备目前国内最先进最专业的体检车，在保证方便快捷的同时，也保证了体检质量。随车配备专业医生和护士，给您最温馨的受检体验！在体检中心已经普及的今天，仍然有很多朋友会选择信赖度高的公立医院，因此，金程健康与沪上乃至全国多家三甲医院合作，增加客户的可选性。
</p>
<p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 团体体检客户中，很多企业在全国各地都有分支机构，所以，选择一个综合实力强的健康管理公司进行体检外包，是一个省时省力的选择。金程多年来致力于健康管理服务，合作机构遍布全国50多个城市，完全能够满足客户的需求。您只需告诉我们您的预算，需体检城市和员工数量，我们就能就近为您安排当地最专业最优惠的体检机构，并为您出具科学的团体体检报告。
</p>

<p>
	<strong>个人体检： </strong>
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;金程健康注重客户的体检感受，为您营造舒适的体检环境，选择专业权威的体检门店。针对1500元以上的体检套餐特别推出护士贴身陪检服务。远离嘈杂的体检大厅，金程健康专业护士会指引您到每一个诊室，并为您详细说明该项检查的医学原理和意义，使您能更深入的了解自己的体检项目。
</p>

<p>
	<strong>体检保险： </strong>
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;随着重大疾病的普遍化、低龄化，金程健康与国内知名保险公司合作，特别设计了一款体检保险，防范于未然。一方面，作为第三方，金程健康能监督体检机构确保体检品质，另一方面，当客户不幸罹患重大疾病时，又能解决其后顾之忧。金程健康为团检客户提供的体检保险，从检中到检后，做到全方位的呵护，最长受益期长达10个月。
</p>

<p>
	<strong>中医讲座与膏方调理： </strong>
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;金程健康与沪上多家知名中医医院合作，组织高端个人客户和企事业单位定期举办中医保健沙龙，同时可提供私人膏方或调理等服务，将原来的预约、开方、取方三次过程合并成一次上门完成。制作完成后，直接送到客户家中。
</p>

<p>
	<strong>绿色农产品： </strong>
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;为了更好地为客户提供健康服务，金程健康在中国第三大岛—崇明岛开办了自主品牌的1300余亩有机农场，全程监督大米，蔬菜的整个生长过程，真正做到天然、安全、无公害。蔬菜、大米专供我们的VIP客户，我们希望金程健康的无公害原生态食品能够进入更多的关注健康饮食的客户家庭。
</p>
</div>
 
 
 <div id="content5" class="midd_right_midd">
<p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;金程健康 合作城市已经多达50余个，专业体检门店200多家，服务区域覆盖全国所有一二线城市及部分三四线城市，真正做到轻松选择，健康体检!
&nbsp;</p>
<p>
	<img alt="" src="<%=basePath %>/images/gsjj_zyys.png"  width="730"  height="400"  />
</p>
</div>


<div id="content6" class="midd_right_midd">
<p>
	&nbsp;金程健康拥有报价合理且中立的第三方健检平台，强大的客户数据后期整合能力，人性化的网络及电话预约平台：</p>
<p>
	&nbsp;</p>
<p>
	<strong>&nbsp;全面营销支持--营销平台</strong></p>
<p align="left">
	--专业高效的营销管理团队，在健康医疗产业积累丰富经验；</p>
<p align="left">
	--针对企业和散客成熟的产品体系，完善检前、检中和检后服务；</p>
<p align="left">
	--强大的网络营销支持系统:www.jinchenghealth.com，为客户提供最为全面的健康医疗服务资讯；</p>
<p align="left">
	--强大的客户管理系统、会员体系和大容量的呼叫中心，确保客户的良好体验。</p>
<p align="left">
&nbsp;</p>
<p align="left">
	<strong>技术和客服平台--技术及资源平台</strong></p>
<p align="left">
	--先进的呼叫中心平台、完善的客户服务体系、训练有素的专业客服团队；</p>
<p align="left">
	--已为万余会员提供个性化的健康管理服务；</p>
<p align="left">
	--健康管理服务体系已遍及全国50多个省市。</p>

</div>
  					
					
<div id="content8" class="midd_right_midd">
<p>您可以通过以下的任何一种方式联系到我们，您的健康就是我们的意愿！<br><br><p>
<p>
	<span style="font-size: 14px"><span style="color: #a5a719">上海金程健康管理有限公司</span></span><br />
	<br />
	400客户服务电话:400-003-2239<br />
	客户服务电话:021-61702239 <br />
	客户服务传真:021-61702238<br />
	E-mail:customer@jinchenghealth.com<br />
	地址:上海市静安区延平路 121号21楼 D座<br />
	邮政编码:200000&nbsp;</p>	
<br>
<p>
<img src="images/jcewm.png"  alt=""  width="320"  height="320" />
<img src="images/jcewm2.png"  alt=""  width="320"  height="320" />
<p>
</div>					

 
<div id="content10" class="midd_right_midd">
<p>
<span style="font-size: 12px"><strong>一、职位名称：市场助理&nbsp;&nbsp;</strong></span></p>
<p><span style="font-size: 12px">学历：大专</span></p>
<p><span style="font-size: 12px">工作年限：2年</span></p>
<p><span style="font-size: 12px">月薪：面议</span></p>
<p><span style="font-size: 12px">工作性质：全职</span></p>
<br>	
<p>
	<span style="font-size: 12px"><strong>岗位职责：</strong><br />
	1、负责公司各类市场推广工具、媒介（如纸质媒体、企业微博、行业网站、展会等）、宣传品的策划、执行；<br />
	2、了解公司各产品，配合产品的市场目标，参与公司产品的市场推广与定向推介；<br />
	3、参与策划公司举办的各类展会活动；<br />
	4、熟练使用Illustrator，Photoshop等专业常用设计软件，创意思维活跃；</span></p>
<br>	
<p>
	<span style="font-size: 12px"><strong>职位要求：</strong><br />
	1、专科以上学历，有相关技术类从业背景及市场调研、推广工作经验者优先考虑；<br />
	2、较强的书面撰写和口头沟通能力，熟练的提案能力；<br />
	3、为人开朗，善于沟通，较强的活动执行能力；<br />
	4、擅长制作PPT，有一年以上平面设计经验，会视频剪辑制作优先考虑。<br />
	</span></p>	
<p>

<br>
<p>
<span style="font-size: 12px"><strong>二、职位名称：销售代表&nbsp;&nbsp;</strong></span></p>
<p><span style="font-size: 12px">学历：大专</span></p>
<p><span style="font-size: 12px">工作年限：1年</span></p>
<p><span style="font-size: 12px">月薪：3000-4499</span></p>
<p><span style="font-size: 12px">工作性质：全职</span></p>
<br>	
<p>
	<span style="font-size: 12px"><strong>岗位职责：</strong><br />
	1、与客户建立良好的合作关系，完成销售指标；<br />
	2、完成推销、报价、谈判、合同签订执行等工作；<br />
    3、回访用户，收集反馈信息；<br />
	4、建立用户档案，实施新渠道，新客户的拓展工作；</span></p>
<br>	
<p>
	<span style="font-size: 12px"><strong>职位要求：</strong><br />
	1、五官端正，口齿清晰，思维敏捷，男女不限，年龄不限；<br />
	2、大学专科以上学历。<br />
	3、自信、开朗，具有良好的沟通能力和良好的团队合作精神；<br />
	4、有旅游、酒店、保险、薪酬福利、礼品销售相关从业经历优先考虑；<br />
    5、善于长期维持和提升客户关系。<br /> </span></p>	
<p>


<br>
<p>
	<span style="font-size: 12px"><strong>三、职位名称：渠道销售&nbsp;&nbsp;</strong></span></p>
<p><span style="font-size: 12px">学历：大专</span></p>
<p><span style="font-size: 12px">工作年限：2年</span></p>
<p><span style="font-size: 12px">月薪：3000-4499</span></p>
<p><span style="font-size: 12px">工作性质：全职</span></p>
<br>	
<p>
	<span style="font-size: 12px"><strong>岗位职责：</strong><br />
	1、协助公司维护渠道关系、完成报价、谈判、合同签订执行等工作；<br />
    2、回访用户，收集反馈信息；<br />
    3、建立用户档案，实施新渠道，新客户的拓展工作；<br />
    4、ＶＩＰ客户陪检。<br />
<br>	
<p>
	<span style="font-size: 12px"><strong>职位要求：</strong><br />
	1、五官端正，口齿清晰，思维敏捷，男女不限，年龄不限；<br />
	2、大学专科以上学历；<br />
	3、自信、开朗，具有良好的沟通能力和良好的团队合作精神；<br />
	4、善于长期维持和提升客户关系；<br />
	5、在政府、金融、体检机构等行业有销售经验和客户资源者及医学医药知识者优先。<br />
	</span></p>	
<p>


<br>
<p>
	<span style="font-size: 12px"><strong>四、职位名称：大客户经理/销售经理&nbsp;&nbsp;</strong></span></p>
<p><span style="font-size: 12px">学历：大专</span></p>
<p><span style="font-size: 12px">工作年限：3-4年</span></p>
<p><span style="font-size: 12px">月薪：面议</span></p>
<p><span style="font-size: 12px">工作性质：全职</span></p>
<br>	
<p>
	<span style="font-size: 12px"><strong>岗位职责：</strong><br />
	1、	充分利用公司内、外部资源来完成个人销售目标和战略目标；<br />
	2、进行所辖区域内客户开发工作，寻找项目机会，并积极推进项目进度；<br />
	3、深度挖掘重点客户的潜在需求，为客户提供满意的解决方案；<br />
	4、能够完成部分商务谈判工作；<br />
	5、与客户建立良好的客户关系；<br />
	6、掌握区域内市场信息及行业动态，配合市场部开展相关市场活动；<br />
	7、负责项目的回款工作；<br />
    8、协调公司内部资源，提高客户满意度。<br />
</span></p>
<br>	
<p>
	<span style="font-size: 12px"><strong>职位要求：</strong><br />
	1、专科以上学历；<br />
	2、3年以上销售工作经验及3年以上体检行业销售经验；<br />
	3、良好的沟通、交际、整合资源能力；<br />
	4、较强的谈判公关能力，良好的心理素质；<br />
	5、具备敏锐的市场观察力和分析判断能力；<br />
	6、能承受较大的工作压力；<br />
	7、在政府、金融、体检机构等行业有销售经验和客户资源者及医学医药知识者优先。<br />
	</span></p>	
<p>

</div>

					
				</div>
			</div>
			<div id="clear"></div>
		</div>
		<div id="clear"></div>
	
    	<%@include file="footer.jsp" %>	
    	

	<script type="text/javascript" charset="utf-8">
		$(".midd_right_midd").hide();
        var a=<%=id %>;
        $("#content"+a).show(); 
         </script>
    </div>
    </body>
    </html>		
				