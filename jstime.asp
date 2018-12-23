<%@language="JavaScript"%>
<%
 var d = new Date();
  var h = d.getHours();
   if(h<12){
    Response.Write("Good morning.");
  }else{
   Response.Write("Good day.");
 }
%>