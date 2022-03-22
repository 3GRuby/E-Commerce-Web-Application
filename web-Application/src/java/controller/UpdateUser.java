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
import pojo.UserReg;
import sun.swing.text.CountingPrintable;

/**
 *
 * @author ruby
 */
public class UpdateUser extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {

            String userID = request.getParameter("id");
            System.out.println("INNnnmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm    " + userID);
//            String userID=request.getParameter("userID");
//            String user_name = request.getParameter("uname");
//            String user_stut=request.getParameter("userStatus");
//            
            Session ses = Connection.DB.getSessionFactory().openSession();


            pojo.UserReg ur = (pojo.UserReg) ses.load(pojo.UserReg.class, Integer.parseInt(userID));

            if (ur.getStatus().equals("active")) {
                ur.setStatus("deactive");
            } else {
                ur.setStatus("active");
            }
            Transaction tr = ses.beginTransaction();
            ses.update(ur);
            tr.commit();

        } catch (Exception e) {
            e.printStackTrace();
            throw new ServletException();
        }


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
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
