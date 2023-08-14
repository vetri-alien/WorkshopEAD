<%-- 
    Document   : register
    Created on : 11 Aug, 2023, 2:01:57 PM
    Author     : 20uad005
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
    </head>
    <body>
        <html:form action="Perform1" method="post">
            <table cellpadding="2">
                <tr>
                    <td><h6 style="color: #8A2BE2; "/>Enter A/C No</td>
                    <td><html:text property="accno"/></td>
                </tr>
                <tr>
                    <td><h6 style="color: #8A2BE2; "/>Enter Name</td>
                    <td><html:text property="name"/></td>
                </tr>
                <tr>
                    <td><h6 style="color: #8A2BE2; "/>Enter Amount</td>
                    <td><html:text property="amount"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><html:submit value="Register"/></td>
                </tr>
            </table>
        </html:form>
        <html:errors/>
    </body>
</html>
