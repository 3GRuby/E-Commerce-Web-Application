<%-- 
    Document   : test
    Created on : Jan 13, 2016, 3:03:39 AM
    Author     : ruby
--%>

<%@page import="pojo.Model"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function check(){
                document.getElementById("ff5").selected=true;
            }
        </script>
    </head>
    <body>
        <h1>Hello World!</h1>
        <div class="form-group">
            <label>Model</label>
            <select name="model_1" class="form-control" id="model_c" required="required" >
                <%
                    Session ses = Connection.DB.getSessionFactory().openSession();
                    Criteria cr = ses.createCriteria(pojo.Model.class);
                    List<pojo.Model> liZ = cr.list();
                    for (int i = 0; i < liZ.size(); i++) {
                        Model m = liZ.get(i);
                %>                
                <option id="ff<%= m.getIdmodel() %>" value="<%= m.getIdmodel() %>" >ff<%= m.getIdmodel() %></option>
                <%}%>
            </select>
            <select>
                <option id="a">A</option>
                <option id="b">B</option>
                <option id="c">B</option>
            </select>
            
            <input type="button" onclick="check()" value="kkkk"/>
        </div>
    </body>
</html>
