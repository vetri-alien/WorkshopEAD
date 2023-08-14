<html>
<head>
<title>Issue master</title>
</head>
<body bgcolor=lightblue background="C:\Program Files\Microsoft Office\Templates\1033\Webs\vtidisc.wiz\BRNTXTR2.JPG">
<pre>
<h2><B> <CENTER>Address Book</CENTER>

<form name="f1" action="AddressAdd.jsp" method="post">
<center>
<table border=3 align=center bordercolor="BLACK">
<tr>
<td><b> NAME             :<td><input type=text name="t1">
<tr>
<td><b>PHONE          :<td><input type=text name="t2">
<tr>
<td><b> EMAILID           :<td><input type=text name="t3">
</table>
  <center><input type=submit name="b1" value="ADD"></center>
</center>
</pre>
</form>
</body>
</html>
<br>
<font color=red size=4>
<%
if(request.getParameter("error")==null)
return;
else
out.println(request.getParameter("error"));
%>
</font>