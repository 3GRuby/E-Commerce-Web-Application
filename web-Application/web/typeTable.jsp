<%-- 
    Document   : typeTable
    Created on : Jan 3, 2016, 11:32:13 PM
    Author     : ruby
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%

    SessionFactory sfac = Connection.DB.getSessionFactory();
    Session s = sfac.openSession();

    Criteria cr3 = s.createCriteria(pojo.ProductType.class);
    List<pojo.ProductType> Lis3 = cr3.list();

    for (pojo.ProductType productType : Lis3) {



%>

<tr onclick="updateCat('<%= productType.getIdType()%>', '<%= productType.getTypeName()%>', '<%= productType.getStatus()%>', 'type', 'no')">

    <td><%=productType.getTypeName()%></td>
    <td><%=productType.getStatus()%></td>


</tr>
<%}%>
