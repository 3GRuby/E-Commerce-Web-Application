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
import pojo.Product;
import pojo.ProductBrand;
import pojo.ProductType;
import pojo.Volume;

/**
 *
 * @author ruby
 */
public class productRegister extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        System.out.println("upline------------------------------------on");

        try {

            System.out.println("tryline------------------------------------on");

            String pro_name = request.getParameter("pname");
            String pro_qty = request.getParameter("pqty");
            String pro_price = request.getParameter("price");
            String pro_img1 = request.getParameter("img1");
            String pro_img2 = request.getParameter("img2");
            String pro_img3 = request.getParameter("img3");
            String pro_Discount = request.getParameter("pdiscount");
            String pro_details = request.getParameter("pdetails");
            String pro_status = request.getParameter("status");
            String pro_ptype = request.getParameter("ptype");
            int pid = Integer.parseInt(pro_ptype);
            String pro_pbrand = request.getParameter("pbrand");
            int bid = Integer.parseInt(pro_pbrand);
            String pro_pmodel = request.getParameter("pmodel");
            int mid = Integer.parseInt(pro_pmodel);
            String pro_pvolume = request.getParameter("pvolume");
            int vid = Integer.parseInt(pro_pvolume);
            String prodID = request.getParameter("proID");
            String button = request.getParameter("button");
            System.out.println("mdline------------------------------------on");

            Session ses = Connection.DB.getSessionFactory().openSession();
//            Product product = new Product();

            String a = "product";
            Transaction tr = ses.beginTransaction();

            if (button.equals("Register")) {
                pojo.Product product1 = new Product();

                product1.setName(pro_name);
                product1.setQty(pro_qty);
                product1.setPrice(pro_price);
                product1.setImage1(pro_img1);
                product1.setImage2(pro_img2);
                product1.setImage3(pro_img3);
                product1.setDiscount(pro_Discount);
                product1.setDetails(pro_details);
                product1.setStatus(pro_status);
                product1.setProductType((ProductType) ses.load(pojo.ProductType.class, pid));
                product1.setProductBrand((ProductBrand) ses.load(pojo.ProductBrand.class, bid));
                System.out.println("-------------------------------------------mmmmm  =" + mid);
                Model m = (Model) ses.load(pojo.Model.class, mid);
                System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  =" +m.getModelName());
                product1.setModel(m);
                product1.setVolume((Volume) ses.load(pojo.Volume.class, vid));
                System.out.println("333333333333333333333333333333333333");

                ses.save(product1);
                a = "OKSave";
                tr.commit();
            } else if (button.equals("Update")) {
                try {
                    pojo.Product product1 = (Product) ses.load(pojo.Product.class, Integer.parseInt(prodID));

                    product1.setName(pro_name);
                    product1.setQty(pro_qty);
                    product1.setPrice(pro_price);
                    product1.setImage1(pro_img1);
                    product1.setImage2(pro_img2);
                    product1.setImage3(pro_img3);
                    product1.setDiscount(pro_Discount);
                    product1.setDetails(pro_details);
                    product1.setStatus(pro_status);
                    product1.setProductType((ProductType) ses.load(pojo.ProductType.class, pid));
                    product1.setProductBrand((ProductBrand) ses.load(pojo.ProductBrand.class, bid));
                    product1.setModel((Model) ses.load(pojo.Model.class, mid));
                    product1.setVolume((Volume) ses.load(pojo.Volume.class, vid));


                    ses.update(product1);
                    a = "OKUpdate";
                    tr.commit();
                } catch (Exception e) {
                    e.printStackTrace();
                }

            }
            response.getWriter().print(a);


        } catch (Exception e) {
            e.printStackTrace();
        }


    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
