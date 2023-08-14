<%@ page import="java.rmi.*"%>
<%!
private String sub;
private String mess;
private RemoteRequest remoteclient;
%>	
<%
try
{
remoteclient=(RemoteRequest)Naming.lookup("rmi://localhost:2422/ser");
sub=request.getParameter("sub");
mess=request.getParameter("mess");
remoteclient.setSubject(sub);
remoteclient.setMessage(mess);
%>
<jsp:forward page="Client30.jsp">
<jsp:param name="mess1" value="Message Sent To Server "/>
</jsp:forward>
<%}catch(Exception ex){out.println("Err in Server "+ex);}
%>	