<%-- 
    Document   : test
    Created on : Feb 9, 2011, 12:17:53 PM
    Author     : ssi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.sql.*,database.*,java.io.*"%>
        <%!
        Connection con;
        connect ct;
        PreparedStatement ps;
        String name;
        InputStream in;
        ResultSet rs;
        byte b[];
        %>
        <%
       
        DriverManager.registerDriver(new sun.jdbc.odbc.JdbcOdbcDriver());
        con=DriverManager.getConnection("jdbc:odbc:stegano","scott","tiger");
      /*  ps=con.prepareStatement("select picture from maha_img where picname=?");
        ps.setString(1,"flower");
        ResultSet rs=ps.executeQuery();
        if(rs.next())
            name=rs.getString(1);
        b=new byte[name.length()];
        ps=con.prepareStatement("select picture from maha_img where picname=?");
        ps.setString(1,"flower");
        rs=ps.executeQuery();
        if(rs.next())
            {
            in=rs.getBinaryStream(1);
            in.read(b);
            response.getOutputStream().write(b);
            response.getOutputStream().flush();
            out.println("found");
            }
        else
                out.println("Not found");*/
        ps=con.prepareStatement("select fname from vf");

        rs=ps.executeQuery();
        if(rs.next())
{
            out.println("hai");
        %>
        <img src="<%=rs.getString(1)%>">
        <%
        }
        else
            out.println("No");
        %>

    </body>
</html>
