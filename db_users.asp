<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>Server Variables</title>
	</head>
	<body>
<%
' Lists all server variables and their respective values. Currently used to track whether Windows auth credentials are passed through to LOGON_USER.
	Dim i
	For Each i in Request.ServerVariables
		Response.Write("<strong>" & i & "</strong>: " & Request.ServerVariables(i) & "<br />")
	Next
	Response.Write("<br /><br />")
	Dim x
	For Each x in Session.Contents
		Response.Write(x & "<br />")
	Next
%>
	</body>
</html>