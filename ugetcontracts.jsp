<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<html>
<body background="full_image_1.jpg">
<br/><br/><br/>
<h1><strong><center>DIGI PACTA</center></strong></h1>
<%
 String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14;
Class.forName("oracle.jdbc.driver.OracleDriver");  
Statement statement = null;
Statement statement1 = null;
ResultSet resultSet = null;

String s=request.getParameter("cid");
%>
<h2 align="center"><font><strong>Contract</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="0" width="100%">
<tr bgcolor="#A52A2A">
<td><b>cid</b></td>
<td><b>cdigiid</b></td>
<td><b>udigiid</b></td>
<td><b>empname</b></td>
<td><b>date of join</b></td>
<td><b>number of years</b></td>
<td><b>position</b></td>
<td><b>cmpensation</b></td>
<td><b>working hours</b></td>
<td><b>annual leave</b></td>
<td><b>sick pay</b></td>
<td><b>educational support</b></td>
<td><b>condition on terimination</b></td>
<td><b>place of work</b></td>
</tr>
<%
try{ 
Connection con=DriverManager.getConnection(  
"jdbc:oracle:thin:@localhost:1521:xe","MOU179","MOU179");  
statement=con.createStatement();
String sql ="SELECT * FROM pendingcontract where pcid='" +s+ "'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
	
%>

<tr bgcolor="#DEB887">
<td><%=resultSet.getString(1) %></td>
<td><%=resultSet.getString(2) %></td>
<td><%=resultSet.getString(3) %></td>
<td><%=resultSet.getString(4) %></td>
<td><%=resultSet.getString(5) %></td>
<td><%=resultSet.getString(6) %></td>
<td><%=resultSet.getString(7) %></td>
<td><%=resultSet.getString(8) %></td>
<td><%=resultSet.getString(9) %></td>
<td><%=resultSet.getString(10) %></td>
<td><%=resultSet.getString(11) %></td>
<td><%=resultSet.getString(12) %></td>
<td><%=resultSet.getString(13) %></td>
<td><%=resultSet.getString(14) %></td>
<%session.setAttribute("s1",resultSet.getString(1));%>
<%session.setAttribute("s2",resultSet.getString(2));%>
<%session.setAttribute("s3",resultSet.getString(3));%>
<%session.setAttribute("s4",resultSet.getString(4));%>
<%session.setAttribute("s5",resultSet.getString(5));%>
<%session.setAttribute("s6",resultSet.getString(6));%>
<%session.setAttribute("s7",resultSet.getString(7));%>
<%session.setAttribute("s8",resultSet.getString(8));%>
<%session.setAttribute("s9",resultSet.getString(9));%>
<%session.setAttribute("s10",resultSet.getString(10));%>
<%session.setAttribute("s11",resultSet.getString(11));%>
<%session.setAttribute("s12",resultSet.getString(12));%>
<%session.setAttribute("s13",resultSet.getString(13));%>
<%session.setAttribute("s14",resultSet.getString(14));%>

</tr>

<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>


<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp

<a href="accepted.jsp">
  <img src="a.jpg" alt="no image" style="width:100px;height:100px;border:0 ;">
</a>

&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<a href="rejected.jsp">
  <img src="reject.png" alt="no image" style="width:100px;height:100px;border:0 ;">
</a>
</body>
</html>
