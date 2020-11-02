<%-- 
    Document   : addTwoNumbers
    Created on : Nov. 1, 2020, 7:27:56 p.m.
    Author     : Mustafa Shubbar <codingbox@outlook.com>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add two numbers</title>
    </head>
    <body>
        <h1>Hello first JSP calculator</h1>
        <%
        double result=0, num1=0, num2=0;
        String num1S = request.getParameter("num1");
        String num2S = request.getParameter("num2");
        if(num1S != null && num2S != null) {
            num1 = Double.parseDouble(num1S);
            num2 = Double.parseDouble(num2S);
            result = num1 + num2;
        }
        %>
        
        <form action="addTwoNumbers.jsp" method="GET">
            <br>Num1: <input type="text" size="5" name="num1" value="<%=num1%>">
            <br>Num2: <input type="text" size="5" name="num2" value="<%=num2%>">
            <br>Result: <input type="text" size="10" value="<%=result%>">
            <br><input type="submit" value="Add">
        </form>
    </body>
</html>
