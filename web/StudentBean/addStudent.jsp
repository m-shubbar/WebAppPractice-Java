<%-- 
    Document   : addStudent
    Created on : Nov. 2, 2020, 1:19:03 p.m.
    Author     : Mustafa Shubbar <codingbox@outlook.com>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Student</title>
    </head>
    <body>
        <h2>Add Student:</h2>
        <form action="AddStudentServlet" method="GET">
            Name: <input type="text" size="20" name="name"><br><br>
            Number: <input type="text" size="20" name="address"><br><br>
            Program: <select name="program" >
                <option value="barts">Bachelor of Arts</option>
                <option value="bhealth">Bachelor of Health Science</option>
                <option value="bcomputer">Bachelor of Computer Science</option>
            </select>
            <br><br>
            <input type="submit" name="btnAction" value="Add">
            <input type="submit" name="btnAction" value="Cancel">
        </form>
    </body>
</html>
