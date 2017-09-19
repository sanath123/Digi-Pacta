
<%@ page import ="java.sql.*" %>
<%
String s1=(String)session.getAttribute("s1"); 
String s2=(String)session.getAttribute("s2"); 
String s3=(String)session.getAttribute("s3"); 
String s4=(String)session.getAttribute("s4"); 
String s5=(String)session.getAttribute("s5"); 
String s6=(String)session.getAttribute("s6"); 
String s7=(String)session.getAttribute("s7"); 
String s8=(String)session.getAttribute("s8"); 
String s9=(String)session.getAttribute("s9"); 
String s10=(String)session.getAttribute("s10"); 
String s11=(String)session.getAttribute("s11"); 
String s12=(String)session.getAttribute("s12"); 
String s13=(String)session.getAttribute("s13"); 
String s14=(String)session.getAttribute("s14"); 
    int i;
   Class.forName("oracle.jdbc.driver.OracleDriver");  
Connection con=DriverManager.getConnection(  
"jdbc:oracle:thin:@localhost:1521:xe","MOU179","MOU179");  
    Statement st = con.createStatement();
    i = st.executeUpdate("insert into contract values ('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"','"+s9+"','"+s10+"','"+s11+"','"+s12+"','"+s13+"','"+s14+"')");
    if (i > 0) {
	out.println("you signed contract");  
       response.sendRedirect("signed.jsp");
    } 
%>
