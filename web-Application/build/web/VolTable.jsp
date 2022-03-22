<%@page import="java.util.List"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%

    try {

        SessionFactory sf = Connection.DB.getSessionFactory();
        Session s = sf.openSession();

        Criteria c = s.createCriteria(pojo.Volume.class);
        List<pojo.Volume> li = c.list();

        for (pojo.Volume volume : li) {

%>

<tr  onclick="updateCat('<%= volume.getIdvolume()%>', '<%= volume.getVol()%>', '<%= volume.getStatus()%>', 'volume', '<%= volume.getModel().getIdmodel()%>')">

    <td><%= volume.getVol()%></td>
    <td><%= volume.getStatus()%></td>
    <td><%=volume.getModel().getModelName()%></td>
</tr>


<%
        }

        s.close();



    } catch (Exception e) {
    }

%>