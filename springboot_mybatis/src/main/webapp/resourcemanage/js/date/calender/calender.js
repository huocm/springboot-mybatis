//Calender.js V1.7.1;
//Copyright By Wang Hao 2001-2002;
//E-Mail: wildwind_zz@21cn.com;
//Caoxi Rd.336# 2F,ShangHai,China PR;

var arr_m_day = new Array();
var arr_w_day  = new Array("Sun","Mon","Tue","Wed","Ths","Fri","Sat");
var now = new Date();
	var yyy = now.getYear();//年;
	var mmm = now.getMonth() + 1;//月;
	var ddd = now.getDate();//天;
var y,m,d,j,k;

//重置年份;
function reset_y(i)
{
	if(!i)
	{
		i = 0;
	}
	y = parseInt(txt_y.value,10) + i;
	txt_y.value = y;
	refresh_calendar();
}

//重置月份;
function reset_m(i)
{
	if(!i)
	{
		i = 0;
	}
	m = parseInt(txt_m.value,10) + i;
	if( m > 12)
	{
		m = 1;
		y  = y + 1;
	}
	if( m < 1)
	{
		m = 12;
		y  = y - 1;
	}
	txt_y.value = y;
	txt_m.value = m;
	refresh_calendar();
}

//格式化日期;
function formatDate(y0,m0,d0)
{
	var y1 = y0;
	var m1 = parseInt(m0,10)>9?m0:"0" + m0;
	var d1 = parseInt(d0,10)>9?d0:"0" + d0;
	return y1 + "-" + m1 + "-" + d1;
}

//刷新数组;
function refresh_array()
{
	now.setYear(y);
	now.setMonth(m-1);
	now.setDate(1);
	j = now.getDay();
	switch(m)
	{
		case 2:
			k = (y%400==0||(y%4==0&&y%100!=0))?29:28;
			break;
		case 4:
		case 6:
		case 9:
		case 11:
			k = 30;
			break;
		default:
			k = 31;
	}

	for(var i=0;i<j;i++)
	{
		arr_m_day[i]=null;
	}
	for(var i=j;i<j+k;i++)
	{
			arr_m_day[i] = i - j + 1;
	}
	for(var i=j+k;i<38;i++)
	{
		arr_m_day[i]=null;
	}
}
//填充日历;
function refresh_calendar()
{
	refresh_array();
	var tmp;
	for(var i=0;i<arr_m_day.length;i++)
	{
		tmp = arr_m_day[i];
		if(tmp==null)
		{
			tmp = "&nbsp;";
		}
		document.getElementById("day_"+i).innerHTML = tmp;
	}
}
//画日历表格;
function bulid_celender()
{
	var Cw = 32;//单元格宽度;
	var Ch = 24;//单元格高度;
	var Tw = Cw * 7 + 4 * 8;
	var Th = Ch * 8 + 4 * 9;
	var str = "";
	str +="<table width=" + Tw + " height=" + Th + " border=1 bordercolor=menu cellspacing=2 cellpadding=0 bordercolor=menu style='position:absolute;left:0;top:0;font-size:12px;font-family:宋体;background-color:menu;z-index:1;'>\n"
		+ "<tr height=" + Ch + ">"
		+ "<td colspan=5>"
		+ "<input style='width:16px;height:22px;background-color:menu;border:1px solid dimgray;font-family:webdings;font-size:10px;cursor:default;text-align:right' value=3 onclick='reset_y(-1)' onselectstart='return false' readonly>"
		+ "<input name=txt_y type=text maxlength=4 style='width:36px;height:22px;padding-top:4px;text-align:center;background-color:menu;margin-left:2px;margin-right:2px;border:1px solid dimgray;font-family:宋体;font-size:12px;' onchange='check_y(this)' onfocus='this.select()' value='" + y + "'>"
		+ "<input style='width:16px;height:22px;background-color:menu;border:1px solid dimgray;font-family:webdings;font-size:10px;cursor:default;text-align:left;' value=4 onclick='reset_y(+1)' onselectstart='return false' readonly>"
		+ "&nbsp;"
		+ "<input style='width:16px;height:22px;background-color:menu;border:1px solid dimgray;font-family:webdings;font-size:10px;cursor:default;text-align:right' value=3 onclick='reset_m(-1)' onselectstart='return false' readonly>"
		+ "<input name=txt_m type=text maxlength=2 style='width:24px;height:22px;padding-top:4px;text-align:center;background-color:menu;margin-left:2px;margin-right:2px;border:1px solid dimgray;font-family:宋体;font-size:12px;' onchange='check_m(this)' onmouseover='setstyle(this)' onclick='set_mon_value(this)' onfocus='this.select()' value='" + m + "'>"
		+ "<input style='width:16px;height:22px;background-color:menu;border:1px solid dimgray;font-family:webdings;font-size:10px;cursor:default;text-align:left;' value=4 onclick='reset_m(+1)' onselectstart='return false' readonly>"
		+ "</td>"
		+ "<td colspan=2 align=right>"
		+ "<input type=text style='width:36px;height:22px;padding-top:4px;text-align:center;background-color:menu;border:1px solid dimgray;font-family:宋体;font-size:12px;cursor:default;' onclick='set_empty()' value=置空 readonly>"
		+ "</td>"
		+ "</tr>\n"
		+ "<tr height=" + Ch + " style='background-color:gray;color:white'>\n";
		for(var i=0;i<arr_w_day.length;i++)
		{
			str += "<td width=" + Cw + " align=right style='border:1px solid dimgray;padding:2px;'>" + arr_w_day[i] + "</td>";
		}
	str += "</tr>";
	for(var i=0;i<6;i++)
	{
		str += "<tr height=" + Ch + ">";
		for(var j=0;j<7;j++)
		{
			str +="<td id='day_" + ( ( i * 7 ) + j) + "' align=right valign=top "
				+ "onmouseover='m_over(this)' "
				+ "onmouseout='m_out(this)' "
				+ "onclick='set_value(this.innerHTML)' "
				+ "style='"
				+ "border:1px solid dimgray;padding:2px;"
				+ "color:" + getColor(j) + ";"
				+ "'>"
				+ "&nbsp;</td>";
		}
		str += "</tr>";
	}
	str += "</table>";
	document.write(str);
}

