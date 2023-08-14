<%@page import="java.sql.*" autoFlush="true"  session="true"%>
<%!
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	String uname,upass;
%>
<%
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@192.9.200.9:1521:ora9ssi","scott","tiger");
	uname=request.getParameter("uname");
	upass=request.getParameter("upass");
	ps=con.prepareStatement("select * from sasi_login where username=? and userpass=?");
	ps.setString(1,uname);
	ps.setString(2,upass);
	rs=ps.executeQuery();
	if(rs.next())
	  session.setAttribute("un",uname);
	else
response.sendRedirect("logininput.jsp?data=Invalid user/pwd");
	rs.close();
	ps.close();
}
catch(Exception exp)
{
out.println(exp);
}
	String username=(String)session.getAttribute("un");
%>
	<body bgcolor=gold>
	<center><font color=blue size=9>
	Welcome  <%=username%>
	</font> </center> </body>