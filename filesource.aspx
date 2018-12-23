<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
<link rel="stylesheet" href="guestbook.css" type="text/css" media="all" />
<title>FileSouce v1.0</title>
<meta http-equiv="CONTENT-TYPE" content="text/html; charset=UTF-8" />
</head>
<body>
<%
 set fs = Server.CreateObject("Scripting.FileSystemObject")
  set f = fs.OpenTextFile(Server.MapPath("entries.txt"),8,true)
 set f2 = fs.OpenTextFile(Server.MapPath("entries.txt"),1,true)
%>
<h1>Guestbook</h1>
<form action="writetofile.pslx" method="post">
Name:<br/>
<input type="text" name="username" maxlength="25" />
<br/>
Message:<br/>
<textarea cols="30" rows="10" name="message" maxlength="100"></textarea>
<br/>
<input type="submit" value="Sign Guestbook" />
</form>
<hr/>
<em>
Created on 
<%
 set f3 = fs.GetFile(Server.MapPath("entries.txt"))
  response.write(f3.DateCreated)
%>
</em>
<hr/>
<span style="font-size:12px;">
Current size of file:
<%
response.write(f3.Size)
%>
Bytes
</span>
<br/>
<strong>Entries:</strong>
<br/>
<pre>
<%
  do while f2.AtEndOfStream = false
    response.write(f2.Line & ".) " & f2.ReadLine & "<br/>")
  loop
 f.Close
  set f = Nothing
 set fs = Nothing
set f2 = Nothing
 set f3 = Nothing
%>
</pre>
</body>
</html>