//set mouse
function setstyle(obj)
{
  obj.style.cursor="hand";
}

//获取颜色;
function getColor(n)
{
	var color = null;
	switch(n)
	{
		case 0:
			color = "red";
			break;
		case 6:
			color = "green";
			break;
		default:
			color = "";
	}
	return color;
}

//返回当前日期;
function set_value(n)
{
	if(n!="&nbsp;")
	{
		d = parseInt(n,10);
		window.returnValue = formatDate(y,m,d);
		self.close();
	}
}
//返回空字符串;
function set_empty()
{
	window.returnValue = "";
	window.close();
}


//创建日历;
function create_calender()
{
	//初始化参数;
	var param = window.location.search;
	var len = param.length;
	param = param.substring(1,len);
	//alert(param);
	if(param!="")
	{
		y = parseInt(param.substring(0,param.indexOf("-")),10);
		m = parseInt(param.substring(param.indexOf("-")+1,param.lastIndexOf("-")),10);
		d = parseInt(param.substring(param.lastIndexOf("-")+1,param.length),10);
		//alert(y+":"+m+":"+d);
	}
	else
	{
		y = yyy;
		m = mmm;
		d = ddd;
		//alert(y+":"+m+":"+d);
	}
	//画日历表格;
	bulid_celender();
	refresh_calendar();
}

function set_mon_value(obj)
{

  var d =1;
       var m=obj.value;
       window.returnValue = formatDate(y,m,d);
       self.close();
}

function m_over(obj)
{
	if(obj.innerHTML!="&nbsp;" && obj.innerHTML!="")
	{
		obj.style.borderWidth = "2px";
	}
}
function m_out(obj)
{
	if(obj.innerHTML!="&nbsp;" && obj.innerHTML!="")
	{
		obj.style.borderWidth = "1px";
	}
}

function check_y(txt)
{
	var x = txt.value;
	if(isNaN(x))
	{
		alert('错误年份(必须为数字)!!!');
		txt.focus();
	}
	else
	{
		if(x.length!=4)
		{
			alert('错误年份(长度为4位)!!!');
			txt.focus();
		}
		else
		{
			y = parseInt(txt.value,10);
			refresh_calendar();
		}
	}
}
function check_m(txt)
{
	var p = txt.value;
	if(isNaN(p))
	{
		alert('错误月份(必须为数字)!!!');
		txt.focus();
	}
	else
	{
		if(p.length!=2 && p.length!=1)
		{
			alert('错误月份(长度1-2位)!!!')
			txt.focus();
		}
		else
		{
			q = parseInt(p,10);

			if(q<1 || q>12)
			{
				if(q<1)
				{
					alert("错误月份(必须大于等于1)!!")
					txt.value = '1';
					txt.select();
				}
				else
				{
					alert("错误月份(必须小于等于12)!!")
					txt.value = '12';
					txt.select();
				}
			}
			else
			{
				m = parseInt(txt.value,10);
				refresh_calendar();
			}
		}
	}
}