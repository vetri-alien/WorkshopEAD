<%@ page import="java.sql.*" autoFlush="true" %>
<%! private Connection con=null; %>
<%! private PreparedStatement s=null; %>
<%! private ResultSet rs=null; %>
<form action=QuestionApp1.jsp method=post>
<center><h1>C# Question Time : 20 Minutes </h1></center>
<table align=center border=1>
<%
try
{
int count = ((Integer)session.getAttribute("count")).intValue();
if(count>10)out.println("Examination successfully Completed ");
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
con = DriverManager.getConnection("jdbc:oracle:thin:@192.9.200.9:1521:ora9ssi","scott","tiger");
s = con.prepareStatement("select * from mtest_question where qid=?");
count = count + 1; s.setInt(1,count);
session.setAttribute("count",new Integer(count)); 
rs = s.executeQuery();

if(rs.next())
{%>
<tr><td><%=rs.getString(1) %>.&nbsp<%=rs.getString(2) %></td></tr>
<tr><td>A)<input type =radio name=quest value=<%=rs.getString(3)%>><%=rs.getString(3) %></tr></td>
<tr><td>B)<input type =radio name=quest value=<%=rs.getString(4)%>><%=rs.getString(4) %></tr></td>
<tr><td>C)<input type =radio name=quest value=<%=rs.getString(5)%>><%=rs.getString(5) %></tr></td>
<tr><td>A)<input type =radio name=quest value=<%=rs.getString(6)%>><%=rs.getString(6) %></tr></td>
<tr><td><input type=submit value=Next></td></tr>
<%
}}catch(Exception e)
{ out.println(e.toString());}%></table></form>