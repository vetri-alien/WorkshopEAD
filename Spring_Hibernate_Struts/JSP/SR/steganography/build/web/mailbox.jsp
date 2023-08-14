

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html>
   <%@page import="java.sql.*,database.*" %>
    <%!
    Connection con;
    PreparedStatement ps;
    connect ct;
    ResultSet rs;
    String fraddr,toaddr,brname;
    int staffid,mno;
    Date maildate;
   
    %>
    <%
    try
  {
    ct=new connect();
    con=ct.getDriver();
    out.println("Connected");
    ps=con.prepareStatement("insert into UserLista1 values(?,?,?,?,?,?,?)");
    ps.setString(1,fraddr);
    ps.setInt(2,staffid);
    ps.setString(3,toaddr);
   
    ps.executeQuery();
    response.sendRedirect("CreateUser.jsp?result=Inserted Successfully");
   }
    catch(Exception e)
            {
        response.sendRedirect("CreateUser.jsp?result=Failed"+e.toString());
        }
    %>

    <body>

    </body>
</html>
