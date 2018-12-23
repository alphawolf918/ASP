<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>Server Variables</title>
	</head>
	<body>
<%
	Dim i
	For Each i In Request.ServerVariables
		Response.Write("<strong>" & i & "</strong>: " & Request.ServerVariables(i) & "<br />")
	Next
	For Each i in Session.Contents
		Response.Write(i & "<br />")
	Next
%>
	</body>
</html>