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
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author ruby
 */
public class user extends HttpServlet {

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       try {
           
             String uname = request.getParameter("un");
            String pword = request.getParameter("pw");
            
           Session ses=Connection.DB.getSessionFactory().openSession();
           
           Criteria cr = ses.createCriteria(pojo.UserReg.class);
            cr.add(Restrictions.eq("uname", uname));
            cr.add(Restrictions.eq("password1", pword));
            cr.add(Restrictions.eq("status", "active"));
            
             pojo.UserReg l = (pojo.UserReg) cr.uniqueResult();

            if (l != null) {
                
                 request.getSession().setAttribute("login", l);
                if(l.getUserType().getType().equals("admin"))
                        response.sendRedirect("adminHome.jsp");
                        else
                 response.sendRedirect("index.jsp");
               
            } else {

                response.sendRedirect("register.jsp?error=Invalid User Name or Password..");

            }
            
            ses.close();
            
        } catch (Exception e) {
        }
        
    }
    
    

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
