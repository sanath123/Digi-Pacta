<%@ page import ="java.sql.*" %>
<%
    String pcid = request.getParameter("pcid");    
    String cdigiid = request.getParameter("cdigiid");
    String udigiid = request.getParameter("udigiid");
    String empname = request.getParameter("empname");
    String doj = request.getParameter("doj");
	 String noy = request.getParameter("noy");    
    String pos = request.getParameter("pos");
    String comp = request.getParameter("comp");
    String how = request.getParameter("how");
	 String al = request.getParameter("al");
	 String sp = request.getParameter("sp");    
    String es = request.getParameter("es");
    String cot = request.getParameter("cot");
    String place = request.getParameter("place");
   Class.forName("oracle.jdbc.driver.OracleDriver");  
Connection con=DriverManager.getConnection(  
"jdbc:oracle:thin:@localhost:1521:xe","MOU179","MOU179");  
    Statement st = con.createStatement();
    
    int i = st.executeUpdate("insert into pendingcontract values ('" + pcid + "','" + cdigiid + "','" + udigiid + "','" +empname + "','" + doj + "','" + noy + "','" + pos + "','" + comp + "','" + how+ "','" + al+ "','" + sp + "','" + es + "','" + cot + "','" + place + "')");
    if (i > 0) {
	out.println("GENARATED SUCESSFULLY");
        
       response.sendRedirect("csuccess.jsp");
       
    } else {
        response.sendRedirect("csuccess.jsp");
	   out.println("NOT GENARATED SUCESSFULLY");
    }
%>
