<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
<%
 
Class.forName("oracle.jdbc.driver.OracleDriver");  
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>YOUR CONTRACTS</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="0">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>confirmed contracts</b></td>

</tr>
<%
try{ 
Connection con=DriverManager.getConnection(  
"jdbc:oracle:thin:@localhost:1521:xe","MOU179","MOU179");  
statement=con.createStatement();
String sql ="SELECT cid FROM contract where cdigiid='" + session.getAttribute("pwd") + "'";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">
<td><a href="cgetcontracts.jsp?cid=<%=resultSet.getString(1) %>"><%=resultSet.getString(1) %></a></td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
}
%>
</table>
</body>
