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
import pojo.ProductBrand;

/**
 *
 * @author ruby
 */
public class updatemodel extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          try {
            String model_name = request.getParameter("mname");
            String model_status = request.getParameter("mstatus");
            String p_brand = request.getParameter("pbrand");
            int proID = Integer.parseInt(p_brand);
            
            
            
            Session ses = Connection.DB.getSessionFactory().openSession();
           
            Model m =(Model) ses.load(Model.class,model_name);
            m.setModelName(model_name);
            m.setProductBrand((ProductBrand) ses.load(pojo.ProductBrand.class , proID));
            m.setStatus(model_status);
            
//            model.setModelName(model_name);
//            model.setStatus(model_status);
//            model.setProductBrand((ProductBrand) ses.load(pojo.ProductBrand.class, proID));
            Transaction tr = ses.beginTransaction();
             ses.update(m);

                tr.commit();
              
        } catch (Exception e) {
        }
        
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
