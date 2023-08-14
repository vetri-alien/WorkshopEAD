<%-- 
    Document   : five
    Created on : Apr 17, 2017, 3:23:11 PM
    Author     : Administrator
--%>

<%@page import="org.hibernate.Query"%>
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
            
            
            
            Query qry=sess.createQuery("update Bank set amt=:amt where accno=:accno");
            qry.setParameter("amt", 500000.0f);
            qry.setParameter("accno", 10002);
            qry.executeUpdate();
            tx.commit();
            out.println("Record Updated");
        %>
    </body>
</html>