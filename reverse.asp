<!DOCTYPE html
PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
<title>Reverse Script</title>
<style type="text/css">
<!--
body{
   background: #000034;
}
#container{
   background: #3399ff;
   width: 500px;
   margin: 0px auto;
   border: 2px outset #0000ff;
   color: #dddddd;
}
#form_header {
   background: url("gradient.png");
   font-family: "Times New Roman";
   font-size: 14px;
   font-weight: bold;
   text-align:  center;
   height: 30px;
   color: #eeeeee;
}
#form_body {
   background: #0000ff;
}
#form_footer {
   background: #00008b;
   text-align:center;
   font-size: 11px;
   color: #ffffff;
}
input{
   background: #000000;
   color: #eeeeee;
}
input[type="submit"] {
   border: 2px outset #444444;
}
-->
</style>
<script type="text/javascript">
<!--
function GetXmlHttpObject()
{
var xmlHttp=null;
try{
  xmlHttp=new XMLHttpRequest();
  }catch (e){
   try{
    xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
    }catch (e){
    xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
  }
return xmlHttp;
}
var xmlHttp = GetXmlHttpObject();
// -->
</script>
</head>
<body>
<form action="javascript:returnReverse();" method="post" name="reverseForm">
<div align="center" id="container">
<div id="form_header">
Reverse Script
</div>
<div id="form_body">
Enter the text to be reversed below:
<br/>
<input type="text" name="form_txt" />
<input type="submit" value="Reverse!" />
</div>
<div id="form_footer">
&copy; Code Dragon
</div>
</div>
<script type="text/javascript">
<!--
function returnReverse(){
 xmlHttp.onreadystatechange = reverseTxt;
 xmlHttp.open("POST","reverse.pslx",true);
 xmlHttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
 xmlHttp.send("txt="+document.reverseForm.form_txt.value);
}
function reverseTxt(){
 var form_body = document.getElementById('form_body');
  if(xmlHttp.readyState == 4){
   form_body.innerHTML += "<br/>Returned text: "+xmlHttp.responseText;
 }
}
// -->
</script>
</body>
</html>