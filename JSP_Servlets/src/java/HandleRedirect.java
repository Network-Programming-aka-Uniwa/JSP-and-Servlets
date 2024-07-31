/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/**
 *
 * @author Nick Z. Zacharis
 */
@WebServlet(urlPatterns = {"/HandleRedirect"})
public class HandleRedirect extends HttpServlet {
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, 
                                  HttpServletResponse response)
            throws ServletException, IOException {
        
        String pid = request.getParameter("pageId");
        
        if(pid == null || pid.equals(""))
        {
             response.setContentType("text/html;charset=UTF-8");
        
             try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Missing Parameter</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>The parameter pageId is missing.</h1>");
            out.println("</body>");
            out.println("</html>");
             }
        }
        else
        {
            HttpSession session = request.getSession();
            session.setAttribute("pageId", pid);
            
            if(pid.equals("1"))
            {
                response.sendRedirect("http://www.uniwa.gr");
            }
            else if(pid.equals("2"))
            {
                response.sendRedirect("http://www.ice.uniwa.gr/");
            }
            else
            {
                response.sendRedirect("http://www.google.com");
            }
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

    public void destroy() {
       // Write the finalization code...
    }
    
    public void init() throws ServletException {
       // Initialization code...
    }
    
    @Override
     protected void doHead(HttpServletRequest req, HttpServletResponse resp)
          throws ServletException, IOException {
      doGet(req, resp);
    }
    public void service(ServletRequest request, ServletResponse response)
        throws ServletException, IOException {
          try (PrintWriter out = response.getWriter()) {
              out.write("Hello");
          }
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
