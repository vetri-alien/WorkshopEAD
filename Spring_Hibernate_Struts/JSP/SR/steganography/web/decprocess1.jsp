<%-- 
    Document   : decprocess1
    Created on : Feb 10, 2011, 1:14:58 PM
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
      <%@page import="java.sql.*,database.*,java.io.*" %>
        <%!
       
        Connection con;
        PreparedStatement ps;
        connect ct;
       String user,mkey,code,mno;
        %>
        <%
           user=session.getAttribute("user").toString();
        mno=session.getAttribute("mno").toString();
       
          mkey=request.getParameter("t1");
          code=request.getParameter("t2");
          
       ct=new connect();
       con=ct.getDriver();
       ps=con.prepareStatement("select * from mailkeysa1 where mno=? and mkey=? and code=?");
    
    
      ps.setString(1,mno);
      ps.setString(2,mkey);
      ps.setString(3,code);
      ResultSet rs=ps.executeQuery();
if(rs.next())
    response.sendRedirect("MessageWindow.jsp");
      else
         response.sendRedirect("Decrypt.jsp?res=Invalid key / password");




           %>
    <body>
       
    </body>
</html>
