<%-- 
    Document   : admin_view_all
    Created on : 18-Apr-2015, 1:19:14 PM
    Author     : c0647708
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View All</title>
        <link rel="stylesheet" href="rimzShop.css" type="text/css" >
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <style type="text/css">
            #table_header{                
                background-color: orange;
                color:white;
            }
        </style>
    </head>
    <body>

        <div class="page-header">
            <h1>rimzShop <br><small>ERP System</small></h1>
        </div>
        
        <%! ArrayList productname = new ArrayList();
            ArrayList productdescription = new ArrayList();
            ArrayList brandname = new ArrayList();
            ArrayList productprice = new ArrayList();
            ArrayList productid = new ArrayList();
        %>
        <%
            productname = (ArrayList) session.getAttribute("productname");
            productdescription = (ArrayList) session.getAttribute("productdescription");
            brandname = (ArrayList) session.getAttribute("brandname");
            productprice = (ArrayList) session.getAttribute("productprice");
            productid = (ArrayList) session.getAttribute("productid");
            System.out.println("productname = " + productname);
            System.out.println("productdescription = " + productdescription);
            System.out.println("brandname = " + brandname);
            System.out.println("productprice = " + productprice);
            System.out.println("productid = " + productid);
        %>



        <% String classifier_name = "none";
            String admin_name = (String) session.getAttribute("name");
            session.setAttribute("admin_mode", "view");
            String db_insertion_result = (String) session.getAttribute("db_insertion_result");
        //    out.println("Admin mode = " + (String) session.getAttribute("admin_mode"));
            //    out.println("insertion_result " + db_insertion_result);
            if ((String) session.getAttribute("classifier_name") != null) {
                classifier_name = (String) session.getAttribute("classifier_name");
                // out.println("Classifier name selected = " + classifier_name);
            }%>       

        <div id="big_wrapper">            

           
            <form name="admin" action="Controller" method="post">
                <div class="logmeout"> <h4> Welcome <%= admin_name %>!! </h4> <input type="submit" name="signout" value=" Logout "> </div>
                <nav id="links"> 
                    <ul>                                             
                        <li> <a href="admin_update.jsp" title="Update" > <img id="update"  border="0" src="Images/update2.png" width="25" height="25" alt="Loading" /> </a> </li>
                        <li> <a href="admin_delete.jsp" title="Delete" > <img id="delete"  border="0" src="Images/delete2.png" width="25" height="25" alt="Loading" /> </a> </li>
                        <li> <a href="admin_view_all.jsp" title="View" > <img id="view"  border="0" src="Images/view2.png" width="75" height="75" alt="Loading" /> </a> </li>
                        <li> <a href="admin_insert.jsp" title="Insert" > <img id="insert"  border="0" src="Images/insert2.png" width="75" height="25" alt="Loading" /> </a> </li>
                    </ul>
                </nav>
                <center>      <br /><h3> Select a product to view </h3> <br />  <br /> 
                    <% if (db_insertion_result != null) {
                            if (db_insertion_result.equals("success")) {%>
                    <span style="color:green">  <b> Insertion Successful!!  </b> </span> 
                    <% }
                        if (db_insertion_result.equals("failure")) {%>
                    <span style="color:red">  <b> Insertion Failure! Please try again!   </b> </span> 
                    <% }
                        }%>
                    <br /> <br />
                    <select name="admin_classifer_choice">
                        <option value=""> </option>
                        <option value="Electronics"> Electronics </option> 
                        <option value="Books"> Books </option>
                        <option value="Sports"> Sports </option> 
                    </select> 
                    <input type="submit"  value =" > " name="admin_view_all_products" /> <br /> <br /> 
                    <div id="admin_mode"> </div>
                    <% if ((String) session.getAttribute("classifier_name") != null) {
                            classifier_name = (String) session.getAttribute("classifier_name");%>      
                    Category Selected : <span style="color:green">  <b> <%= classifier_name%> </b> </span>

                    <% }%>      <br /> <br />
                    <% if (productname != null) {%> 
                    <table border="2" cellspacing="0" cellpadding="0">
                        <tr>
                        <div id="table_header">  <th> Item Id </th>
                            <th> Product Name </th>
                            <th> Brand/Author Name</th>
                            <th> Description </th>
                            <th> Price </th> 
                        </div>
                        </tr>

                        <%        for (int i = 1; i <= productname.size(); i++) {
                        %>  
                        <tr>
                            <td> <%= productid.get(i - 1)%> </td> 
                            <td> <%= productname.get(i - 1)%>        </td>                                
                            <td> <%= brandname.get(i - 1)%>          </td>
                            <td> <%= productdescription.get(i - 1)%> </td>
                            <td> <%= productprice.get(i - 1)%>       </td>
                        </tr>                    
                        <%
                            }%>
                    </table>
                    <% }%> 
                </center>
                <br /> <br />
                <form>
                    </div>
                    </body>
                    </html>
