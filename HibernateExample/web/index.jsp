
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page import="org.hibernate.boot.registry.StandardServiceRegistryBuilder"%>
<%@page import="madurai.Employee"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.service.ServiceRegistry"%>
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
            
            int eid;
            String name;
            String job;
            float sal;
            Configuration cfg;
            ServiceRegistry sr;
            SessionFactory factory;
            Session sess;
            Transaction tx;
            Employee e1=new Employee();
        %>
        <%
            eid=Integer.parseInt(request.getParameter("t1"));
            name=request.getParameter("t2");
            job=request.getParameter("t3");
            sal=Float.parseFloat(request.getParameter("t4"));
            cfg=new Configuration();
            cfg.configure("hibernate.cfg.xml");
            sr=new StandardServiceRegistryBuilder().applySettings(cfg.getProperties()).build();
            factory=cfg.buildSessionFactory(sr);
            sess=factory.openSession();
            tx=sess.beginTransaction();

            
            e1.setEmpid(eid);
            e1.setName(name);
            e1.setJob(job);
            e1.setSalary(sal);
            sess.save(e1);
            tx.commit();
            out.println("Record Inserted");
        %>
    </body>
</html>
