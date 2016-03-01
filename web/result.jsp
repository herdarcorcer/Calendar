<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : result
    Created on : 19/02/2016, 10:58:52 AM
    Author     : AULA6
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="scoresData" scope="request" class="com.iucesmag.model.ScoresData" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/miestilo.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <form >
            <%@ include file="WEB-INF/jspf/banner.jspf" %><br>
           
         <%int dias=0;%>
    <c:choose>
        <c:when test="${scoresData.meses=='JANUARY'||scoresData.meses=='MARCH'||scoresData.meses=='MAY'||scoresData.meses=='JULY'||scoresData.meses=='AUGUST'||scoresData.meses=='OCTOBER'||scoresData.meses=='DECEMBER'}">
            <% out.println("<h1>"+scoresData.getMeses()+"</h1>");%>
            <% dias=31; %>
        </c:when>
        <c:when test="${scoresData.meses=='FEBRUARY'}">
            <% out.println("<h1>"+scoresData.getMeses()+"</h1>");%>
            <% dias=29; %>
        </c:when>
       
        <c:when test="${scoresData.meses=='APRIL'||scoresData.meses=='JUNE'||scoresData.meses=='SEPTEMBER'||scoresData.meses=='NOVEMBER'}">
            <% out.println("<h1>"+scoresData.getMeses()+"</h1>");%>
            <% dias=30; %>
        </c:when>
        <c:otherwise>
        </c:otherwise>
    </c:choose>
            <table border="2">
                <thead>
                    <tr>
                        <th>S</th>
                        <th>M</th>
                        <th>T</th>
                        <th>W</th>
                        <th>T</th>
                        <th>F</th>
                        <th>S</th>
                    </tr>
                </thead>
                <tbody>
                    
                    <%
                 int count =0;
                 int count2=1;
                 while(count<=dias)
                 {
                     out.println("<tr>");
                    while(count2<=7 )
                    {
                        int a= count+count2;
                        if(a<=dias){
                        out.println("<td>"+a+"</td>");
                        }
                        count2++;
                        
                    }
                    out.println("</tr>");
                    count=count+count2;
                    count2=1;
                
                 }
                 %>
                
        
                    
                </tbody>
            </table>
                 <br><br>
                 <a href="index.jsp">Atras</a>
        </form>
    </body>
</html>
