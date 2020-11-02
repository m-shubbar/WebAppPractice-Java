<%-- 
    Document   : firstJsp
    Created on : Nov. 1, 2020, 5:01:06 p.m.
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
        <h1>Hello World!</h1>
        <%
        java.util.Date date = new java.util.Date();
        out.println("The time now is " + date);
        %>
        
        <h2>Random numbers:</h2>
        <%
        int num = (int)(Math.random() * 100);
        out.println(num);
        %>
        
        <h2>Ten Hellos</h2>
        <ul>
            <%
            for (int i=1; i<=10; i++) {
                %>
                <li><%= i %> Hello</li>
                <%
                }
            %>
        </ul>
        
        
        <h2>Declarative tags:</h2>
        <%!
        int count = 0;
        private int getCount(){
        count++;
        return count;
        }
        %>
        
        <p><%= getCount() %> Hello</p>
        <p><%= getCount() %> Hello</p>
        <p><%= getCount() %> Hello</p>
        <p><%= getCount() %> Hello</p>
        <p><%= getCount() %> Hello</p>
        
    </body>
</html>
