

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <body bgcolor="red">
    <%@page  import="java.sql.*,database.*" %>
    <%!
        Connection con;
        PreparedStatement ps;
        connect ct;
        String brname,add1,add2,city,pincode,phone;
    %>
    <%
    try
            {
        out.println("hai");
    brname=request.getParameter("t1");
    add1=request.getParameter("t2");
    add2=request.getParameter("t3");
    city=request.getParameter("d1");
    pincode=request.getParameter("t4");
    phone=request.getParameter("t5");
    ct=new connect();
    con=ct.getDriver();
    out.println("Connected");
    ps=con.prepareStatement("insert into CrimeBranch_detailsa1 values(?,?,?,?,?,?)");
    ps.setString(1,brname);
    ps.setString(2,add1);
    ps.setString(3,add2);
    ps.setString(4,city);
    ps.setString(5,pincode);
    ps.setString(6,phone);
    ps.execute();
    response.sendRedirect("Branch_details.jsp?result=inserted Successfully");
    }
    catch(Exception e1)
            {
            response.sendRedirect("Branch_details.jsp?result=failed"+e1.toString());
            out.println(e1);
        }

    %>

   
      
    </body>
</html>
