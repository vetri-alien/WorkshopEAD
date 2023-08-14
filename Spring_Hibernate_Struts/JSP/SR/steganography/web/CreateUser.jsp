

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>New User</title>
</head>
<%@page import="java.sql.*,database.*" %>
<script>
    function fun()
    {
        f1.action="textprocess.jsp";
        f1.method="Post";
        f1.submit();
    }
</script>
<body background="bg_1.jpg">
<br><br> <br><br> <br><br> <br><br><br><br><br><br><br><br>
<img align="left" src="newmon_wiz.gif" width="200" height="200">

<form name="f1" method="post" >
<font color="white">
    <center>
        <script>
            function demo()
            {
                alert("clicked");
                f1.action="createprocess.jsp";
                f1.submit();
            }
        </script>
    <font color="maroon"><h1><marquee bgcolor="white"><u>New User</u></h1></marquee></font>
        <table align="center" style="color:navy" border="1" cellspacing="10" cellpadding="5">
            <tbody>
                <tr>
                    <td>Branch Name</td>
                    <%!    Connection con;
    connect ct;
    PreparedStatement ps;
    ResultSet rs;
    String branch;
                    %>
                    <%

     
        branch=request.getParameter("d1");

                    %>
                    <td><input type="text" name="t1" value=<%=branch%>>

                    </td>
                </tr>

                <tr>
                    <td>Name</td>
                    <td><select name="t2">
                            <option>Staff Name</option>
                            <%
        try {
            ct = new connect();
            con = ct.getDriver();
            ps = con.prepareStatement("select staffname from staffa where brname=? and staffid  not in (select staffid from userlista1)");
            ps.setString(1, branch);
            rs = ps.executeQuery();
            while (rs.next()) {
                            %>
                            <option><%=rs.getString(1)%></option>
                            <%
            }
        } catch (Exception e1) {
            out.println(e1);
        }
                            %>
                    </select></td>
                </tr>
                <tr>
                    <td>User Name</td>
                    <td><input type="text" name="t3" value="" />@stegano.com</td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="t4" value="" /></td>
                </tr>
                <tr>
                    <td>Confirm Password</td>
                    <td><input type="password" name="t5" value="" /></td>
                </tr>

                <tr>
                    <td></td>
                    <td><input type="Button" value="Submit" onclick="demo()" /></td>
                </tr>
            </tbody>
        </table>
    </center>
    </form>
    <a href="HomePage.jsp"><img src="back.jpg" align="right"></a>
    <%!    String result;

    %>
    <%

        result = request.getParameter("result");
        if (result == null) {
            return;
        }
    %>
    <center><font color="blue">
        <%=result%>
</center></font>
</body>
</html>
