<%@ page import ="java.io.*" %>
<%
try
{
File file=null;
String fname=request.getParameter("t1");
if(fname==null)
{
out.println("Name is null ");
return;
}
file=new File(fname);
if(file.mkdir())
out.println("Folder successfully created ");
else 
{
out.println("Folder Already exists ");
return;
}
}
catch(Exception ex)
    {
       out.println("Error in Folder creation "+ex);
    }
%>