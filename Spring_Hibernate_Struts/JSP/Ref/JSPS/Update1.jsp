<%@page import="java.sql.*"%>
<%! 
	Connection con=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
	int data;
%>
<jsp:useBean class="ConnectBean" id="m1" scope="session"/>
<%
	try
	{
	con=m1.getOraConnection();
	ps = con.prepareStatement("select no from sasi_employee");
	rs = ps.executeQuery();
%>
<font size=5 color=darkblue>
<form action=Update2.jsp method=post>
Select a code<select name=no>
<% 
	while(rs.next())
	{
	data=rs.getInt(1);
%>
<option value="<%=data%>"><%=data%></option>
<%
	}
	}
	catch(Exception e) 
	{
	System.out.println("Error " +e);
	}
%>
</select>
<Input type=Submit Value=View></form><br>
<font color=red size=3>
<% 
if(request.getParameter("err")==null)
	return;
	else
out.println(request.getParameter("err"));
%>
</font>