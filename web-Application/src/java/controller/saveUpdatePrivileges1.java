/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.Transaction;
import pojo.Model;
import pojo.Privelage;
import pojo.Volume;

/**
 *
 * @author ruby
 */
public class saveUpdatePrivileges1 extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
         try {
             
             System.out.println("on---------------------------");
            
             String page_name=request.getParameter("pname");
              String prive_name=request.getParameter("prive");
              String prevID=request.getParameter("preID");
              String button = request.getParameter("button");

               System.out.println("in---------------------------");
              
              Session ses=Connection.DB.getSessionFactory().openSession();
              
              String a = "previ";
              Transaction tr = ses.beginTransaction();
              
            if (button.equals("Register")) {
                pojo.Privelage privelage = new Privelage();

                privelage.setPage(page_name);
                privelage.setCapabilt(prive_name);
                
                ses.save(privelage);
                a = "OKSave";
                tr.commit();
            } else if (button.equals("Update")) {
                try {
                    pojo.Privelage privelage = (Privelage) ses.load(pojo.Privelage.class, Integer.parseInt(prevID));

                    privelage.setPage(page_name);
                    privelage.setCapabilt(prive_name);


                    ses.update(privelage);
                    a = "OKUpdate";
                    tr.commit();
                } catch (Exception e) {
                    e.printStackTrace();
                }

            }
            response.getWriter().print(a);

             
        } catch (Exception e) {
            response.getWriter().print("ERRORRR");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
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
