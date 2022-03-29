<%-- 
    Document   : index
    Created on : 28 de mar. de 2022, 19:42:22
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String error = null;
    float vlFuturo = 0, vlJuros = 0;
    int vlMes = 0;
    try {
        String p1 = request.getParameter("vlFuturo");
        String p2 = request.getParameter("vlJuros");
        String p3 = request.getParameter("vlMes");
        
        vlFuturo = Float.parseFloat(p1);
        vlJuros = Float.parseFloat(p2);
        vlMes = Integer.parseInt(p3);
    } catch (Exception e) {
        error = e.getMessage();
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/navbar.jspf" %>
        <div class="container-fluid">
            <br><h1>Calculo de Juros Simples</h1><hr/>
            <%@include file="WEB-INF/jspf/juros-simples.jspf" %>
               <%
                    out.println(String.format("<br><h3>Valor futuro: R$%.2f</h3>",vlFuturo * (1 + (vlJuros/100) * vlMes)));
            %>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
