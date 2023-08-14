<%-- 
    Document   : view
    Created on : 12 Aug, 2023, 10:28:54 AM
    Author     : 20uad005
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <html:form action="Perform2" method="post">
        <table cellpadding="3">
            <tr>
                <td><h4 style="color: darkmagenta; "/>Enter A/C No</td>
                <td><html:text property="accno"/></td>
            </tr>
            <tr>
                <td></td>
                <td><html:submit property="View Record"/></td>
            </tr>
            <tr>
                <td><h4 style="color: darkmagenta; "/> Name</td>
            
                <td><html:text property="name"/></td>
            </tr>
            <tr>
                <td><h4 style="color: darkmagenta; "/>Amount</td>
                <td><html:text property="amount"/></td>
            </tr>
        </table>
    </html:form>
    </body>
</html>
