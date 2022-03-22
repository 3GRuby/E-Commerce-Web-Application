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
public class addmodel extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            String model_name = request.getParameter("mname");
            String model_status = request.getParameter("mstatus");
            String p_brand = request.getParameter("pbrand");
            int proID = Integer.parseInt(p_brand);
            String mID = request.getParameter("mid");
            String button = request.getParameter("button");


            Session ses = Connection.DB.getSessionFactory().openSession();


            String a = "model";
            Transaction tr = ses.beginTransaction();
            if (button.equals("Register")) {
                pojo.Model model = new Model();

                model.setModelName(model_name);
                model.setStatus(model_status);
                model.setProductBrand((ProductBrand) ses.load(pojo.ProductBrand.class, proID));


                ses.save(model);
                a = "OKSave";
                tr.commit();
            } else if (button.equals("Update")) {
                try {
                    pojo.Model model = (Model) ses.load(pojo.Model.class, Integer.parseInt(mID));

                    model.setModelName(model_name);
                    model.setStatus(model_status);
                    model.setProductBrand((ProductBrand) ses.load(pojo.ProductBrand.class, Integer.parseInt(p_brand)));
                    System.out.println(mID+" - - "+model_name + " - - " + model_status + " - - " + p_brand);


                    ses.update(model);
                    a = "OKUpdate";
                    tr.commit();
                } catch (Exception e) {
                    e.printStackTrace();
                }

            }
           // response.getWriter().print(a);

        } catch (Exception e) {
            e.printStackTrace();
        }






    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
