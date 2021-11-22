<%-- 
    Document   : index
    Created on : 14 de nov. de 2021, 20:11:07
    Author     : Rafaela
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.Rafaela_Tasks"%>
<%@page import="web.rafaela" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
<%
     
    Exception requestException = null;
    ArrayList<String> taskList = new ArrayList<>();
    try{
        if(request.getParameter("adicionar") != null){
        String taskName = request.getParameter("taskName");
        Rafaela_Tasks.addTask(taskName);
        response.sendRedirect(request.getRequestURI());
        }
        if(request.getParameter("remove") != null){
        String taskName = request.getParameter("taskName");
        Rafaela_Tasks.removeTask(taskName);
        response.sendRedirect(request.getRequestURI());
        }
        taskList = Rafaela_Tasks.getTasks();
    }catch(Exception ex){
            requestException = ex;
     }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body class="p-3 mb-2 bg-secondary text-white">

        <hr>
        <%if(rafaela.exception != null){%>
            <div style="color:red">
                Erro na criação do banco!
                <%= rafaela.exception.getMessage() %>
            </div>
        <%}%>
                <%if(requestException != null){%>
            <div >
                Erro na leitura ou gravação de dados das tarefas!    
                <%= requestException.getMessage() %>
            </div>
        <%}%>
                <%@include file="WEB-INF/jspf/header.jspf" %>
        
        <h3> . Digite a tarefa a ser adicionada abaixo </h3>
        <form>
           <div class="input-group mb-3">
            <input class="form-control" type="text" name="taskName">
            <input class="btn btn-outline-dark"  type="submit" name="adicionar" value="adicionar">
           </div>
        </form>
        <br>
        <div >
        <table class="table table-dark table-striped">
            <tr>
                <th scope="col">Dados da lista</th>
                <th scope="col">Ações</th>
            </tr>
            <%for(String taskName: taskList){%>
            
            <tr>
                <td class="table-dark"><%= taskName %></td>
                <td >
                    <form>
                        <input  type="hidden" name="taskName" value="<%= taskName %>"/>
                        <input class="btn btn-outline-secondary" type="submit" name="remove" value="Remover"/>
                    </form>
                </td>
            </tr>
            <%}%>
        </table>
        </div>
    </body>
</html>
