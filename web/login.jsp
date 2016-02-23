<%-- 
    Document   : login
    Created on : 19/02/2016, 10:48:12 AM
    Author     : AULA6
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%@ include file="WEB-INF/jspf/banner.jspf" %><br>
         <h2>Enter your login & password</h2><br>
        <form action="j_security_check" method="POST">
            <label>User:</label> <input type="text" name="j_username" value="" /><br><br>
            <label>Password:</label> <input type="password" name="j_password" value="" /><br><br>
            <input type="submit" value="Login" />
        </form>
    </body>
</html>
