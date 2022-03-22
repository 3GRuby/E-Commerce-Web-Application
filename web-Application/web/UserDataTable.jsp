<%-- 
    Document   : UserDataTable
    Created on : Feb 6, 2016, 8:32:36 PM
    Author     : ruby
--%>

<%@page import="java.util.List"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="Connection.DB"%>
<%@page import="org.hibernate.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<table class="table table-striped table-bordered table-hover" id="dataTables-example">
    <thead>
        <tr>
            <th>Name</th>
            <th>User name</th>
            <th>Address</th>
            <th>Email</th>
            <th>Status</th>
            <th>Block</th>
        </tr>
    </thead>

    <tbody>

        <%

            try {

                Session ses = Connection.DB.getSessionFactory().openSession();

                Criteria cr = ses.createCriteria(pojo.UserReg.class);
                List<pojo.UserReg> li = cr.list();

                for (pojo.UserReg reg : li) {



        %>

        <tr >
            <td><%=reg.getFName()%></td>
            <td><%=reg.getUname()%></td>
            <td><%=reg.getAddress1()%>,<%=reg.getAddress2()%>,<%=reg.getAddress3()%></td>
            <td><%=reg.getEmail()%></td>
            <td><%=reg.getStatus()%></td>
            <td><input type="Button" onclick="statusChange(<%= reg.getIdUserReg() %>);" value="<%= reg.getStatus().equals("active") ? "ACTIVATE" : "DEACTIVATE"%>"</td>

        </tr>
        <%
                }

                ses.close();

            } catch (Exception e) {
            }


        %> 
    </tbody>
</table>