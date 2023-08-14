<html>
<body>
<title> Welcome Page </title>
<center>
<jsp:useBean class="QuestionBean" id="m1" scope="session"/>
<jsp:setProperty name="m1" property="uname" param="cname" />
 <h4>Hi, </h4>
<h3> <jsp:getProperty name="m1" property="uname" /> </h3>
<h4> welcome to OnLine Exam </h4>
<form name="f2" action="exam.jsp" method="post">
<input type="hidden" name="hid" value="<%=request.getParameter("cname")%>" >
<input type="submit" name="s2" value="Begin Exam">
</form>
</center>
</body>
</html>