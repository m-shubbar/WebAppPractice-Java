<%-- 
    Document   : summary
    Created on : Nov. 1, 2020, 7:42:16 p.m.
    Author     : Mustafa Shubbar <codingbox@outlook.com>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Summary</title>
    </head>
    <body>
        <%
            String car = (String)session.getAttribute("car");
            String airc = request.getParameter("airc");
            String autot = request.getParameter("autot");
            String powerw = request.getParameter("powerw");
            
            double total = 0;
            switch(car){
                case "versa":
                    total+=13500;
                    break;
                case "sentra":
                    total+=15000;
                    break;
                case "maxima":
                    total+=37000;
                    break;
                default:
                    break;
            }
            %>
            <h1>Summary</h1>
            <p><%=car%></p>
            <%
            if(airc!=null){
                total+=1500;
                out.println("<br>Air Conditioning $1,500");
            } 
            
            if(autot!=null){
                total+=2500;
                out.println("<br>Automatic Transmission $2,500");
            } 
            
            if(powerw!=null){
                total+=750;
                out.println("<br>Power Windows $750");
            }
        %>
        <br><br>Total : <%=total%>
    </body>
</html>
