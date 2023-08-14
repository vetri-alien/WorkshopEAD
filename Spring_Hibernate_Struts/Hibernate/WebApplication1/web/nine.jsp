<%-- 
    Document   : nine
    Created on : Apr 18, 2017, 2:26:21 PM
    Author     : Administrator
--%>

<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.cfg.AnnotationConfiguration"%>
<%@page import="madurai.Student"%>
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
            Student s1;
        %>
        <%
            cfg=new AnnotationConfiguration().addAnnotatedClass(Student.class);            

            factory=cfg.buildSessionFactory();
            sess=factory.openSession();
            tx=sess.beginTransaction();
            
            s1=new Student();
            s1.setRegno(10002);
            s1.setName("Priyaa.S");
            s1.setDegree("ME(CS)");
            s1.setCgp(9.5f);
            
            sess.save(s1);
            tx.commit();
            out.println("Record Inserted.");
        %>
    </body>
</html>
