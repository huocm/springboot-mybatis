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
		     System.out.println("<br>------��ʼ��;tag="+tag);
		     System.out.println("------��ʼ��;id="+id);
	    	
		     if(id==null){
		    	 id="1";
		    	 tag="��˾���";
		     }
		     
		     if(id.equals("1")){             
          		tag="��˾���";
	    	 }
		     
	    	 else if(id.equals("4")){ 
          		tag="��������";
             }
	    	 else if(id.equals("5")){ 
          		tag="��Դ����";
             }
	    	 else if(id.equals("6")){ 
          		tag="ϵͳƽ̨";
             }
	    	 else if(id.equals("7")){ 
	          		tag="�����ܿ�";
	         }
	    	 else if(id.equals("8")){ 
	          		tag="��ϵ����";
	         }
	    	 else if(id.equals("9")){ 
	          		tag="��������";
	         }		
	    	 else if(id.equals("10")){ 
	          		tag="�˲���Ƹ";
	         }		     		     
	    	 else {
          		tag="��˾���";
          		id="1";
             }
		     System.out.println("<br>------���;tag="+tag);
		     System.out.println("------���;id="+id);

		     %>
		     
		<div class="list_banner_bg">
			<span class="home"><a href="<%=basePath %>index.jsp">��ҳ</a>><a href="<%=basePath %>aboutus.jsp">���ڽ��</a>><a><%=tag %></a></span>
			<div class="midd">

				<div class="midd_lef">

					<h2>���ڽ��</h2>
					<div class="list_hr" style="float:left;">
					</div>

					<div class="lis">
											<span><a href="<%=basePath %>aboutus.jsp?id=1">��˾���</a></span>
											<span><a href="<%=basePath %>aboutus.jsp?id=9">��������</a></span>
											
											<span><a href="<%=basePath %>aboutus.jsp?id=4"">��������</a></span>
											<span><a href="<%=basePath %>aboutus.jsp?id=5"">��Դ����</a></span>
											<span><a href="<%=basePath %>aboutus.jsp?id=6"">ϵͳƽ̨</a></span>
																				
											<span><a href="<%=basePath %>aboutus.jsp?id=10"">�˲���Ƹ </a></span>			
											<span><a href="<%=basePath %>aboutus.jsp?id=8"">��ϵ����</a></span>
					</div>
					<div class="list_hr2" style="float:right;">

					</div>
					<div id="clear"></div>
				</div>
				
				
				
<div class="midd_right">
					<div class="midd_right_top">
						<span style="visibility:hidden">��˾���</span>
						<p> <%=tag %> </p>
					</div><br/>
				
							
<div id="content1" class="midd_right_midd">
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; �Ϻ���̽����������޹�˾������2012�꣬��һ���ԡ�רҵ��רע��ר��Ϊ����ĵ�������������˾����˾����Կͻ�Ϊ�����ṩ���Ի��������񡢽�����������������������ҽ�����ɫ��ҽͨ�������ṩ��ɫ����ʳƷ����ɫ���ղ�Ʒ����̽�����ּ��Ϊ�ͻ��ṩȫ��λ�Ľ���������񡣡���̽��������һ����
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
	<strong>������죺 </strong>
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ��̽���Ϊ�ͻ���ѡ����רҵ��������ģ�ȷ�������ܵ���Ȩ������ȫ�棬��רҵ����׼ȷ�Ľ�����졣
</p>
<p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ��̽���Ϊ����ͻ��ṩԶ������������ʹ���㲻�������������ܵ����������һ����רҵ���񡣽�̽����ĺ����������䱸Ŀǰ�������Ƚ���רҵ����쳵���ڱ�֤�����ݵ�ͬʱ��Ҳ��֤������������泵�䱸רҵҽ���ͻ�ʿ����������ܰ���ܼ����飡����������Ѿ��ռ��Ľ��죬��Ȼ�кܶ����ѻ�ѡ�������ȸߵĹ���ҽԺ����ˣ���̽����뻦������ȫ���������ҽԺ���������ӿͻ��Ŀ�ѡ�ԡ�
</p>
<p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; �������ͻ��У��ܶ���ҵ��ȫ�����ض��з�֧���������ԣ�ѡ��һ���ۺ�ʵ��ǿ�Ľ�������˾��������������һ��ʡʱʡ����ѡ�񡣽�̶����������ڽ���������񣬺��������鲼ȫ��50������У���ȫ�ܹ�����ͻ���������ֻ�������������Ԥ�㣬�������к�Ա�����������Ǿ��ܾͽ�Ϊ�����ŵ�����רҵ���Żݵ�����������Ϊ�����߿�ѧ��������챨�档
</p>

