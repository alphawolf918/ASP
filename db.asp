<%
	' Just a test script that I used to connect to phpMyAdmin - had to install the MySQL driver from dev.mysql but got it to work. I can list them, now once I figure out how to access Windows auth information via ASP I can store it in phpMyAdmin and retrieve it on the Apache intranet server.
	dim Conn, RS
	set Conn = Server.CreateObject("ADODB.Connection")
	Conn.Open "DRIVER={MySQL ODBC 3.51 Driver}; Server=localhost; database=giganet; uid=root; pwd=giga; option=3"
	set RS = Conn.Execute("SELECT employee_name FROM accounts ORDER BY employee_name ASC")
	Dim r
	r = 1
	while not RS.EOF
		response.write(r & ".) " & RS.Fields("employee_name") & "<br />")
		r = r + 1
	RS.MoveNext
	wend
	RS.Close
	Conn.Close
	set RS = Nothing
	set Conn = Nothing
%>