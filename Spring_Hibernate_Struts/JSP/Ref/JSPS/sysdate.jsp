<%@ page import="java.sql.*" %>
<%! private Connection con=null;
private Statement st=null; 
private ResultSet rs = null; %>
<%
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
con =DriverManager.getConnection("jdbc:oracle:thin:@192.9.200.9:1521:ora9ssi","scott","tiger");
st = con.createStatement();
rs = st.executeQuery("Select to_char(sysdate,'dd,MONTH,YYYY') from dual");
if(rs.next()){%>
<font color=blue size=5>
System Date <%=rs.getString(1)%>
<br></font><font size=6 color=gold>
<%
rs=st.executeQuery("select count(*) from emps2");
if(rs.next())
out.println("No of records in Emps2 table are "+rs.getInt(1));
}}catch(Exception e){out.println("Error in View "+e);}
%></font>