<%-- 
    Document   : Declarations
    Created on : Dec 6, 2018, 8:38:40 PM
    Author     : Nick Z. Zacharis
--%>

    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Declarations.jsp</title>
    </head>
    <body><%!
         int x = 3, y = 10;
         java.util.Date k = new java.util.Date();

         String FormatDate(String rawdate){
	      return "<b><i>" + rawdate + "</i></b>";
         }
         int  Praxi(int a, int b){
	    return a + b;
         } %>
         The Server datetime is : <%= FormatDate(k.toString()) %><br>
         The Sum is : <%= Praxi(x, y) %><br>
    </body>
    </html>
