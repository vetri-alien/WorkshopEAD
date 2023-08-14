<%-- 
    Document   : textprocess.jsp
    Created on : Dec 31, 2010, 3:29:46 PM
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
    <%@page import="java.sql.*,database.*" %>
    <body>
       <%!
                Connection con;
                PreparedStatement ps;
                connect ct;
                String s="";
                %>
                <%
                try
                        {
                ct=new connect();
                con=ct.getDriver();
                s=request.getParameter("tt");
                out.println(s);

                        }
                catch(Exception e1)
                        {
                    out.println(e1);
                    }
                %>
    </body>
</html>
