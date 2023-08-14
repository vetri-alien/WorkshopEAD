<%-- 
    Document   : encryptprocess
    Created on : Feb 5, 2011, 3:19:17 PM
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
    <%@page import="java.io.*,java.util.*,java.text.*,java.sql.*,database.*" %>
    <body>
        <%!
                int rno;
                Random r1;
                File ff;
                FileInputStream fin;
                FileOutputStream fout;
                byte b[],b1[];
                String from,sid,to,msg,maildate,mno,brname;
                java.util.Date dt;
                SimpleDateFormat st;
                connect ct;
                Connection con;
                PreparedStatement ps;
                String user;
                ResultSet rs;
                String ss,fname,ffname,cont;


        %>
        <%
        user=session.getAttribute("user").toString();
        dt=new java.util.Date();
        st=new SimpleDateFormat("dd-MMM-yyyy hh-mm-ss");
        maildate=st.format(dt);
        r1=new Random();
        rno=1+r1.nextInt(9);
        from=request.getParameter("t1");
        to=request.getParameter("t2");
         
        ff=new File(request.getParameter("t3"));
        cont=request.getParameter("t4");
        fname=ff.getPath();
        ffname=ff.getPath();
        session.setAttribute("ffname", ffname);
       

        b=new byte[(int)ff.length()];
          b1=new byte[(int)ff.length()];
        fin=new FileInputStream(ff);
        fin.read(b,0,b.length);
        fin.read(b1,0,b1.length);
       
  

        File f1=new File("C:/"+ffname);
      
        for(int i=0;i<ff.length();i++)
            {
            b[i]+=rno;
            }
        fin.close();
        ct=new connect();
        con=ct.getDriver();
        ps=con.prepareStatement("select staffid from UserLista1 where uname=?");
        ps.setString(1,user);
        rs=ps.executeQuery();
        if(rs.next())
            sid=rs.getString(1);
       
        ps=con.prepareStatement("select nvl(max(mno),0)+1 from mailboxa1");
        rs=ps.executeQuery();
        if(rs.next())
            mno=rs.getString(1);
        ps=con.prepareStatement("insert into mailboxa1 values(?,?,?,?,?,?,?,?,?,?)");
        ps.setString(1,from);
        
        ps.setString(2,sid);
        ps.setString(3,to);
        ps.setBytes(4,b);
        ps.setString(5,maildate);
        ps.setString(6,mno);
        ps.setString(7,brname);
        ps.setString(8,ffname);
        ps.setString(9,cont);
       ps.setString(10,ffname);
        ps.executeUpdate();
        session.setAttribute("to",to);
        session.setAttribute("code",""+rno);
        session.setAttribute("enkey",request.getParameter("t5"));
        session.setAttribute("mno",mno);
    out.println(ffname);
        response.sendRedirect("sendingmail.jsp");





        %>
    </body>
</html>
