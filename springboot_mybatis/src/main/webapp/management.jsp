<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="Error.jsp"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<title>��̽���_�������_ȫ��λ����������������</title>
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
		     
		     System.out.println("<br>------��ʼ��;tag="+tag);
		     System.out.println("------��ʼ��;id="+id);
		     System.out.println("------��ʼ��;cid="+cid);	

		     if(id.equals("2")){
		    	 System.out.println("------��������;id="+id);
		    	 if(cid.equals("1")){
		    		 tag="������������"; 
		    	 }
		    	 //if(cid.equals("2")){
              	///	tag="����������";
		    	 //}
		    	 if(cid.equals("3")){
              		tag="��ҽ��������";
		    	 }
		    	 if(cid.equals("4")){
              		tag="���Ի��˶�����";
              	 }
		    	 if(cid.equals("5")){
              		tag="��ʳӪ������";
              	 }
              	if(cid==null|| cid.equals("")){
              		tag="��������";
              		cid="1";
              	 }
              	System.out.println("------��������;cid="+cid);
		     }
		     else
		     {
		    	 //out.println("<br>------��������;id="+id+";id==1?"+(id=="1"));
		    	 if(id.equals("1")){             
              		tag="��������";
              		//out.println("-----------------tag="+tag);
		    	 }
                 if(id.equals("2")){
              		tag="��������";
              		cid="1";
                 }
                 if(id.equals("3")){
              		tag="������Ԥ";
                 }
                 if(id.equals("4")){
              		tag="��������";
                 }
                 if(id.equals("5")){
              		tag="������ѯ";
                 }
                 if(id.equals("6")){
              		tag="˽��ҽ��";
                 }
                 if(id==null||id.equals("")){
              		tag="��������";
              		id="1";
                 }
              }
 //out.println("<br>;tag="+tag);
 //out.println(";id="+id);
 //out.println(";cid="+cid);
 
		 %>
			<span class="home"><a href="index.jsp">��ҳ</a>><a href="management.jsp?id=1">��������</a>><a><%= tag%></a></span>
			<div class="midd">

				<div class="midd_lef">

					<h2>��������</h2>
					<div class="list_hr" style="float:left;">
					</div>

					<div class="lis">
											<span><a href="<%=basePath %>management.jsp?id=1">��������</a></span>
											<span><a href="<%=basePath %>management.jsp?id=2&cid=1">��������</a></span>
											<ul style="display:none" id="m3">
													<li style="list-style:none;"><a style="color:#336699;" id="lis_son" href="<%=basePath %>management.jsp?id=2&cid=1">������������</a></li>
													
													<li style="list-style:none;"><a style="color:#336699;" id="lis_son" href="<%=basePath %>management.jsp?id=2&cid=3">��ҽ��������</a></li>
													<li style="list-style:none;"><a style="color:#336699;" id="lis_son" href="<%=basePath %>management.jsp?id=2&cid=4">���Ի��˶�����</a></li>
													<li style="list-style:none;"><a style="color:#336699;" id="lis_son" href="<%=basePath %>management.jsp?id=2&cid=5">��ʳӪ������</a></li>
												</ul>
											<span><a href="<%=basePath %>management.jsp?id=3">������Ԥ</a></span>
											<span><a href="<%=basePath %>management.jsp?id=4">��������</a></span>
											<span><a href="<%=basePath %>management.jsp?id=5">������ѯ</a></span>
											<span><a href="<%=basePath %>management.jsp?id=6">˽��ҽ��</a></span>

					
					</div>
					<div class="list_hr2" style="float:right;">

					</div>
					<div id="clear"></div>
				</div>
				
				
				<div class="midd_right">
					<div class="midd_right_top">
						<span style="visibility:hidden">��ְ���</span>
						<p><%=tag %></p>
					</div><br/>
				<div id="content1" class="midd_right_midd">
						<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  �����������Ǽ�¼ÿ���˴ӳ������������������������ı仯���Լ����������¹����뽡����ص�һ����Ϊ���¼��ĵ����������������Ҫ����ÿ���˵�����ϰ�ߡ�������ʷ��������������岡ʷ���ֲ�ʷ��������������ķ�������չ�����ƺ�ת��Ĺ��̵ȡ�</p>

 <br>

     		<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  ͨ����������ϵͳ��Ϊ�ͻ����������������Ľ����������Ա㶯̬�۲����彡��״�����������������ұ�������ȱ�ٵ�ҽѧ���ϣ�����¼��ÿ���˼����ķ�������չ�����ƺ�ת��Ĺ��̡�ͨ���Ƚ�һ��ʱ�������������Ϻ����ݣ���ɷ����Լ�����״���ı仯��������չ��������Ч�����������������һ��ҽ�Ʊ����ľ��ߡ�Ϊ�Լ���������������һ���ȼ�����м�ֵ�����飬�����ȥδ�����ⷽ��Ĺ�������ô�����ڿ�ʼ���ۺͱ����ҽ�Ƽ�����ϣ������ƽ���������</p>
	<br>
	<img src="<%=basePath %>images/sub_images/13733324832745.jpg">
	<br>
	<br>
	<strong>������������������</strong>

      <p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  �ݳ������ƣ�Ŀǰ98%����Ⱥ��û��רҵ�ġ���ѧ�ġ���̬�ġ�ϵͳ�ġ����̵ĸ��Ի����ӵ�������ȫ�Ľ����������κ��˶���������Ҫ�ġ��������������뼲��������ģ��������彡��������������Ƶ�ȫ�浵��ϵͳ��</p>
