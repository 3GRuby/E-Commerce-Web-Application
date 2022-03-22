<%-- 
    Document   : stockTable
    Created on : Feb 7, 2016, 2:00:10 PM
    Author     : ruby
--%>

<%@page import="java.util.List"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<table class="table table-striped table-bordered table-hover" id="stockTables">
    <thead>
        <tr >

            <th>Brand name</th>
            <th>qty</th>
            <th>price</th>
            <th>Discount</th>
            <th>Details</th>
            <th>status</th>
            <th>product Type</th>
            <th>product brand</th>
            <th>product Model</th>
            <th>volume</th>
            <th>Add Stock</th>

        </tr>
    </thead>
    <tbody  >


        <%

            try {

                SessionFactory sf1 = Connection.DB.getSessionFactory();
                Session ses = sf1.openSession();
                Criteria cr = ses.createCriteria(pojo.Product.class);
                List<pojo.Product> li = cr.list();
                for (pojo.Product product : li) {

        %>

        <tr>

            <td><%= product.getName()%></td>
            <td ><%= product.getQty()%></td>
            <td><%= product.getPrice()%></td>
            <td><%= product.getDiscount()%></td>
            <td><%= product.getDetails()%></td>
            <td><%= product.getStatus()%></td>
            <td><%= product.getProductType().getTypeName()%></td>
            <td><%= product.getProductBrand().getBName()%></td>
            <td><%= product.getModel().getModelName()%></td>
            <td><%= product.getVolume().getVol()%></td>
            <td><input  onclick="stockUpdate('<%=product.getIdProduct()%>', '<%=product.getName()%>', '<%=product.getQty()%>');" class="bg-warning" type="button" value="Update"></td>
        </tr>


        <%
                }

                ses.close();
            } catch (Exception e) {
            }
        %>
    </tbody>
</table>
