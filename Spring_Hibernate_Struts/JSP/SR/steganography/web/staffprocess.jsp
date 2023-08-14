<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>

    <%@page import="java.sql.*,database.*" %>
    <%!
    Connection con;
    PreparedStatement ps;
    connect ct;
    String brname,staffname,design,address,phone,emailid;
    int staffid;
    ResultSet rs;
     %>
     <%
     try
    {

      brname=request.getParameter("d1");
      staffname=request.getParameter("t1");
      design=request.getParameter("t2");
      address=request.getParameter("m1");
      phone=request.getParameter("t3");
      emailid=request.getParameter("t4");
      ct=new connect();
      con=ct.getDriver();
      out.println("Connected");


      ps=con.prepareStatement("select nvl(max(staffid),0)+1 from staffa");
      rs=ps.executeQuery();
      if(rs.next())
          staffid=rs.getInt(1);
      ps=con.prepareStatement("insert into staffa values(?,?,?,?,?,?,?)");
      ps.setString(1,brname);
      ps.setInt(2,staffid);
      ps.setString(3, staffname);
      ps.setString(4, design);
      ps.setString(5, address);
      ps.setString(6, phone);
      ps.setString(7, emailid);
      ps.execute();
      ps.close();
      rs.close();
      response.sendRedirect("Staffdetails.jsp?result=Inserted Successfully");
      }
     catch(Exception e)
     {
         response.sendRedirect("Staffdetails.jsp?result=Failed"+e.toString());
     }
     %>

    <body>
       
    </body>
</html>
