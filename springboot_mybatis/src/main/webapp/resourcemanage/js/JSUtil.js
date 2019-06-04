/**
 * get form element by element name
 *
 */
function getFormItem(frm, sKeyName) {
	for (i = 0; i < frm.children.length; i++) {
		var item = frm.children(i);
		 
		if (sKeyName == item.name) {
			return item;
		}
	 
	}
	
	
	return null;
}  

function showHelp(data) {
	var x = window.event.x;
	var y = window.event.y;
	
	var helpElement = document.getElementById("help");
	
	
	
	if(helpElement == null) {
		panel = createPanel();
		var otextNode = document.createTextNode(data);
		panel.appendChild(otextNode);
		if(x > (document.body.offsetWidth/2)) {
			x = x - panel.clientWidth;
		}
		panel.style.top = y + document.body.scrollTop;
		panel.style.left = x + document.body.scrollLeft;
		//alert(document.body.offsetWidth + " " + x);
		
		panel.style.visibility = "visible";
	
		document.body.appendChild(panel);
	}
	else {
		//var helpData = document.getElementById("helpData");
		helpElement.innerText = data;
		if(x > (document.body.offsetWidth/2)) {
			x = x - panel.clientWidth;
		}
		panel.style.top = y + document.body.scrollTop;
		panel.style.left = x + document.body.scrollLeft;
		panel.style.visibility = 'visible';
		
		//alert(panel.clientWidth);
	
	}
	//window.setTimeout("timeoutHelp(" + panel.id + ")",1000);

}

function removeHelp() {
	var helpElement = document.getElementById("help");
	if(helpElement != null) {
		helpElement.style.visibility = 'hidden';
		//document.body.removeChild(helpElement);
		//helpElement.removeNode(true);
		//helpElement.style.visibility = 'hidden';
	}
}

function createPanel(){
	var panel = document.createElement("DIV");
	panel.style.border = "1pt solid blue";
	//panel.style.width = "260pt";
	//panel.style.height = "20pt";
	panel.id = "help";
	panel.style.fontFamily = "arial,sans-serif";
	panel.style.fontSize = "9pt";
	panel.style.fontStyle = "normal";
	panel.style.fontWeight = "normal";
	panel.style.lineHeight = "17px";
	panel.style.textIndent = "0px";
	panel.style.zIndex = "5";
	panel.style.position = "absolute";
	panel.style.visibility = "hidden";
	panel.style.backgroundColor = "#FFFFCC";
	//panel.style.verticalAlign = "";
	//panel.onclick = hiddenDatePanel;
	return panel;
}
 
 
/**
 * execute page
 *
 */
function executeCmd(sPage, sKeyName, sKeyValue) {

 	//alert("page = " + sPage + ", key = " + sKeyName + ", value = " + sKeyValue);
	
	
	var frm = document.forms[0];
	
	frm.target = "main";

	
	var newitem = getFormItem(frm, sKeyName);
	
	if (null == newitem) {
	 	
	 	//alert("new item for " + sKeyName);
	 
		var newitem = document.createElement("input");
		newitem.type="hidden";
		newitem.name = sKeyName;
		
		
		frm.appendChild(newitem);
		
	}
	
	newitem.value = sKeyValue;
	


	 
 
	frm.action = sPage;
	
 
	
	frm.submit();
}
   


//************************************************************
// 目的：
// 傳回：
//************************************************************
function clearFields(frm) {
	var intCount = frm.elements.length;
	var i, strType, vntField
		 
	 	
	for (i=0;i<intCount;i++) {
		
		//frm.elements[i].value = ""
		
		strType = frm.elements[i].type;
		switch (strType) {
			case "text":
				frm.elements[i].value = ""		
				break;
			case "select-one":
				frm.elements[i].value = ""	
				break;
			default:
				break;
		}
	}
	 
	//document.all['result'].style.visibility = 'hidden';		
}

//************************************************************
// 目的： 將所有list view 的 items 設定為已選擇 
//        (因為submit後只有已選擇的item能夠access)
// 傳回：
//************************************************************
function setAllSelection(lvw)
{

	var i = 0;
	var iCount = lvw.length;
	
	for (i = 0; i<iCount;i++) {
		lvw.options(i).selected = true;		
	}	
}

