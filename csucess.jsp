<html>
<body background="full_image_1.jpg">
<br/><br/><br/>
<h1><strong><center>DIGI PACTA</center></strong></h1>

<%
if((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="complogin.jsp">Please Login</a>
<%} else {
%>
Welcome <%=session.getAttribute("userid")%> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp   DIGIID <%=session.getAttribute("pwd")%>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;
<a href="cnotification.jsp">
  <img src="n1.png" alt="no image" style="width:300px;height:250px;border:0 ;">
</a>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;
<a href="cgen.jsp">
  <img src="c1.png" alt="no image" style="width:300px;height:250px;border:0 ;">
</a>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<a href='clogout.jsp'>Log out</a>
<%
}
%>
</body>
</html>
