/*********************************
Design by Jason.leung,
QQ,147430218
新浪微博,@切片麵包
Email, jason.leung58@icloud.com
*********************************/
/* 代码整理：懒人之家 www.lanrenzhijia.com */
window.onload=function()
{
	var dealy=8000;				//3秒滾動一张圖片，可自行修改
	var oBox=document.getElementById('box');
	var aList=document.getElementById('list');
	var aNum=document.getElementById('num').getElementsByTagName('li');
	var timer=null;
	var now=0;
	info();
	for (var i=0; i<aNum.length; i++)
	{
		aNum[i].index=i;
		aNum[i].onmouseover=function()
		{
			now=this.index;
			play(Running);
		}
	}
	function play(fn)
	{
		for (var i=0; i<aNum.length; i++)
		{
			aNum[i].className='';
		}
		aNum[now].className='active';
		fn(aList,{left:-1600*now});			
	}
	function auto()
	{
		clearInterval(timer);
		timer=setInterval(function()
		{
			now++;
			if(now==aNum.length)
			{
				now=0;
			}
			play(Flexing);
		}, dealy);
	}
	auto();
	oBox.onmouseover=function()
	{
		clearInterval(timer);
	}
	oBox.onmouseout=function()
	{
		auto();
	}
	
	
	
function Flexing(obj,json,fnEnd)
{
	clearInterval(obj.timer);
	obj.timer=setInterval(function()
	{
		var now=0;
		var bStop=true;
		for (var attr in json)
		{
			if(!obj.speed)obj.speed={};
			if(!obj.speed[attr])obj.speed[attr]=0;
			now=parseInt(getStyle(obj,attr));
			if(Math.abs(json[attr]-now)>1 || Math.abs(obj.speed[attr])>1)
			{
				bStop=false;
				obj.speed[attr]+=(json[attr]-now)/5;
				obj.speed[attr]*=0.85;
				var MaxSpeed=50;
				if(Math.abs(obj.speed[attr])>MaxSpeed)
				{
					obj.speed[attr]=obj.speed[attr]>0?MaxSpeed:-MaxSpeed;
				}
				obj.style[attr]=now+obj.speed[attr]+'px';
			}
		}
		if(bStop)
		{
			clearInterval(obj.timer);
			obj.style[attr]=json[attr]+'px';
			if(fnEnd)fnEnd();
		}
	}, 30);
}



function Running(obj,json,fnEnd)
{
	clearInterval(obj.timer);
	obj.timer=setInterval(function()
	{
		var now=0;
		var bStop=true;
		for (var attr in json)
		{
			if(attr=='opacity')
			{
				now=Math.round(parseFloat(getStyle(obj,attr))*100);
			}
			else
			{
				now=parseInt(getStyle(obj,attr));
			}
			var speed=(json[attr]-now)/5;
			speed=speed>0?Math.ceil(speed):Math.floor(speed);
			if(now!=json[attr])bStop=false;
			if(attr=='opacity')
			{
				obj.style.filter='alpha(opacity:'+now+speed+')';
				obj.style.opacity=(now+speed)/100;
			}
			else
			{
				obj.style[attr]=speed+now+'px';
			}
		}
		if(bStop)
		{
			clearInterval(obj.timer);
			if(fnEnd)fnEnd();
		}
	}, 30);
}




function getStyle(obj,name)
{
	if(obj.currentStyle)
	{
		return obj.currentStyle[name];
	}
	else
	{
		return getComputedStyle(obj,false)[name];
	}
}


function info()
{
	var aLink=document.createElement('a');
	var myinfo="";
	aLink.innerHTML=myinfo;
	aLink.onmouseover=function()
	{
		aLink.style.textDecoration='underline';
	}
	aLink.onmouseout=function()
	{
		aLink.style.textDecoration='none';
	}
	document.body.appendChild(aLink);
}



}
/* 代码整理：懒人之家 www.lanrenzhijia.com */