<p>
	<strong>������죺 </strong>
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��̽���ע�ؿͻ��������ܣ�Ϊ��Ӫ�����ʵ���컷����ѡ��רҵȨ��������ŵꡣ���1500Ԫ���ϵ�����ײ��ر��Ƴ���ʿ����������Զ�����ӵ�����������̽���רҵ��ʿ��ָ������ÿһ�����ң���Ϊ����ϸ˵���������ҽѧԭ������壬ʹ���ܸ�������˽��Լ��������Ŀ��
</p>

<p>
	<strong>��챣�գ� </strong>
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�����ش󼲲����ձ黯�����仯����̽��������֪�����չ�˾�������ر������һ����챣�գ�������δȻ��һ���棬��Ϊ����������̽����ܼල������ȷ�����Ʒ�ʣ���һ���棬���ͻ�������ش󼲲�ʱ�����ܽ������֮�ǡ���̽���Ϊ�ż�ͻ��ṩ����챣�գ��Ӽ��е��������ȫ��λ�ĺǻ���������ڳ���10���¡�
</p>

<p>
	<strong>��ҽ������෽���� </strong>
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��̽����뻦�϶��֪����ҽҽԺ��������֯�߶˸��˿ͻ�������ҵ��λ���ھٰ���ҽ����ɳ����ͬʱ���ṩ˽�˸෽�����ȷ��񣬽�ԭ����ԤԼ��������ȡ�����ι��̺ϲ���һ��������ɡ�������ɺ�ֱ���͵��ͻ����С�
</p>

<p>
	<strong>��ɫũ��Ʒ�� </strong>
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ϊ�˸��õ�Ϊ�ͻ��ṩ�������񣬽�̽������й������󵺡�����������������Ʒ�Ƶ�1300��Ķ�л�ũ����ȫ�̼ල���ף��߲˵������������̣�����������Ȼ����ȫ���޹������߲ˡ�����ר�����ǵ�VIP�ͻ�������ϣ����̽������޹���ԭ��̬ʳƷ�ܹ��������Ĺ�ע������ʳ�Ŀͻ���ͥ��
</p>
</div>
 
 
 <div id="content5" class="midd_right_midd">
<p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��̽��� ���������Ѿ����50�����רҵ����ŵ�200��ң��������򸲸�ȫ������һ���߳��м����������߳��У�������������ѡ�񣬽������!
&nbsp;</p>
<p>
	<img alt="" src="<%=basePath %>/images/gsjj_zyys.png"  width="730"  height="400"  />
</p>
</div>


<div id="content6" class="midd_right_midd">
<p>
	&nbsp;��̽���ӵ�б��ۺ����������ĵ���������ƽ̨��ǿ��Ŀͻ����ݺ����������������Ի������缰�绰ԤԼƽ̨��</p>
<p>
	&nbsp;</p>
<p>
	<strong>&nbsp;ȫ��Ӫ��֧��--Ӫ��ƽ̨</strong></p>
<p align="left">
	--רҵ��Ч��Ӫ�������Ŷӣ��ڽ���ҽ�Ʋ�ҵ���۷ḻ���飻</p>
<p align="left">
	--�����ҵ��ɢ�ͳ���Ĳ�Ʒ��ϵ�����Ƽ�ǰ�����кͼ�����</p>
<p align="left">
	--ǿ�������Ӫ��֧��ϵͳ:www.jinchenghealth.com��Ϊ�ͻ��ṩ��Ϊȫ��Ľ���ҽ�Ʒ�����Ѷ��</p>
