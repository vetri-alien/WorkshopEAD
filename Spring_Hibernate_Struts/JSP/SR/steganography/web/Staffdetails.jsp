

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Staff Details</title>
    </head>
    <%@page import="java.sql.*,database.*" %>
    <body background="bg_1.jpg"><br><br>
        <font color="yellow">
            <script>
                function test()
                {
                    f1.action="staffprocess.jsp";
                    f1.submit();
                }
            </script>
            <form name="f1" method="post"><center>
                <br><br><br><br><br><br><br><br>
                <img src="staff.jpg" align="center" height="70"><br>
                <img src="indiaflag[1].gif" align="left">
                <img src="indiaflag[1].gif" align="right">
                
                <h1>Staff  Details</h1>
                <table style="font-size:20;color:maroon" border="0" cellspacing="10" cellpadding="5">
                    <tbody>
                        <tr>
                            <td>Branch Name</td>
                            <td><select name="d1">
                                    <option>Select Branch</option>

                                    <%!    Connection con;
    PreparedStatement ps;
    connect ct;
    ResultSet rs;

                                    %>
                                    <%
        try {
            out.println("hai");
            ct = new connect();
            con = ct.getDriver();
            ps = con.prepareStatement("select brname from CrimeBranch_detailsa1");
            rs = ps.executeQuery();


            while (rs.next()) {

                                    %>


                                    <option><%=rs.getString(1)%>
                                    <%

            }
        } catch (Exception e) {
            out.println(e);
        }
                                    %>

                            </select></td>
                        </tr>
                        <tr>
                            <td>Staff  Name</td>
                            <td><input type="text" name="t1" value="" /></td>
                        </tr>
                        <tr>
                            <td>Designation</td>
                            <td><input type="text" name="t2" value="" /></td>
                        </tr>
                        <tr>
                            <td>Address</td>
                            <td><textarea name="m1" rows="4" cols="20">
                            </textarea></td>
                        </tr>
                        <tr>
                            <td>Phone</td>
                            <td><input type="text" name="t3" value="" /></td>
                        </tr>
                        <tr>
                            <td>E-mail ID</td>
                            <td><input type="text" name="t4" value="" /></td>
                        </tr>
                        <tr>
                            <td></td>

                            <font color="blue"></font>
                            <td><input type="button" onclick="test()" value="Submit"></td>
                        </tr>
                    </tbody>
                </table>


            </form>
        </font>
<a href="index.html"><img align="right" src="1-home.gif"></a>
                <a href="adminlink.jsp"><img align="left" src="back.jpg"></a>
    </body>
    <%!    String result;
    %>
    <%
        result = request.getParameter("result");
        if (result == null) {
            return;
        }

    %>
    <font color="blue" size="3">
        <%=result%>
    </font>
</html>
