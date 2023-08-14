<%@ page import ="java.sql.*"%>
<%! private Connection con=null;
        private ResultSet rs=null;
        private PreparedStatement ps=null;
%>
<%
try
{
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
con = DriverManager.getConnection("jdbc:oracle:thin:@192.9.200.9:1521:ora9ssi","scott","tiger");
String uname=request.getParameter("t1");
String upass = request.getParameter("t2");
out.println("1");
ps = con.prepareStatement("select  *  from login where uname=? and upass=?");
out.println("1");
ps.setString(1,uname);
ps.setString(2,upass);
rs = ps.executeQuery();
if(rs.next())
{
session.putValue("uname",uname);
session.putValue("upass",upass);
response.sendRedirect("Mail.jsp");
}
else
response.sendRedirect("maillogin.jsp?err=Invalid user name or password");
}catch(Exception e)
{
out.println("Err "+e);
}
%> 	