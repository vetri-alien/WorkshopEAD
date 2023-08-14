<%@ page import="java.sql.*"%>
<%!
	Connection con=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
%>
<jsp:useBean class="ConnectBean" id="m1" scope="session"/>
<%
	try
	{
	con=m1.getOraConnection();
	int no = Integer.parseInt(request.getParameter("no"));
ps = con.prepareStatement("select no,name,job,salary from sasi_employee where no=?");
	ps.setInt(1,no);
	rs = ps.executeQuery();
%>
<form action=Update3.jsp method="post">
<%
	if(rs.next())
	{
%>
<center>
<table border=1>
<tr>
<td>No
<td><input type=text name=eno value="<%=rs.getString(1)%>">
</tr>
<tr>
<td>
Name
<td><input type=text name =ename value="<%=rs.getString(2)%>">
</tr>
<tr>
<td>Job
<td><input type=text name=ejob value="<%=rs.getString(3)%>">
</tr>
<tr>
<td>Salary
<td><input type=text name=esal value="<%=rs.getString(4)%>">
</tr>
</table>
<%
	}
	}
	catch(Exception e)
	{
	out.println(e.toString());
	}
%>
<input type=submit value=Update>
</form>
</center>