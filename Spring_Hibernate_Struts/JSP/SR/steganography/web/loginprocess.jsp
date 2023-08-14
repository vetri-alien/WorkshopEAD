
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.sql.*,database.*" %>
       <%!
                            Connection con;
                            connect ct;
                            PreparedStatement ps;
                            ResultSet rs;
                            String uname,pass;
                            String br,user;
                            int sid;
                            %>
                            <%
                            try
                                    {
                            ct=new connect();
                            con=ct.getDriver();
                                                    
                       
                         br=request.getParameter("d1");
                         session.setAttribute("branch",br);
                           uname=request.getParameter("t1");
                           pass=request.getParameter("t2");
                           ps=con.prepareStatement("select * from userlista1 where uname=? and status='Y'");
                           ps.setString(1,uname);

                          rs=ps.executeQuery();
                        

                     if(!rs.next())
                         {
                        response.sendRedirect("HomePage.jsp?res=Invaid User" );
                             }
                          else
                              {
                         ps=con.prepareStatement("select uname,pass,staffid from UserLista1 where uname=? and pass=? and brname=?");
                         ps.setString(1,uname);
                         ps.setString(2,pass);
                         ps.setString(3,br);

                 rs=ps.executeQuery();
                            if(rs.next())
                                {
                               session.setAttribute("user",uname);
                               sid=rs.getInt(3);
                               rs.close();
                               ps=con.prepareStatement("select a.staffid,a.design from staffa a,userlista1 b where a.staffid=b.staffid and a.design in ('Inspector','SubInspector','Inspector General') and b.staffid=?");
                               ps.setInt(1,sid);
                               rs=ps.executeQuery();
                               if(rs.next())
                               {
                                      session.setAttribute("utype","Admin");
                                      response.sendRedirect("adminlink.jsp");
                                     }
                               else
                                   {
                                   session.setAttribute("utype", "User");
                                   response.sendRedirect("inbox.jsp");
                                   }
                               }
                               else
                                   response.sendRedirect("HomePage.jsp?res=Invalid Username /password");
                               }
                 }
                           
                            
                          
                            catch(Exception e1)
                                   {
                                out.println(e1);
                                }
                            %>
    </body>
</html>
