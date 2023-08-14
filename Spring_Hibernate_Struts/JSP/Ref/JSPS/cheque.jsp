<%! private int date,month,year; %>
<html>
<body bgcolor=Ivory>
<pre>
<center><h2>CHEQUE DETAILS
<form name=f1 action=ChequeAdd.jsp method=post>
<table border=1 align=center bordercolor="black">
<tr><td><b><h3>Customer Id    <td><input type=text name=id> </tr>
<tr><td><b><h3>Cheque Number  <td><input type=text name=cno> </tr>
<tr><td><b><h3>Amount     <td><input type=text name=amt> </tr>
<tr><td><b><h3>Bank Name     <td><input type=text name=bname> </tr>
<tr><td><b><h3>Branch Name         <td><input type=text name=brname></tr>
<tr><td><b><h3>Cheque Date <td> <select name=year> 

 <% 
	for(year=1990;year<=2050;year++)
	{
%>
	<option value=  <%=year  %>  >  
	<%=year %>
	</option>
<% } %>
</select>
	<select name=month>
 <% 
	for(month=1;month<=12;month++)
	{
%>
	<option value=  <%=month  %>>
	<%=month %>
	</option>
<% } %>
</select>
<select name=date>
 <%
	 for(date=1;date<=31;date++) 
       	{
%>
	<option value=  <%=date %>  >
	 <%=date %> 
	</option>
<% } %>
</select>
</table>
<center><input type=submit value="SUBMIT"></center>
</body>
</html>
<center>
<font color=red size=5>
<%
	String err = request.getParameter("err");
	if(err==null)
	  return;
	else
	 out.println(err);
%>
</font>
</center>
</form>