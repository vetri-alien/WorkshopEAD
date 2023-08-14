<%!	int n;
	boolean flag=false;
	int totmark,qno;
	String mark="",result="",s2="";
%>
<html>
<head> <title> Exam Process Page </title> </head>
<body>
<jsp:useBean class="QuestionBean" id="m1" scope="session" />
<jsp:setProperty name="m1" property="qid" value="<%=m1.getQid()%>"/>
<% 	qno=m1.getQno();	%>
<%
	if(qno<=10)
	{
%>
<form name=f1 action=exam.jsp method=post>
<center>
<table>
<tr>
<td style="font-style=arial;font-size=24">
Q<%=qno%>.
<td style="font-style=arial;font-size=24">
<jsp:getProperty name="m1" property="qname"/>
</tr>

<tr>
<td>
<input type=radio name=r1 value="<%=m1.getOpt1()%>">
<td style="font-style=arial;font-size=20">
<jsp:getProperty name="m1" property="opt1"/>
</tr>

<tr>
<td>
<input type=radio name=r1 value="<%=m1.getOpt2()%>">
<td style="font-style=arial;font-size=20">
<jsp:getProperty name="m1" property="opt2"/>
</tr>

<tr>
<td>
<input type=radio name=r1 value="<%=m1.getOpt3()%>">
<td style="font-style=arial;font-size=20">
<jsp:getProperty name="m1" property="opt3"/>
</tr>

<tr>
<td>
<input type=radio name=r1 value="<%=m1.getOpt4()%>">
<td style="font-style=arial;font-size=20">
<jsp:getProperty name="m1" property="opt4"/>
</tr>
</table>

<input type=hidden name=h1 value="<%=m1.getAns()%>">
<%
	}
%>
<%
	try
	{
	if(request.getParameter("r1").equals(null))
	   flag=false;
	if(request.getParameter("r1").equals(request.getParameter("h1")))
	   flag=true;
	if(!request.getParameter("r1").equals(request.getParameter("h1")))
	   flag=false;
%>
<%
	}
	catch(Exception exp)
	{
//	out.println(exp.getMessage());
	}
%>
<jsp:setProperty name="m1" property="mark" value="<%=flag%>"/>

<font color=blue size=4 face="arial">
<%
	if(qno>10)
	{
	totmark=m1.getMark();
	s2=m1.getUname();
	if(totmark>7)
	{
	     out.println("Congrats "+s2+", U've Passed !<br>");
	     out.println("Your Score is:"+totmark);
	}
	else
	{
	     out.println("<font color=blue size=4 face=arial>");
	     out.println("Sorry "+s2+", U've not Passed !<br>");
	     out.println("Your Score is:"+totmark);
	     out.println("<font>");
	}
	}
%>
</font>

<%
	if(qno<=10)
	{
%>
<input type=submit name=sub1 value=Next>
<%
	}
%>
</center>
</form>
</body>
</html>