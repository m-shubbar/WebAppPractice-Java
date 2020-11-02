<%-- 
    Document   : index
    Created on : Nov. 2, 2020, 1:03:11 p.m.
    Author     : Mustafa Shubbar <codingbox@outlook.com>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Welcome to JavaBeans</h1>
        <%
            Car newCar = new Car();
            newCar.setMake("Honda");
            newCar.setModel("Accord");
            newCar.setColour("Black");
            newCar.setYear(2016);
        %>
        
        <h2>Details from JavaBean</h2>
        <br>Make: <%=newCar.getMake()%>
        <br>Model: <%=newCar.getModel()%>
        <br>Colour: <%=newCar.getColour()%>
        <br>Year: <%=newCar.getYear()%>
    </body>
</html>
