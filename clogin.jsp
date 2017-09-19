<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
   Class.forName("oracle.jdbc.driver.OracleDriver");  
Connection con=DriverManager.getConnection(  
"jdbc:oracle:thin:@localhost:1521:xe","MOU179","MOU179");  
 Statement st = con.createStatement();
	Statement st1 = con.createStatement();
    ResultSet rs,rs1;
	rs1 = st1.executeQuery("select cdigiid from company where cin='" + userid + "'and password='" + pwd +"'");
    rs = st.executeQuery("select * from company where cin='" + userid + "'and password='" + pwd +"'");
   if ((rs.next()) && (rs1.next())) {
        session.setAttribute("userid", userid);
		 session.setAttribute("pwd", rs1.getString(1));
		 out.println("YOUR DIGIID " + pwd);
        out.println("welcome " + userid);
        out.println("<a href='clogout.jsp'>Log out</a>");
        response.sendRedirect("csuccess.jsp");
    } else {
        out.println("Invalid password <a href='complogin.jsp'>try again</a>");
    }
%>