<ol>
 <li>���Լ��̲�ѯ�ġ���̬�ĵ��ӵ��������������ںεض�������ʱ��ѯ��</li>  
  <li>�߱����Եġ���˽�ġ�ר���ͻ����˵ķ�ʵ���ĵ��ӵ�����</li> 
  <li>ȫ��ɼ���ϵͳ����רҵ�����ĵ��ӵ�����</li> 
  <li>����������ʱ�����ģ��������ش��ֵ�Ľ�����־��</li> 
  <li>���κεط����ﶼ����Ӧ�õ���Ҫ���ݣ�Ϊҽ����Ϊ�ṩ��һ����ʵ�Ĳο���</li> 
  <li>ָ�������������õ�����ϰ�ߣ���Ч������ʽ����ʯ�Ĵٽ���ά����</li> 
 <li>���������ļ��ؿ��Գ�ַ�ӳ�������������ƺ�����������Դ�Ϊ����������ȫ�潡��״̬��</li> 
</ol>
         ��������ԭ�򣬽�̽�����������רҵ��ȫ�궯̬����������Ϊ�ͻ������彡����̬�����ṩ���ݡ� 
<br>
 
<br>
<strong>�������������ݣ�</strong>
      <ol>
        <li> ������챨��</li>
        <li>��ʷ���ϣ�ҽԺ�����¼�Ͳ�����</li>
        <li>ʵ���Ҽ�鱨�棨���ֻ��鵥ԭ�����߸�ӡ����</li>
        <li>Ӱ�����ϣ�����CT��B������Ƭ�ȣ�</li>
        <li>�����ʾ�</li>
        </ol>
</div>

