<%@ page import ="java.sql.*" %>
<%
    String phone = request.getParameter("uphone");    
    String pwd = request.getParameter("pass");
    String fname = request.getParameter("fname");
    String id = request.getParameter("id");
    String email = request.getParameter("email");
   Class.forName("oracle.jdbc.driver.OracleDriver");  
Connection con=DriverManager.getConnection(  
"jdbc:oracle:thin:@localhost:1521:xe","MOU179","MOU179");  
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into emp values ('" + id + "','" + fname + "','" + phone + "','" + email + "','" + pwd + "')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("welcome.jsp");
       // out.print("Registration Successfull!"+"<a href='ulogin.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("ulogin.jsp");
    }
%>
