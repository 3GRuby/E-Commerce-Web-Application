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
public class addbrand extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {

            String brand_name = request.getParameter("bname");
            String brand_status = request.getParameter("status");
            String button = request.getParameter("button");
            String brandID = request.getParameter("id");
            
            
            Session ses = Connection.DB.getSessionFactory().openSession();


            String a = "brand";
            Transaction tr = ses.beginTransaction();
            if (button.equals("Register")) {
                ProductBrand productBrand = new ProductBrand();

                productBrand.setBName(brand_name);
                productBrand.setStatus(brand_status);

                ses.save(productBrand);
                a = "OKSave";
                tr.commit();
            } else if (button.equals("Update")) {
                try {
                    ProductBrand productBrand = (ProductBrand) ses.load(pojo.ProductBrand.class, Integer.parseInt(brandID));

                    productBrand.setBName(brand_name);
                    productBrand.setStatus(brand_status);


                    ses.update(productBrand);
                    a = "OKUpdate";
                    tr.commit();
                } catch (Exception e) {
                    e.printStackTrace();
                }

            }
            response.getWriter().print(a);

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().print(e.toString());
            throw new ServletException();
        }




    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
