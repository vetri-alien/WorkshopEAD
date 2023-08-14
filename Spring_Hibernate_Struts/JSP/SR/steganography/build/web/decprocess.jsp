<%-- 
    Document   : decprocess
    Created on : Feb 9, 2011, 12:59:27 PM
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
    <body background="bg_1.jpg">
        <%!
        String mno;
        %>
        <%
      mno=request.getParameter("c1");
      session.setAttribute("mno",mno);
        %>
        <br><br><br><br><br><br><br><br><br>
            <h2>
        <form name="f1" action="decprocess1.jsp" method="post">
            <table border="0" align="center" style="color:white" cellspacing="10" cellpadding="10">
               <b>
                <tbody>
                    <tr>
                       <h1> <th colspan="3" align="center">Decrypt Code</th></h1>
                        <th></th>
                        <th></th>
                    </tr>
                    <tr>
                        <td>Decrypt Code</td>
                        <td><input type="password" name="t1" value="" /></td>
                        <td><img src="key.bmp" height="50" width="50"></td>
                    </tr>
                    <tr>
                        <td>Valuation Code</td>
                        <td><input type="text" name="t2" value="" /></td>
                        <td><img src="more_links_icon.gif"></td>
                    </tr>
                    <tr>
                        <td align="center" colspan="3" ><input type="submit" value="Decrypt"></td>
                        
                    </tr>
                </tbody>
               </b>
            </table>
            </h2>
        </form>
        
 <a href="Decrypt.jsp">Back</a>
    </body>
</html>
