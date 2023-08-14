<%@ page import="java.util.Vector,java.sql.*,ConnectBean" autoFlush="true"%>
<%!
	private Vector vec;
	private Connection con;
	private ResultSet rs,rs1;
	private PreparedStatement ps;
%>
<font color=blue size=4>
<jsp:useBean class="ConnectBean" id="m1" scope="session"/>
<%
	try
	{
	con=m1.getOraConnection();
	vec=new Vector();
	ps=con.prepareStatement("Select * from sasi_login ");
	rs=ps.executeQuery();
	vec.addElement(rs);
	
	application.setAttribute("login",vec);
	Vector vec1=(Vector)application.getAttribute("login");
	rs1=(ResultSet)vec1.elementAt(0);
	while(rs1.next())
	{
%>
<font color=green size=5>
<br>User Name: <jsp:expression>rs1.getString(1)</jsp:expression>
<br>Password: <jsp:expression>rs1.getString(2)</jsp:expression>
</font>
<%
	}
	ps.close();
	con.close();
	}
	catch(Exception ex)
	{
	out.println("err in Add "+ex);
	}
%>