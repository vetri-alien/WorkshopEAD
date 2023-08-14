<%@page import="java.sql.*,ConnectBean"%>
<%!
	Connection con;
	Statement st;
	ResultSet rs;
%>
<table border=1 align=center bgcolor=lightblue>
<tr>
<th>NAME
<th>EMPNO
<th>JOB
<th>SALARY</tr></th>
<%
try
    {
         DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
         con=DriverManager.getConnection("jdbc:oracle:thin:@192.9.200.9:1521:ora9ssi","scott","tiger");
         st=con.createStatement();
         rs=st.executeQuery("select * from sasi_employee");
         while(rs.next())
            {
%>
<tr> <td> <%=rs.getString(1) %>
        <td> <%=rs.getInt(2) %>
        <td> <%=rs.getString(3) %>
        <td> <%=rs.getFloat(4) %>
</tr>      
<%
           }
    }
catch(Exception e) { out.println("Error: "+e.getMessage()); }   	
%>
</table>