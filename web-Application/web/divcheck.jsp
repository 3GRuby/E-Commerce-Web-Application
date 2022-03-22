<%-- 
    Document   : divcheck
    Created on : Jan 14, 2016, 2:25:39 PM
    Author     : ruby
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Bootstrap Core CSS -->
        <link href="bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="dist/css/sb-admin-2.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

        <link href="css/sweetalert.css" rel="stylesheet" type="text/css">

    </head>
    <body>
        <div id="newQtyDiv"  class="sweet-alert show-input showSweetAlert visible" data-custom-class="" data-has-cancel-button="true" data-has-confirm-button="true" data-allow-outside-click="false" data-has-done-function="true" data-animation="slide-from-top" data-timer="null" style="display: block; margin-top: -157px;"><div class="sa-icon sa-error" style="display: none;">
                <span class="sa-x-mark">
                    <span class="sa-line sa-left"></span>
                    <span class="sa-line sa-right"></span>
                </span>
            </div><div class="sa-icon sa-warning" style="display: none;">
                <span class="sa-body"></span>
                <span class="sa-dot"></span>
            </div><div class="sa-icon sa-info" style="display: none;"></div><div class="sa-icon sa-success" style="display: none;">
                <span class="sa-line sa-tip"></span>
                <span class="sa-line sa-long"></span>

                <div class="sa-placeholder"></div>
                <div class="sa-fix"></div>
            </div><div class="sa-icon sa-custom" style="display: none;"></div><h2>An input!</h2>
            <p style="display: block;">Write something interesting:</p>
            <fieldset>
                <input type="text" tabindex="3" placeholder="Write something" id="newQTY">
                <div class="sa-input-error"></div>
            </fieldset><div class="sa-error-container">
                <div class="icon">!</div>
                <p>You need to write something!</p>
            </div><div class="sa-button-container">
                <button class="cancel" tabindex="2" style="display: inline-block; box-shadow: none;">Cancel</button>
                <button onclick="stockUpdate(z)" class="confirm" tabindex="1" style="display: inline-block; box-shadow: rgba(174, 222, 244, 0.8) 0px 0px 2px, rgba(0, 0, 0, 0.0470588) 0px 0px 0px 1px inset; background-color: rgb(174, 222, 244);">OK</button>
            </div></div>
    </body>
</html>
