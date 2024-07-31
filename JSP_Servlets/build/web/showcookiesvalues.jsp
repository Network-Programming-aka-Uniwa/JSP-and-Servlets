<%-- 
    Document   : showcookiesvalues.jsp
    Created on : Dec 7, 2018, 10:19:57 AM
    Author     : Nick Z. Zacharis
--%>
<%@ page import="java.util.*" %>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cookies JSP Page</title>
    </head><body>
<table border="1">
<tr><th colspan="2">Cookies</th></tr>
<tr><td>Name</td><td>Value</td></tr>
<%
Cookie[] cookies = request.getCookies();
for (int i = 0; i < cookies.length; i++) {
    Cookie c = cookies[i];
    String name = c.getName();
    String value = c.getValue();
    out.println("<tr><td>" + name + "</td><td>" + value + "</td></tr>");
}
%>
</table> </body></html>
