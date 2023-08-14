<%@ page import="java.sql.*" %>
<%! private Connection con=null; 
private Statement st=null; 
private ResultSet rs = null; %>
<style>
.f1{font-size:15pt;font-style:bold;font-family:Courier;
Color:Blue;Background:yellow;}
</style>
<Table border="1" class=f1>
<%	
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
 con = DriverManager.getConnection("jdbc:oracle:thin:@192.9.200.9:1521:ora9ssi","scott","tiger");
st = con.createStatement();
rs = st.executeQuery("Select * from emps1");
while(rs.next())
{
%>
<TR align=Center class=f1>
<TD>Employee number <%=rs.getString(1) %>
Employee Name    <%=rs.getString(2) %>
DOB<%=rs.getString(3) %>
Salary<%=rs.getString(4)%></TD></TR>
<%
}}catch(Exception e){out.println("Error "+e);
out.println("<br> "+e.getMessage());}
%></Table>