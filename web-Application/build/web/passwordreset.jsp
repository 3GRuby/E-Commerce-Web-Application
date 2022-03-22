<%-- 
    Document   : login
    Created on : Dec 14, 2015, 12:17:55 AM
    Author     : ruby
--%>

<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Admin</title>

        <!-- Bootstrap Core CSS -->
        <link href="bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="dist/css/sb-admin-2.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

        

<!--        <script>

            var btn;

            function loginTest() {

                var uname = document.getElementById("un").value;
                var passwd = document.getElementById("pw").value;

                if(uname==null || uname=="" || passwd==null || passwd==""){
                   
                    document.getElementById("err").innerHTML = "User Name or Password Cannot be Empty..";
                   
                }else{           
            
                    if (uname === "abc" && passwd === "123") {

                        document.getElementById("err").innerHTML = "Login SuccessFull...";

                    } else {

                        document.getElementById("err").innerHTML = "Incorrect User Name or Password...";

                    }
                    
                }

            }

            function Create() {

                var ele = document.createElement("input");
                ele.type = "text";
                ele.id = "uname";

                var ele2 = document.createElement("input");
                ele2.type = "password";
                ele2.id = "passwd";

                var btn = document.createElement("input");
                btn.type = "button"
                btn.value = "Login";
                btn.onclick = loginTest;
                
                var lbl = document.createElement("lablel");
                lbl.id="err";
                lbl.style.color = "red";

                var div = document.getElementById("log");
                div.appendChild(ele);
                div.appendChild(ele2);
                div.appendChild(btn);
                div.appendChild(lbl);

            }

        </script>-->

    </head>

    <body>

        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="login-panel panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Reset Password</h3>
                        </div>
                        <div class="panel-body">
                            <form role="form" method="post" action="user">
                                <fieldset>
                                    <div class="form-group">
                                        <input class="form-control" placeholder="email" name="un" type="user" autofocus>
                                    </div>
<!--                                    <div class="form-group">
                                        <input class="form-control" placeholder="Password" name="pw" type="password" value="">
                                    </div>-->
<!--                                    <div class="checkbox">
                                        <label>
                                            <input name="remember" type="checkbox" value="Remember Me">Remember Me
                                        </label>
                                    </div>-->
                                    <!-- Change this to a button or input when using this as a form -->
                                    <input type="submit" class="btn btn-lg btn-success btn-block" value="send"><br>

<!--                                    <a href="#">I forgot my password</a><br><br>
                                    <a href="register.jsp" class="text-center">Register a new membership</a>-->

                                </fieldset>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- jQuery -->
        <script src="bower_components/jquery/dist/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="bower_components/metisMenu/dist/metisMenu.min.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="dist/js/sb-admin-2.js"></script>

    </body>

</html>