<div id="content20"  class="midd_right_midd">
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  ���������ǽ��������������Ҫ��һ������ͨ���ռ�����ٷ�ӳ�������彡��״���ĸ�����Ϣ������Ԥ��ģ����ȷ���μ���Ŀǰ�Ľ���״������չ���ƣ�ʹ�μ������˽��Ƿ��з���ĳ�����Բ���Σ���ԣ��Լ�����������ȣ�Σ�����ж��Ȼ�󣬽����ݼ��������������Խ���Σ������Ϊ�����ṩ���ֺ͸��ƽ����ķ������������˽��ͻ����Բ���Σ���ԣ�ά�����ý���״̬���ٷ�������������������</p>
<br>
<table width="720" height="152" border="0" align="center" cellspacing="0" cellpadding="0">
	<tbody>
		<tr>
			<td width="195" height="35" bgcolor="#bbe8ef">
				<p align="center">
					<span style="font-size: 14px"><strong>���߽�����������</strong></span></p>
			</td>
			<td bgcolor="#bbe8ef">
				<p align="center">
					<span style="font-size: 14px"><strong>����������Ҫ����</strong></span></p>
			</td>
		</tr>
		<tr>
			<td width="195" height="35" bgcolor="#eeeeee">
				<p align="center">
					&nbsp;������������</p>
			</td>
			<td bgcolor="#eeeeee">
				<p>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��ʶ�������գ����̶ȱ����ش󼲲��ķ���</p>
			</td>
		</tr>
		<!-- 
		<tr>
			<td width="195" height="35" bgcolor="#e2e2e2">
				<p align="center">
					����������</p>
			</td>
			<td bgcolor="#e2e2e2">
				<p>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;���Լ���ѹ���ù������˼ʡ�����õ����ƽ��</p>
			</td>
		</tr>
		 -->
		<tr>
			<td width="195" height="35" bgcolor="#eeeeee">
				<p align="center">
					&nbsp;��ҽ��������</p>
			</td>
			<td bgcolor="#eeeeee">
				<p>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ϊ�������Ρ������������������ṩ����</p>
			</td>
		</tr>
		<tr>
			<td width="195" height="35" bgcolor="#e2e2e2">
				<p align="center">
					&nbsp;��ʳӪ������</p>
			</td>
			<td bgcolor="#e2e2e2">
				<p>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;������ʳ���Գ���������</p>
			</td>
		</tr>
		<tr>
			<td width="195" height="35" bgcolor="#eeeeee">
				<p align="center">
					&nbsp;�����˶�����</p>
			</td>
			<td bgcolor="#eeeeee">
				<p>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; �ƶ����Ի������˶������������˶�</p>
			</td>
		</tr>
	</tbody>
</table>
</div>

<div id="content21"  class="midd_right_midd">
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  ȫ��������Ч�Ľ��ͻ������շ���---�����������������ָ�������ٽ�����89.9%���û���ʹ�ú󣬳ɹ�Ԥ���˰�֢�����ಡ����Ѫѹ�ȼ��������л�Ԥ��ҽѧ��ר��ָ���£�Ȩ�������˴��׼����������������</p>
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
					&nbsp;<strong><span style="font-size: 14px">������������</span></strong><br>
					�����л�Ԥ��ҽѧ��ר����������23ҳ���������� ��&nbsp;</p>
			</td>
		</tr>
		<tr height="39">
			<td width="360" height="39" bgcolor="#d0eed9" style="text-align: center">
				<strong>������Ŀ</strong></td>
			<td width="360" bgcolor="#d0eed9" style="text-align: center">
				<strong>������</strong></td>
		</tr>
		<tr height="54">
			<td width="360" height="54" bgcolor="#eaeaea">
				<p>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ȱѪ����Ѫ�ܼ���&nbsp; | &nbsp;����&nbsp; |&nbsp;&nbsp;�ΰ�&nbsp; |&nbsp;&nbsp;��Ѫѹ&nbsp; |&nbsp;&nbsp;��л�ۺ���</p>
				<p>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ����֢&nbsp; |&nbsp;&nbsp;���������Թ���&nbsp; |&nbsp;&nbsp;ǰ���ٰ�&nbsp; |&nbsp;&nbsp;���ٰ�&nbsp; |&nbsp;&nbsp;Ѫ֬�쳣</p>
			</td>
			<td width="360" bgcolor="#eaeaea">
				<p>
					&nbsp;&nbsp;&nbsp;&nbsp;</p>
				<p>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�����������������&nbsp; |&nbsp;&nbsp;�������ʽ����&nbsp; |&nbsp;&nbsp;����ˮƽ����</p>
				<p>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;���Ի��˶�����&nbsp; |&nbsp;&nbsp;���Ի���ʳ����&nbsp; |&nbsp;&nbsp;�����ж�ָ�ϵ�</p>
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
				<strong>��̡����������������桷</strong></td>
			<td width="129">
				&nbsp;</td>
		</tr>
		<tr>
			<td valign="bottom" height="20">
				1���л�Ԥ��ҽѧ�ὡ���������������רҵίԱ��Ȩ��ָ����</td>
			<td valign="center" align="left" rowspan="2">
				<img src="<%=basePath %>images/sub_images/13728300528767.png" alt="" original="/uploads/ckfinder/images/20130703/13728300528767.png" style="display: inline;"></td>
		</tr>
		<tr>
			<td height="20">
				2���ۼ��������Ѿ��ﵽ��ʮ���ˡ�&nbsp;&nbsp;</td>
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
<p><strong>������������</strong></p>
<p>
	<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img style="width: 531px; height: 499px; display: inline;" src="images/sub_images/13744795616933.jpg" alt=""></strong></p>
