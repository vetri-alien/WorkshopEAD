<%@ page import="java.sql.*"%>
<%! private Connection con; 
        private PreparedStatement ps,ps1;
        private ResultSet rs,rs1;
%>
<html>
<body bgcolor=lightgreen>
<Center>
<font color=Blue size=6>
<b>Inbox Mails</b>
</font>
</center>
<br>
<Table border=2 align= center>
<tr>
<th> MAILNO </th><th> FROMID </th>
<th> TOID                   </th>
<th>  SUBJECT                 </th>
<th> DETAILS                   </th>        
<th>SENDON                              </th>
<th>SERVICENO                      </th>
<th>SERVICENAME                       </th>
<th>MARK           </th>
</tr>
<form method="post" name="f1">
<%
try
{
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
con = DriverManager.getConnection("jdbc:oracle:thin:@192.9.200.9:1521:ora9ssi","scott","tiger");
ps = con.prepareStatement("select * from mail");
rs = ps.executeQuery();
while(rs.next())
{
%>
<tr><td><input type=checkbox name=mail value=<%=rs.getString(1)%>><%=rs.getString(1)%></td> 
<td><%=rs.getString(2)%></td> 
<td><%=rs.getString(3)%></td> 
<td><%=rs.getString(4)%></td> 
<td><%=rs.getString(5)%></td> 
<td><%=rs.getDate(6).toString()%></td> 
<td><%=rs.getString(7)%></td> 
<td><%=rs.getString(8)%></td> 
<td><%=rs.getString(9)%></td> 
</tr>
<%
}
}catch(Exception e)
{
out.println("Errror "+e);
}
%>
<input type=submit value=Delete>
</form>
</table>
</body>
<script language=vbs>
sub mail_click
Dim mail
if f1.mail.check then
mail  = f1.mail.value
f1.action="maildelete?mail="&mail
else
f1.action="Inbox.jsp"
end if
end sub
</script>
</html>
<br>
<center><a href="Mail.jsp">Back</a><center>