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

import pojo.Volume;

/**
 *
 * @author ruby
 */
public class addvolume extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String volume_name = request.getParameter("vname");
            String volume_status = request.getParameter("vstatus");
            String model_c = request.getParameter("model_1");
            int moid = Integer.parseInt(model_c);
            String volID = request.getParameter("vid");
             String button = request.getParameter("button");


            Session ses = Connection.DB.getSessionFactory().openSession();

            String a = "volume";
            Transaction tr = ses.beginTransaction();
            if (button.equals("Register")) {
                pojo.Volume volume = new Volume();

                volume.setVol(volume_name);
                volume.setStatus(volume_status);
                volume.setModel((Model) ses.load(pojo.Model.class,moid));

                ses.save(volume);
                a = "OKSave";
                tr.commit();
            } else if (button.equals("Update")) {
                try {
                    pojo.Volume volume = (Volume) ses.load(pojo.Volume.class, Integer.parseInt(volID));

                    volume.setVol(volume_name);
                    volume.setStatus(volume_status);
                    volume.setModel((Model) ses.load(pojo.Model.class,moid));


                    ses.update(volume);
                    a = "OKUpdate";
                    tr.commit();
                } catch (Exception e) {
                    e.printStackTrace();
                }

            }
            response.getWriter().print(a);

        } catch (Exception e) {
            throw new ServletException();
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
