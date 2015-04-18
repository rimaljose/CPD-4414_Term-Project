<%-- 
    Document   : index
    Created on : 15-Apr-2015, 5:25:59 PM
    Author     : c0647708
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
String name=(String) request.getAttribute("name");
String names=(String) session.getAttribute("name");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="rimzShop.css">
        
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

        <title>JSP Page</title>
    </head>
    <body>
        
        <div class="page-header">
            <h1>rimzShop <br><small>ERP System</small></h1>
</div>

        <script type="text/javascript">
            function form_validation(){
            var name=document.Login_Form.login_name.value;
            var password=document.Login_Form.login_password.value;
            var flag = true;             
            if(name==""){
                document.getElementById("invalid_login").style.color="red";
                document.getElementById('invalid_login').innerHTML="UserName is mandatory!";
                flag = false;
            }             
            if(password==""){
                document.getElementById("invalid_login").style.color="red";
                document.getElementById('invalid_login').innerHTML="Password is mandatory!";
                flag = false;
            }    
            return flag;
            }
        </script>
        
        <!--div id="date">  Current Time =  <%=new Date() %> </div-->
        <div id="invalid_login"> </div>
        <% String authentication = (String) session.getAttribute("authentication");            
            if (authentication == null) {
        %>                
        <div id="login_in">
            <form name="Login_Form" action="Controller" method="Post">
                <div align="left">                       
                    <span class="label label-primary">Username</span>    <input  type="text" maxlength="40" name="login_name" placeholder="username"> &nbsp;&nbsp;<br><br>
                  
                  
                    <span class="label label-primary">Password</span>    <input type="password" maxlength="40" name="login_password" placeholder="password"><br><br>  
                    </div>
                <div align="center"> 
                    <input type="submit" name="login_submit" value="Submit" class="btn btn-default navbar-btn" onclick="return form_validation()"><br>   
                   
                    <a href="registration.jsp"> Register </a>
                </div>
                                    
            </form>
            <% }
                if (authentication != null) { if(authentication.equals("Auth_Success"))
                { // out.println("authentication = " + authentication);
            %>
            <div id="user_info"> Welcome  <span style="color:green">   <i> </i>  </span> </div>
            <form name="logout" action="Controller" method="Post">
                <div class="logmeout"> <input type="submit" name="signout" value=" Logout "> </div>
            </form>            
            <%} else { %>
            <div id="wrong_user"> <span style="color:red"> Username/Password is wrong! </span> </div>
              <form name="Login_Form" action="Controller" method="Post">
                <div id="login_in" align="right">                       
                    Username    <input  type="text" maxlength="40" name="login_name"> &nbsp;&nbsp;
                    Password    <input type="password" maxlength="40" name="login_password">             
                    <input type="submit" name="login_submit" value="Submit" onclick="return form_validation()">             
                    <a href="registration.jsp"> Register </a>
                </div>                    
            </form>
          
            <%}}%>

        </div>     
    </body>
</html>
