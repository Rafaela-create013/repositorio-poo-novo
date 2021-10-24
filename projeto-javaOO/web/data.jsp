<%-- 
    Document   : data
    Created on : 24 de out. de 2021, 16:01:36
    Author     : Rafaela
--%>
<%@page import="model.Data" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Data hoje = new Data();
    
    hoje.dia = 24;
    hoje.mes = 10;
    hoje.ano = 2021;
    
    Data rafaAniversario = new Data();
    
    rafaAniversario.dia = 26;
    rafaAniversario.mes = 8;
    rafaAniversario.ano = 2021;

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio - Java OO</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h2>CLASSE DATA</h2>
        <h3>Data de hoje</h3>
        <h3><%= hoje.dia %>/<%= hoje.mes %>/<%= hoje.ano %></h3>
        <h3>Meu aniversario</h3>
        <h3><%= rafaAniversario.dia %>/<%= rafaAniversario.mes %>/<%= rafaAniversario.ano %></h3>
    </body>
</html>
