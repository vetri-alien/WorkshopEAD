<html>
<body>
<% String name=request.getParameter("s1"); 
      if(name==null) 
         name="SSI Limited"; 
%>

Welcome to  <%=name %>
</body>
</html>
