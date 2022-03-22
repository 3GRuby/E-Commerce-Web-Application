<%-- 
    Document   : adminTable
    Created on : Jan 9, 2016, 8:54:46 PM
    Author     : ruby
--%>

<%@page import="org.hibernate.SessionFactory"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Session"%>
<%
    try {
        SessionFactory sf = Connection.DB.getSessionFactory();
        Session ses2 = sf.openSession();

        Criteria cr1 = ses2.createCriteria(pojo.Privelage.class);
        List<pojo.Privelage> list2 = cr1.list();

        for (pojo.Privelage privelage : list2) {
%>
<tr>
    <td><%=privelage.getIdPrivelage()%></td>
    <td><%=privelage.getPage() %></td>
    <td><%=privelage.getCapabilt() %></td>
    <td><input type="button" class="btn-danger" id="addButton" value="ADD" > </td>
   
</tr>



<%  }
        ses2.close();
    } catch (Exception e) {
    }
%>
