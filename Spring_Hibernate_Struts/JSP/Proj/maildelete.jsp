<%@ page import ="java.sql.*"%>
<%! private Connection con;
        private PreparedStatement ps;
%>
<%
try
{
String mail =request.getParameter("mail");
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
con=DriverManager.getConnection("jdbc:oracle:thin:@192.9.200.9:1521:ora9ssi","scott","tiger");
ps = con.prepareStatement("delete mail where mailno=?");
out.println(mail);
ps.setInt(1,Integer.parseInt(mail));
ps.executeUpdate();
//response.sendRedirect("Inbox.jsp");
}catch(Exception e)
{
out.println(" Error "+e);
}
%>