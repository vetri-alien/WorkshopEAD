

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Decrypt</title>
    </head>
    <script>
        function pro()
        {
           f1.action="decprocess.jsp";
           f1.methos="Post";
           f1.submit();
          
        }
    </script>

       <%@page import="java.io.*,java.util.*,java.text.*,java.sql.*,database.*" %>
    <body background="bg_1.jpg" ><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        <form name="f1" method="post">
            <center>
                <table border="1" cellspacing="10" cellpadding="5" style="font-size:20;font-weight:bold;color:white">
                    <tr>
                        <h2><th colspan="4" style="color:maroon">DECRYPT MESSAGE</th></h2>
                    </tr>
                 
                        <tr>
                            <th>Select</th>
                            <th>From</th>
                            <th>StaffName</th>
                            <th>Date</th>
                        </tr>
                    

                     <%!
    String user,branch,imglen;
    Connection con;
    connect ct;
    PreparedStatement ps,ps1;
    ResultSet rs,rs1;
    byte b[],b1[];
    InputStream fin;
    String img;
     int c,len;
        String s,fname;
    %>
    <%
   
    user=session.getAttribute("user").toString();
    
   
 
    ct=new connect();
    con=ct.getDriver();
     ps=con.prepareStatement("select b.loc,b.det from staffa a, mailboxa1 b where a.staffid=b.staffid and b.toaddr=?");
    ps.setString(1,user);
    rs=ps.executeQuery();
    if(rs.next())
        fname=rs.getString(1);
    else
        {
        out.println("No messages");
        return;
        }
    b1=new byte[fname.length()];
     ps=con.prepareStatement("select b.msg from staffa a, mailboxa1 b where a.staffid=b.staffid and b.toaddr=?");
    ps.setString(1,user);
    rs=ps.executeQuery();
    if(rs.next())
        fname=rs.getString(1);
    ps=con.prepareStatement("select b.mno,b.det,b.fraddr,a.staffname,b.maildate,b.msg from staffa a, mailboxa1 b where a.staffid=b.staffid and b.toaddr=?");
    ps.setString(1,user);
    rs=ps.executeQuery();
    while(rs.next())
        {
        String n=rs.getString(1);
        session.setAttribute("mno",n);
    %>
    <tr>
        <td><input name="c1" type="checkbox" onclick="pro()" value=<%=n%>><%=rs.getString(2)%></td>
 <td><%=rs.getString(3)%></td>
        <td><%=rs.getString(4)%></td>
      
       
        <td><%=rs.getString(5)%></td>
        <%
        String s2=new String(rs.getString(6));

        %>
        <td><img src="'<%=s2%>"></td>
        

    </tr>
    <%

    }/*
    ps=con.prepareStatement("select b.msg from staffa a, mailboxa1 b where a.staffid=b.staffid and b.toaddr=?");
    ps.setString(1,user);
    rs=ps.executeQuery();
    if(rs.next())
        {
        out.println("correct");

      fin=rs.getBinaryStream(1);
       fin.read(b1);
       String s1=new String(b1,0,b1.length);
       out.println(s1);
  response.getOutputStream().write(b1);

  
 
  }*/
    %>
     </table>
              </center>
        </form>
    </body>
    <a href="adminlink.jsp">Back</a>
</html>

    <%!
    String res;
    %>
   
    <%
    res=request.getParameter("res");
    if(res==null)
        return;
    
 
 

    

       %>

       <%=res%>
       
    %>
                   