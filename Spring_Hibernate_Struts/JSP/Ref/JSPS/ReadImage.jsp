<%@ page import="java.sql.*,java.io.*"  session="false" autoFlush="true"%>
<%!
	private Connection con;
	private Statement st;
	private ResultSet rs;
	private PreparedStatement ps;
	private InputStream stream;
%>
<%
	try
	{
response.setContentType("image/jpeg");
Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@192.9.200.9:1521:ora9ssi","scott","tiger");
ps=con.prepareStatement("select picture from sasi_image where figno=?");
	String s1=request.getParameter("imgno");
	if(s1==null)
	  return;
	int n=Integer.parseInt(s1);
	ps.setInt(1,n);
	rs=ps.executeQuery();
	if(rs.next())
	   stream=rs.getBinaryStream(1);
	int c;
	byte b[]=new byte[(int)stream.available()];
	stream.read(b);
	out.println(b);
/*	while((c=stream.read())!=-1)
	   out.println(c);*/
	}
	catch(Exception ex)
	{
	   out.println("Image Display Error"+ex);
	}
%>