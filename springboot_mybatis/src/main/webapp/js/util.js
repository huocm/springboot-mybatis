

/*�^�W�@��*/
function back(){	
	history.back();
}

var w_name;

/*
 * 是否為空白
 */
function isWhiteSpace(sValue) {
	return sValue.replace(/\s/g, '') == '';
}


/*
 * 初始化JSP Page
 */
function initPage(){
	focusOnFirstTextElement();

}


/*
 * 將游標停註在第一個input text
 */
function focusOnFirstTextElement(){
  var docForms = document.forms;

  for (var i=0;i<docForms.length;i++)
  {
  	var aForm = document.forms[i];
  	
  	for (var j=0; j<aForm.length; j++){
    var element = aForm.elements[i];

    if (element.type=='text'){    
    	element.focus();
    	return;
    }
    }
  }
}


/*
 * 字串內是否包含中文字
 */
function isConatinsChineseCharCheck(inputStr){

	var pattern = /\W/;

	var myString =  inputStr;

	if (pattern.test(inputStr))
	{
    	return true;
	}
	else
	{
    	return false;
	} 
}

/*
 * 字串內是否包含英數字
 */
function isConatinsEnglishCharCheck(inputStr){

	var pattern = /[0-9a-zA-Z]/i;

	var myString =  inputStr;

	if (myString.search(pattern) == -1)
	{
    	return true;
	}
	else
	{
    	return false;
	} 
}


/**
 * 檢查日期格式
 * 參數: 八位日期(數字) 格式: yyyyMMdd
 * 回傳值: true/false
 */ 
function correctDateFormat(dateStr)
{
 var datePattern=/^\d{4}(0[1-9]|1[0-2])(3[0-1]|[0-2][0-9])$/;
 
 var bIsCorrect = false;
 
 if(dateStr.match(datePattern)){
  if(checkDateExist(dateStr.substring(6, 8), dateStr.substring(4, 6), dateStr.substring(0, 4))==true){
  	bIsCorrect = true;
  }
 }
  
  return bIsCorrect;
}


/**
 * 檢查y2k日期問題
 */
function y2k(number)
{return (number<1000) ? number+1900 : number;}


/**
 * 檢查日期是否存在
 */ 
function checkDateExist(day, month, year)
{
 var today=new Date();
 year=((!year) ? y2k(today.getYear()):year);
 month=((!month) ? today.getMonth():month-1);
 
 if(!day){return false;}
 var test=new Date(year,month,day);
 if((y2k(test.getYear()) == year) && (month == test.getMonth()) && (day == test.getDate()))
 {return true;}
  else
 {return false;}
}
 


/**
 * Set Action Name in hidden text field
 */
function setActionName(actionButtonId){
	var txtSrcActionButton = document.getElementById(actionButtonId);
	var txtActionName = document.getElementById('_action');
	txtActionName.name = actionButtonId.name;
}

/*��ܹ�ܮ�*
 *	 Disable all submit button elements in Form
 */
function disableAllInputElements(){
  
  var actionForm = window.event.srcElement;

  for (var i=0;i<actionForm.length;i++)
  {
    var element = actionForm.elements[i];
    if (element.type=='submit'){
    	element.disabled = true;
    }
  }
}


/**
 *  Disable button by id
 *  param: button id
 */
 function disableButton(sButtonID){
  var oButton = document.getElementById(sButtonID);
  oButton.disabled = true;
 }


/**
 *  Enable button by id
 *  param: button id
 */
 function enableButton(sButtonID){
  var oButton = document.getElementById(sButtonID);
  oButton.disabled = false;
 }


/*��ܹ�ܮ�*
 *	 在視窗中顯示URL內容
 */
function displayDialog(sURL, sName)
{
var w_height=700;
var w_width=600;
var w_features="width="+w_width+",height="+w_height;
w_features=w_features+",top="+((screen.availHeight-w_height)/2);
w_features=w_features+",left="+((screen.availWidth-w_width)/2);
w_features=w_features+",help:0;status:0";
var s1=window.showModalDialog(sURL,sName,w_features);

}

/*��ܹ�ܮ�*
 *	 依給定視窗大小在視窗中顯示URL內容
 */
function displayDialogSize(sURL, sName, w_height, w_width)
{
	

var w_features="dialogWidth:"+w_width+"px,dialogHeight:"+w_height+"px";
w_features=w_features+",top="+((screen.availHeight-w_height)/2);
w_features=w_features+",left="+((screen.availWidth-w_width)/2);
w_features=w_features+",help:0;status:0";
var s1=window.showModalDialog(sURL,sName,w_features);

}

//顯示報表
function showReport(thisForm){
 thisForm.target = '_blank';
 return true;
}

//顯示資料
function doTrx(thisForm){
 thisForm.target = '_self';
 return true;
}


function wback(cnt)
{
window.dialogArguments.w_name=cnt;
}

