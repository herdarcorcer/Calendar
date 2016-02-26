<%-- 
    Document   : errorlogin
    Created on : 19/02/2016, 10:48:40 AM
    Author     : AULA6
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/miestilo.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
       
        
        <form action="j_security_check" method="POST" >
            <%@ include file="WEB-INF/jspf/banner.jspf" %><br>
            <h2>Wrong User / Password</h2><br>
            <label>User:</label> <input type="text" name="j_username" value="" /><br><br>
            <label>Password:</label> <input type="password" name="j_password" value="" /><br><br>
            <input type="submit" value="Login" />
        </form>
    </body>
</html>
