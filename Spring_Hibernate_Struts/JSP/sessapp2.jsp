<font size=5 color=red>
<%
session.putValue("uname","First ");
application.setAttribute("upass","Second ");
out.println("<br>User Name "+session.getValue("uname"));
out.println("<br>Password "+application.getAttribute("upass"));
%>
</font>
