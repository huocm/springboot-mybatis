<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="Error.jsp"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<title>��̽���_�������_ȫ��λ����������������</title>
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
		     System.out.println("<br>------��ʼ��;tag="+tag);
		     System.out.println("------��ʼ��;id="+id);
	    	
		     if(id==null){
		    	 id="1";
		    	 tag="��ְ���";
		     }
		     
		     if(id.equals("1")){             
          		tag="��ְ���";
	    	 }

	    	 else if(id.equals("3")){ 
          		tag="��ҵ�������";
             }
	    	 else if(id.equals("4")){ 
          		tag="�߶����";
             }
	    	 else if(id.equals("5")){ 
          		tag="��̽�����쿨";
             }

	    	 else if(id.equals("7")){ 
	          		tag="������";
	             }
	    	 else {
          		tag="��ְ���";
          		id="1";
             }
		     System.out.println("<br>------���;tag="+tag);
		     System.out.println("------���;id="+id);

		     %>
			<span class="home"><a href="<%=basePath %>index.jsp">��ҳ</a>><a href="<%=basePath %>medical.jsp?id=1">�������</a>><a><%=tag %></a></span>
			<div class="midd">

				<div class="midd_lef">

					<h2>�������</h2>
					<div class="list_hr" style="float:left;">
					</div>

					<div class="lis">
											<span><a href="<%=basePath %>medical.jsp?id=1">��ְ���</a></span>
											
											<span><a href="<%=basePath %>medical.jsp?id=3">��ҵ�������</a></span>
											<span><a href="<%=basePath %>medical.jsp?id=4">�߶����</a></span>
											<span><a href="<%=basePath %>medical.jsp?id=5">��̽�����쿨</a></span>
								
											<span><a href="<%=basePath %>medical.jsp?id=7">������</a></span>
					
					</div>
					<div class="list_hr2" style="float:right;">

					</div>
					<div id="clear"></div>
				</div>
				<div class="midd_right">
					<div class="midd_right_top">
						<span style="visibility:hidden">��ְ���</span>
						<p> <%=tag %> </p>
					</div><br/>
				<div id="content1" class="midd_right_midd">
						<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ��ְ�����ר�����֮һ��ּ��ͨ����챣֤��ְԱ��������״���ʺϴ��¸�רҵ�������ڼ��������в�����ɴ�Ⱦ�����У����������������ԭ��Ӱ�����ˡ���ְ�������Թ̶��������Ŀ������׼��ѡ��רҵ��������ܱ�֤�����������������ְ������ݽ�Ϊ�򵥣����Բ�����ȫ���潡����졣<br />
	&nbsp;</p>
<p>
	<span style="font-size: 12px"><strong>��ְ�������</strong></span></p>
<p>
	1.����绰400 003 2239������ѯ��ѡ�������Ŀ��ԤԼ���ʱ��</p>
<p>
	2.��ȡ���֪ͨ��������</p>
<p>
	3.��ǰ��顾��Ѫ�������ʳ�������ɷ֡�</p>
<p>
	4.�Ͳͣ���ѡ��</p>
<p>
	5.���Ƽ��</p>
<p>
	6.�ʳ�(�ӹ���������ǰ����)</p>
<p>
	7.�˶������Ŀ</p>
<p>
	8.�����֪ͨ����������������</p>
<p>
	9.�������ȡ<br />
	&nbsp;</p>
<p>
	<span style="font-size: 12px"><strong>�����Ҫ��Ŀ����</strong></span></p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��ְ������Ŀ���ݲ�ͬ����ҵ��������ͬ���ܶ��Ǳؼ���Ŀ����һ���飬Ӫ����������Ѫѹ����ߡ����أ��ڿ����ز����β�������ʡ����ɡ��������Ρ�Ƣ�ȣ�������ܰ͡���״�١���������֫����������Ѫ���桢�������ܣ���͸���ġ��Ρ����ļ�顣��ְ����ײͰ������������ܵ���Ŀ�����⣬���Ը�����ҵ���߸��˵�Ҫ��������Ӧ����Ŀ��</p>

					</div>