<p align="left">
	--ǿ��Ŀͻ�����ϵͳ����Ա��ϵ�ʹ������ĺ������ģ�ȷ���ͻ����������顣</p>
<p align="left">
&nbsp;</p>
<p align="left">
	<strong>�����Ϳͷ�ƽ̨--��������Դƽ̨</strong></p>
<p align="left">
	--�Ƚ��ĺ�������ƽ̨�����ƵĿͻ�������ϵ��ѵ�����ص�רҵ�ͷ��Ŷӣ�</p>
<p align="left">
	--��Ϊ�����Ա�ṩ���Ի��Ľ����������</p>
<p align="left">
	--�������������ϵ�ѱ鼰ȫ��50���ʡ�С�</p>

</div>
  					
					
<div id="content8" class="midd_right_midd">
<p>������ͨ�����µ��κ�һ�ַ�ʽ��ϵ�����ǣ����Ľ����������ǵ���Ը��<br><br><p>
<p>
	<span style="font-size: 14px"><span style="color: #a5a719">�Ϻ���̽����������޹�˾</span></span><br />
	<br />
	400�ͻ�����绰:400-003-2239<br />
	�ͻ�����绰:021-61702239 <br />
	�ͻ�������:021-61702238<br />
	E-mail:customer@jinchenghealth.com<br />
	��ַ:�Ϻ��о�������ƽ· 121��21¥ D��<br />
	��������:200000&nbsp;</p>	
<br>
<p>
<img src="images/jcewm.png"  alt=""  width="320"  height="320" />
<img src="images/jcewm2.png"  alt=""  width="320"  height="320" />
<p>
</div>					

 
<div id="content10" class="midd_right_midd">
<p>
<span style="font-size: 12px"><strong>һ��ְλ���ƣ��г�����&nbsp;&nbsp;</strong></span></p>
<p><span style="font-size: 12px">ѧ������ר</span></p>
<p><span style="font-size: 12px">�������ޣ�2��</span></p>
<p><span style="font-size: 12px">��н������</span></p>
<p><span style="font-size: 12px">�������ʣ�ȫְ</span></p>
<br>	
<p>
	<span style="font-size: 12px"><strong>��λְ��</strong><br />
	1������˾�����г��ƹ㹤�ߡ�ý�飨��ֽ��ý�塢��ҵ΢������ҵ��վ��չ��ȣ�������Ʒ�Ĳ߻���ִ�У�<br />
	2���˽⹫˾����Ʒ����ϲ�Ʒ���г�Ŀ�꣬���빫˾��Ʒ���г��ƹ��붨���ƽ飻<br />
	3������߻���˾�ٰ�ĸ���չ����<br />
	4������ʹ��Illustrator��Photoshop��רҵ����������������˼ά��Ծ��</span></p>
<br>	
<p>
	<span style="font-size: 12px"><strong>ְλҪ��</strong><br />
	1��ר������ѧ��������ؼ������ҵ�������г����С��ƹ㹤�����������ȿ��ǣ�<br />
	2����ǿ������׫д�Ϳ�ͷ��ͨ�������������᰸������<br />
	3��Ϊ�˿��ʣ����ڹ�ͨ����ǿ�Ļִ��������<br />
	4���ó�����PPT����һ������ƽ����ƾ��飬����Ƶ�����������ȿ��ǡ�<br />
	</span></p>	
<p>

<br>
<p>
<span style="font-size: 12px"><strong>����ְλ���ƣ����۴���&nbsp;&nbsp;</strong></span></p>
<p><span style="font-size: 12px">ѧ������ר</span></p>
<p><span style="font-size: 12px">�������ޣ�1��</span></p>
<p><span style="font-size: 12px">��н��3000-4499</span></p>
<p><span style="font-size: 12px">�������ʣ�ȫְ</span></p>
<br>	
<p>
	<span style="font-size: 12px"><strong>��λְ��</strong><br />
	1����ͻ��������õĺ�����ϵ���������ָ�ꣻ<br />
	2��������������ۡ�̸�С���ͬǩ��ִ�еȹ�����<br />
    3���ط��û����ռ�������Ϣ��<br />
	4�������û�������ʵʩ���������¿ͻ�����չ������</span></p>
