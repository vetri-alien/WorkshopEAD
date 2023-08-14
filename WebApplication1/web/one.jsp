<%-- 
    Document   : one
    Created on : 11 Aug, 2023, 10:20:22 AM
    Author     : 20uad005
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%!
            String college="KCET";
            Date d1=new Date();
            %>
            <%
                out.println("Today Date is"+d1+"<br><br>");
            %>
            <h2 style="color: blue;"> Our College Name is <%=college%></h2>
    </body>
</html>

