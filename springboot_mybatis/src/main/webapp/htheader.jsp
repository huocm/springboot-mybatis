
<table width="100%" height="100" >
	<tr>
	<td>
		<img src="${basePath}image/logo_leading.gif" width="411" height="68" align="left" />
	</td>
	</tr>
</table>
<%
if(session.getAttribute("name")!=null){
	out.println(session.getAttribute("name")+",welcome!!! ");
}
 %>
<hr color="#FF9900">
