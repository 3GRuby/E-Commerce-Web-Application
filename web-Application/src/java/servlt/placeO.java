/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package servlt;

import cart.cart;
import cart.cartItem;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import pojo.Cart;
import pojo.CartHasProduct;
import pojo.Product;
import pojo.Shippingdetails;
import pojo.UserReg;

/**
 *
 * @author ruby
 */
public class placeO extends HttpServlet {

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
            HttpSession session = request.getSession();
            Session ses1 = Connection.DB.getSessionFactory().openSession();
            Transaction beginTransaction = ses1.beginTransaction();
            String add1  = request.getParameter("ad1");
            String add2  = request.getParameter("ad2");
            String ad3  = request.getParameter("ad3");
            
            String ci  = request.getParameter("ci");
            String p  = request.getParameter("p");
            String cun  = request.getParameter("cun");
            
            
            
            Criteria createCriteria = ses1.createCriteria(Cart.class);
            UserReg user = (UserReg) session.getAttribute("login");
            createCriteria.add(Restrictions.eq("userReg", user));
            List list = createCriteria.list();
            Cart m;
            if (list.size() > 0) {
                m = (Cart) list.get(0);
            } else {
                m = new Cart(user, 0, 0.0, null, null);
                ses1.save(m);
            }
            double tot = 0.0;
            cart y = (cart) session.getAttribute("cart");
            for (int i = 0; i < y.getL().size(); i++) {
                cartItem get = y.getL().get(i);
                tot += get.getQty()*get.getuPrice();
                Product k = new Product();
                k.setIdProduct(Integer.parseInt(get.getId()));
                CartHasProduct l = new CartHasProduct(m, k, get.getQty(),new Date(),"",null, null, null,"", 0,null,null);
                ses1.save(l);
                Shippingdetails kd = new Shippingdetails(l, add1, add2, ad3, ci, p, cun);
                ses1.save(kd);
            }
            for (int i = 0; i < y.getL().size(); i++) {
                cartItem get = y.getL().get(i);
                Criteria cr1 = ses1.createCriteria(pojo.Product.class);
                cr1.add(Restrictions.eq("idProduct", Integer.parseInt(get.getId())));
                Product ic = (Product) cr1.uniqueResult();
                ic.setQty("" + (Double.parseDouble(ic.getQty()) - get.getQty()));
                ses1.update(ic);

            }
            beginTransaction.commit();
            ses1.flush();
            ses1.close();
            request.getSession().removeAttribute("cart");
            response.sendRedirect("./payza.jsp?in="+tot);

        } finally {            
            out.close();
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