function unsetAllSelection(lvw)
{

	var i = 0;
	var iCount = lvw.length;
	
	for (i = 0; i<iCount;i++) {
		lvw.options(i).selected = false;		
	}	
}


//************************************************************
// 目的： dual list ( > )
// 傳回：
//************************************************************
function moveSelection(lvwSrc, lvwDest) 
{

	

	var i = 0;
 
	// no selection	
	if (lvwSrc.selectedIndex < 0) {
		return 0;
	}
 	 
	while (i < lvwSrc.length) {
		if (lvwSrc.options[i].selected) {
			var newitem = document.createElement("OPTION");
			newitem.text = lvwSrc.options[i].text;
			newitem.value = lvwSrc.options[i].value;
			lvwDest.options.add(newitem);
			lvwSrc.options.remove(i);		
		}
		else {
			i++;
		}	
	}
	
}

//************************************************************
// 目的：
// 傳回：
//************************************************************
function goUpSelection(lvwDest) 
{

	

	var i = 0;
    i = lvwDest.selectedIndex
	// no selection	or at top of the selection
	if (i <= 0) {
		return 0;
	}

	var tmpitem = document.createElement("OPTION");
    tmpitem.text = lvwDest.options[i].text;
	tmpitem.value = lvwDest.options[i].value;
			
	lvwDest.options[i].text = lvwDest.options[i-1].text;
	lvwDest.options[i].value = lvwDest.options[i-1].value;
	lvwDest.options[i-1].text = tmpitem.text;
	lvwDest.options[i-1].value = tmpitem.value;					
	
    lvwDest.selectedIndex = i-1

}

//************************************************************
// 目的：
// 傳回：
//************************************************************
function goDownSelection(lvwDest) 
{

	

	var i = 0;
    i = lvwDest.selectedIndex 
	// no selection	or at bottom of the selection
	if (i < 0) {
		return 0;
	}
	if (i == lvwDest.length-1){
		return 0;
	}

	var tmpitem = document.createElement("OPTION");
    tmpitem.text = lvwDest.options[i].text;
	tmpitem.value = lvwDest.options[i].value;
			
	lvwDest.options[i].text = lvwDest.options[i+1].text;
	lvwDest.options[i].value = lvwDest.options[i+1].value;
	lvwDest.options[i+1].text = tmpitem.text;
	lvwDest.options[i+1].value = tmpitem.value;					
	
    lvwDest.selectedIndex = i+1

}


//************************************************************
// 目的：
// 傳回：
//************************************************************
 
function trim(str)
{
	var strTmp = "";	
	var intLen = str.length;
	var i = 0;
	for (i = 0; i < intLen; i++) {
		if (str.charAt(i) != " ") {
			strTmp = strTmp + str.charAt(i);
		}
	}
	
	return strTmp;
} 
 

//************************************************************
// 目的：檢查字串是否為空
// 傳回：
//************************************************************
function isEmptyStr(str) 
{
    var len = str.length;	 
	var i = 0;
	var isEmpty = true;
	for (i=0; (i < len) && (isEmpty); i++) {
	    isEmpty = (str.charAt(i) == " ");
	}
	return isEmpty;        
}


 
//************************************************************
// 目的：
// 傳回：
//************************************************************
function linkTo(myForm, sFieldName, sHref) {
    len = myForm.elements.length;
	var i = 0;
	var bCheck = false;
	var strCmd = sHref;
	for (i = 0; (i < len) && (!bCheck);i++) {
	    if (sFieldName == myForm.elements[i].name) {
		    bCheck = myForm.elements[i].checked;
			if (bCheck) {
				strCmd = strCmd + myForm.elements[i].value;
			}
		}
	}
	if (!bCheck) {
	    alert("You should select an item");
	}
	else {	  
		location = strCmd;
	}
} 


//************************************************************
// 目的：取得選擇的筆數（用於check box or radio button)
// 傳回：
//************************************************************
function getSelectedItemsCount(myForm, sFieldName) {
    len = myForm.elements.length;
	var i = 0;
	var iCount = 0; 

	for (i = 0; i < len ;i++) {
	    if (sFieldName == myForm.elements[i].name) {
		    if (myForm.elements[i].checked) {
				iCount++;
		    }
		}	
	}
		
	return iCount;	 
} 

