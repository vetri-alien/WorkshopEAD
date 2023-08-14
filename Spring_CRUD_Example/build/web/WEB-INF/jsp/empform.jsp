<%-- 
    Document   : empform
    Created on : 9 Aug, 2023, 1:10:19 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Add New Employee</h1>  
        <f:form method="post" action="save">
            <table >    
                <tr>    
                    <td>Name : </td>   
                    <td><f:input path="name"  /></td>  
                </tr>    
                <tr>    
                    <td>Salary :</td>    
                    <td><f:input path="salary" /></td>  
                </tr>   
                <tr>    
                    <td>Designation :</td>    
                    <td><f:input path="designation" /></td>  
                </tr>   
                <tr>    
                    <td> </td>    
                    <td><input type="submit" value="Save" /></td>    
                </tr>    
    </table>    
</f:form>    
</body>
</html>
