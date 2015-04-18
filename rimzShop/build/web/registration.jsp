<%-- 
    Document   : registration
    Created on : 18-Apr-2015, 12:59:55 PM
    Author     : c0647708
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        <link rel="stylesheet" href="rimzShop.css" type="text/css">
    </head>
    <body>
        <div class="page-header">
            <h1>rimzShop <br><small>ERP System</small></h1>
        </div>
        <div id="big_wrapper">
            <form action="Controller" method="Post">
                <center>
                    <h1> Welcome to Registration Page! </h1>
                </center> <br> <br> 
                <div>
                    <center>
                        <pre>
                Username <input type="text" name="registration_username" > <br>
                Password <input type="password" name="registration_password"> <br> <br>                
                        </pre>
                        <input type="submit" name="registration_submit" value="Register">
                        <input type="reset" value="Reset">    <br> <br>
                        <a href="index.jsp"> back </a>

                    </center>
                </div>

            </form>
        </div>
    </body>
</html>
