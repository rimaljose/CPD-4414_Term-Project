<%-- 
    Document   : admin_insert
    Created on : 18-Apr-2015, 1:05:59 PM
    Author     : c0647708
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert Page</title>
        <link rel="stylesheet" href="rimzShop.css" type="text/css" >
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="page-header">
            <h1>rimzShop <br><small>ERP System</small></h1>
        </div>
        
        <% String classifier_name = "none";
        String admin_name = (String) session.getAttribute("name");
            session.setAttribute("admin_mode", "insert");
            String db_insertion_result = (String) session.getAttribute("db_insertion_result");
            //out.println("Admin mode = " + (String) session.getAttribute("admin_mode"));
            //out.println("insertion_result " + db_insertion_result);
            if ((String) session.getAttribute("classifier_name") != null) {
                classifier_name = (String) session.getAttribute("classifier_name");
                //out.println("Classifier name selected = " + classifier_name);                
            }%>       

        <div id="big_wrapper">            
            
            <form name="admin" action="Controller" method="post">
                 <div class="logmeout"> <h4> Welcome <%= admin_name %>!! </h4> <input type="submit" name="signout" value=" Logout "> </div>
                <nav id="links"> 
                    <ul>                                             
                        <li> <a href="admin_update.jsp" title="Update" > <img id="update"  border="0" src="Images/update2.png" width="25" height="25" alt="Loading" /> </a> </li>
                        <li> <a href="admin_delete.jsp" title="Delete" > <img id="delete"  border="0" src="Images/delete2.png" width="25" height="25" alt="Loading" /> </a> </li>                    
                        <li> <a href="admin_insert.jsp" title="Insert" > <img id="insert"  border="0" src="Images/insert2.png" width="75" height="75" alt="Loading" /> </a> </li>
                        <li> <a href="admin_view_all.jsp" title="View" > <img id="view"  border="0" src="Images/view2.png" width="25" height="25" alt="Loading" /> </a> </li>          
                    </ul>
                </nav>
                <center>      <br /><h3> Select a product to insert </h3> <br />  <br /> 
                     <% if(db_insertion_result!=null){if(db_insertion_result.equals("success")){%>
                     <span style="color:green">  <b> Insertion Successful!!  </b> </span> 
                     <% } if(db_insertion_result.equals("failure")) { %>
                     <span style="color:red">  <b> Insertion Failure! Please try again!   </b> </span> 
                     <% }} %>
                     <br /> <br />
                    <select name="admin_classifer_choice">
                        <option value=""> </option>
                        <option value="Electronics"> Electronics </option> 
                        <option value="Books"> Books </option>
                        <option value="Sports"> Sports </option> 
                    </select> 
                    <input type="submit"  value =" > " name="admin_catagory" /> <br /> <br /> 
                    <div id="admin_mode"> </div>
                    <% if ((String) session.getAttribute("classifier_name") != null) {
                         classifier_name = (String) session.getAttribute("classifier_name");%>      
                    Category Selected : <span style="color:green">  <b> <%= classifier_name%> </b> </span>

                    <% }%>      <br /> <br />
                    <% if (classifier_name != null || classifier_name != "") {%>
                    Name &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <input type="text" name="admin_product_name" /> <br />  <br />
                    Author/Store &nbsp; <input type="text" name="admin_product_author_store_name" /> <br />  <br />
                    Description &nbsp; &nbsp; <input type="text" name="admin_product_description" /> <br />  <br />
                    Price &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; <input type="text" name="admin_product_price" /> <br />  <br />
                    <input type="submit" value="  Insert  " name="admin_db_changes" />
                    <% }%>
                </center>
                <br /> <br />
                <form>
                    </div>
    </body>
</html>
