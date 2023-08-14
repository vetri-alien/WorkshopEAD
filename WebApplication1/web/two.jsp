<%-- 
    Document   : two
    Created on : 11 Aug, 2023, 10:46:07 AM
    Author     : 20uad005
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
            Connection con;
            PreparedStatement ps;
            int accno;
            String name;
            float amt;
        %>
        <%
            accno=Integer.parseInt(request.getParameter("t1"));
            name=request.getParameter("t2");
            amt=Float.parseFloat(request.getParameter("t3"));
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/kcet","root","");
            ps = con.prepareStatement("insert into customer values(?,?,?)");
            ps.setInt(1,accno);
            ps.setString(2,name);
            ps.setFloat(3,amt);
            ps.executeUpdate();
            ps.close();
            out.print("Record Inserted");
        %>
    </body>
</html>
