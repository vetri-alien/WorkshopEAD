<%-- 
    Document   : input
    Created on : 11 Aug, 2023, 12:05:35 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="form1" action="two.jsp" method="post">
            <table>
                <tr>
                    <td>Enter A/C No</td>
                    <td><input type="text" name="t1"/></td>
                </tr>
                 <tr>
                    <td>Enter Name</td>
                    <td><input type="text" name="t2"/></td>
                </tr>
                 <tr>
                    <td>Enter Amount</td>
                    <td><input type="text" name="t3"/></td>
                </tr>
                 <tr>
                    <td></td>
                    <td><input type="submit" name="s1" value="submit"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
