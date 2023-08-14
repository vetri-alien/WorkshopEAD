<%-- 
    Document   : two
    Created on : Apr 17, 2017, 2:43:58 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="madurai.Bank"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
            Configuration cfg;
            SessionFactory factory;
            Session sess;
            Transaction tx;
            Bank b1;
        %>
        <%
            cfg=new Configuration();
            cfg.configure("hibernate.cfg.xml");
            factory=cfg.buildSessionFactory();
            sess=factory.openSession();
            tx=sess.beginTransaction();
            b1=(Bank)sess.get(Bank.class, 10003);   //to retrieve specific records
            out.println(b1.getAccno()+"<br>");
            out.println(b1.getName()+"<br>");
            out.println(b1.getAmt()+"<br>");
        %>
    </body>
</html>
