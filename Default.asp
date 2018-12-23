<!DOCTYPE html>
<html>
<body>
<%
 if request.cookies("user")("name")="" then
	if request.form("sub")<>"" then
		response.write("You said your name was <strong>" & request.form("name") & "</strong>.")
		response.cookies("user")("name")=request.form("name")
	end if
%>
<form action="" method="post">
	Username:
	<input type="text" name="name" />
	<input type="submit" name="sub" />
</form>
</body>
<% 
else
	response.write("Welcome, <strong>" & request.cookies("user")("name") & "</strong>.<br />")
end if
response.write("Application Contents: <br />")
	dim i
	for each i in Application.Contents
		response.write(i & "<br />")
	next
%>
</html>