<%
dim h
 h = hour(now())
  If h < 12 Then
   Response.Write("G'mornin!")
     Else
      Response.Write("G'day mate!")
   End If
%>