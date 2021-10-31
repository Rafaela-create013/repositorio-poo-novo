<%-- 
    Document   : data
    Created on : 24 de out. de 2021, 16:01:36
    Author     : Rafaela
--%>
<%@page import="model.Data" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Data padrao = new Data();
    
    Data hoje = new Data();
    
    Data rafaAniversario = new Data(1, -13, 2021);

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio - Java OO</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h2>CLASSE DATA</h2>
        <h3>Data padrao</h3>
        <h3><%= padrao.dia %>/<%= padrao.getMes() %>/<%= padrao.ano %></h3>
        <h3>Data de hoje</h3>
        <h3><%= hoje.getData() %></h3>
        <h3>Data aniversario</h3>
        <h3><%= rafaAniversario.getData() %></h3>
    </body>
</html>
