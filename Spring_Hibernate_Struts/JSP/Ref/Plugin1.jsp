<Html>
<Title>Plug in</Title>
<h1>This is an example for plug in</h1>
<%
	try
	{
%>
	<jsp:plugin type="applet" code="ApplicationServlet" 	codebase="http://localhost:8000" height="200" width="200">
	</jsp:plugin>
	<br>
	<jsp:plugin type="bean" code="CookieTest" codebase="http://localhost:8000" height="50" width="100">
<jsp:fallback> This  browser can't display Bean component</jsp:fallback>
	</jsp:plugin>
 <%
}
 catch(Exception ex) 
 {
 	out.println("Err in Plug in "+ex.getMessage());
 }
 %>
</Html>