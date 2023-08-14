<%@ page import="java.sql.*"%>
<%! 
	Connection con=null;
	PreparedStatement ps=null;
	int no; 
	String name,job;
	double salary;
%>
<jsp:useBean class="ConnectBean" id="m1" scope="session"/>
<%
	try
	{
	con=m1.getOraConnection();
no= Integer.parseInt(request.getParameter("eno"));
name=request.getParameter("ename");
job=request.getParameter("ejob");
salary = Double.parseDouble(request.getParameter("esal"));
ps = con.prepareStatement("update sasi_employee set name=?,job=?,salary=? where no=?");
	ps.setString(1,name);
	ps.setString(2,job);
	ps.setDouble(3,salary);
	ps.setInt(4,no);
	ps.executeUpdate();
response.sendRedirect("Update1.jsp?err=One record updated");
	}
	catch(Exception e)
	{
response.sendRedirect("Update1.jsp?err="+e.toString());
}
%>