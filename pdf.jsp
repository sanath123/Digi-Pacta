<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<body background="full_image_1.jpg">
<br/><br/><br/>
<h1><strong><center>DIGI PACTA</center></strong></h1>
<br/><br/><br/><br/><br/><br/>

<%
 
Class.forName("oracle.jdbc.driver.OracleDriver");  
Statement statement = null;
ResultSet resultSet = null;
String s=request.getParameter("cid");
%>
<h2 align="center"><font><strong>YOUR PENDING CONTRACTS</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">


<%
try{ 
Connection con=DriverManager.getConnection(  
"jdbc:oracle:thin:@localhost:1521:xe","MOU179","MOU179");  
statement=con.createStatement();
String sql ="SELECT * FROM pendingcontract where pcid='" +s+ "'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

<p>this agreement<h3> <%=resultSet.getString(1) %>,</h3>.day of__________________, 20__ , between
[name of employer] a corporation incorporated under the laws of the Province of Ontario,
and having its principal place of business at _______________________(the "Employer");
and [name of employee], of the City of ____________________in the Province of Ontario
(the "Employee").</p>


<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
