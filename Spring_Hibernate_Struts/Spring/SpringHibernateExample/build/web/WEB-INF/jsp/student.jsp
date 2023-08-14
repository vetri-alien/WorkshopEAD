<%-- 
    Document   : student
    Created on : May 24, 2017, 7:51:49 PM
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
        <form:form action="addStudent" method="post">
            <table cellpadding="5">
                <tr>
                    <td>Enter Id</td>
                    <td><form:input path="id"/></td>
                </tr>
                <tr>
                    <td>Enter Name</td>
                    <td><form:input path="name"/></td>
                </tr>
                <tr>
                    <td>Enter Age</td>
                    <td><form:input path="age"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" name="s1" value="Submit"/></td>
                </tr>
            </table>
        </form:form>
    </body>
</html>
