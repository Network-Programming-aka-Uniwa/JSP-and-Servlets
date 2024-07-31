<%-- 
    Document   : setCookies.jsp
    Created on : Dec 7, 2018, 10:09:31 AM
    Author     : Nick Z. Zacharis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cookies JSP Page</title>
    </head><body>
<%
        Cookie c = new Cookie("user", "Maria");
        response.addCookie(c);
        c = new Cookie("country", "fr");
        response.addCookie(c);
        c = new Cookie("like", "video games,fashion");
        response.addCookie(c);
        c = new Cookie("emal", "mary@france.fr");
        response.addCookie(c);
%>      
Αυτή η σελίδα πρόσθεσε μερικά Cookies<br>
<a href="showcookiesvalues.jsp">Πάτησε εδώ για λεπτομέρειες</a>
    </body>
</html>

