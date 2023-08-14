<html><head><title>LOGIN FORM</title></head>
<body bgcolor=GOLD>
<pre><br><br><br><br><br><br>
<fieldset align=right>
<Center><font color=DarkBlue Size=6><b>Admin Screen</b></font></Center>
<form name="f1" method=get action="adminvalidation.jsp">
<center>
<h3><b>Enter the Username: <input type=text name="t1">
<h3><b>Enter the Password: <input type=password name="t2">
<h3><b>Click here to login:<input type=submit value="LOGIN">
</center></pre></form></fieldset></body></html><br><center><font color=red size=4>
<% if(request.getParameter("valid")==null)
      return;
      else
      out.println(request.getParameter("valid"));
 %>
</font></center>