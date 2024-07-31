<%-- 
    Document   : setsessionvalues
    Created on : Dec 7, 2018, 10:32:33 AM
    Author     : Nick Z. Zacharis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <%
        String cl="#00FF00";
        session.setAttribute("color", cl);
        String uname="Nick";
        session.setAttribute("user", uname);
        
    %>
Αυτή η σελίδα πρόσθεσε μερικές session values<br>
<a href="showsessionvalues.jsp">Πάτησε εδώ για λεπτομέρειες</a>
    </body>
</html>
