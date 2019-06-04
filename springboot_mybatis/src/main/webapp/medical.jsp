<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="Error.jsp"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<title>金程健康_健康体检_全方位健康管理解决服务商</title>
    </head>
    <body>

    	<%@include file="header.jsp" %>		
    	
		<div class="list_banner" id="list_banner">
			<img src="<%=basePath %>images/sub_images/nban3.jpg"/>
		</div>
			
		<%  
		     String id = request.getParameter("id");
		     String tag = "";
		     System.out.println( id==null  );
		     System.out.println("<br>------初始化;tag="+tag);
		     System.out.println("------初始化;id="+id);
	    	
		     if(id==null){
		    	 id="1";
		    	 tag="入职体检";
		     }
		     
		     if(id.equals("1")){             
          		tag="入职体检";
	    	 }

	    	 else if(id.equals("3")){ 
          		tag="企业福利体检";
             }
	    	 else if(id.equals("4")){ 
          		tag="高端体检";
             }
	    	 else if(id.equals("5")){ 
          		tag="金程健康体检卡";
             }

	    	 else if(id.equals("7")){ 
	          		tag="基因检测";
	             }
	    	 else {
          		tag="入职体检";
          		id="1";
             }
		     System.out.println("<br>------最后;tag="+tag);
		     System.out.println("------最后;id="+id);

		     %>
			<span class="home"><a href="<%=basePath %>index.jsp">首页</a>><a href="<%=basePath %>medical.jsp?id=1">健康体检</a>><a><%=tag %></a></span>
			<div class="midd">

				<div class="midd_lef">

					<h2>健康体检</h2>
					<div class="list_hr" style="float:left;">
					</div>

					<div class="lis">
											<span><a href="<%=basePath %>medical.jsp?id=1">入职体检</a></span>
											
											<span><a href="<%=basePath %>medical.jsp?id=3">企业福利体检</a></span>
											<span><a href="<%=basePath %>medical.jsp?id=4">高端体检</a></span>
											<span><a href="<%=basePath %>medical.jsp?id=5">金程健康体检卡</a></span>
								
											<span><a href="<%=basePath %>medical.jsp?id=7">基因检测</a></span>
					
					</div>
					<div class="list_hr2" style="float:right;">

					</div>
					<div id="clear"></div>
				</div>
				<div class="midd_right">
					<div class="midd_right_top">
						<span style="visibility:hidden">入职体检</span>
						<p> <%=tag %> </p>
					</div><br/>
				<div id="content1" class="midd_right_midd">
						<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 入职体检是专项体检之一，旨在通过体检保证入职员工的身体状况适合从事该专业工作，在集体生活中不会造成传染病流行，不会因其个人身体原因影响他人。入职体检有相对固定的体检项目与体检标准，选择专业体检中心能保证体检质量。但由于入职体检内容较为简单，所以不能完全代替健康体检。<br />
	&nbsp;</p>
<p>
	<span style="font-size: 12px"><strong>入职体检流程</strong></span></p>
<p>
	1.拨打电话400 003 2239进行咨询、选择体检项目、预约体检时间</p>
<p>
	2.领取体检通知单或体检表</p>
<p>
	3.餐前检查【抽血、腹部彩超、人体成分】</p>
<p>
	4.就餐（可选）</p>
<p>
	5.各科检查</p>
<p>
	6.彩超(子宫、附件、前列腺)</p>
<p>
	7.核对体检项目</p>
<p>
	8.将体检通知单或体检表交回体检机构</p>
<p>
	9.体检结果领取<br />
	&nbsp;</p>
<p>
	<span style="font-size: 12px"><strong>体检主要项目概述</strong></span></p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;入职体检的项目根据不同的企业会有所不同，很多是必检项目，如一般检查，营养、发育、血压、身高、体重；内科如胸部、肺部听诊、心率、心律、杂音、肝、脾等；外科如淋巴、甲状腺、脊柱、四肢；化验检查如血常规、肝肾功能；胸透对心、肺、膈的检查。入职体检套餐包括以上所介绍的项目。另外，可以根据企业或者个人的要求增加相应的项目。</p>

					</div>


