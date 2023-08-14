    <%-- 
    Document   : msg
    Created on : Feb 10, 2011, 2:15:56 PM
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
    <body bgcolor="purple" text="white">
        <a href="adminlink.jsp">Inbox</a>
        <%@page import="java.sql.*,database.*,java.io.*" %>
        <%!    Connection con;
    PreparedStatement ps;
    connect ct;
    ResultSet rs;
    String user, mkey, code, mno,loc,det;
        %>
        <h1 align="center">DECRYPTED DATA</h1>
        <form>
            <center>
                <table border="1" cellspacing="10" cellpadding="5">
                    <tbody>
                        <tr>
                            <%
        mno = session.getAttribute("mno").toString();
        ct = new connect();
        con = ct.getDriver();
        ps = con.prepareStatement("select details from mailkeysa1 where  mno=?");
        ps.setString(1, mno);
        rs = ps.executeQuery();
        if (rs.next()) {
            det=rs.getString(1);
            }
        ps=con.prepareStatement("select loc from mailboxa1 where mno=? ");
        ps.setString(1,mno);
        rs=ps.executeQuery();
        if(rs.next())
            loc=rs.getString(1);
                            %>

                            <td><img src="<%=loc%>" width="300" height="300"></td>
                            <td><textarea rows="20" cols="30" readonly="true">
                            <%=det%>
                            </textArea></td>
                           
                        </tr>
                       
                    </tbody>
                </table>

            </center>
        </form>
    </body>
</html>
