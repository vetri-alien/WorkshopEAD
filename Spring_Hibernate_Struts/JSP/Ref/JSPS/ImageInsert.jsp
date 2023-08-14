<center>
<form name=f1 action="ImageInsert.jsp">
<input type=text name=imgno> <br>
<input type=text name=imgname> <br>
<input type=submit name=s1 value="Insert"> <br>
</form>
</center>
<%@ page import="java.sql.*,java.io.*"%>
<%!
	Connection con;
	PreparedStatement ps;
	File file;
	InputStream in;
%>
<%
	try
	{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@192.9.200.9:1521:ora9ssi","scott","tiger");
	con.setAutoCommit(true);
int n=Integer.parseInt(request.getParameter("imgno"));
file = new File(request.getParameter("imgname"));
	if(file.exists())
	   if(file.canRead())
	     in=new FileInputStream(file);
   else throw new Exception("File not accessible ");
else throw new FileNotFoundException("Image Not Found ");
ps = con.prepareStatement("insert into sasi_image values(?,?)");
	ps.setInt(1,n);
	ps.setBinaryStream(2,in,in.available());
	ps.executeUpdate();
	   ps.close();
	   con.close();
	out.println("Image Inserted ");
	}
	catch(Exception ex)
	{ 
	out.println("Image Insert Error "+ex);
	}
%>