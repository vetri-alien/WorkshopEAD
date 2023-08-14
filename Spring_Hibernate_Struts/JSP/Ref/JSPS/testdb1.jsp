<%@ page import="java.sql.*" %>
<%! private Connection con=null; 
private Statement st=null; 
private ResultSet rs = null; %>
<style>
.l{font-size:15pt;font-style:bold;font-family:Courier;
Color:Blue;Background:yellow;}
</style>
<Table border="1" class=l>
<%	
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
 con = DriverManager.getConnection("jdbc:oracle:thin:@192.9.200.9:1521:ora9ssi","scott","tiger");
st = con.createStatement();
rs = st.executeQuery("Select * from sasi_employee");
while(rs.next())
{
     out.println(rs.getString(1)+"\t"+rs.getString(2)+"\t"+rs.getString(3)+"\t"+rs.getString(4));
}
}
catch(Exception exp)
  {
     out.println("Error "+exp);
     out.println("<br> "+exp.getMessage());
  }
%></Table>