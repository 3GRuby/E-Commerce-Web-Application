/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import pojo.StockIn;

/**
 *
 * @author ruby
 */
public class qtyUpdate extends HttpServlet {

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

        try {



            Session ses = Connection.DB.getSessionFactory().openSession();

            if (request.getParameter("proID") != null && request.getParameter("newQTY") != null) {
                String proid = request.getParameter("proID");
                String nqty = request.getParameter("newQTY");


                pojo.Product p = (pojo.Product) ses.load(pojo.Product.class, Integer.parseInt(proid));
                int qty = Integer.parseInt(p.getQty())+(Integer.parseInt(nqty));
                p.setQty(""+qty);

                pojo.StockIn sin = new StockIn();
                sin.setAddDate(new SimpleDateFormat("dd-MM-yyyy").format(new Date()));
                sin.setProduct(p);
                sin.setQty(nqty);

                Transaction tr = ses.beginTransaction();
                ses.update(p);
                ses.save(sin);
                tr.commit();

            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new ServletException();
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
