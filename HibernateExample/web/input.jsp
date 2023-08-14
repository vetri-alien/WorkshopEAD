<%-- 
    Document   : input
    Created on : 12 Aug, 2023, 3:39:54 PM
    Author     : 20uad005
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <form name="form1" action="index.jsp" method="post">
            <table>
                <tr>
                    <td><h4 style="color: darkmagenta; "/>Enter ID:</td>
                    <td><input type="text" name="t1"/></td>
                </tr>
                 <tr>
                    <td><h4 style="color: darkmagenta; "/>Enter Name:</td>
                    <td><input type="text" name="t2"/></td>
                </tr>
                <tr>
                    <td><h4 style="color: darkmagenta; "/>Enter Job:</td>
                    <td><input type="text" name="t3"/></td>
                </tr>
                 <tr>
                    <td><h4 style="color: darkmagenta; "/>Enter Salary:</td>
                    <td><input type="text" name="t4"/></td>
                </tr>
                 <tr>
                    <td></td>
                    <td><input type="submit" name="s1" value="Submit" /></td>
                </tr>
            </table>
        </form>
    </body>
</html>
