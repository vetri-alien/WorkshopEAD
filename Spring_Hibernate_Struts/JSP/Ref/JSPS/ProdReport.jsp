<%@ page import="java.sql.*" %>
<%! private Connection con;
       private PreparedStatement ps;
       private ResultSet rs;	
       %>
<html>
<title>
Product Report
</title>
<body bgcolor=linen text=blue>
<center><h1>PRODUCT REPORT</h1></center>
</body>
<%
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
con = DriverManager.getConnection("jdbc:oracle:thin:@192.9.200.9:1521:ora9ssi","scott","tiger");
ps = con.prepareStatement("SELECT * FROM product_info");
rs = ps.executeQuery();
%>
<table border=2 align=center>
<tr align=center>
<td>PRODUCT ID</td><td>PRODUCT  NAME</td>     
<td>SHORT DESC</td><td>LONG DESC</td>  
<td>CATEGORYID</td> <td>PRICE</td></tr>
<%
while(rs.next())   
{
%>
<tr align=center>
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>
<td><%=rs.getString(6)%></td>

</tr>
<%
}
}catch(Exception e){out.println("Error "+e);}
%>
</html>