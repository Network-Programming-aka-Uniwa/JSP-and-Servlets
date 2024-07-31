<%-- 
    Document   : First
    Created on : Dec 6, 2018, 8:12:06 PM
    Author     : Nick Z. Zacharis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>First.jsp</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <% 
            out.println("<br>Hello World! from jsp<br>");
            out.println("The result of 3 + 2 = " + (3+2));
            out.println("<br>Η JSP είναι εύκολη γλώσσα.");
         %>   

    </body>
</html>

