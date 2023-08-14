<body bgcolor=lightblue>
<form name=f1 action="Sess1.jsp" method="post">
<br><br><br><br><br><br><br>
<table border=1 align=center>
<tr align=right>
<td>UserName<td><input name=uname>
</tr>
<tr align=right>
<td>Password<td><input name=upass>
</tr>
<tr>
</table>
<center>
<input type=submit name=s1 value="Submit">
<center>
<%
	if(request.getParameter("data")==null)
	  return;
%>
</form>
<br><br><br><br>
<center>
<font color=red>
<%=request.getParameter("data")%>
</font>
</center>
</body>