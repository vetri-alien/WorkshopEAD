<%-- 
    Document   : index
    Created on : May 6, 2013, 2:32:23 PM
    Author     : ssi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="design.html" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- content -->
        <div id="content">
            <div class="indent1">
                <div class="indent">
            <h2>Registration Form</h2>
            <form action="process.jsp" method="post">
            <table cellspacing="4" cellpadding="4">
                <tr>
                    <td>UserName</td>
                    <td><input type="text" name="t1" value="" /></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="t2" value="" /></td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td>
                        <input type="radio" name="r1" value="Male" />Male
                        <input type="radio" name="r1" value="Female" />Female
                    </td>
                </tr>
                <tr>
                    <td>DOB</td>
                    <td><input type="text" name="t3" value="" /></td>
                </tr>
                <tr>
                    <td>Entertainment</td>
                    <td>
                        <input type="checkbox" name="c1" value="Sports" />Sports
                        <input type="checkbox" name="c1" value="Music" />Music
                        <input type="checkbox" name="c1" value="News" />News
                    </td>
                </tr>
                <tr>
                    <td>Mail Id</td>
                    <td><input type="text" name="t4" value="" /></td>
                </tr>
                <tr>
                    <td>Age</td>
                    <td><input type="text" name="t5" value="" /></td>
                </tr>
                <tr>
                    <td>Photo</td>
                    <td><input type="file" name="file1" value="" /></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Register" name="s1" /></td>
                    <td><input type="reset" value="Clear" name="s2" /></td>
                </tr>
            </table>
            </form>
                </div>
            </div>
        </div>
        <!-- footer -->
        <div id="footer">
            <div class="indent">
            <div class="fleft">Copyright - &reg; SR InfoTech &copy; 2013</div>
            </div>
        </div>
    </body>
</html>
