<%-- 
    Document   : home
    Created on : Nov 22, 2013, 2:23:10 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Web Design</title>
<style type="text/css">
.b:hover{
border-size:3px;
border-color:red;
}
.big:hover
{
color:red;

font-weight:bold;
}
.b1
{
background-color: #ffffff;
border-bottom:solid;
border-left: #FFEEEE;
border-right:solid;
border-top: #EEEEEE;
color: brown;
font-family: Verdana, Arial

}
</style>

<meta name="keywords" content="" />
<meta name="description" content="" />
<link rel="stylesheet" type="text/css" href="default.css" />

    </head>
    <body>
        <div id="upbg"></div>

<div id="outer"> 
  <div id="header"> 
    <div id="headercontent"> 
      <h1>JSP Examples</h1>
    </div>
  </div>
  <div id="headerpic"> </div>
  <div id="menu"> 
    <!-- HINT: Set the class of any menu link below to "active" to make it appear active -->
    <ul>
      <li><a href="#" class="active">Home</a></li>
      <li><a href="user_log.jsp" >User</a></li>
      <li><a href="signup.jsp">Sign up</a></li>      
      <li><a href="server_log.jsp">Admin</a></li>
    </ul>
  </div>
  <div id="menubottom"></div>
  <div id="content"> 
    <!-- Normal content: Stuff that's not going to be put in the left or right column. -->
    <!-- Primary content: Stuff that goes in the primary content column (by default, the left column) -->
    <div id="primarycontainer"> 
      <div id="primarycontent"> 
        <!-- Primary content area start -->
        <div class="post"> 
          <p> <strong><em><font color="#990000" size="+1" face="Verdana, Arial, Helvetica, sans-serif">J2EE</font></em></strong> 
            <br/>
            <br/>
            <img src="images/rose4.jpg" width="200" height="200"></p>
        </div>
        <!-- Primary content area end -->
      </div>
    </div>
    <!-- Secondary content: Stuff that goes in the secondary content column (by default, the narrower right column) -->
    <div id="secondarycontent"> 
      <!-- Secondary content area start -->
      <!-- HINT: Set any div's class to "box" to encapsulate it in (you guessed it) a box -->
      <!-- Secondary content area end -->
      
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
    </div>
  </div>
  
  <div id="footer" align="center"> <strong><font color="#990033" face="Geneva, Arial, Helvetica, sans-serif" > &copy;  copy rights reserved by SR &AMP; Family  2012</font></strong></div>
  <!--  <div class="right">Design by <a href="http://www.nodethirtythree.com/">NodeThirtyThree 
      Design</a></div>-->
</div>

    </body>
</html>