<div id="content3" class="midd_right_midd">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  企业福利体检，可作为鼓励员工的手段，将公司对员工的关怀落到实处。员工身体健康是公司最大的财富，也是公司得以稳定发展的保证。不但能提高员工工作效率，还能减少因生病缺勤等产生的工作不协调影响工作进度；对员工健康关心，提高员工企业归属感和工作热情，提高工作效率，减少人力资源损失；通过福利健康体检降低发病率，减少病假和健康事假，降低病假工时和事假工时，保证企业的正常运转，体现公司对员工的人性关怀。
 <br>
 <br>

<strong>金程健康企业福利体检专业性</strong>
<ol>
<li>金程健康可以了解各体检中心和公立医院的环境设施、配套服务及体检折扣，选择适合您的体检中心。</li>
<li>建立永久保存电子健康档案、进行个人或企业团体健康管理的同时，更可以参加个性化的健康教育与促进活动，体验金程健康与众不同的个性化健康服务。</li>
<li>除了异常指标提示外，金程健康会给出检后个性化的调理方案和建议。</li>
<li>确认服务项目后，金程健康会详细告知检前、检中、检后注意事项和体检流程。</li>
<li>从专业角度帮助客户解决体检项目，根据客户情况选择或制定适合的体检套餐，针对全国各地体检中心，客户可以登入金程健康便捷的网络预约平台，或拨打全国统一400电话预约平台。</li>
</ol>
 <br>
<strong>金程健康企业福利体检优势</strong>
<ol>
<li>拥有合理报价体系，基于公平、公正、专业、监督的第三方健检公司</li>
<li>便捷高效、覆盖全国的健检及医疗保障资源</li>
<li>便捷400热线、便捷的服务流程</li>
<li>根据客户对体检门店满意度产生的实际客观评价</li>
<li>强大的客户数据后期整合能力</li>
<li>人性化的网络及电话预约平台</li>
<li>专业的医生资源团队</li>
</ol>
</div>

<div id="content4" class="midd_right_midd">
<p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 通过营养管理、运动管理、体重管理等五方面来督促体检的会员，在回家后并不是将体检结果束之高阁，目的是对自己的健康有了管理和监督。 独立的体检机构从事“高端体检”，由于“高端体检”的同质性，如果没有延伸的服务，是没有办法突出差异化的。高端体检有别于普通体检的优势体现在针对某项疾病检查的专业、细致、多角度。“高端体检的常规检查如牙科、五官科检查都会很细致，比如有些高端体检里会有全景牙片这种先进仪器。所有高端体检都有签约专家的全科会诊，会员可以享受与专家的一对一交流。</p> 

 <br>

<strong>1.什么样的人适合选择高端体检？</strong>

<p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  有需求的人群、经济条件较好的人群，较适合高端体检。现在的高端体检人群分三种：有健康意识有消费能力的、有消费能力健康意识不太强的、单纯有消费能力的。从医学角度讲，检查项目是根据年龄段及过往病史决定的，如以往没有明显异常，则常规检查即可，不必要花费太大遭受不必要的“医学污染”（如过度的采血、X光等），所以选择体检项目首先应参考年龄段（一般从30岁开始，按5年或10年划分）。</p>

 <br>

<strong>2.高端体检的检测数值是否能如实反映一个人的整体健康水平，面对一些个别数值的异常，体检者该如何应对？</strong>

　<p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  不论数值多么精准、分析多么透彻，也只能反映这一阶段的健康状况，因为万事万物都是在不断变化的，一次检查结果不能作为定论，所以建议每年至少做一次健康检查，意义就在于周期性、阶段性掌握身体各项数值的变化，这样可动态了解健康状况，从而更早发现异常趋势，把疾病“扼杀在摇篮里”。血化验有了异常数值后，应引起重视，但不必恐慌，要去做复查，动态看异常数值是否有加重趋势。</p>

</div>

<div id="content5" class="midd_right_midd">
<p>	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
<br>
<img src="images/sub_images/ka/k1.jpg" width="240" height="170"/>
<img src="images/sub_images/ka/k2.jpg" width="240" height="170" />
<img src="images/sub_images/ka/k3.jpg" width="240" height="170" />
</br>

<br>
<img src="images/sub_images/ka/k4.jpg" width="240" height="170"/>
<img src="images/sub_images/ka/k5.jpg" width="240" height="170" />
<img src="images/sub_images/ka/k6.jpg" width="240" height="170" />
</br>

