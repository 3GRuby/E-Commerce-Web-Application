<%-- 
    Document   : shippingAddress
    Created on : Feb 8, 2016, 1:12:30 PM
    Author     : ruby
--%>

<%@page import="pojo.UserReg"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="pojo.Shippingdetails"%>
<%@page import="pojo.CartHasProduct"%>
<%@page import="org.hibernate.Session"%>
<%@page import="Connection.DB"%>
<%@page import="org.hibernate.Criteria"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
        if (request.getSession().getAttribute("login") != null) {
            pojo.UserReg u = (UserReg) request.getSession().getAttribute("login");
            if (u.getUserType().getIdUserType() == 1) {
                response.sendRedirect("index.jsp");
            }
        }
            
            
        %>
        
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body align="center">
    <center>
        <%
            if (request.getParameter("chpID") != null) {
                Session ses = DB.getSessionFactory().openSession();

                CartHasProduct cartHP = (CartHasProduct) ses.load(pojo.CartHasProduct.class, Integer.parseInt(request.getParameter("chpID")));
                Criteria crx = ses.createCriteria(pojo.Shippingdetails.class);
                crx.add(Restrictions.eq("cartHasProduct", cartHP));
                Shippingdetails ship = (Shippingdetails) crx.uniqueResult();
        %>
        <h3>ORDER DETAILS</h3>
        <br>
        <table style="width: 90%;border: solid #cccccc 1px" border="1">
            <tr><td colspan="2">ORDERED PRODUCT DETAILS</td></tr>
            <tr><td>Product ID</td><td><%= cartHP.getProduct().getIdProduct()%></td></tr>
            <tr><td>Product ID</td><td><%= cartHP.getProduct().getName()%></td></tr>
            <tr><td colspan="2">SHIPPING DETAILS</td></tr>
            <tr><td>Address 1</td><td><%= ship.getAddress1()%></td></tr>
            <tr><td>Address 2</td><td><%= ship.getAddress2()%></td></tr>
            <tr><td>Address 3</td><td><%= ship.getAddress3()%></td></tr>
            <tr><td>City</td><td><%= ship.getCity()%></td></tr>
            <tr><td>Province</td><td><%= ship.getProvince()%></td></tr>
            <tr><td>Country</td><td><%= ship.getCountry()%></td></tr>

        </table>
    </center>

    <%          }
    %>
</body>
</html>
