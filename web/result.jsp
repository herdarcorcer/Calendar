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
        <title>JSP Page</title>
    </head>
    <body>
         <%@ include file="WEB-INF/jspf/banner.jspf" %><br>
         <h1>   
        
    <c:choose>
        <c:when test="${scoresData.meses=='ENERO'}">
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
                 int dias=31;
                 int count =0;
                 int S,M,T,W,T2,F,S2;
                 int dias2 =0;
                 while(count<=31)
                 {
                   
                     count++;
                     if(count>31)
                     {
                         S=0;
                     }else{
                      S=count;}
                    
                     count++;
                      if(count>31)
                     {
                         M=0;
                     }else{
                      M=count;}
          
                     count++;
                      if(count>31)
                     {
                         T=0;
                     }else{
                      T=count;}
                     
                     count++;
                      if(count>31)
                     {
                         W=0;
                     }else{
                      W=count;}
                     
                     count++;
                      if(count>31)
                     {
                         T2=0;
                     }else{
                      T2=count;}
                     
                     count++;
                      if(count>31)
                     {
                         F=0;
                     }else{
                      F=count;}
                     
                     count++;
                      if(count>31)
                     {
                         S2=0;
                     }else{
                      S2=count;}
                     
                     
                     out.println("<tr><td>"+S+"<td>"+M+"</td><td>"+T+"</td><td>"+W+"</td><td>"+T2+"</td><td>"+F+"</td><td>"+S2+"</td></tr>");
                 }
                 %>
                </tbody>
            </table>

        </c:when>
        <c:when test="${scoresData.meses=='FEBRERO'}">
        </c:when>
        <c:when test="${scoresData.meses=='MARZO'}">
        </c:when>
        <c:when test="${scoresData.meses=='ARBIL'}">
        </c:when>
        <c:when test="${scoresData.meses=='MAYO'}">
        </c:when>
        <c:when test="${scoresData.meses=='JUNIO'}">
        </c:when>
        <c:when test="${scoresData.meses=='JULIO'}">
        </c:when>
        <c:when test="${scoresData.meses=='AGOSTO'}">
        </c:when>
        <c:when test="${scoresData.meses=='SEPTIEMBRE'}">
        </c:when>
        <c:when test="${scoresData.meses=='OCTUBRE'}">
        </c:when>
        <c:when test="${scoresData.meses=='NOVIEMBRE'}">
        </c:when>
        <c:when test="${scoresData.meses=='DICIEMBRE'}">
        </c:when>
        <c:otherwise>
        </c:otherwise>
    </c:choose>

    </body>
</html>
