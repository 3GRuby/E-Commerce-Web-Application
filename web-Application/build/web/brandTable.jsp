
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%

    try {

        SessionFactory sf = Connection.DB.getSessionFactory();
        Session s = sf.openSession();

        Criteria c = s.createCriteria(pojo.ProductBrand.class);
        List<pojo.ProductBrand> li = c.list();

        for (pojo.ProductBrand brand : li) {

%>

<tr onclick="updateCat('<%= brand.getIdBrand()%>', '<%= brand.getBName()%>', '<%= brand.getStatus()%>', 'brand', 'no')">

    <td><%=brand.getBName()%></td>
    <td><%= brand.getStatus()%></td>


</tr>


<%
        }

        s.close();
    } catch (Exception e) {
    }

%>