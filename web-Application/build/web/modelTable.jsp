<%-- 
    Document   : modelTable
    Created on : Jan 3, 2016, 9:48:05 PM
    Author     : ruby
--%>

<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="java.util.List"%>
<%

    try {

        SessionFactory sf = Connection.DB.getSessionFactory();
        Session s = sf.openSession();
        //
        Criteria c = s.createCriteria(pojo.Model.class);
        List<pojo.Model> li = c.list();

        for (pojo.Model model : li) {

%>

<tr onclick="updateCat('<%= model.getIdmodel()%>', '<%= model.getModelName()%>', '<%= model.getStatus()%>', 'model', '<%= model.getProductBrand().getIdBrand()%>')">

    <td><%= model.getModelName()%></td>
    <td><%= model.getStatus()%></td>
    <td><%= model.getProductBrand().getBName()%></td>


</tr>

<%
        }
    } catch (Exception e) {
    }
%>
