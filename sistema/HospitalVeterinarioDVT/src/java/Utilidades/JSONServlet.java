/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Utilidades;

import Controlador.DAOpaciente;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author giraldo
 */
@WebServlet(name = "JSONServlet", urlPatterns = {"/JSONServlet"})
public class JSONServlet extends HttpServlet {

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
        
    }
    @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
 
           DAOpaciente paciente=new DAOpaciente();
             
           StringBuffer sbfr = paciente.generarCmbEspecie();
            
           
            // BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream()));
//            BufferedReader br = new BufferedReader();
        // 1. get received JSON data from request
        
            String json = "";
            if(sbfr != null){
                json = sbfr.toString();
            }
            
            
 
//        // 2. initiate jackson mapper
//        ObjectMapper mapper = new ObjectMapper();
// 
//        // 3. Convert received JSON to Article
//        Article article = mapper.readValue(json, Article.class);
 
        // 4. Set response type to JSON
        response.setContentType("application/json");            
 
//        // 5. Add article to List<Article>
//        articles.add(article);
// 
//        // 6. Send List<Article> as JSON to client
//        mapper.writeValue(response.getOutputStream(), articles);
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
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
