<%-- 
    Document   : aniversario
    Created on : 31 de out. de 2021, 00:00:43
    Author     : Rafaela
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="model.Aniversario" %>
<%
  Aniversario meu = new Aniversario();  
%>
<html>
      <%@include file="WEB-INF/jspf/header.jspf" %>
    <body>
        <h3>Meu aniversário é:</h3>
        <h3><%= meu.getAniversario() %></h3>
    </body>
</html>
