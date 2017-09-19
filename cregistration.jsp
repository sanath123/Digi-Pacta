<%@ page import ="java.sql.*" %>
<%
    String cin = request.getParameter("cin");    
    String cname = request.getParameter("cname");
    String din = request.getParameter("din");
    String roc = request.getParameter("roc");
    String regno = request.getParameter("regno");
	 String coc = request.getParameter("coc");    
    String email = request.getParameter("email");
    String pass = request.getParameter("pass");
    String id = request.getParameter("id");
   Class.forName("oracle.jdbc.driver.OracleDriver");  
Connection con=DriverManager.getConnection(  
"jdbc:oracle:thin:@localhost:1521:xe","MOU179","MOU179");  
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into company values ('" + cin + "','" + cname + "','" + din + "','" + roc + "','" + regno + "','" + coc + "','" + email + "','" + pass + "','" + id + "')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("cwelcome.jsp");
       // out.print("Registration Successfull!"+"<a href='complogin.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("complogin.jsp");
    }
%>
