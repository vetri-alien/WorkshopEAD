<%@ page import="java.sql.*"%>
<%! private Connection con;
        private PreparedStatement ps;
 %>
<%
try
{
String name,phone,mail;
name = request.getParameter("t1");
phone= request.getParameter("t2");
mail= request.getParameter("t3");
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
con = DriverManager.getConnection("jdbc:oracle:thin:@192.9.200.9:1521:ora9ssi","scott","tiger");
ps = con.prepareStatement("insert into address_book values(?,?,?)");
ps.setString(1,name);
ps.setString(2,phone);
ps.setString(3,mail);
ps.executeUpdate();
out.println("<font color=blue size=5><center>");
out.println("Successfully Added");
out.println("</center></font>");
}catch(Exception e)
{
out.println("Error "+e);
}
%>
<br>
<center>
<a href="Mail.jsp">CheckMail</a>
</center>