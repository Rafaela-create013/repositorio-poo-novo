<%-- 
    Document   : index
    Created on : 14 de nov. de 2021, 20:11:07
    Author     : Rafaela
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.Tasks"%>
<%@page import="web.dbListener" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Exception requestException = null;
    ArrayList<String> taskList = new ArrayList<>();
    try{
        if(request.getParameter("add") != null){
        String taskName = request.getParameter("taskName");
        Tasks.addTask(taskName);
        response.sendRedirect(request.getRequestURI());
        }
        if(request.getParameter("remove") != null){
        String taskName = request.getParameter("taskName");
        Tasks.removeTask(taskName);
        response.sendRedirect(request.getRequestURI());
        }
        taskList = Tasks.getTasks();
    }catch(Exception ex){
            requestException = ex;
     }
    
    
    
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JDBC - To do list</title>
    </head>
    <body>
        <h1>JDBC</h1>
        <h2>To do list </h2>
        <%if(dbListener.exception != null){%>
            <div style="color:red">
                Erro na criação do banco!
                <%= dbListener.exception.getMessage() %>
            </div>
        <%}%>
                <%if(requestException != null){%>
            <div style="color:red">
                Erro na leitura ou grvação de dados das tarefas!    
                <%= requestException.getMessage() %>
            </div>
        <%}%>
        <h3>Tarefas</h3>
        <form>
            <input type="name" name="taskName">
            <input type="submit" name="add" value="adicionar">
        </form>
        <table border="">
            <%for(String taskName: taskList){%>
            <tr>
                <td><%= taskName %></td>
                <td>
                    <form>
                        <input type="hidden" name="taskName" value="<%= taskName %>"/>
                        <input type="submit" name="remove" value="Remover"/>
                    </form>
                </td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
