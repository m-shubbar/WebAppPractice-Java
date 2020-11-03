<%-- 
    Document   : viewStudents
    Created on : Nov. 2, 2020, 1:19:17 p.m.
    Author     : Mustafa Shubbar <codingbox@outlook.com>
--%>

<%@page import="java.util.ArrayList" %>
<%@page import="beans.Student" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>View Students</h1>
        <p><a href="studentAdd.jsp">Add Student</a></p>
        <hr>
        <%
            ArrayList<Student> students = (ArrayList<Student>) session.getAttribute("students-list");
            if(students == null || students.size() == 0) {
        %>
        No results
        <%
            } else {
        %>
        <table>
            <tr><td>Name</td><td>Number</td><td>Program</td></tr>
            <%
                for(Student student : students){
            %>
            
            <tr>
                <td><%= student.getName() %></td>
                <td><%= student.getNumber() %></td>
                <td><%= student.getProgram() %></td>
            </tr>
            <%
                }
            %>
        </table>
        
        <%
            }
        %>
    </body>
</html>
