

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Send Message</title>
    </head>
    <%!
    String branch,user;
    %>
    <%
    branch=session.getAttribute("branch").toString();
    user=session.getAttribute("user").toString();
    %>
    <body background="bg_1.jpg" text="white">
        <br><br><br><br><br><br><br><br><br><br><br><br>
            <img align="left" src="Mailbrd.gif">
        <form name="f1" action="encryptprocess.jsp" method="post">
            <center>
               <font color="darkblue"> <h1>SEND MESSAGE</h1></font>
                <table style="font-weight:bold;font-size:20;color:purple" align="center" border="0" cellspacing="10" cellpadding="5">
                   <tbody>
                        <tr>
                            <td>From</td>
                            <td><input type="text" name="t1" value=<%=user%> /></td><td><b><%=branch%></b> <br>
                                </tr>

                           <tr>
                               <td></td>
                               <td>Type mailid Eg : XXX@stegano.com  </td></tr>
                        </tr>
                        <tr>
                            <td>To</td>
                            <td><input type="text" name="t2" value="" /></td>
                        </tr>
                        
                        <tr>
                            <td>Select an Image File</td>
                            <td><input type="file" name="t3" value="Browse..." /></td>
                        </tr>
                        
                        <tr>
                            <td>Content:</td>
                            <td><input type="text" name="t4" value="" /></td>
                        </tr>
                        <tr>
                            <td>Password to Encrypt <br>(within 10 chars)</td>
                            <td><input type="password" name="t5" value="" /></td>
                        </tr>
                         <tr>
                            <td></td>
                            <td><input type="submit" value="Encrypt" /></td>
                        </tr>
                       </tbody>
                </table>
              </center>
        </form>
         <a href="adminlink.jsp">Back</a>
      </body>
</html>