<div id="content3" class="midd_right_midd">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  ��ҵ������죬����Ϊ����Ա�����ֶΣ�����˾��Ա���Ĺػ��䵽ʵ����Ա�����彡���ǹ�˾���ĲƸ���Ҳ�ǹ�˾�����ȶ���չ�ı�֤�����������Ա������Ч�ʣ����ܼ���������ȱ�ڵȲ����Ĺ�����Э��Ӱ�칤�����ȣ���Ա���������ģ����Ա����ҵ�����к͹������飬��߹���Ч�ʣ�����������Դ��ʧ��ͨ������������콵�ͷ����ʣ����ٲ��ٺͽ����¼٣����Ͳ��ٹ�ʱ���¼ٹ�ʱ����֤��ҵ��������ת�����ֹ�˾��Ա�������Թػ���
 <br>
 <br>

<strong>��̽�����ҵ�������רҵ��</strong>
<ol>
<li>��̽��������˽��������ĺ͹���ҽԺ�Ļ�����ʩ�����׷�������ۿۣ�ѡ���ʺ�����������ġ�</li>
<li>�������ñ�����ӽ������������и��˻���ҵ���彡�������ͬʱ�������ԲμӸ��Ի��Ľ���������ٽ���������̽������ڲ�ͬ�ĸ��Ի���������</li>
<li>�����쳣ָ����ʾ�⣬��̽�������������Ի��ĵ������ͽ��顣</li>
<li>ȷ�Ϸ�����Ŀ�󣬽�̽�������ϸ��֪��ǰ�����С����ע�������������̡�</li>
<li>��רҵ�ǶȰ����ͻ���������Ŀ�����ݿͻ����ѡ����ƶ��ʺϵ�����ײͣ����ȫ������������ģ��ͻ����Ե����̽�����ݵ�����ԤԼƽ̨���򲦴�ȫ��ͳһ400�绰ԤԼƽ̨��</li>
</ol>
 <br>
<strong>��̽�����ҵ�����������</strong>
<ol>
<li>ӵ�к�������ϵ�����ڹ�ƽ��������רҵ���ල�ĵ��������칫˾</li>
<li>��ݸ�Ч������ȫ���Ľ��켰ҽ�Ʊ�����Դ</li>
<li>���400���ߡ���ݵķ�������</li>
<li>���ݿͻ�������ŵ�����Ȳ�����ʵ�ʿ͹�����</li>
<li>ǿ��Ŀͻ����ݺ�����������</li>
<li>���Ի������缰�绰ԤԼƽ̨</li>
<li>רҵ��ҽ����Դ�Ŷ�</li>
</ol>
</div>

<div id="content4" class="midd_right_midd">
<p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ͨ��Ӫ�������˶��������ع�����巽�����������Ļ�Ա���ڻؼҺ󲢲��ǽ��������֮�߸�Ŀ���Ƕ��Լ��Ľ������˹���ͼල�� ���������������¡��߶���족�����ڡ��߶���족��ͬ���ԣ����û������ķ�����û�а취ͻ�����컯�ġ��߶�����б�����ͨ�����������������ĳ�������רҵ��ϸ�¡���Ƕȡ����߶����ĳ����������ơ���ٿƼ�鶼���ϸ�£�������Щ�߶���������ȫ����Ƭ�����Ƚ����������и߶���춼��ǩԼר�ҵ�ȫ�ƻ����Ա����������ר�ҵ�һ��һ������</p> 

 <br>

<strong>1.ʲô�������ʺ�ѡ��߶���죿</strong>

<p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  ���������Ⱥ�����������Ϻõ���Ⱥ�����ʺϸ߶���졣���ڵĸ߶������Ⱥ�����֣��н�����ʶ�����������ġ�����������������ʶ��̫ǿ�ġ����������������ġ���ҽѧ�ǶȽ��������Ŀ�Ǹ�������μ�������ʷ�����ģ�������û�������쳣���򳣹��鼴�ɣ�����Ҫ����̫�����ܲ���Ҫ�ġ�ҽѧ��Ⱦ��������ȵĲ�Ѫ��X��ȣ�������ѡ�������Ŀ����Ӧ�ο�����Σ�һ���30�꿪ʼ����5���10�껮�֣���</p>

 <br>

<strong>2.�߶����ļ����ֵ�Ƿ�����ʵ��ӳһ���˵����彡��ˮƽ�����һЩ������ֵ���쳣������߸����Ӧ�ԣ�</strong>

