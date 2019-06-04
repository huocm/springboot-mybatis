//*************** 行选择改变颜色****************************
  var flag="-1";
  var param = 0;
  
  function changeTrColor(id)
  {

	if(!(flag=="-1"))
	{
   		 //alert("id1="+id);
   		 eval(""+flag+".bgColor='#ffffff'");
    }
    //首先要执行奇偶行颜色初始化，然后再改变选定行颜色，否则颜色会乱掉。
    jo();
    eval(""+id+".bgColor='#dfe5f2'");
    //document.getElementById(id).style.backgroundColor="red";
    //alert("id2="+id);
    flag = id;
	param = flag.substring(1,flag.length);	
  }
  
//奇偶行默认颜色
function jo(){
    //alert("进入tr奇偶色");
	//获取table
	var tb1 = document.getElementById("table0");
	//获取table中的tbody
	//var tbody = tb1.getElementsByTagName("tbody")[0];
	//获取tr
	var trs = tb1.getElementsByTagName("tr");
	//根据奇、偶行显示不同的背景颜色
	for(var i=0; i<trs.length;i++){
		//alert("进入tr奇偶色循环");
		if(i%2==0){
			trs[i].bgColor="#FFFFFF";
		}else{
			trs[i].bgColor="#F9F9F9";
		}
	}
}
  
//***************两个SELECT框相互移动item*************************

sortitems = 1;  // Automatically sort items within lists? (1 or 0)

function move(fbox,tbox) {
	for(var i=0; i<fbox.options.length; i++) {
		if(fbox.options[i].selected && fbox.options[i].value != "") {
			var no = new Option();
			no.value = fbox.options[i].value;
			no.text = fbox.options[i].text;
			tbox.options[tbox.options.length] = no;
			fbox.options[i].value = "";
			fbox.options[i].text = "";
	   }
	}
	BumpUp(fbox);
	if (sortitems) SortD(tbox);
}

function BumpUp(box)  {
	for(var i=0; i<box.options.length; i++) {
		if(box.options[i].value == "")  {
			for(var j=i; j<box.options.length-1; j++) {
				box.options[j].value = box.options[j+1].value;
				box.options[j].text = box.options[j+1].text;
			}
			var ln = i;
			break;
   		}
	}
	if(ln < box.options.length)  {
		box.options.length -= 1;
		BumpUp(box);
   }
}

function SortD(box)  {
	var temp_opts = new Array();
	var temp = new Object();
	for(var i=0; i<box.options.length; i++)  {
		temp_opts[i] = box.options[i];
	}
	for(var x=0; x<temp_opts.length-1; x++)  {
		for(var y=(x+1); y<temp_opts.length; y++) {
			if(temp_opts[x].text > temp_opts[y].text)  {
				temp = temp_opts[x].text;
				temp_opts[x].text = temp_opts[y].text;
				temp_opts[y].text = temp;
				temp = temp_opts[x].value;
				temp_opts[x].value = temp_opts[y].value;
				temp_opts[y].value = temp;
	    	}
	 	}
	}
	for(var i=0; i<box.options.length; i++)  {
		box.options[i].value = temp_opts[i].value;
		box.options[i].text = temp_opts[i].text;
   	}
}
//显示隐藏搜索table
function showquery()
{
	if(querytable.style.display=="none")
	{
		//alert("none");
		document.getElementById("querytable").style.display="block";
		querylink.innerHTML= "-隐藏查询条件&nbsp;&nbsp;";
	}else
	{
	    //alert("block");
		document.getElementById("querytable").style.display="none";
		querylink.innerHTML= "+显示查询条件&nbsp;&nbsp;";
	}
}

/**
 * 2014-9-10
 * davexin
 * 把table导出为excel另存为。需要启用activeX控件支持，ie8以下版本支持。chorm不支持。
 */
 function saveCode(obj) { 
	 try{ 
		     var winname = window.open('', '_blank', 'top=10000'); 
		     var strHTML = document.all.tableExcel.innerHTML; 
		     winname.document.open('text/html', 'replace'); 
		     winname.document.writeln(strHTML); 
		     winname.document.execCommand('saveas','','excel.xls'); 
		     winname.close(); 
	 }catch(e){  
    	    alert("请使用ie浏览器兼容模式，并且要启用ActiveX;"+e.message);  
    	  }  

} 
