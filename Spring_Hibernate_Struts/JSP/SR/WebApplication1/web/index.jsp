<%-- 
    Document   : index
    Created on : Jun 1, 2013, 7:02:05 PM
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
    <body>
        <form name="form1" action="process.jsp" method="POST" enctype="multipart/form-data">
            Id:<input type="text" name="t1" value="" /><br>
            Name:<input type="text" name="t2" value="" /><br>
            Photo:<input type="file" name="fu" value="" /><br>
            <input type="submit" value="Submit" name="s1" />
        </form>
    </body>
</html>
