//*************** ��ѡ��ı���ɫ****************************
  var flag="-1";
  var param = 0;
  
  function changeTrColor(id)
  {

	if(!(flag=="-1"))
	{
   		 //alert("id1="+id);
   		 eval(""+flag+".bgColor='#ffffff'");
    }
    //����Ҫִ����ż����ɫ��ʼ����Ȼ���ٸı�ѡ������ɫ��������ɫ���ҵ���
    jo();
    eval(""+id+".bgColor='#dfe5f2'");
    //document.getElementById(id).style.backgroundColor="red";
    //alert("id2="+id);
    flag = id;
	param = flag.substring(1,flag.length);	
  }
  
//��ż��Ĭ����ɫ
function jo(){
    //alert("����tr��żɫ");
	//��ȡtable
	var tb1 = document.getElementById("table0");
	//��ȡtable�е�tbody
	//var tbody = tb1.getElementsByTagName("tbody")[0];
	//��ȡtr
	var trs = tb1.getElementsByTagName("tr");
	//�����桢ż����ʾ��ͬ�ı�����ɫ
	for(var i=0; i<trs.length;i++){
		//alert("����tr��żɫѭ��");
		if(i%2==0){
			trs[i].bgColor="#FFFFFF";
		}else{
			trs[i].bgColor="#F9F9F9";
		}
	}
}
  
//***************����SELECT���໥�ƶ�item*************************

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
//��ʾ��������table
function showquery()
{
	if(querytable.style.display=="none")
	{
		//alert("none");
		document.getElementById("querytable").style.display="block";
		querylink.innerHTML= "-���ز�ѯ����&nbsp;&nbsp;";
	}else
	{
	    //alert("block");
		document.getElementById("querytable").style.display="none";
		querylink.innerHTML= "+��ʾ��ѯ����&nbsp;&nbsp;";
	}
}

/**
 * 2014-9-10
 * davexin
 * ��table����Ϊexcel���Ϊ����Ҫ����activeX�ؼ�֧�֣�ie8���°汾֧�֡�chorm��֧�֡�
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
    	    alert("��ʹ��ie���������ģʽ������Ҫ����ActiveX;"+e.message);  
    	  }  

} 
