<%@ page import="java.sql.*"%>
<%! private int cno=0;
private Connection con;
private ResultSet rs ;
private PreparedStatement ps;
private String sysdate; 
%>
<%
try
{
DriverManager.registerDriver(new sun.jdbc.odbc.JdbcOdbcDriver());
con = DriverManager.getConnection("jdbc:odbc:mahesh","ora022","ssi123");
ps = con.prepareStatement("select max(mailno),sysdate from composemail");
rs = ps.executeQuery();
if(rs.next())
{
cno = rs.getInt(1)+1;
sysdate = rs.getDate(2).toString();
}
}catch(Exception e)
{
out.println("Error "+e);
}
%>
<html>
<head><title>compose</title></head>
<body background="C:\Program Files\Microsoft Office\Templates\1033\Webs\vtipres.wiz\GRYTXTR1.JPG">
<center><h3><b>MAIL  DETAILS</b></h3></center>
<form name="f1" method=get action="composeclient.jsp">
<pre>
<center>



Mail no          :<input type=text name="t1" value="<%=cno%>">

From            :<input type=text name="t2"  value="admin@yahoo.com" >

To               :<input type=text name="t3">

Subject          :<input type=text name="t4"> </center>

 Details          :


       <textarea rows=10 cols=40 name="t5"></textarea>

<center>
Date             :<input type=text name="t6" value="<%=sysdate%>">

Employee Number        :<input type=text name="t7">

Employee name      :<input type=text name="t8">



<center>

<CENTER><INPUT TYPE=SUBMIT NAME="B1" VALUE="SEND"></CENTER>

</body>
</html>