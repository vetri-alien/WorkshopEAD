

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Read Mail</title>
    </head>
    <script>
       
    </script>
    <body background="bg_1.jpg">
        <form method="post">
            <br><br><br><br><br><br><br><br><br><br><br><br><br>

<h1><marquee bgcolor="white" style="color:blue">READ MAIL</marquee></h1>
<img src="mailbox.gif" align="left" width="150" height="150">
            <center>
        <table border="2" bgcolor="lightyellow" style="color:maroon;font-weight:bold;font-size:20" cellspacing="10" cellpadding="5">
            <thead>
                <tr >
                    <th>Mail Date</th>
                    <th>Branch</th>
                    <th>StaffName</th>
                    
                </tr>
            </thead>
             <tbody>
             <%@page import="java.sql.*,database.*" %>
             <%!
            Connection con;
            PreparedStatement ps;
            connect ct;
            ResultSet rs;
            String user;

        %>
        <%
        user=session.getAttribute("user").toString();
        ct=new connect();
               con=ct.getDriver();
               ps=con.prepareStatement("select b.maildate,a.brname,a.staffname,c.mno,b.det from staffa a,mailboxa1 b,mailkeysa1 c where a.staffid=b.staffid and b.mno=c.mno and c.mailto = ?");
               ps.setString(1,user);

      rs=ps.executeQuery();


      while(rs.next())
          {
          %>
           
                <tr>
                <td><%=rs.getString(1)%>    </td>
                <td><%=rs.getString(2)%></td>
                    <td><%=rs.getString(3)%></td>
                    
                </tr>
                <%
                }
                %>
            </tbody>
        </table>
        <br><br>
            <a href="adminlink.jsp"><img src="back.gif"></a>
            </center>
        </form>
    </body>
</html>
