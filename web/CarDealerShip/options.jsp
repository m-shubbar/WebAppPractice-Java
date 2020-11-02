<%-- 
    Document   : options
    Created on : Nov. 1, 2020, 7:42:04 p.m.
    Author     : Mustafa Shubbar <codingbox@outlook.com>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>OPTIONS</title>
    </head>
    <body>
        <%
        String car = request.getParameter("car");
        session.setAttribute("car", car);
        %>
        <h1>Select options</h1>
        <form action="summary.jsp" method="GET">
            <input type="checkbox" name="airc">Air Conditioning / $1,500<br>
            <input type="checkbox" name="autot">Automatic Transmission / $2,500<br>
            <input type="checkbox" name="powerw">Power Windows / $750<br>
            <br>
            <input type="submit" type="Next">
        </form>
    </body>
</html>
