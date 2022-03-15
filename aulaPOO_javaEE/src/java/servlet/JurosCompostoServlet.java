/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Fatec
 */
@WebServlet(name = "JurosCompostoServlet", urlPatterns = {"/juros-composto.html"})
public class JurosCompostoServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        double vlPresente = 1;
        double juros = 1;
        double tempo = 1;
        
        String error = null;
        try{
            String p1 = request.getParameter("vlPresente");
            String p2 = request.getParameter("juros");
            String p3 = request.getParameter("tempo");
            
            vlPresente = Double.parseDouble(p1);
            juros = Double.parseDouble(p2);
            tempo = Double.parseDouble(p3);
        }
        catch(Exception ex){
            error = ex.getMessage();
        }
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Juros Composto</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1><a href='index.html'>Home</a> </h1>");
            out.println("<h2>Calculo de Juros Composto</h2>");
            if (error != null ){
               out.println( " <div style='color:red'>Erro nos parâmetros: " + error + " </div> " );  
            }
            else{
                double porcent = juros / 100;
                double n = 1 + porcent;
                double expo = Math.pow(n,tempo);
                double calc = vlPresente * expo;
                out.print("<div>");
                out.print(" Resultado: " + calc + " de juros simples");
                out.print("</div>");
            }
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
