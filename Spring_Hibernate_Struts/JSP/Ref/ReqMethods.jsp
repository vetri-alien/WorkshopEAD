<font color=blue size=5><br><br><center>
<%
response.setContentType("text/html");
out.println("<center><font color=blue size=5>");
out.println("<Br>Protocol : "+request.getProtocol());
out.println("<Br>Server Name : "+request.getServerName());
out.println("<Br>Server Port : "+request.getServerPort());
out.println("<Br>Remote Address : "+request.getRemoteAddr());
out.println("<Br>Remote Host : " +request.getRemoteHost());
out.println("<Br>Content Length : "+request.getContentLength());
out.println("<Br>Content Type : "+request.getContentType());
out.println("<br>Query String " +request.getQueryString());
out.println("<Br>Servlet Path " +request.getServletPath());
out.println("<Br>Http Method is  " +request.getMethod());
out.println("<Br>URI  " +request.getRequestURI());

out.println("</font></center>");
%></center></font>