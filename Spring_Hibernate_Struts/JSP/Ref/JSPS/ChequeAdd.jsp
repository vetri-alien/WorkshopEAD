<%@ page import="java.sql.*" %>
<%! private Connection con;
       private PreparedStatement ps,p;
       private String bname,brname;
       private int cid,cno;
       private Date cdate;
       private int month,year,date;
       private double amount;
       private ResultSet rs;	
       %>
<%
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriverDriver");
con = DriverManager.getConnection("jdbc:odbc:mahesh","scott","tiger");
p = con.prepareStatement("select cust_id from cust where cust_id=?");
cid=Integer.parseInt(request.getParameter("id"));
p.setInt(1,cid);
rs = p.executeQuery();
if(rs.next())
{
ps =con.prepareStatement("insert into cheque values(?,?,?,?,?,?)");
cno=Integer.parseInt(request.getParameter("cno"));
amount = Double.parseDouble(request.getParameter("amt"));
bname=request.getParameter("bname");
brname=request.getParameter("brname");
year = Integer.parseInt(request.getParameter("year"));
month = Integer.parseInt(request.getParameter("month"));
date = Integer.parseInt(request.getParameter("date"));
cdate = new Date(year,month,date);
ps.setInt(1,cid);
ps.setInt(2,cno);
ps.setDouble(3,amount);
ps.setString(4,bname);
ps.setString(5,brname);
ps.setDate(6,cdate);
ps.executeUpdate();
%>
<jsp:forward page="cheque.jsp">
<jsp:param name="err" value="Record Inserted"/>
</jsp:forward>
<%
}
else
{
%>
<jsp:forward page="cheque.jsp">
<jsp:param name="err" value="Customer Id Not found"/>
</jsp:forward>
}
 