</div>

<div id="content3" class="midd_right_midd">
  <p>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  ������Ԥ�ǶԸ��弰Ⱥ��Ľ���Σ�����ؽ���ȫ�����Ĺ��̡��Ǳ䱻���ļ�������Ϊ�����Ĺ��������ﵽ��Լҽ�Ʒ���֧����ά��������Ŀ�ģ��Ǵ���ᡢ����������Ӫ�����˶��ĽǶ�����ÿ���˽���ȫ��Ľ������Ϸ��񣬰�����ָ�����ǳɹ���Ч�ذ�����ά������Ľ�����</p>
<br>

 <strong>���ʽ������Ԥ</strong>
      <p>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  ���ʽ������Ԥ������ʳ�ṹ��������˯�ߡ��˶�����෽����������ص�ѹ����ɾ�����ţ�����������ϰ�ߣ������̡��������ơ�ȱ���˶����������۵ȣ�����Σ�����彡���Ĳ������ء�</p>
<br>
<strong>������������ҽѧģʽ��</strong>

       <p>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  �ִ�ҽѧ�о��������ܶ༲���ķ���ԭ�򲢲����������أ������ɲ��������ʽ���������ء��������ص��ۺ�Ӱ������ɵġ������µ�ҽѧ�����Ϊ������������ҽѧģʽ�����ӽ�����Ԥ������˵�������ǵ����ʽ���������أ�������Ŀ�ѧ�������Ե���Ϊ��Ҫ��</p>
</div>

<div   id="content22"  class="midd_right_midd" >
						<h3>
	<strong><img style="width: 180px; float: right; height: 178px; display: block;" src="<%=basePath %>images/sub_images/13727294782595.jpg" alt=""></strong><span style="font-size: 12px"><strong>���Ϊ���ṩ�����ѯ�ͽ�����Ԥ</strong></span></h3>
<p>
	&nbsp;</p>
<ul style="list-style-type: square">
	<li>
		&nbsp;Ӧ��ͻ������������������ɵ�����Σ��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
	<li>
		&nbsp;��������������ͥ����ҵ����ʵ��������ķ���</li>
	<li>
		&nbsp;���������������е�������Ϊģʽ�Ľ���������</li>
	<li>
		&nbsp;�ƺ�ҩ���������������������ϰ�ߺͷǽ�����Ϊģʽ�Ľ���</li>
	<li>
		&nbsp;��ҵǰ���Լ������ص���һ��ȫ����˽⣬ʹ �Լ���Ǳ�ܵ��Ը��õط���</li>
	<li>
		&nbsp;����о����Լ�������������Ŀǰ״��������ʱ</li>
</ul>
<p>
	&nbsp;</p>

</div>

<div id="content23"  class="midd_right_midd">
						<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong> </strong>��ҽ������ָ�������������У������������ͺ����õĻ��������γɵ���̬�ṹ�������ܺ�����״̬�����ۺϵġ�����ȶ��Ĺ������ʡ����������������������������γɵ�����Ȼ����ỷ������Ӧ���������������</p>
<p>
	&nbsp;</p>
