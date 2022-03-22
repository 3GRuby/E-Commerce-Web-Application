<%-- 
    Document   : productTable
    Created on : Jan 11, 2016, 11:54:19 PM
    Author     : ruby
--%>

<%@page import="java.util.List"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<table class="table table-striped table-bordered table-hover" id="dataTables-example" data-toggle="tab" href="#messages-pills">
    <thead id="productTabl" >
        <tr>
            <th>Name</th>
            <th>Qty</th>
            <th>Price</th>
            <th>Discount</th>
            <th>Details</th>
            <th>Status</th>
            <th>Type</th>
            <th>Brand</th>
            <th>Model</th>
            <th>Volume</th>
        </tr>
    </thead>
    <tbody>
        <%

            try {

                SessionFactory sf = Connection.DB.getSessionFactory();
                Session s = sf.openSession();

                Criteria c = s.createCriteria(pojo.Product.class);
                List<pojo.Product> li = c.list();

                for (pojo.Product product : li) {

        %>

        <tr  onclick="updateproduct('<%=product.getIdProduct()%>', '<%=product.getName()%>', '<%=product.getQty()%>', '<%=product.getPrice()%>', '<%=product.getImage1()%>', '<%=product.getImage2()%>', '<%=product.getImage3()%>', '<%=product.getDiscount()%>', '<%=product.getDetails()%>', '<%=product.getStatus()%>', '<%=product.getProductType().getIdType()%>', '<%=product.getProductBrand().getIdBrand()%>', '<%=product.getModel().getIdmodel()%>', '<%=product.getVolume().getIdvolume()%>');" >

            <td><%=product.getName()%></td>
            <td><%=product.getQty()%></td>
            <td><%=product.getPrice()%></td>
            <td><%=product.getDiscount()%></td>
            <td><%=product.getDetails()%></td>
            <td><%=product.getStatus()%></td>
            <td><%=product.getProductType().getTypeName()%></td>
            <td><%=product.getProductBrand().getBName()%></td>
            <td><%=product.getModel().getModelName()%></td>
            <td><%=product.getVolume().getVol()%></td>

        </tr>



        <%
                }

                s.close();
            } catch (Exception e) {
            }

        %>
    </tbody>
</table>
