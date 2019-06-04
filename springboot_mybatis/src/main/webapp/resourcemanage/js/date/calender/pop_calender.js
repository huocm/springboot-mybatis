function pop_calender(txt)
{
	var w =263, h = 263;
	var x = showModalDialog('../jscript/date/calender/calender.htm?'+txt.value,'x','dialogWidth:'+w+'px;dialogHeight:'+h+'px;edge:raised;scroll:yes;status:no;help:no;')
	if(x!=null)
	{
		txt.value = x;
	}
}

function pop_month_calender(txt)
{
        var w =263, h = 263;
        var x = showModalDialog('../jscript/date/calender/calender.htm?'+txt.value,'x','dialogWidth:'+w+'px;dialogHeight:'+h+'px;edge:raised;scroll:yes;status:no;help:no;')
        if(x!=null)
        {
                txt.value = x;
        }
}
function pop_calender_bak(txt)
{
	var w =263, h = 263;
	var x = showModalDialog('jscript/date/calender/calender.htm?'+txt.value,'x','dialogWidth:'+w+'px;dialogHeight:'+h+'px;edge:raised;scroll:yes;status:no;help:no;')
	if(x!=null)
	{
		txt.value = x;
	}
}