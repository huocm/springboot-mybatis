<%@ page language="java" contentType="text/html; charset=utf-8"                                                                                                                                                                                                                                                                                                                                                       
    pageEncoding="utf-8"%>      
<script>
function onchecks(){
       
       var tr1 = document.getElementById("tb").insertRow();
       index= tb.rows.length;
       var name="name"+index;
       var standand="standand"+index;
       var unit="unit"+index;
       var amount="amount"+index;
       var price="price"+index;
       var remark="remark"+index;  
       var td1 = tr1.insertCell();
       td1.width = "100px";
       td1.align = "center";
       td1.innerHTML="<input type='text' name='name' id='name' class='fulltext required'/>";    
       var td2 = tr1.insertCell();
      td2.width = "100px";
      td2.innerHTML="<input type='text' name='standand' id='standand' class='fulltext required' />";
       var td3 = tr1.insertCell();
      td3.width = "100px";
      td3.innerHTML="<input type='text' name='unit' id='unit' class='fulltext required' />";
       var td4 = tr1.insertCell();
      td4.width = "100px";
      td4.innerHTML="<input type='text' name='amount' id='amount' class='fulltext required' />";
       var td5 = tr1.insertCell();
      td5.width = "100px";
      td5.innerHTML="<input type='text' name='price' id='price' class='fulltext required' />";
       var td6 = tr1.insertCell();
      td6.width = "100px";
      td6.innerHTML="<input type='text' name='remark' id='remark' class='fulltext' />";
      index++;
}
</script>
<table id="tb">
<tr>
    <td class="title" width="1%" nowrap>名称</td>
    <td class="title" width="1%" nowrap>规格</td>
    <td class="title" width="1%" nowrap>单位</td>
    <td class="title" width="1%" nowrap>数量</td>
    <td class="title" width="1%" nowrap>单价(￥)</td>
    <td class="title" width="1%" nowrap>备注</td>
   </tr>
  <tr>
    <td width="1%">
     <input type="text" name="name" id="name1"  />
    </td>  
    <td width="1%">
     <input type="text" name="standand" id="standand1" />
    </td>  
    <td width="1%">
     <input type="text" name="unit" id="unit1" />
    </td>   
    <td width="1%">
     <input type="text" name="amount" id="amount1" />
    </td>   
    <td width="1%">
     <input type="text" name="price" id="price1" />
    </td>      
    <td width="1%">
     <input type="text" name="remark" id="remark1" />
    </td> 
   </tr>
</table>
<input type="button" value="添加行" onclick="onchecks();">  