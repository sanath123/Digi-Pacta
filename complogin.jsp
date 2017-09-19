<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		
        <title>COMPANY login</title>
    </head>
    <body background="full_image_1.jpg">
<br/><br/><br/>
<h1><strong><center>DIGI PACTA</center></strong></h1>
	
	
	<br/><br/><br/><br/><br/>
	
        <form method="post" action="clogin.jsp">
            <center>
            <table border="1" width="30%" cellpadding="10">
                <thead>
                    <tr>
                        <th colspan="2">COMPANY LOGIN</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>CIN</td>
                        <td><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Yet Not Registered!! <a href="creg.jsp">Register Here</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
	
    </body>
</html>
