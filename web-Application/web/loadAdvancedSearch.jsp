<%-- 
    Document   : loadAdvancedSearch
    Created on : Feb 8, 2016, 1:30:52 AM
    Author     : ruby
--%>

<%@page import="pojo.Product"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="Connection.DB"%>
<%@page import="org.hibernate.Criteria"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%

            String type = request.getParameter("type") == null ? "0" : request.getParameter("type");
            String brand = request.getParameter("brand") == null ? "0" : request.getParameter("brand");

            Session ses = DB.getSessionFactory().openSession();
            Criteria cr = ses.createCriteria(pojo.Product.class);
            System.out.println("----------------------------------------------- 1  " + cr.list().size());
            if (!type.equals("0")) {
                cr.add(Restrictions.eq("productType", ses.load(pojo.ProductType.class, Integer.parseInt(type))));
            }
            if (!brand.equals("0")) {
                cr.add(Restrictions.eq("productBrand", ses.load(pojo.ProductBrand.class, Integer.parseInt(brand))));
            }
            System.out.println("----------------------------------------------- 2  " + cr.list().size());
//            -------------------------------------
            int passID;
            List mmm = cr.list();
            for (int i = 0; i < mmm.size(); i++) {
                Product p = (Product) mmm.get(i);
            }

            int fr = 0;

            if (request.getParameter("pid") != null) {
                int pid = Integer.parseInt(request.getParameter("pid").toString());
                fr = pid * 3;
                System.out.println("pid =" + request.getParameter("pid") + " --------------");
            } else {
                fr = 0;
            }

            int y = 0;
            //                                        Criteria cr = ssz.createCriteria(DB.Products.class);
            y = mmm.size();
            cr.setFirstResult(fr);
            cr.setMaxResults(3);

            List<pojo.Product> count = cr.list();

            String fileType;
            for (int x = 0; x < count.size(); x++) {
                Product m = count.get(x);
                int w = 1;
                passID = m.getIdProduct();
                if (x % 3 == 0) {
//            ----------------------------------------

        %>
        <div class="grids_of_4">
            <div class="grid1_of_4">
                <div class="content_box"><a href="details.jsp?id=<%=m.getIdProduct()%>">
                        <img src="images/<%=m.getImage1()%>" class="img-responsive" alt=""/>
                    </a>
                    <h4><a href="details.jsp?id=<%=m.getIdProduct()%>"><%= m.getIdProduct()+"|"+ m.getName()%></a></h4>
                    <p><% m.getProductBrand().getBName();%><br><% m.getModel().getModelName();%></p>

                    <div class="grid_1 simpleCart_shelfItem">

                        <div class="item_add"><span class="item_price"><h5>Rs :<%=m.getPrice()%></h5></span></div>
                        <div class="item_add"><span class="item_price"><a onclick="addtocart(<%=m.getIdProduct()%>, 1,<%=m.getPrice()%>)" href="#">add to cart</a></span></div>
                    </div>
                </div>
            </div>
        </div>
        <%} else {%>
        <div class="grids_of_4">
            <div class="grid1_of_4">
                <div class="content_box"><a href="details.jsp?id=<%=m.getIdProduct()%>">
                        <img src="images/<%=m.getImage1()%>" class="img-responsive" alt=""/>
                    </a>
                    <h4><a href="details.jsp?id=<%=m.getIdProduct()%>"><%= m.getIdProduct()+"|"+ m.getName()%></a></h4>
                    <p><% m.getProductBrand().getBName();%><br><% m.getModel().getModelName();%></p>

                    <div class="grid_1 simpleCart_shelfItem">

                        <div class="item_add"><span class="item_price"><h5>Rs :<%=m.getPrice()%></h5></span></div>
                        <div class="item_add"><span class="item_price"><a onclick="addtocart(<%=m.getIdProduct()%>, 1,<%=m.getPrice()%>)" href="#">add to cart</a></span></div>
                    </div>
                </div>
            </div>
        </div>
        <%}
            }%>
        <div class="col-md-0" style="padding-left: 150px;" align="center">

            <%
                double cty = Double.parseDouble("" + y) / 3;
                for (int x = 0; x < cty; x++) {
            %>

            <a class="pagination" onclick="loadAS('<%=x%>')"><%=x + 1%></a>



            <%}%>

        </div>
    </body>
</html>
