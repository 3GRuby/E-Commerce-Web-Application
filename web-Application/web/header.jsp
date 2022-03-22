<%-- 
    Document   : header
    Created on : Jan 7, 2016, 10:14:06 PM
    Author     : ruby
--%>

<%@page import="pojo.UserReg"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
                <div class="header_top">
                    <div class="top_right">
                        <ul>
                            <li><a href="index.jsp">Home</a></li>|
                            <li><a href="contact.jsp">Contact</a></li>|
                            <!--<li><a href="Deliveryinfo.jsp">Delivery information</a></li>-->
                        </ul>
                    </div>
                    <div class="top_left"><%
                    if(session.getAttribute("login")!=null){
                    UserReg o = (UserReg)session.getAttribute("login");
                    
                    %>
                    <h2><%=o.getFName()+o.getLName()%> | <a href="logout" class="btn-sm  btn-default" >Logout</a> </h2>
                        <% } %>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
    </body>
</html>
