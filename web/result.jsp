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
           
         <%int dias=0;%>
    <c:choose>
        <c:when test="${scoresData.meses=='ENERO'}">
            <h1>ENERO</h1>
            <% dias=31; %>
        </c:when>
        <c:when test="${scoresData.meses=='FEBRERO'}">
            <h1>FEBRERO</h1>
            <% dias=29; %>
        </c:when>
        <c:when test="${scoresData.meses=='MARZO'}">
            <h1>MARZO</h1>
            <% dias=31; %>
        </c:when>
        <c:when test="${scoresData.meses=='ABRIL'}">
            <h1>ABRIL</h1>
            <% dias=30; %>
        </c:when>
        <c:when test="${scoresData.meses=='MAYO'}">
            <h1>MAYO</h1>
            <% dias=31; %>
        </c:when>
        <c:when test="${scoresData.meses=='JUNIO'}">
            <h1>JUNIO</h1>
            <% dias=30; %>
        </c:when>
        <c:when test="${scoresData.meses=='JULIO'}">
            <h1>JULIO</h1>
            <% dias=31; %>
        </c:when>
        <c:when test="${scoresData.meses=='AGOSTO'}">
            <h1>AGOSTO</h1>
            <% dias=31; %>
        </c:when>
        <c:when test="${scoresData.meses=='SEPTIEMBRE'}">
            <h1>SEPTIEMBRE</h1>
            <% dias=30; %>
        </c:when>
        <c:when test="${scoresData.meses=='OCTUBRE'}">
            <h1>OCTUBRE</h1>
            <% dias=31; %>
        </c:when>
        <c:when test="${scoresData.meses=='NOVIEMBRE'}">
            <h1>NOVIEMBRE</h1>
            <% dias=30; %>
        </c:when>
        <c:when test="${scoresData.meses=='DICIEMBRE'}">
            <h1>DICIEMBRE</h1>
            <% dias=31; %>
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
                 int S=0,M=0,T=0,W=0,T2=0,F=0,S2=0;
                 int count2=1;
                 while(count<=dias)
                 {                  
                    while(count2<=7)
                    {
                        if(count2==1){if(count+count2>dias){count2++;}else{S=count+count2; count2++;}}
                        if(count2==2){if(count+count2>dias){count2++;}else{M=count+count2; count2++;}}
                        if(count2==3){if(count+count2>dias){count2++;}else{T=count+count2; count2++;}}
                        if(count2==4){if(count+count2>dias){count2++;}else{W=count+count2; count2++;}}
                        if(count2==5){if(count+count2>dias){count2++;}else{T2=count+count2; count2++;}}
                        if(count2==6){if(count+count2>dias){count2++;}else{F=count+count2; count2++;}}
                        if(count2==7){if(count+count2>dias){count2++;}else{S2=count+count2; count2++;}}
                    }
                    count=count+count2;
                    count2=1;
                     out.println("<tr><td>"+S+"<td>"+M+"</td><td>"+T+"</td><td>"+W+"</td><td>"+T2+"</td><td>"+F+"</td><td>"+S2+"</td></tr>");
                 S=0;M=0;T=0;W=0;T2=0;F=0;S2=0;
                 }
                 %>
                </tbody>
            </table>
    </body>
</html>
