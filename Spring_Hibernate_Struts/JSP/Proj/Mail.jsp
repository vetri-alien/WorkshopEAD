<style>
.l
{
font-size:15pt;
text-align:center;
font-weight:bold;
}
</style>
<%
if(session.getValue("uname")==null || session.getValue("upass")==null)
response.sendRedirect("maillogin.jsp");
%>
<html>
<title>
Mail Account
</title>
<body background="bgpic25.jpg">
&nbsp;
<p align="left"><font face="Arial" size="6" color="darkblue">
<marquee behavior="alternate" bgcolor="#FF9999" scrollamount="130" scrolldelay="100">WelCome
To Grain Tech Mail Account</marquee>
<br><br>
</font>
<font face="Arial" size="4">
<table border=1 class=l>
<tr align=center><td>
<a href="Inbox.jsp">Inbox </a></td></tr>
<tr align=center><td><a href="Compose.jsp">Compose</a></td></tr>
<tr align=center><td><a href="AddressBook.jsp">Adress Book</a></td></tr>
<tr align=center><td><a href="Signout.jsp">Signout</a></td></tr>
<tr align=center><td><a href="clientmails.jsp">Client Mails</a>
</td></tr>
</table>
</font>
</p>
</body>
</html>

