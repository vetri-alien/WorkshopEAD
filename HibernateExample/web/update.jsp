<%-- 
    Document   : update
    Created on : 14 Aug, 2023, 9:29:59 AM
    Author     : 20uad005
--%>

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
            Configuration cfg;
            ServiceRegistry sr;
            SessionFactory factory;
            Session sess;
            Transaction tx;
            Employee e1=new Employee();
        %>
        <%
            cfg=new Configuration();
            cfg.configure("hibernate.cfg.xml");
            sr=new StandardServiceRegistryBuilder().applySettings(cfg.getProperties()).build();
            factory=cfg.buildSessionFactory(sr);
            sess=factory.openSession();
            tx=sess.beginTransaction();
            e1=(Employee)sess.get(Employee.class,2);
            if(e1!=null){
            out.println("Empid:"+e1.getEmpid()+"<br>");
            out.println("Name:"+e1.getName()+"<br>");
            out.println("Job:"+e1.getJob()+"<br>");
            out.println("Salary:"+e1.getSalary()+"<br>");
            e1.setJob("ProjectManager");
            e1.setSalary(10000);
            sess.update(e1);
            tx.commit();
            out.println("Record deleted");
            }
            else{
                out.println("No Record Found");
            }
        %>

    </body>
</html>