��<p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  ������ֵ��ô��׼��������ô͸����Ҳֻ�ܷ�ӳ��һ�׶εĽ���״������Ϊ�������ﶼ���ڲ��ϱ仯�ģ�һ�μ����������Ϊ���ۣ����Խ���ÿ��������һ�ν�����飬��������������ԡ��׶����������������ֵ�ı仯�������ɶ�̬�˽⽡��״�����Ӷ����緢���쳣���ƣ��Ѽ�������ɱ��ҡ�����Ѫ���������쳣��ֵ��Ӧ�������ӣ������ؿֻţ�Ҫȥ�����飬��̬���쳣��ֵ�Ƿ��м������ơ�</p>

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
 <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  ��������ͨ��ѪҺ��������Һ��ϸ����DNA���м��ļ�������ȡ�����������Ŀ�ǻ�Ĥϸ����������֯ϸ���������������Ϣ��ͨ���ض��豸�Ա������ϸ���е�DNA������Ϣ����⣬�����������еĸ��ֻ���������Ӷ�ʹ�������˽��Լ��Ļ�����Ϣ��Ԥ֪���廼�����ķ��գ��Ӷ�ͨ�������Լ��������������ϰ�ߣ�������ӻ������ķ�����</p>

 <br>

<strong>�������볣����������</strong>
   <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      �׸л������볣����춼����Ԥ�������ã������߷�ӳ���ǲ�ͬ�Ľ׶Ρ�һ�ּ����ӿ�ʼ������Ҫ�����ܳ���ʱ�䡣������������û����ʱ��Ԥ�������ᷢ��ʲô���������ڼ��ĵ�һ�׶�;���������Ƿ��������󣬼�������ʲô�̶ȡ��磺���ڡ����ڵȵȣ������ڼ��ĵڶ����׶Σ����ٴ�ҽѧ�ķ��롣����˵��������������Ԥ�������ķ���������ͳ������ֶ����޷���������Ԥ�����á�</p>
<br>
     <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   �����Ҫ��������Ѿ����ֵ��ٴ����������Ϻͼ�飬������Ҫ��������ϼ��������ƣ��޷��ڲ���֮ǰԤ֪���¸��ࡢ����Ľ��ۡ�Ҳ����˵���ڼ�����Ԥ���ϣ���ͳ���ʮ�ֵı������ͺ���ʵ�кܶ༲�������������ף���һ���������ִ�ҽѧ���������޲ߣ����߼�����˾Ϳ���һ��ʹ����鷳��</p>

 
<br>
<strong>������׼ȷ��</strong>

    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    ��ͥ���Ŵ�ʷ���Ǽ����׸л�����Ŵ�����ɵģ����Ի������ܹ�������Щ�Ŵ����׸л����ͣ����׼ȷ�ʴﵽ99.9999%��</p>
</div>
					
					<!-- 
					<div class="information">
					<h2>������ѯ</h2>
						<div class="letter">
							<form name="form1" action="medical.php?id=" method="post">
								<table>
								<tr>
		                		<td colspan="2" align="center"><p id="notice"></p></td>
		                		</tr>
		                    	<tr><td align="right" style="font-family:'΢���ź�'">����:</td>
		                    		<td><input type="text" id="name" name="name" style="width:275px"/><span class="error" for="name" id="name_error"> ����������</span></td>
		                    	</tr>
		                        <tr><td align="right" style="font-family:'΢���ź�'">�绰:</td>
		                        	<td><input type="text" id="tel" name="tel" style="width:275px" onKeyUp="this.value=this.value.replace(/\D/g,'')"  onafterpaste="this.value=this.value.replace(/\D/g,'')"/>
		                        	<span class="error" for="tel" id="tel_error">������绰</span>
		                        </tr>
		                        <tr><td align="right" style="font-family:'΢���ź�'">�ʼ�:</td>
		                        <td><input type="text" id="email" name="email" style="width:275px"/>
		                        <span class="error" for="email" id="email_error">�������ʼ�</span>
		                        </tr>
		                        <tr><td align="right" style="font-family:'΢���ź�'">������ϵ��ʽ:</td><td><input type="text" name="other" style="width:275px"/></td></tr>
		                        <tr><td align="right" style="font-family:'΢���ź�'">����:</td><td><textarea style="resize:none;width:418px;height:85px" name="contents" ></textarea></td></tr>
		                        <tr>
		                        	<td></td>
		                            <td>
		                                <input id="btn1" type="submit" name="submit" value="ȷ��"/>
		                                <input type="reset" name="" value="�޸�"/>
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