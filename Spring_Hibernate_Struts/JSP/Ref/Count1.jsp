<font color=darkblue size=5>
<Html><Title>Counter Bean </Title>
<Body>
<%@ page import ="Counter" %>
<jsp:useBean id="counter" scope="session" class="Counter"/>
<jsp:setProperty name="counter" property="count"/>
<% out.println("Count Value is "+counter.getCount()+"<br>"); %>
Counter from jsp:getProperty
<jsp:getProperty name="counter" property="count"/><BR>
</Body>
</Html>
</font>