<p>
	<strong>��ҽ��������������</strong></p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ��ҽ����ѧ�߾�����30����о������������ʱ�ʶ�ı�׼������&mdash;&mdash;����ҽ���ʷ������ж�������Ӧ�øñ�׼��ȫ����Χ��������ʮ�������в�ѧ���飬��ʾ�����õ�ʵ���ԺͿɲ����ԡ����ݡ���ҽ���ʷ������ж�����׼����Ƶ���ҽ��������ϵͳ������ʵ�á��ɲ�����ǿ������ҽ�Ʒ���ͷ���Ҫ��</p>
<p>
	&nbsp;</p>
<p>
	<strong>��ҽ������������</strong></p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ��ϵͳ��ҽ��������������������ʽ���û��ڽ�����ʾ�����ʱ�ʶ�ٴ������ʾ���Ŀ�У�����ѡ������Լ�֢״���ٴ����֣������ϵͳ�Զ���ʾ�û������������ʣ���˵���������ʵĳ������������������Լ���������������</p>
<p>
	&nbsp;</p>
<p>
	&nbsp;<strong>������������</strong></p>
<p>
	&nbsp;</p>
<p>
	<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img style="width: 532px; height: 695px; display: inline;" src="images/sub_images/13744848487112.jpg" alt="" original="/uploads/ckfinder/images/20130722/13744848487112.jpg"></strong></p>
<p>
	&nbsp;</p>

					</div>

<div id="content24" class="midd_right_midd">
						<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ������������ˮƽ����ߣ���������������˶��������˶�����������֪����ͬ�����˶���Ŀ�Ĳ�ͬ���˶�Ա�˶���Ϊ�˻񽱣��������˶���Ϊ�˱��ֽ������������˶���Ϊ�����������˶���Ϊ�˿����������Ƿ��֣��˶��ٽ���������ÿ��Լ��100�����˶��������ҹ��������˶��������Լ200����������˶�=�����������Ҫ�˶�ǰ�������������Ա���п�ѧ���˶���</p>
<p>
	&nbsp;</p>
<p>
	<strong>�����˶�����Ŀ��</strong></p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; �˶��������������壺��һ�ǰ�ȫ���ڶ��Ǵﵽ���Ի����˶�Ŀ�ġ�ǰ����Ҫ���˶�ǰ��һ�ξ�̬�Ͷ�̬�Ľ����������԰��˶����ս�����ͣ�������ҪΪ��ͬ�����ƶ�һ���˶�������ͨ�����������������˽⵽��ÿ���˶��Ĵ�����ÿ���˶���ʱ�䡢�˶��ķ�ʽ�������˶��������˶����Լ��˶���ǿ�ȵȷ��档</p>
<p>
	&nbsp;</p>
<p>
	<strong>�����˶���������</strong></p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ���۸��Ի��˶����ա��ƶ��˶������������˶�Ч�������á����˶��������������о�����Ҫ��Ӧ�ü�ֵ��</p>
<p>
	&nbsp;<img style="width: 652px; height: 141px; display: inline;" src="<%=basePath %>images/sub_images/13741363668263.bmp" alt=""></p>
<p>
	&nbsp;</p>
<p>
	&nbsp;</p>
<p>
	<strong>������������</strong></p>
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
	<strong>��ʳӪ������Ŀ��</strong></p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ͨ���˵ĸ��Ի�ѭ֤ҽѧȡ�û��彡��״�����͸������ָ�����ݣ������˵Ľ���״�������ݡ�Ӫ��ѧ�����и��Ի�Ӫ��״��������������ʳ��ơ���ʳ��ϱ���ƻ���͡��������������ʳ�ṹ��������ʳϰ�ߣ����մﵽ��ʳƽ���Ŀ�ġ�</p>
<p>
	&nbsp;</p>
<p>
	<strong>��ʳӪ��������</strong></p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; �������ԣ���������ȱɶ�ͳ�ɶ������ٳԶ���Ϊԭ��</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ��������������������ʳϰ��������ѭ֤��ʳ������������ʳ�ṹ��ơ���ʳ��ϱ���ơ���ʳ�ṹ��������ʳѭ֤ʵʩ������������¼��</p>
