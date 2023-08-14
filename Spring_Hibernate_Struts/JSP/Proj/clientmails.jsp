<%@ page import="java.sql.*"%>
<%! private Connection con; 
        private PreparedStatement ps,ps1;
        private ResultSet rs,rs1;
%>
<html>
<body bgcolor=lightgreen>
<Center>
<font color=Blue size=6>
<b>Client Mails</b>
</font>
</center>
<br>
<Table border=2 align= center>
<tr>
<th> TO ADDRESS            </th>
<th> FROM ADDRESS        </th>
<th> SUBJECT                        </th>
<th>  MESSAGE                 </th>
</tr>
<form method="post" name="f1">
<%
try
{
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
con = DriverManager.getConnection("jdbc:oracle:thin:@192.9.200.9:1521:ora9ssi","scott","tiger");
ps = con.prepareStatement("select * from mailclient");
rs = ps.executeQuery();
while(rs.next())
{
%>
<td><%=rs.getString(1)%></td> 
<td><%=rs.getString(2)%></td> 
<td><%=rs.getString(3)%></td> 
<td><%=rs.getString(4)%></td> 
</tr>
<%
}
}catch(Exception e)
{
out.println("Errror "+e);
}
%>
</form>
</table>
</body>
<br>
<center><a href="Mail.jsp">Back</a><center>
</html>