<br>
<img src="images/sub_images/ka/k7.jpg" width="240" height="170"/>
<img src="images/sub_images/ka/k8.jpg" width="240" height="170" />
<img src="images/sub_images/ka/k9.jpg" width="240" height="170" />
</br>

</p>  
</div>


<div id="content7" class="midd_right_midd">
 <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  基因检测是通过血液、其他体液或细胞对DNA进行检测的技术，是取被检测者脱落的口腔黏膜细胞或其他组织细胞，扩增其基因信息后，通过特定设备对被检测者细胞中的DNA分子信息作检测，分析它所含有的各种基因情况，从而使人们能了解自己的基因信息，预知身体患疾病的风险，从而通过改善自己的生活环境和生活习惯，避免或延缓疾病的发生。</p>

 <br>

<strong>基因检测与常规体检的区别</strong>
   <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      易感基因检测与常规体检都能起到预防的作用，但二者反映的是不同的阶段。一种疾病从开始到发病要经历很长的时间。基因检测是人在没发病时，预防将来会发生什么疾病，属于检测的第一阶段;而常规检测是发生疾病后，疾病到达什么程度。如：早期、中期等等，这属于检测的第二个阶段，是临床医学的范畴。所以说，基因检测是主动预防疾病的发生，而传统的体检手段则无法起到这样的预防作用。</p>
<br>
     <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   体检主要针对人体已经出现的临床病变进行诊断和检查，它的主要任务是配合疾病的治疗，无法在病变之前预知，下更多、更深的结论。也就是说，在疾病的预防上，传统体检十分的被动和滞后。现实中很多疾病并无明显征兆，而一旦发病，现代医学往往束手无策，患者及其家人就可能一生痛苦和麻烦。</p>

 
<br>
<strong>基因检测准确率</strong>

    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    家庭的遗传史就是疾病易感基因的遗传所造成的，所以基因检测能够检测出这些遗传的易感基因型，检测准确率达到99.9999%。</p>
</div>
					
					<!-- 
					<div class="information">
					<h2>在线咨询</h2>
						<div class="letter">
							<form name="form1" action="medical.php?id=" method="post">
								<table>
								<tr>
		                		<td colspan="2" align="center"><p id="notice"></p></td>
		                		</tr>
		                    	<tr><td align="right" style="font-family:'微软雅黑'">姓名:</td>
		                    		<td><input type="text" id="name" name="name" style="width:275px"/><span class="error" for="name" id="name_error"> 请输入姓名</span></td>
		                    	</tr>
		                        <tr><td align="right" style="font-family:'微软雅黑'">电话:</td>
		                        	<td><input type="text" id="tel" name="tel" style="width:275px" onKeyUp="this.value=this.value.replace(/\D/g,'')"  onafterpaste="this.value=this.value.replace(/\D/g,'')"/>
		                        	<span class="error" for="tel" id="tel_error">请输入电话</span>
		                        </tr>
		                        <tr><td align="right" style="font-family:'微软雅黑'">邮件:</td>
		                        <td><input type="text" id="email" name="email" style="width:275px"/>
		                        <span class="error" for="email" id="email_error">请输入邮件</span>
		                        </tr>
		                        <tr><td align="right" style="font-family:'微软雅黑'">其他联系方式:</td><td><input type="text" name="other" style="width:275px"/></td></tr>
		                        <tr><td align="right" style="font-family:'微软雅黑'">内容:</td><td><textarea style="resize:none;width:418px;height:85px" name="contents" ></textarea></td></tr>
		                        <tr>
		                        	<td></td>
		                            <td>
		                                <input id="btn1" type="submit" name="submit" value="确认"/>
		                                <input type="reset" name="" value="修改"/>
		                            </td>
		                        </tr>
		                    	</table>
		                    </form>
                    	</div>
					</div>-->
				</div>
			</div>
			<div id="clear"></div>
		</div>
		<div id="clear"></div>
	
	 
    	<%@include file="footer.jsp" %>	
    	
    </body>
    </html>
	<script type="text/javascript" charset="utf-8">
		$(".midd_right_midd").hide();
        var a=<%=id %>;
        $("#content"+a).show(); 
         </script>
    </div>
    </body>