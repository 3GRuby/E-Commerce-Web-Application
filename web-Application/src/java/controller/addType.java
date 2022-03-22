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
import pojo.ProductType;

/**
 *
 * @author ruby
 */
public class addType extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String type_name = request.getParameter("tname");
            String type_stat = request.getParameter("tstatus");
            String button = request.getParameter("button");
            String tID = request.getParameter("tid");
            System.out.println("ssssssssssssssssssssssssssssssssssss");

            Session ses = Connection.DB.getSessionFactory().openSession();
             
            String a = "type";
            Transaction tr = ses.beginTransaction();
            if (button.equals("Register")) {
                pojo.ProductType productType = new ProductType();
                
                productType.setTypeName(type_name);
                productType.setStatus(type_stat);
              

                ses.save(productType);
                a = "OKSave";
                tr.commit();
            } else if (button.equals("Update")) {
                try {
                    
                    ProductType productType = (ProductType) ses.load(pojo.ProductType.class, Integer.parseInt(tID));
                    
                    productType.setTypeName(type_name);
                    productType.setStatus(type_stat);
                    

                    System.out.println("eeeeeeeeeeeeeeeeeeeeeeee"+productType);
                    ses.update(productType);
                    a = "OKUpdate";
                    tr.commit();
                } catch (Exception e) {
                    e.printStackTrace();
                }

            }
            response.getWriter().print(a);

        } catch (Exception e) {
        }





    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
