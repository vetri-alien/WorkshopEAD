<%-- 
    Document   : six
    Created on : Apr 17, 2017, 3:31:21 PM
    Author     : Administrator
--%>

<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.transform.ResultTransformer"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
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
            
            
            
            Query qry=sess.createQuery("from Bank");  //class name(not table name)
            qry.setFirstResult(1);      //stat index        (actually index starts from 0)
            qry.setMaxResults(3);     //total records . so it shows from index 1 to index 3
            
            List list=qry.list();
            Iterator i1=list.iterator();
            while(i1.hasNext()){
                b1=(Bank)i1.next();
                out.println(b1.getAccno()+" "+b1.getName()+" "+b1.getAmt()+"<br><br>");
            }
            tx.commit();
        %>
    </body>
</html>