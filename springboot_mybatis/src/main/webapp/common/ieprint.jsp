
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
<!--
<input  type="button"  name="dy"  value="��ӡ"  onclick="btnPrint(document.windows)"  > &nbsp;&nbsp;
-->
<input  type="button"  name="dy"  value="    ��ӡ    "  onclick="fprint()"  > &nbsp;&nbsp;

<input type="button" class="btn" value="    ����    " name="B1" onClick="javascript:history.back(-1)">

<!--
 <input  type="button"  name="gb"  value="�ر�"  onclick="window.close()"  >
 -->

</div>