<p>
	�ɸ������ʡ�����״���͸��Ի�����ÿ3-6����һ��ѭ����</p>
<p>
	&nbsp;</p>
<p>
	<strong>��ʳӪ����������</strong></p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ��Ŀ�ꡢ�мƻ��ؿ�ѧ��ʳ���䣬�����ǻ������������еķ�ʸԤ�����ֳ���Σ�����彡�������Բ������򲡡����Ĳ��ȼ����ķ��������������������ʳӪ������������Ŀ�ġ�</p>
<p>
	&nbsp;&nbsp;&nbsp;<img src="<%=basePath %>images/sub_images/13741365219883.bmp" alt="" style="display: inline;"></p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
<p>
	&nbsp;<strong>������������</strong></p>
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
<p>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ���ӵ�о�������ȵ�����ҽԺ�ٴ�һ��ר�Һͽ�������ʦ�Ŷӣ������Ⱥ�ص㡢�ճ�����ϰ�߼����������������ܻ�ӭ�Ľ�����������ֳ�ʮ�����һ�ٶ���������⡣</p>
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
					<strong>��������</strong><br>
					<br>
					&nbsp;</p>
				<p style="text-align: center">
					<br>
					<strong>��������</strong><br>
					&nbsp;</p>
			</td>
			<td width="254">
				<p>
					���Լ��������ҽ�������<br>
					�������ҹ���<br>
					������Ⱥ���ұ���<br>
					&nbsp;</p>
				<p>
					���ı���Ʒ���������� &mdash; �����ȷѡ�񱣽�Ʒ<br>
					���������͡���ҵ����μ�ã� &mdash; ���콡������<br>
					������һ�䣬�������ֶ� &mdash; ������ˮ</p>
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
					<strong>��ʳӪ��</strong><br>
					<br>
					&nbsp;</p>
				<p style="text-align: center">
					<br>
					<strong>���콡��</strong><br>
					&nbsp;</p>
			</td>
			<td>
				<p>
					��ס�졢������<br>
					�����߲˸ò��ó� &mdash; �ճ���ʳ��ѧ��<br>
					�����ǰ�ѹ�����Ե��� &mdash; Ӫ����ѹ<br>
					&nbsp;</p>
				<p>
					�칫�Ұ������ҹ���<br>
					�칫�ұ����� &mdash; �����<br>
					�칫�һ����뽡��</p>
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
					<strong>�˶�����<br>
					<br>
					&nbsp;</strong></p>
				<p style="text-align: center">
					<br>
					<strong>������<br>
					&nbsp;</strong></p>
			</td>
			<td>
				<p>
					����Ҫ��������<br>
					�˶��ǰ�˫�н����˵��Լ���ô�죿<br>
					��������������˶�ʹ����������<br>
					&nbsp;</p>
				<p>
					������������ô�� &mdash; ��������ѹ������<br>
					�͡�ѹ�������� &mdash; �˶���ѹ<br>
					��ע��йذ�����</p>
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
					<strong>���Ա���<br>
					<br>
					&nbsp;</strong></p>
				<p style="text-align: center">
					<br>
					<strong>Ů�Ա���<br>
					&nbsp;</strong></p>
			</td>
			<td>
				<p>
					�칫�����Խ�����κǻ�<br>
					ǰ���ټ����ķ�����Ԥ��<br>
					����Ҳ�и����ڣ���֪����<br>
					&nbsp;</p>
				<p>
					Ů�Գ���������<br>
					�칫��Ů�����ұ���<br>
					�������ұ���</p>
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
					<strong>��ҽ����<br>
					<br>
					&nbsp;</strong></p>
				<p style="text-align: center">
					<br>
					<strong>�����꽡��<br>
					&nbsp;</strong></p>
			</td>
			<td>
				<p>
					<br>
					��������ҽ����<br>
					����ϵͳ�������ߵ�����<br>
					�ļ���ҽ����<br>
					&nbsp;</p>
				<p>
					���ӣ�����ô�ˣ� &mdash; ��������������<br>
					�򿪡���Ĭ������ &mdash; �������ĺ��������Ŷ�<br>
					�����㣿�ͷ��㣿�Ҹ���ô���� &mdash; �ҳ�Ҳ����ְҵ</p>
			</td>
			<td>
				&nbsp;</td>
		</tr>
	</tbody>
