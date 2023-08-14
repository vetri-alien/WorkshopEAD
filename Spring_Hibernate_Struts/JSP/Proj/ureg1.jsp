<%@page import ="java.sql.*"%>
<%! private Connection con;
         private PreparedStatement ps;
         private ResultSet rs;
%>
<% 
try
{
  Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@192.9.200.9:1521:ora9ssi","scott","tiger");
ps=con.prepareStatement("insert into user_new values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
   String firstname=request.getParameter("fname");
   String lastname=request.getParameter("lname");
   String language=request.getParameter("lang");
   String country=request.getParameter("country");
   String state=request.getParameter("state");
 String city=request.getParameter("city");
  String zipcode=request.getParameter("zip");  
   String timezone=request.getParameter("time");
   String gender=request.getParameter("gender");
   String month=request.getParameter("month");
   String day=request.getParameter("day");
   String age=request.getParameter("age");
   String occupation=request.getParameter("occupation");
   String userid=request.getParameter("uid");
   String password=request.getParameter("pass");
   String confirmpassword=request.getParameter("cpass");
   String question=request.getParameter("question");
   String answer=request.getParameter("answer");
if(firstname==null)
throw new NullPointerException("firstname is null");
if(lastname==null)
throw new NullPointerException("lastname is null");
if(language==null)
throw new NullPointerException("language is null");
if(country==null)
throw new NullPointerException("country is null");
if(state==null)
throw new NullPointerException("state  is null");
if(city==null)
throw new NullPointerException("city  is null");

if(zipcode==null)
throw new NullPointerException("zipcode is null");
if(timezone==null)
throw new NullPointerException("timezone  is null");
if(gender==null)
throw new NullPointerException("gender  is null");
if(month==null)
throw new NullPointerException("month  is null");
if(day==null)
throw new NullPointerException("day  is null");
if(age==null)
throw new NullPointerException("age  is null");
if(occupation==null)
throw new NullPointerException("occupation  is null");
if(userid==null)
throw new NullPointerException("userid is null");
if( password==null)
throw new NullPointerException("password is null");
if( confirmpassword==null)
throw new NullPointerException("confirmpassword  is null");
if(question==null)
throw new NullPointerException("question  is null");
if(answer==null)
throw new NullPointerException("answer  is null");

ps.setString(1,firstname);
ps.setString(2,lastname);
ps.setString(3,language);
ps.setString(4,country);
ps.setString(5,state);
ps.setString(6,city);
ps.setString(7,zipcode);
ps.setString(8,timezone);
ps.setString(9,gender);
ps.setString(10,month);
ps.setString(11,day);
ps.setString(12,age);
ps.setString(13,occupation);
ps.setString(14,userid);
ps.setString(15,password);
ps.setString(16,confirmpassword);
ps.setString(17,question);
ps.setString(18,answer);
ps.executeUpdate();
response.sendRedirect("me.jsp");
}
catch(Exception e)
  {
     out.println(e.getMessage());
}
%>