//************************************************************
// 目的： 檢查是否有至少選擇一筆資料 （用於check box or radio button)
// 傳回： 
//************************************************************
function hasSelectedItem(myForm, sFieldName) {
    len = myForm.elements.length;
	var i = 0;
	var bCheck = false;

	for (i = 0; (i < len) && (!bCheck);i++) {
	    if (sFieldName == myForm.elements[i].name) {
		    bCheck = myForm.elements[i].checked;			 
		}	
	}
	
	return bCheck;
	 
} 

//************************************************************
// 目的： 檢查傳入參數是否有中文字 
// 傳回： 
//************************************************************
function hasChinese(data) {

	var chinesePat = /[^\x00-\xff]/g;
	var bCheck = false;
	
	if(chinesePat.test(data)) {
		bCheck = true;
	}
	
	return bCheck;
	 
} 

//************************************************************
// 目的： 檢查傳入參數是否為英數字 
// 傳回： 
//************************************************************
function checkEnglish(data) {

	var chinesePat = /[a-zA-Z0-9]/;
	var bCheck = false;
	
	if(chinesePat.test(data)) {
		bCheck = true;
	}
	
	return bCheck;
	 
} 



//************************************************************
// 目的：
// 傳回：
//************************************************************
function submitTo(myForm, sFieldName) {
    len = myForm.elements.length;
	var i = 0;
	var bCheck = false;

	for (i = 0; (i < len) && (!bCheck);i++) {
	    if (sFieldName == myForm.elements[i].name) {
		    bCheck = myForm.elements[i].checked;			 
		}	
	}
	if (!bCheck) {
	    alert("You should select an item");
	}
	else {	  
		myForm.submit();
	}
} 


//************************************************************
// 目的：
// 傳回：
//************************************************************
function selectAll(myForm, sFieldName) {
 
    len = myForm.elements.length;
	var i = 0;
 	 
	for (i = 0; (i < len);i++) {
	    if (sFieldName == myForm.elements[i].name) {		   		 
			myForm.elements[i].checked = true;
		}	
	}
 	 
} 

//************************************************************
// 目的：
// 傳回：
//************************************************************

function unselectAll(myForm, sFieldName) {
 
    len = myForm.elements.length;
	var i = 0;
 	 
	for (i = 0; (i < len);i++) {
	    if (sFieldName == myForm.elements[i].name) {		   		 
			myForm.elements[i].checked = false;
		}	
	} 	 
} 


//************************************************************
// 目的：檢查是否為潤年
// 傳回：true (潤年), false (非潤年)
//************************************************************
function isLeapYear(strYear)
{
	var blnLeapYear;
	
	
	if ((strYear % 400)  == 0 ) {
		blnLeapYear = true;
	}
	else if((strYear % 4) == 0) {
		if((strYear % 100) == 0) {
			blnLeapYear = false
		}
		else {
			blnLeapYear = true;
		}
	}
	else {
		blnLeapYear = false;
	}

	return blnLeapYear;	
		
}


//************************************************************
// 目的：inRange(strInput, intLow, intUpper)
// 傳回：true (in range), false (out of range)
//************************************************************
function inRange(strInput, intLow, intUpper)
{
	var intNum = parseInt(strInput, 10);
 	
	if ((intNum < intLow) || (intNum > intUpper)) {
		return false;
	}
	else {
		return true;
	} 		
}

//************************************************************
// 目的：檢查是否為正確的日期（民國年）
// 傳回：true (valid), false (invalid)
//************************************************************  
function isValidCDate(strYear, strMonth, strDay) 
{

	var intYear = parseInt(strYear, 10) + 1911;

	strYear = "" + intYear;

	return isValidDate(strYear, strMonth, strDay);
}