</table>
 
</div>

<div id="content5"  class="midd_right_midd">
<p>	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;        ��̽�����ѯʦ�����ý���ѧ�Լ����ѧ�Ƶ�רҵ֪ʶ����ѭ����ѧԭ��ͨ��������ѯ��������ѯ�߽�𽡿����������ȫ���˽�Ӫ���뽡���Ļ���֪ʶ���ǻ��Լ��ͼ������Ľ��������ʱش��ṩ���ּ����Ĳ���֢״�����ơ���ҩ��Ԥ���������Ϣ����ҽ��ѯ��Ϊ�����ǽ��ѣ�ָ����ѯ�����������ҽ�ѵ����⣬���õĻ���Ŀǰ��ҽ�ѵ�������</p>

 <br>

<strong>���Ϊ�ͻ��ṩ�Ľ���ר����ѯ���������</strong>
<ul>
    <li> ������ȫ��ҽ�Ʒ�������</li>
    <li>��Ⱥ������Ϣ�������������������շ���</li>
    <li>�ƶ��������գ���Ʊ��շ���</li>
    <li> �ṩҽ��Э����������������סԺ�ķ���</li>
    <li>���������Լ����ṩҽ�ƺͱ�����ѯ����</li>
    <li>�����Ѳ�֢��������Ԯ����ר���ṩ�ڶ�ҽ���� ����Э�����ƾ��ߡ�</li>
<ul>
   </p>  
</div>

<div id="content6" class="midd_right_midd">

   <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ˽��ҽ����ְ���ǰѴ��ڽ������ǽ���״̬����ά�ֺͻظ�������״̬��ǿ������Ϊ���ġ��Լ�ͥΪ��λ�����������彡����ά����ٽ�������ִҵҽʦ�ʸ��ҽ�����ǽ��ܼҷ������Ҫ�ṩ�ߡ�</p>

 <br>

     <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    ��̵�˽��ҽ�����ݿͻ��ṩ�ĸ��˻������ϼ����������Ϣ����ҽ������Ϣ������Ա�������������ۺϽ�����Ϣ�����������ͽ��ܷ������ڽ�������������������ݻ����ϣ����轡���������ƶ������ٽ��ƻ������Լ����Ľ�����������������ϰ�ߡ���ʳ���˶���������غ�Ԥ�������ڼ���״̬ʱ������ר�Ҹ����ٴ�״������ʱ��������ʵ�ҽԺ��ר�ң�ȫ�����ĵ���ҽ����Э��������ҽԺ��ר��֮��Ĺ�ϵ���ڳ��ڻ������Լ���ʱ������ר�Ҷ��ڸ��ݲ��鷢չ������������ƶ���������ƻ����ṩ���Լ�����ҽ����ѯ���������Լ������ </p>

 <br>

<strong>˽��ҽ��������ľ���</strong>

    <ul>
    <li>����Ϊ�����Թػ�Ϊ����</li>
    <li>��΢�Ž����ӽ���Դͷ����</li>
    <li>������ʵ���Խ��ʵ������Ϊ����Ŀ��</li>
    <li>ע�ط����Կͻ�����Ϊ��Ҫ��׼</li>
 </ul>
 
<br>
<strong>˽��ҽ����ְ��</strong>
 <ul>
   <li>���������˺�Э���ߣ��������ҽ�ơ������˷�</li>
   <li> �Կͻ�Ϊ���Ĳ���ͻ����ƹ��̣��ṩרҵ֧��</li>
   <li>��Ԥ��Ϊ�������ڿͻ����������������������������</li>
   <li>�Ը��˽���Ϊ���ģ�ͬʱ�ṩ��ͥ����ָ����������ά�ּ�ͥ�Ľ������Ҹ�</li>
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