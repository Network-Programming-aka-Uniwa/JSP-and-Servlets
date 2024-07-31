<%-- 
    Document   : showsessionvalues.jsp
    Created on : Dec 7, 2018, 10:27:51 AM
    Author     : Nick Z. Zacharis
--%>
<%@ page import="java.util.*" %>   
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Session JSP Page</title>
    </head>
    <body>
       <%
   // print session info
   Date created = new Date(session.getCreationTime());
   Date accessed = new Date(session.getLastAccessedTime());
   out.println("ID " + session.getId() + "<br>");
   out.println("Created: " + created  + "<br>");
   out.println("Last Accessed: " + accessed  + "<br>");
%>

<table border="1">
<tr><th colspan="2">Session Parameters</th></tr>
<tr><td>Name</td><td>Value</td></tr>
<%
   Enumeration<String> paramNames = session.getAttributeNames();

   while(paramNames.hasMoreElements()) {
      String paramName = (String)paramNames.nextElement();
      out.print("<tr><td>" + paramName + "</td>\n");
      String paramValue = (String)session.getAttribute(paramName);
      out.println("<td> " + paramValue + "</td></tr>\n");
   }
%>
</table>
    </body>
</html>
