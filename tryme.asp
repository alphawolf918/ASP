<%
sub banCheck()
 dim banned (3)
  banned(0) = "70.167.85.213"
  banned(1) = ""
  banned(2) = ""
   For check = 0 to 3
    If Request.ServerVariables("remote_host") = banned(check) Then
     Response.Write("You are teh banned!")
      Else
    Response.Write("You are not teh banned!")
   End If
   Exit For
  Next
 End Sub
call banCheck()
%>