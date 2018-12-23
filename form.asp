<%
dim username
 username = Request.Form("username")
  response.write("Hello, " & username & "!")
%>