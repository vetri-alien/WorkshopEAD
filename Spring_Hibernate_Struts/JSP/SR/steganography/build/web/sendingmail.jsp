

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sending Mail</title>
    </head>
    <body background="bg_1.jpg">

        <form name="f1" action="pro.jsp" method="post">
            <br><br><bR> <br><br><bR> <br><br>
              <a href="signout.jsp">LogOut</a>
               <font size="6"> <a href="index.html">Home</a></font>
            <center>
                <h1 style="color:darkblue">SEND MESSAGE</h1>

                <table border="0" cellspacing="10" cellpadding="5" style="font-weight:bold;font-size:20;color:purple">
                    <%@page import="java.sql.*,java.util.*,java.text.*,database.*" %>
                    <%!    String branch, code, user, to, mno;
    java.util.Date dt;
    SimpleDateFormat st;
    connect ct;
    Connection con;
    PreparedStatement ps;
    String enkey;
                    %>
                    <%
        enkey = session.getAttribute("enkey").toString();
        mno = session.getAttribute("mno").toString();
        branch = session.getAttribute("branch").toString();
        code = session.getAttribute("code").toString();
        user = session.getAttribute("user").toString();
        to = session.getAttribute("to").toString();


                    %>
                    <tbody>
                        <tr>
                            <td>From</td>
                            <td><input type="text" name="t1" value=<%=user%>></td>

                        </tr>
                        <tr>
                            <td>To</td>
                            <td colspan="2"><input type="text"  name="t2" value=<%=to%>></td>


                        </tr>
                        <tr>
                            <td>Encrypt Key</td>
                            <td><%=enkey%></td><td>Validation Code<%=code%></td>

                        </tr>
                        <tr>
                            <td>Details</td>
                            <td colspan="2"><textarea name="t3"></textarea>
                            </td>

                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="Submit" name="t4" value="Send"></td>
                            <td></td>
                        </tr>
                    </tbody>
                </table>
            </center>
        </form>
        <%!    String res;
        %>
        <%
        res = request.getParameter("res");
        if (res == null) {
            return;
        }
        %>
        <right>
        <font color="blue" size="5">
        <%=res%>
        </font></right>
    </body>
</html>
