<%-- 
    Document   : adminlink
    Created on : Jan 19, 2011, 7:52:59 PM
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
    <body background="bg_1.jpg" text="white" alink="white">
        <%!
        String user;
        %>
        <%
        user=session.getAttribute("user").toString();
        %>
       <br><br><br><br><br><br><br><br><br><br><br>
       <h2> Hai .....................<%=user%></h2>
       <img src="model police station.jpg" align="left" width="300" height="300">
          
               <left>
               <a href="HomePage.jsp"><img align="right" src="BYE[1].gif"></a></left>
        <form name="f1">
          
            <table border="1" cellpadding="20" align="center" style="font-size:20;color:white;font-weight:bold">

                <tbody>
                    <tr>
                     <td><a href="Branch_details.jsp">New Branch</a></td>
                    </tr>
                    <tr>
                        <td><a href="Staffdetails.jsp">New Staff</a></td>
                    </tr>
                    
                    <tr>
                        <td><a href="ReadMail.jsp">Read Mail</a></td>
                    </tr>
                    <tr>
                        <td><a href="SendMessage.jsp">Send Message</a></td>
                    </tr>
                    <tr>
                        <td><a href="Decrypt.jsp">Receive Message</a></td>
                    </tr>
                </tbody>
            </table>


        </form>
    </body>
</html>
