<form action=cookies.jsp method="post">
<pre>
Enter user Name
<input name=uname><br>
Enter Password
<input type=password name=upass>
<br>
<input type=Submit Value=Submit>
<%
try
{
	String uname=request.getParameter("uname");
	String upass=request.getParameter("upass");
	if(uname==null || upass==null)return;
	Cookie un=new Cookie("un",uname);
	Cookie up=new Cookie("up",upass);
	response.addCookie(un);
	response.addCookie(up);
	Cookie c[]=request.getCookies();
	if(c==null)
	return;
	out.println("<font color=blue size=5>");
	for(int i=0;i<c.length;i++)
	{
	out.println("<font color=blue size=5>");
	  out.println("<br>Cookie Name "+c[i].getName());
	  out.println("<br>Cookie Value "+c[i].getValue());
	}
	}
	catch(Exception ex)
	{
	out.println("Error "+ex.getMessage());
	}
%>