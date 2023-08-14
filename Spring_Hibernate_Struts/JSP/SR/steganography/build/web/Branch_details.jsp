

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Crime Branch</title>
    <link href="Style.css" rel="stylesheet" type="text/css" />
</head>
<script>
    function store()
    {
        if(f1.t1.value==""||f1.t2.value==""||f1.t3.value==""||f1.t4.value==""||f1.t5.value=="")
            alert("Missing Some Input");
        else
        {
            f1.action="branchprocess.jsp";
            f1.method="Post";
            f1.submit();
        }
    }
</script>

<body bgcolor="maroon" background="bg_1.jpg" method="post">
<center>
    
</center>
<br><br><br><br><br><br><br><br>
<form name="f1" ><center>
        <font color="white" size="3">
        <h1 style="color:yellow">Crime Branch</h1>

        <table  style="font-size:20" border="0" cellspacing="10" cellpadding="5">
            <tbody>
                <tr>
                    <td>Branch Name</td>
                    <td><input type="text" name="t1" value="" /></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td><input type="text" name="t2" value="" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="text" name="t3" value="" /></td>
                </tr>
                <tr>
                    <td>City</td>
                    <td><select name="d1">
                            <option>Trichy</option>
                            <option>Madurai</option>
                            <option>Chennai</option>
                            <option>Coimbatore</option>
                            <option>Theni</option>
                    </select></td>
                </tr>
                <tr>
                    <td>Pincode</td>
                    <td><input type="text" name="t4" value="" /></td>
                </tr>
                <tr>
                    <td>Phone</td>
                    <td><input type="text" name="t5" value="" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="button" value="Submit" onclick="store()" />
                </tr>
            </tbody>
        </table>
    </center>
  
   <a href="index.html"><img align="right" src="1-home.gif"></a>
</form>
<a href="adminlink.jsp"><img src="001.GIF"></a>
<a href="signout.jsp">LogOut</a>
<font size="6" color="blue">
<%!    String result;

%>
<center>
    <%
        result = request.getParameter("result");

        if (result == null) {
            return;
        }


    %>
    <%=result%>
    </font>
   
    
</center>
</body>
</html>
