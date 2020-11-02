<%-- 
    Document   : index
    Created on : Nov. 1, 2020, 7:41:47 p.m.
    Author     : Mustafa Shubbar <codingbox@outlook.com>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>elcome to Labloob dealership<</title>
    </head>
    <body>
        <h1>Welcome to Labloob dealership</h1>
        <p>Select a car:</p>
        <form action="options.jsp" method="GET">
            <input type="radio" name="car" value="versa">Versa / 13,500<br>
        <input type="radio" name="car" value="sentra">Sentra / 15,000<br>
        <input type="radio" name="car" value="maxima">Maxima / 37,000<br>
        <br>
        <input type="submit" value="Next">    
        </form>    
    </body>
</html>
