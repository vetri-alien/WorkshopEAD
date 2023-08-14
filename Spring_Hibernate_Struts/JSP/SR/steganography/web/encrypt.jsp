<%-- 
    Document   : encrypt
    Created on : Feb 5, 2011, 3:08:18 PM
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
    <%!
    String user,branch;
    %>
    <%
    user=session.getAttribute("user").toString();
    branch=session.getAttribute("branch").toString();
   
    %>
    <body background="bg_1.jpg" text="maroon"><br><br><br><bR><br><br><br><bR><br><br><br><bR><br><br>
      <h1> HAI... <%=user%></h1>
        <b>
        <form name="f1" action="encryptprocess.jsp" method="post">
            <table align="center" cellspacing="10" border="0" style="font-size:20;color:white" >

                <tbody>
                    <tr>
                        <th colspan="2"><h1><marquee bgcolor="lightyellow" style="color:maroon">ENCRYPT</marquee></h1></th>
                    </tr>
                    <tr>
                        <td>From</td>
                        <td><input type="text" name="t1" value=<%=user%>></td><td><%=branch%></td>
                    </tr>
                    <tr>
                        <td>To</td>
                        <td><input type="text" name="t2" value="" /></td>
                    </tr>
                    <tr>
                        <td>Select An Image File</td>
                        <td><input type="file" name="t3" value="" /></td>
                    </tr>
                    <tr>
                        <td>Content</td>
                        <td><textarea name="t4" rows="4" cols="20">
                        </textarea></td>
                    </tr>
                    <tr>
                        <td>Password To Encrypt</td>
                        <td><input type="password" name="t5" value="" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Encrypt" /></td>
                    </tr>
                </tbody>
            </table>
<a href="inbox.jsp">Back</a>
        </form>
        <%!
        String res;
        %>
        <%
        res=request.getParameter("res");
        if(res==null)
            return;
        %>
        <%=res%>
    </body>
</html>
