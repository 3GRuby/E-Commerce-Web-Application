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
import pojo.ProductBrand;

/**
 *
 * @author ruby
 */
public class updatebrand extends HttpServlet {

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        try {
            String brand_name = request.getParameter("bname");
            String brand_status = request.getParameter("status");
            
            Session ses = Connection.DB.getSessionFactory().openSession();
            ProductBrand productBrand = new ProductBrand();

            productBrand.setBName(brand_name);
            productBrand.setStatus(brand_status);
            
             Transaction tr = ses.beginTransaction();
                ses.update(productBrand);
                
                tr.commit();
                
                 response.sendRedirect("catogory.jsp?#collapseOne");
            
        } finally {            
            out.close();
        }
    
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
