<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<body background="full_image_1.jpg">
<br/><br/><br/>
<h1><strong><center>DIGI PACTA</center></strong></h1>
<%
 String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14;
Class.forName("oracle.jdbc.driver.OracleDriver");  
Statement statement = null;
Statement statement1 = null;
ResultSet resultSet = null;
ResultSet resultSet1 = null;
String s=request.getParameter("cid");
%>
<h2 align="center"><font><strong>Contract</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="0" width="100%">
<tr bgcolor="#A52A2A">
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
String sql ="SELECT * FROM contract where cid='" +s+ "'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
	
%>
contract with cid:
<tr bgcolor="#DEB887">
<tr><%=resultSet.getString(1) %></td>
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
</body>

