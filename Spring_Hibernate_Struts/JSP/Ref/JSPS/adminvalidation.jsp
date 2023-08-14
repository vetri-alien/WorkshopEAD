<%@page import="java.sql.*,java.io.*" %>
<html>
<body>
<%! Connection con=null;
PreparedStatement ps=null;
ResultSet rs1,rs2;
String s1;
String s2;
%>
<%
try
{ 
Class.forName("oracle.jdbc.driver.OracleDriver");
}catch(ClassNotFoundException ex)
{out.println("Unable to load oracle driver ");}
try
{    con=DriverManager.getConnection("jdbc:oracle:thin:@192.9.200.9:1521:ora9ssi","scott","tiger");
s1=request.getParameter("t1");
s2=request.getParameter("t2");
if(s1==null || s2==null)return;
ps = con.prepareStatement("select * from login where uname=? and upass=?");
ps.setString(1,s1);ps.setString(2,s2);
rs1=ps.executeQuery();
out.println("<font color=blue size=5>");
if(rs1.next())
out.println("User Name and password are correct ");
else
response.sendRedirect("adminlogin.jsp?valid=Invalid Username and Password"); 
}catch(SQLException e)
{ System.out.println("Error in SQL "+e); }
catch(Exception ex){out.println("General Error "+ex);}
%></body></html>