
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html>
    <%@page import="java.sql.*,database.*" %>
    <%!
    Connection con;
    PreparedStatement ps;
    connect ct;
    ResultSet rs;
    String brname,uname,pass,status;
    int staffid=0;
    %>
    <%
    try
  {
    ct=new connect();
    con=ct.getDriver();
    out.println("Connected");
    brname=request.getParameter("t1");
 ps=con.prepareStatement("select nvl(max(staffid),0)+1 from userlista1");
      rs=ps.executeQuery();
      if(rs.next())
          staffid=rs.getInt(1);
      ps.close();
    

   uname=request.getParameter("t3");
   pass=request.getParameter("t4");
    ps=con.prepareStatement("insert into UserLista1 values(?,?,?,?,?)");
    ps.setString(1,brname);
    ps.setInt(2,staffid);
        ps.setString(3, uname+"@stegano.com");

    ps.setString(4, pass);
    ps.setString(5,"Y");
    ps.execute();
    response.sendRedirect("CreateUser.jsp?result=Inserted Successfully");
   }
    catch(Exception e)
            {
        out.println(e);
        }
    %>

    <body>
        
    </body>
</html>
