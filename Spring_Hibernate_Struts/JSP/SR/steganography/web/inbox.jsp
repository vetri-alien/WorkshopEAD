<%-- 
    Document   : inbox
    Created on : Feb 5, 2011, 2:36:13 PM
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
        String user;
        %>
        <%
        user=session.getAttribute("user").toString();
       
        %>

       
        <form name="f1">
            <img src="tamil nadu police academy.jpg" align="left"><br><br><br>
           <br><br><br><br><br><br><br><br>
 <b><h1 style="color:purple">
            Hai ----------<%=user%>!
        </h1>
         <img align="left" src="k0276949.jpg">
            <table style="color:darkblue" bgcolor="lightyellow" border="1" width="450" align="center" cellpadding="5">
                <thead>
                    <tr bgcolor="lightblue">
                        <th colspan="3"><marquee>EMERGENCY NUMBERS</marquee></th>

                    </tr>
                </thead>
                <tbody>
                    <tr>
                        
                        <td>To Report A Crime - Control Room
</td>
                        <td>100
</td>
                    </tr>
                    <tr>
                       
                        <td>To Report Traffic Violation
</td>
                        <td>103
</td>
                    </tr>
                    <tr>
                        
                        <td>Ambulance
</td>
                        <td>108
</td>
                    </tr>
                    <tr>
                       
                        <td>Child Line
</td>
                        <td>1098
</td>
                    </tr>
                    <tr>
                       
                        <td>Women help Line
</td>
                        <td>1091
</td>
                    </tr>
                    <tr>
                       
                        <td>Coastal security help Line </td>
                        <td>1093
</td>
                    </tr>
                    <tr>
                       
                        <td>Senior Citizen Line
</td>
                        <td>1253
</td>
                    </tr>
                    <tr>
                       
                        <td>Blue Line
</td>
                        <td>12700
</td>
                    </tr>
                    <tr>
                       
                        <td>Confidential Complaints
</td>
                        <td>044 - 42103535   </td>
                    </tr>
                    <tr>
                        <td colspan="3">*These Emergency Numbers Are Applicable To All Commissionerates in Tamil Nadu i.e., CHENNAI, TRICHY, COIMBATORE, MADURAI , TIRUNELVELI And SALEM .
</td>
                        
                    </tr>
                </tbody>
            </table>
           
 <table border="0" cellpadding="15" align="left" style="font-weight:bold">

                <tbody>
                    <tr>
                        <td><a href="encrypt.jsp">Send Message</a></td>
                    </tr>
                    <tr>
                        <td><a href="Decrypt.jsp">Receive Message</a></td>

                    </tr>
                </tbody>
            </table>
        </form>
        <right>
       <a href="HomePage.jsp">Back</a><right>
        
    </body>
</html>
