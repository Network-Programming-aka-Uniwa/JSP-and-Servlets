<%-- 
    Document   : Declarationspage
    Created on : Dec 6, 2018, 8:59:31 PM
    Author     : Nick Z. Zacharis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Hashtable, java.io.File" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Declarationspage.jsp</title>
    </head>
    <body>
<%@ include file="filecode.jsp" %>
The Server datetime is : <%= FormatDate(k.toString()) %><br>
The Sum is : <%= Praxi(x, y) %><br>
<%@ include file="footer.html" %>
