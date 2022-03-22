<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.SessionFactory"%>
<%

    try {
        SessionFactory sf = Connection.DB.getSessionFactory();
        Session ses = sf.openSession();

        Criteria cr = ses.createCriteria(pojo.Privelage.class);
        List<pojo.Privelage> list1 = cr.list();

        for (pojo.Privelage privelage : list1) {

%>

<tr onclick="updateprv('<%=privelage.getIdPrivelage()%>','<%=privelage.getPage() %>', '<%= privelage.getCapabilt()%>')">
    <td><%=privelage.getIdPrivelage()%></td>
    <td><%=privelage.getPage()%></td>
    <td><%=privelage.getCapabilt()%></td>
    
</tr>



<%
        }

        ses.close();
    } catch (Exception e) {
    }

%>