//************************************************************
// 目的：檢查是否為正確的日期（西元年）
// 傳回：true (valid), false (invalid)
//************************************************************
function isValidDate(strYear, strMonth, strDay) 
{

	// empty string
	if (isEmptyStr(strYear) || isEmptyStr(strMonth) || isEmptyStr(strDay)) {
		return false;
	}
	
	// numeric
	if (isNaN(strYear) || isNaN(strMonth) || isNaN(strDay)) {
		return false;	
	}
	
	var intYear = parseInt(strYear, 10);
	var intMonth = parseInt(strMonth, 10);
	var intDay = parseInt(strDay, 10);
	
	
	if (!inRange(intMonth, 1, 12)) {
		return false;
	}
	
	var aryMonthDay = new Array(12);
		
	aryMonthDay[0] = 31; aryMonthDay[1] =  (isLeapYear(strYear) ? 29 : 28); aryMonthDay[2] = 31; aryMonthDay[3] = 30;
	aryMonthDay[4] = 31; aryMonthDay[5] = 30; aryMonthDay[6] = 31; aryMonthDay[7] = 31;
	aryMonthDay[8] = 30; aryMonthDay[9] = 31; aryMonthDay[10] = 30; aryMonthDay[11] = 31;
	
	 
	if (!inRange(intDay, 1, aryMonthDay[intMonth-1])) {
		return false;
	} 
	 
	return true;
}

//************************************************************
// 目的：檢查是否為數字
// 傳回：true (valid), false (invalid)
//************************************************************
function isNumber(strNum)
{
	if (isEmptyStr(strNum)) {
		return false;
	}
	
	if (isNaN(strNum)) {
		return false;
	}
	
	return true;
}


//************************************************************
// 目的：日期選擇
// 傳回：date string (eg. 2001/1/1)
//************************************************************
function openCalendar(sURL) {
 
	// var sDate = window.showModalDialog(sURL,"calendar","dialogWidth:230px;dialogHeight:220px;center:1;scroll:0;help:0;status:0;resizable=0");
 
		
	var sDate = window.showModalDialog(sURL,"calendar","dialogWidth:300px;dialogHeight:250px;center:1;scroll:0;help:0;status:0;resizable=0");
	
	
	
	sDate = (sDate == null) ? "" : sDate;
	
	return sDate;
}


// ************************************************************* 
// Definition of class JspForm
// ************************************************************* 
function JspForm(frm) {
	
	// data members
	this.frm = frm;
	
	// checkbox
	this.checkboxNames = new Array();
	this.checkboxValues = new Array();
	
	// listview (select multiple) 
	this.listviewNames = new Array();
	this.listviewValues = new Array();
	
	// methods
	this.test = test;
	
 
	
	this.addCheckbox = addCheckbox;
	this.addListview = addListview;
	
	this.findCheckboxName = findCheckboxName;
	this.findListviewName = findListviewName;
	
	this.processForm = processForm;
	this.processCheckbox = processCheckbox;
	this.processListview = processListview;
	
	this.getCheckboxCount = getCheckboxCount;
	this.getListviewCount = getListviewCount;
 
	 
	
}

function processForm() {

 
	var iLen = this.frm.elements.length;	
	var i = 0; 
	
 
	
	for (i  = 0; i < iLen; i++) {
	
	 
		var field = this.frm.elements[i];
	 
		if (field.type == "checkbox") {
		
			if (field.checked) {				
				this.addCheckbox(field.name, field.value);
 		
			}		
		}		
		else if (field.type == "select-multiple") {
		
			this.addListview(field);
 	
		}
	}	
	
	this.processCheckbox();
	this.processListview();
}

 

function processCheckbox() {

	var i = 0; 
	for (i = 0; i < this.getCheckboxCount(); i++) {
		var sName = this.checkboxNames[i];
		var sValue = this.checkboxValues[i];
		
		var sFieldName = sName + "_checkbox";
		
		var field = this.frm.elements[sFieldName];
		
		if (field == null) {
	 
	 		var newItem = document.createElement("input");
	 		newItem.type="hidden";
	 		newItem.name= sFieldName;
	 		newItem.value= sValue;
	 
	 		this.frm.appendChild(newItem);		
	 	}
	 	else {
	 		field.value = sValue;
	 	}
		
 
	}
}

function processListview() {

	var i = 0; 
	for (i = 0; i < this.getListviewCount(); i++) {
		var sName = this.listviewNames[i];
		var sValue = this.listviewValues[i];
		
		var sFieldName = sName + "_listview";
		
		var field = this.frm.elements[sFieldName];
		
		if (field == null) {
	 
	 		var newItem = document.createElement("input");
	 		newItem.type="hidden";
	 		newItem.name= sFieldName;
	 		newItem.value= sValue;
	 
	 		this.frm.appendChild(newItem);		
	 	}
	 	else {
	 		field.value = sValue;
	 	}
		
 
	}
}

