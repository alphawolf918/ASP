<%
 sub writeUsers()
  dim users(3)
  users(0) = "admin"
  users(1) = "boccy109109"
  users(2) = "ppachao"
   For i = 0 to 2
    response.write(users(i) & "<br/>")
 Next
  end sub
 call writeUsers()
%>