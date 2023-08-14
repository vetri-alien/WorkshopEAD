<%@page import="java.sql.*"%>
<%!
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
%>
<%
	try
	{
Class.forName("oracle.jdbc.driver.OracleDriver");
System.out.println("driver registered");
con=DriverManager.getConnection("jdbc:oracle:thin:@192.9.200.9:1521:ora9si","scott","tiger");
	System.out.println("Connected");
	ps=con.prepareStatement("select * from sasi_login where username=? and userpass=?");
	String uname=request.getParameter("un");
	String upass=request.getParameter("up");
	ps.setString(1,uname);
	ps.setString(2,upass);
	rs=ps.executeQuery();
	if(rs.next())
	  response.sendRedirect("demo1.jsp");
	else
	  response.sendRedirect("err.jsp");
	}
	catch(Exception exp)
	{
	out.println(exp);
	}
%>