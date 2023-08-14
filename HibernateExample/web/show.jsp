<%-- 
    Document   : update
    Created on : 14 Aug, 2023, 9:29:59 AM
    Author     : 20uad005
--%>

<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
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
            Query qry= sess.createQuery("from Employee where salary>=:esal");
            qry.setParameter("esal",100000f);
            List<Employee> list=qry.list();
            
        %>
        <table cellpadding ="5" border="5">
            <tr>
                <th>Employee Id</th>
                <th>Name</th>
                <th>Designation</th>
                <th>Salary</th>
            </tr>
            <%
                for(Employee e1:list){
             %>
             <tr>
                 <td><%=e1.getEmpid()%></td>
                 <td><%=e1.getName()%></td>
                 <td><%=e1.getJob()%></td>
                 <td><%=e1.getSalary()%></td>
             </tr>
             <%
                 }
              %>
        </table>
    </body>
</html>
