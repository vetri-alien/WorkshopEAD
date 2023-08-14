<%-- 
    Document   : pro
    Created on : Feb 5, 2011, 4:50:50 PM
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
      <%@page import="java.sql.*,java.util.*,java.text.*,database.*" %>
    <%!
            String branch,code,user,to,mno,enkey;
            java.util.Date dt;
            SimpleDateFormat st;
            connect ct;
            Connection con;
            PreparedStatement ps;
            %>
            <%
            enkey=session.getAttribute("enkey").toString();
            mno=session.getAttribute("mno").toString();
            branch=session.getAttribute("branch").toString();
            code=session.getAttribute("code").toString();
            user=session.getAttribute("user").toString();
            to=session.getAttribute("to").toString();
            ct=new connect();
            con=ct.getDriver();
            ps=con.prepareStatement("insert into mailkeysa1 values(?,?,?,?,?,?,?)");
            ps.setString(1,user);
            ps.setString(2,to);
            ps.setString(3,mno);
             ps.setString(4,enkey);
            ps.setString(5,code);
            ps.setString(6,request.getParameter("t3"));
           ps.setString(7,branch);

           ps.execute();
           response.sendRedirect("sendingmail.jsp?res=Mail SEnt Successfully");



            %>
    <body>
        
    </body>
</html>
