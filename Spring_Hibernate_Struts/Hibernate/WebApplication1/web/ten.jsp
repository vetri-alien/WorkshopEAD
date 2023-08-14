<%-- 
    Document   : ten
    Created on : May 31, 2017, 7:05:44 PM
    Author     : Administrator
--%>

<%@page import="madurai.Certificate"%>
<%@page import="java.util.HashSet"%>
<%@page import="madurai.Employee"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            Employee e1,e2;
        %>
        <%
            cfg=new Configuration();
            cfg.configure("hibernate.cfg.xml");
            factory=cfg.buildSessionFactory();
            sess=factory.openSession();
            tx=sess.beginTransaction();
            
            HashSet set1=new HashSet();
            set1.add(new Certificate("BE(CS)"));
            set1.add(new Certificate("ME(CS)"));
            set1.add(new Certificate("Phd"));
            
            HashSet set2=new HashSet();
            set2.add(new Certificate("BE(CS)"));
            set2.add(new Certificate("ME(CS)"));
            set2.add(new Certificate("Phd"));
            
            e1=new Employee("Harini.S",60000);
            e1.setCertificates(set1);
            sess.save(e1);
            
            e2=new Employee("Priyaa.S",70000);
            e2.setCertificates(set2);
            sess.save(e2);
            
            tx.commit();
            out.println("Emp Info Stored!!");
            
        %>
    </body>
</html>
