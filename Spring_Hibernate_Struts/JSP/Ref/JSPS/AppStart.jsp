<%@ page autoFlush="true" %>
<%
try
{
session.setAttribute("count",new Integer(0));
response.sendRedirect("QuestionApp1.jsp");
}catch(Exception ex) 
{out.println("Err Start"+ex);}
%>