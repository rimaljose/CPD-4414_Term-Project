<%-- 
    Document   : admin
    Created on : 18-Apr-2015, 1:03:36 PM
    Author     : c0647708
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
        <link rel="stylesheet" href="rimzShop.css" type="text/css" >
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="page-header">
            <h1>rimzShop <br><small>ERP System</small></h1>
        </div>
        <%String admin_name = (String) session.getAttribute("name");%>
        <div id="big_wrapper">            
            
            <form name="admin" action="Controller" method="post">
                 <div class="logmeout"> <h4> Welcome <%= admin_name %>!! </h4> <input type="submit" name="signout" value=" Logout "> </div>
                <nav id="links"> 
                    <ul>                        
                        <li> <a href="admin_insert.jsp" title="Insert" > <img id="insert"  border="0" src="Images/insert2.png" width="75" height="75" alt="Loading" /> <br><span id="navlist"> Insert </span></br></a> </li>
                        <li> <a href="admin_update.jsp" title="Update" > <img id="insert"  border="0" src="Images/update2.png" width="75" height="75" alt="Loading" /> <br> <span id="navlist"> Update </span></br></a> </li>
                        <li> <a href="admin_delete.jsp" title="Delete" > <img id="insert"  border="0" src="Images/delete2.png" width="75" height="75" alt="Loading" /> <br> <span id="navlist"> Delete </span></br></a> </li>                    
                        <li> <a href="admin_view_all.jsp" title="View" > <img id="insert"  border="0" src="Images/view2.png" width="75" height="75" alt="Loading" /><br> <span id="navlist"> View All </span></br> </a> </li>                    
                    </ul>
                </nav>
                <form>
                    </div>
    </body>
</html>
