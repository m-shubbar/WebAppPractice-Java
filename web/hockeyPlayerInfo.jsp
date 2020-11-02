<%-- 
    Document   : hockeyPlayerInfo
    Created on : Nov. 1, 2020, 7:06:59 p.m.
    Author     : Mustafa Shubbar <codingbox@outlook.com>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Player Info</h1>
        <%
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        String team = request.getParameter("team");
        String role = request.getParameter("role");
        String active = (request.getParameter("active")!=null)? "Active" : "Not Active";
        %>
        
        <br><%=name%>
        <br><%=address%>
        <br><%=team%>
        <br><%=role%>
        <br><%=active%>
    </body>
</html>
