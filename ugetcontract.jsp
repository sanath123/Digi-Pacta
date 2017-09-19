<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
 
Class.forName("oracle.jdbc.driver.OracleDriver");  
Statement statement = null;
ResultSet resultSet = null;
%>
<%String s=request.getParameter("cid");
%>
<h2 align="center"><font><strong>YOUR PENDING CONTRACTS</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>t1</b></td>
<td><b>t2</b></td>
<td><b>t3</b></td>
<td><b>t4</b></td>
<td><b>t5</b></td>
<td><b>t6</b></td>
<td><b>t7</b></td>
<td><b>t8</b></td>
<td><b>t9</b></td>
<td><b>t10</b></td>
<td><b>t11</b></td>
<td><b>t12</b></td>
<td><b>t13</b></td>
<td><b>t14</b></td>
</tr>
<%
try{ 
Connection con=DriverManager.getConnection(  
"jdbc:oracle:thin:@localhost:1521:xe","MOU179","MOU179");  
statement=con.createStatement();
String sql ="SELECT * FROM pendingcontract where pcid='" + <%=s%> + "'";

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

</tr>

  <% 
   }
   } catch (Exception e) {
  e.printStackTrace();
   }
  %>
</table>
