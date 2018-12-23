<%
dim users(2)
 users(0) = "admin"
 users(1) = "boccy109"
  For i = 0 to 1
   response.write("The user is " & users(i) & ".<br/>")
 Next
%>