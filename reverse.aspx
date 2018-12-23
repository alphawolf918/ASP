<%
 If Request.Form("txt") <>"" Then
  Dim rvrtxt
   rvrtxt = strReverse(Request.Form("txt"))
    Response.Write(rvrtxt)
 Else
  Response.Write("Invalid POSTDATA.")
End If
%>