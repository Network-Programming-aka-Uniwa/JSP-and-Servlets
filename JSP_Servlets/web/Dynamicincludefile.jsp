<%-- 
    Document   : dynamicincludefile.jsp
    Created on : Dec 7, 2018, 7:28:42 AM
    Author     : Nick Z. Zacharis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dynamc include file</title>
    </head>
    <body>
        <%
            String fname = request.getParameter("file");
            if(fname == null || fname.equals(""))
            {
                fname = "a.jsp";
            }
         %>
         <jsp:include page="<%= fname %>" flush="true" />
    </body>
</html>