function addCheckbox(sName, sValue) {

	var index = this.findCheckboxName(sName);
	
 
	
	// new name
	if (index < 0) {
		this.checkboxNames[this.checkboxNames.length] = sName;
		this.checkboxValues[this.checkboxValues.length] = sValue + ", ";
	}
	else {
		this.checkboxValues[index] += sValue + ", ";
	}

}

function addListview(field) {

	var sName = field.name;
	var index = this.findListviewName(sName);
 		

	// new name
	if (index < 0) {
		var iPos = this.listviewNames.length;
		this.listviewNames[iPos] = sName;
		this.listviewValues[iPos] = "";
		
		index = iPos;
		 
	}
 
		 
	
 	for (i = 0; i < field.options.length; i++) {
 		var sValue = field.options[i].value;
 		
 		this.listviewValues[index] += sValue + ", ";		
 	}

}




function findCheckboxName(sName) {

 

	var index = -1;
	
	var iLen =  this.checkboxNames.length;
 	var i  = 0;
 	
 	for (i = 0; (i < iLen && index < 0); i++) {
 	
 		var sCheckboxName = this.checkboxNames[i];
 
 		
 		if (sCheckboxName == sName) {
 		
 
 			index = i;
 		}
 	}
	 
	
	return index;
}


function findListviewName(sName) {
	var index = -1;
	
	var iLen =  this.listviewNames.length;
 	var i  = 0;
 	
 	for (i = 0; (i < iLen && index < 0); i++) {
 	
 		var sListviewName = this.listviewNames[i];
  		
 		if (sListviewName == sName) {

 			index = i;
 		}
 	}	
	return index;
}

function getCheckboxCount() {
	return this.checkboxNames.length;
}

function getListviewCount() {
	return this.listviewNames.length;
}
 
function test() {
	var i = 0;
	
	for (i = 0; i < this.checkboxNames.length; i++) {
		var sName = this.checkboxNames[i];
		var sValue = this.checkboxValues[i];
		
		alert("checkbox: " + sName + " = " + sValue);
	}
	
	for (i = 0; i < this.listviewNames.length; i++) {
		var sName = this.listviewNames[i];
		var sValue = this.listviewValues[i];
		
		alert("listview: " + sName + " = " + sValue);
	}	
	
 
}

 
// ************************************************************* 
// Definition of class Checkbox
// ************************************************************* 
function Tree() {

	this.swapNodeImage = swapNodeImage;
	this.swapFolderImage = swapFolderImage;
	this.setTreeFolder = setTreeFolder;

}

function swapNodeImage(index) {

	var sPath = document.images("NodeImage" + index).src;	
	
	var iPos = sPath.lastIndexOf("_");
		 
	var sLast = sPath.substring(iPos + 1, sPath.length);
	var sFirst = sPath.substring(0, iPos + 1);
	
	var sImage = sPath;
	
	if (sLast == "2.gif") {
		sImage = sFirst + "1.gif";			
	}
	else if (sLast = "1.gif") {
		sImage = sFirst + "2.gif";
	}
	else {
		sImage = sPath;
	}
	
	return sImage;
	 
}

function swapFolderImage(index) {

	var sPath = document.images("FolderImage" + index).src;	
	
	var iPos = sPath.lastIndexOf("_");
		 
	var sLast = sPath.substring(iPos + 1, sPath.length);
	var sFirst = sPath.substring(0, iPos + 1);
	
	var sImage = sPath;
	
	if (sLast == "on.gif") {
		sImage = sFirst + "off.gif";			
	}
	else if (sLast = "off.gif") {
		sImage = sFirst + "on.gif";
	}
	else {
		sImage = sPath;
	}
	
	return sImage;
}

function setTreeFolder(index) {
 
	var oFolder = document.all("Subfolder" + index);
	
	if (null == oFolder) {		 
		return;
	}	 
 
 	var oStyle = oFolder.style;
 	
 	

	// closed -> opened
	if (oStyle.display == "none") {
		oStyle.display = ""; 		 
		 
	}
	// opened -> closed
	else {
		oStyle.display = "none";		 		 
	}	
	
	document.images("FolderImage" + index).src = this.swapFolderImage(index);
	document.images("NodeImage" + index).src = this.swapNodeImage(index);
	
	return true;
}

function setFolder(index) {
 
	
	var tree = new Tree();
	
	tree.setTreeFolder(index);
}
 


