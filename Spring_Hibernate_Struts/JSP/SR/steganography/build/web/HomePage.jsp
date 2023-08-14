

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Member Login</title>
    </head>
    <body background="bg_1.jpg" >
        <script>
function star()
{
   
    f1.action="loginprocess.jsp";
    f1.method="Post";
    f1.submit();
}
function sample()
{
    
    f1.action="CreateUser.jsp";
    f1.submit();
}
        </script>
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        <img src="chair.gif" align="left" width="200" height="200">
            <img src="sigani_bfliesnflowers03-welcome.gif" align="right">
        <form name="f1">
            <font color="white">
            <center>
                <h1>MEMBER LOGIN</h1>
                
                 <a href="index.html"><img align="right"  src="homeicon.jpg" width="50" height="50"></a>
                <table bordercolor="maroon" style="color:maroon;font-weight:bold" border="1" cellspacing="10" cellpadding="10">
            <tbody>
                <tr>
                    <th>Branch Name:</th>
               
                    <td colspan="2" width="30"><select name="d1" >
                            <option>Branch Name</option>
                            <%@page import="java.sql.*,database.*" %>
       <%!
                            Connection con;
                            connect ct;
                            PreparedStatement ps;
                            ResultSet rs;
                            String br;
                            %>
                            <%
                            try
                                    {
                            ct=new connect();
                            con=ct.getDriver();
                            ps=con.prepareStatement("select brname from CrimeBranch_detailsa1  ");
                            rs=ps.executeQuery();
                            while(rs.next())
                                {
                                br=rs.getString(1);
%>
                            <option value=<%=br%>><%=br%></option>
                            <%
                            }
                            }
                            catch(Exception e)
                                    {
                                out.println(e);
                                }
                            %>
                    </select></td>
                </tr>
                <tr>
                    <td>User Name</td>
                    <td><input type="text" name="t1" value="" /></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="t2" value="" /></td>
                </tr>
                <tr>
                   
                    <td><input type="button" onclick="sample()" value="New User"></td>
                    <td><input type="button" value="Login" onclick="star()"/></td>
                </tr>

                </tbody>
        </table>
            </center>
        </form>
        <a href="index.html">Back</a>
        <%!
        String res;
        %>
        <%
        res=request.getParameter("res");
        if(res==null)
            return;

        %>
        <center>
        <font color="blue">
        <%=res%>
        </font>
        </center>
       
    </body>
</html>
