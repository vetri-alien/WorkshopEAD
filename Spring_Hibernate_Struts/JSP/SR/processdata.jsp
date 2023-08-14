<%@page import="java.sql.*"%>
<html><body>
<%@include file="inc.jsp"%><br>
<%!
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	ResultSetMetaData meta;
	String query;
%>

<%
	query=request.getParameter("qry");
	try
	{
Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@192.9.200.154:1521:ora9ssi","scott","tiger");
	ps=con.prepareStatement(query);
	rs=ps.executeQuery();
	meta=rs.getMetaData();
	int n=meta.getColumnCount();
%>
<table border=1 align=center>
<tr>
<%
	for(int i=1;i<=n;i++)
	{
%>
<th><font color=red size=5>
<%=meta.getColumnName(i)%>
</font></th>
<%
	}
%>
</tr>
<%
	while(rs.next())
	{
%>
<tr>
<%
	for(int i=1;i<=n;i++)
	{
%>
<td><font color=green size=3>
<%=rs.getString(i)%>
</font></td>
<%
	}
%>
</tr>
<%
	}
%>
</table>
<%
	}
	catch(Exception exp)
	{
	out.println(exp);
	}
%>
</body></html>