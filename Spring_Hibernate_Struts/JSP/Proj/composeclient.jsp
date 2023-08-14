<%@page import="java.sql.*,java.io.*"%>
<html>
<head>
<title>MAIL</title>
</head>
<body>


<%!Connection con=null;%>
<%!PreparedStatement ps=null;%>
<%
try{


    DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
    con=DriverManager.getConnection("jdbc:oracle:thin:@192.9.200.9:1521:ora9ssi","scott","tiger");
    con.setAutoCommit(true);


String str,m1,m2,m3;

m1=request.getParameter("t1");
m2=request.getParameter("t7");
m3=request.getParameter("t3");



str="insert into composemail values(?,?,?,?,?,?,?,?)";
ps=con.prepareStatement(str);

ps.setInt(1,Integer.parseInt(m1));
ps.setString(2,request.getParameter("t2"));
ps.setString(3,request.getParameter("t3"));
ps.setString(4,request.getParameter("t4"));
ps.setString(5,request.getParameter("t5"));
ps.setString(6,request.getParameter("t6"));
ps.setInt(7,Integer.parseInt(m2));
ps.setString(8,request.getParameter("t8"));

ps.executeUpdate();
out.println("<h2><b>Your message sent to "+m3 );
}
catch(SQLException ex)
{
out.println(ex);
ex.printStackTrace();
}
%>
</body>
</html>
