<html>
<head>
<title>LOGIN </title>
</head>
<body bgcolor=#90EE90 text=#006400 background="bgpic1.jpg">
<pre>

<center><b><font face="Comic Sans MS" size="6" color="#00008B">Mail Login</font></b></Center>
</pre>
<form name="f1" method=post action="mailvalid.jsp">
<center>
<h3><b>Username: <input type=text name="t1">

</h3>

<h3><b>Password: <input type=password name="t2">

</h3>

<h3><b>Click here to login:<input type=submit value="LOGIN">
</center>
</form>
<center>New User <a href="MailRegister.html">Sign up</a></center>
<p>
<br>
<font color=red size=5>
<center>
<%
String err=request.getParameter("err");
if(err==null) return;
else
out.println(err);
%>
</font>
</center>


</body>
</html>

