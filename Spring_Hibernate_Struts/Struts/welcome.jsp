<%@taglib uri="" prefix="html"%>
<html>
<title>Welcome</title>
<body bgcolor=#ffc7c7>
<center>
<h1>Welcome to Login Page</h1><hr>
<html:form action="/LoginAction" method="post">
<table>
<tr>
<td>Enter username:
<td><html:text property="loginName"/>
</tr>
<tr>
<td>Enter password:
<td><html:password property="password"/>
</tr>
</table>
<hr>
<table>
<tr>
<td><html:submit property="Submit" value="Login"/>
<td><html:reset property="Reset" value="Login"/>
</tr>
</table>
</html:form>
</center></body></html>