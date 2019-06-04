
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
<!--
<input  type="button"  name="dy"  value="打印"  onclick="btnPrint(document.windows)"  > &nbsp;&nbsp;
-->
<input  type="button"  name="dy"  value="    打印    "  onclick="fprint()"  > &nbsp;&nbsp;

<input type="button" class="btn" value="    返回    " name="B1" onClick="javascript:history.back(-1)">

<!--
 <input  type="button"  name="gb"  value="关闭"  onclick="window.close()"  >
 -->

</div>
