<%@taglib uri="" prefix="bean"%>
<html>
<body><center>
<h1> Login Successful ! </h1>
<p>Welcome
<bean:write name="LoginActionForm" property="loginName"/>!
</p>
</center></body></html>