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
	rs1 = st1.executeQuery("select edigiid from emp where ENAME='" + userid + "'and EPASS='" + pwd +"'");
    rs = st.executeQuery("select * from emp where ENAME='" + userid + "'and EPASS='" + pwd +"'");
    if ((rs.next()) && (rs1.next())) {
		System.out.println(rs1.getString(1));
        session.setAttribute("userid", userid);
		 session.setAttribute("pwd", rs1.getString(1));
		 out.println("YOUR DIGIID " + pwd);
        out.println("welcome " + userid);
		
        out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("success.jsp");
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
	
%>