<br>	
<p>
	<span style="font-size: 12px"><strong>ְλҪ��</strong><br />
	1����ٶ������ڳ�������˼ά���ݣ���Ů���ޣ����䲻�ޣ�<br />
	2����ѧר������ѧ����<br />
	3�����š����ʣ��������õĹ�ͨ���������õ��ŶӺ�������<br />
	4�������Ρ��Ƶꡢ���ա�н�긣������Ʒ������ش�ҵ�������ȿ��ǣ�<br />
    5�����ڳ���ά�ֺ������ͻ���ϵ��<br /> </span></p>	
<p>


<br>
<p>
	<span style="font-size: 12px"><strong>����ְλ���ƣ���������&nbsp;&nbsp;</strong></span></p>
<p><span style="font-size: 12px">ѧ������ר</span></p>
<p><span style="font-size: 12px">�������ޣ�2��</span></p>
<p><span style="font-size: 12px">��н��3000-4499</span></p>
<p><span style="font-size: 12px">�������ʣ�ȫְ</span></p>
<br>	
<p>
	<span style="font-size: 12px"><strong>��λְ��</strong><br />
	1��Э����˾ά��������ϵ����ɱ��ۡ�̸�С���ͬǩ��ִ�еȹ�����<br />
    2���ط��û����ռ�������Ϣ��<br />
    3�������û�������ʵʩ���������¿ͻ�����չ������<br />
    4���֣ɣпͻ���졣<br />
<br>	
<p>
	<span style="font-size: 12px"><strong>ְλҪ��</strong><br />
	1����ٶ������ڳ�������˼ά���ݣ���Ů���ޣ����䲻�ޣ�<br />
	2����ѧר������ѧ����<br />
	3�����š����ʣ��������õĹ�ͨ���������õ��ŶӺ�������<br />
	4�����ڳ���ά�ֺ������ͻ���ϵ��<br />
	5�������������ڡ�����������ҵ�����۾���Ϳͻ���Դ�߼�ҽѧҽҩ֪ʶ�����ȡ�<br />
	</span></p>	
<p>


<br>
<p>
	<span style="font-size: 12px"><strong>�ġ�ְλ���ƣ���ͻ�����/���۾���&nbsp;&nbsp;</strong></span></p>
<p><span style="font-size: 12px">ѧ������ר</span></p>
<p><span style="font-size: 12px">�������ޣ�3-4��</span></p>
<p><span style="font-size: 12px">��н������</span></p>
<p><span style="font-size: 12px">�������ʣ�ȫְ</span></p>
<br>	
<p>
	<span style="font-size: 12px"><strong>��λְ��</strong><br />
	1��	������ù�˾�ڡ��ⲿ��Դ����ɸ�������Ŀ���ս��Ŀ�ꣻ<br />
	2��������Ͻ�����ڿͻ�����������Ѱ����Ŀ���ᣬ�������ƽ���Ŀ���ȣ�<br />
	3������ھ��ص�ͻ���Ǳ������Ϊ�ͻ��ṩ����Ľ��������<br />
	4���ܹ���ɲ�������̸�й�����<br />
	5����ͻ��������õĿͻ���ϵ��<br />
	6�������������г���Ϣ����ҵ��̬������г�����չ����г����<br />
	7��������Ŀ�Ļؿ����<br />
    8��Э����˾�ڲ���Դ����߿ͻ�����ȡ�<br />
</span></p>
<br>	
<p>
	<span style="font-size: 12px"><strong>ְλҪ��</strong><br />
	1��ר������ѧ����<br />
	2��3���������۹������鼰3�����������ҵ���۾��飻<br />
	3�����õĹ�ͨ�����ʡ�������Դ������<br />
	4����ǿ��̸�й������������õ��������ʣ�<br />
	5���߱�������г��۲����ͷ����ж�������<br />
	6���ܳ��ܽϴ�Ĺ���ѹ����<br />
	7�������������ڡ�����������ҵ�����۾���Ϳͻ���Դ�߼�ҽѧҽҩ֪ʶ�����ȡ�<br />
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
				