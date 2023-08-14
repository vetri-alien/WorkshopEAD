<%-- 
    Document   : result
    Created on : Nov 11, 2016, 4:43:44 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Submitted Student Information</h2>
        <table cellpadding="6   ">
            <tr>
                <td>Id</td>
                <td>${id}</td>
            </tr>
            <tr>
                <td>Name</td>
                <td>${name}</td>
            </tr>
            <tr>
                <td>Age</td>
                <td>${age}</td>
            </tr>
        </table> 
    </body>
</html>
