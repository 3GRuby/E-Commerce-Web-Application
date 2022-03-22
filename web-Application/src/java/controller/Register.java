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
import pojo.UserType;

/**
 *
 * @author ruby
 */
public class Register extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       PrintWriter out = response.getWriter();
        try {
            String first_name, last_name, email_add, add_1, add_2, add_3, gender, user_name, pass_w1, pass_w2;
            if (!request.getParameter("fname").equals("") && !request.getParameter("lname").equals("")
                    && !request.getParameter("email").equals("") && !request.getParameter("add1").equals("")
                    && !request.getParameter("add2").equals("") && !request.getParameter("add3").equals("")
                    && !request.getParameter("gen").equals("") && !request.getParameter("uname").equals("")
                    && !request.getParameter("pw1").equals("") && !request.getParameter("pw2").equals("")) {
                first_name = request.getParameter("fname");
                last_name = request.getParameter("lname");
                email_add = request.getParameter("email");
                add_1 = request.getParameter("add1");
                add_2 = request.getParameter("add2");
                add_3 = request.getParameter("add3");
                gender = request.getParameter("gen");
                user_name = request.getParameter("uname");
                pass_w1 = request.getParameter("pw1");
                pass_w2 = request.getParameter("pw2");

                System.out.println("helloooo ------------------->>>>>>>>>>>>>>>>>>>>");
                Session ses = Connection.DB.getSessionFactory().openSession();

                UserReg userReg = new UserReg();
//
                userReg.setFName(first_name);
                userReg.setLName(last_name);
                userReg.setEmail(email_add);
                userReg.setAddress1(add_1);
                userReg.setAddress2(add_2);
                userReg.setAddress3(add_3);
                userReg.setGender(gender);
                userReg.setUname(user_name);
                userReg.setPassword1(pass_w1);
                userReg.setPassword2(pass_w2);
                pojo.UserType ut = (pojo.UserType) ses.load(UserType.class, 1);
                userReg.setUserType(ut);
                userReg.setStatus("active");
               

                Transaction tr = ses.beginTransaction();
                ses.save(userReg);

                tr.commit();

                response.sendRedirect("register.jsp");
                
            }





//            
//
//
////        String alrt="";
////        if (fname == "" || lname == "" || email=="" || add1=="" ||add2=="" || add3 == "" || gen=="" || uname=="" || pw1=="" || pw2=="") {
////            alrt += "please enter all details.\n";
////        }
////        if (!pw1.equals(pw2)) {
////            alrt +="password not matched.\n";
////            
////        }
////        if (alrt=="") {
////            
//            

        } catch (Exception e) {
            throw new ServletException();
        }
        
        
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
