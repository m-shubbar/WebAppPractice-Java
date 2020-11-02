<%-- 
    Document   : hockeyPlayerIndex
    Created on : Nov. 1, 2020, 7:07:14 p.m.
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
        <h1>Add New Player</h1>
        <form action="hockeyPlayerInfo.jsp" method="GET">
            Name: <input type="text" size="20" name="name">
            <br>
            Address: <input type="text" size="20" name="address">
            <br>
            Team: <input type="radio" value="red" name="team"> Red 
            <input type="radio" value="blie" name="team"> Blue
            <br>
            Role: <select name="role">
                <option value="defence">Defense</option>
                <option value="attack">Attack</option>
            </select>
            <br>
            Active? <input type="checkbox" name="active">
            <br>
            <input type="submit" value="Save">
        </form>
    </body>
</html>
