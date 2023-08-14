<%! int i; %>
<html>
<body>
<form name=m1 action="regprocess.jsp">
<table border=0 align=center>
<tr> <td> FirstName<td> <input type=text name=fname> </tr>
<tr> <td> LastName<td> <input type=text name=lname> </tr>

<tr> 
<td> Sex 
<td align=left>
	      <input type=checkbox name=sex value=male> Male
	      <input type=checkbox name=sex value=female> Female
</tr>

<tr> 
<td> DOB
<td align=left>
	<select name=dt>
	<%
		for(i=1;i<=31;i++)
		{
	%>
	<option value="<%=i%>"> <%=i%> </option>
	<%	}	%>
	</select>

	<select name=month>
	<%
		for(i=1;i<=12;i++)
		{
	%>
	<option value="<%=i%>"> <%=i%> </option>
	<%	}	%>
	</select>

	<select name=yr>
	<%
		for(i=1900;i<=2400;i++)
		{
	%>
	<option value="<%=i%>">  <%=i%> </option>
	<%
		}
	%>
	</select>
 </tr>
<tr> <td> Age <td> <input type=text name=age> </tr>
<tr>
<td> Address <td> <textarea name=ta cols=15 rows=5> </textarea>
</tr>

<tr> <td> <input type=submit name=pr1 value="Submit"> </tr>
</table>
</form>
</body>
</html>