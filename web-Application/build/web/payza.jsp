<%-- 
    Document   : payza
    Created on : Jan 4, 2016, 1:53:07 AM
    Author     : ruby
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form id="myForm" method="post" action="https://sandbox.Payza.com/sandbox/payprocess.aspx" > 
    <input type="hidden" name="ap_merchant" value="seller_1_gayan1991madusanka@gmail.com"/> 
<input type="hidden" name="ap_purchasetype" value="subscription"/> 
    <input type="hidden" name="ap_itemname" value="CamZone"/> 
    <input type="hidden" name="ap_amount" value="20"/>     
    <input type="hidden" name="ap_currency" value="USD"/> 

    <input type="hidden" name="ap_returnurl" value="http://localhost:8080/web-viva/saveInv"/>
    <input type="image" src="https://www.payza.com/images/payza-subscribe-now.png"/>     
</form>
        <script>
            document.getElementById("myForm").submit();
        </script>
    </body>
</html>
