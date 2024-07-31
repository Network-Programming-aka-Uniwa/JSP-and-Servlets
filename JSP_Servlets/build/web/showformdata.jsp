<%-- 
    Document   : showformdata.jsp
    Created on : Dec 7, 2018, 7:57:41 AM
    Author     : Nick Z. Zacharis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>   
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%
   request.setCharacterEncoding("UTF-8");

   String uagent = request.getHeader("user-agent");
   out.print("To πρόγραμμα πλοήγησης είναι : ");
   
   if(uagent.contains("Edge"))
   {
	   out.print("Microsoft Edge");
   }
   else if(uagent.contains("Chrome"))
   {
	   out.print("Chrome");
   }
   else if(uagent.contains("Firefox"))
   {
	   out.print("Firefox");
   }
   else
   {
	   out.print(uagent);
   }

   %>
   
<table border="1">
<tr><th colspan="2">Επικεφαλίδα Αίτησης</th></tr>
<tr><td>Name</td><td>Value</td></tr>
  
   <%
   Enumeration<String> paramNames = request.getHeaderNames();

   while(paramNames.hasMoreElements()) {
      String paramName = (String)paramNames.nextElement();
      out.print("<tr><td>" + paramName + "</td>\n");
      String paramValue = request.getHeader(paramName);
      out.println("<td> " + paramValue + "</td></tr>\n");
   }
%>
</table>
<br><br>

<%
  String frm = request.getParameter("notexist");
  if(frm == null)
  {
     out.print("H παράμετρος δεν υπάρχει στην αίτηση.<br>");
  }
%>

<table border="1">
<tr><th colspan="2">Παράμετροι Αίτησης</th></tr>
<tr><td>Name</td><td>Value</td></tr>
<%
   paramNames = request.getParameterNames();

   while(paramNames.hasMoreElements()) {
      String paramName = (String)paramNames.nextElement();
      out.print("<tr><td>" + paramName + "</td>\n");
      String paramValue = request.getParameter(paramName);
      out.println("<td> " + paramValue + "</td></tr>\n");
   }
%>
</table>
</body>
</html>