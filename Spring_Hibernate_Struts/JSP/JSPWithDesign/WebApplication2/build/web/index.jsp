<%-- 
    Document   : index
    Created on : Mar 26, 2013, 12:18:27 PM
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
        <div class="left">
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
        <div class="footer">
    <div class="footer_resize">
      <p class="lf">Copyright &copy; 2013 <a href="#">SR</a> - All Rights Reserved</p>
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
  </div>
    </body>
</html>
