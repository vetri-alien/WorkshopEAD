<form action=Server30.jsp method=post>
<Pre>
Subject   <input name=sub><br>
Message  <textarea name=mess cols=20 rows=5> </textarea><br>
<input type=submit name=s1 value=Send>
</pre>
</form>
<br>
<br>
<font size=4 color=darkblue>
<%!
private String res=null;%>
<%
res=request.getParameter("mess1");
if(res==null)return;
%>
<jsp:expression>res</jsp:expression>
</font>