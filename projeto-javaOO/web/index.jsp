<%-- 
    Document   : index
    Created on : 24 de out. de 2021, 15:47:22
    Author     : Rafaela
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@page import="model.Horario" %>
<!DOCTYPE html>
<% 
    Horario intervalo = new Horario();
    intervalo.setHora(14);
    intervalo.setMinuto(30);
    intervalo.setSegundos(90);
    
    Horario atual = new Horario(22, 56, 90);

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio - Java OO</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h2>Veja os horários abaixo</h2>
        <table>
            <tr>
                <th>Horario atual</th>
                <th>Horario do intervalo</th>
            </tr>
            <tr>
                <td><%= atual.getHora() %>:<%= atual.getMinuto() %>:<%= atual.getSegundos() %></td>
                <td><%= intervalo.getHora() %>:<%= intervalo.getMinuto() %>:<%= intervalo.getSegundos() %></td>
            </tr>
        </table>
    </body>
</html>
