<%-- 
    Document   : deleteuser
    Created on : Apr 20, 2015, 11:33:47 PM
    Author     : Axita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" type="text/css" href="list.css">
        <title></title>
         </head>
    <body style="background: #d9d1c4;width:100%;height:100%">
       <% response.setHeader("Cache-Control","no-cache"); 
                response.setHeader("Cache-Control","no-store"); 
                response.setDateHeader("Expires", 0); 
                response.setHeader("Pragma","no-cache"); 
                String userName = (String) session.getAttribute("user");
                if ( userName==null) 
                {
                  request.setAttribute("Error", "Session has ended.Please login.");
                  RequestDispatcher rd = request.getRequestDispatcher("adminlogin.jsp");
                  rd.forward(request, response);
                }
                else
                {
         %>
        <div><h3>WELCOME ${user}</h3>
            <img src="IMAGES/T.jpg" alt style="margin-left:840px"/></div>
        <nav style="margin-top:-15px;">
                   <ul style="width: 100%">
                       <li><a href="adminhome.jsp" style="color: teal ;text-decoration:none;">Welcome</a></li>
                         <li> <a style="color: teal ;text-decoration:none; " href="profile.jsp">My profile</a></li>
                         <li> <a style="color: teal ;text-decoration:none;" >Listings</a>
                            <ul>
                                <li><a style="color: teal" href="searchprops.jsp">Featured Listings</a></li>
                                <li><a style="color: teal" href="alllisting.jsp">All Listings</a></li></ul></li>
                         <li><a style="color: teal;text-decoration:none;" href="myposting.jsp">My Postings </a></li>
                         <li><a style="color: teal;text-decoration:none;left:1100px;position:absolute" >My Account </a>
                             <ul style="left:1100px">
                                <li><a style="color: teal" href="editprof.jsp">Edit Profile</a></li>
                                <li><a style="color: teal" href="logout.jsp">Sign out</a></li></ul>
                         </li>
                         
                </nav>
            <div style=" background: rgba(100, 205, 229, 0.20);height:120px;width:300px;left:450px;top:350px;position:absolute;border-style:ridge;border-color:lightblue;border-radius:12px">
                
                <div style="left:10px;top:40px;position:relative;font-size:large;font-weight: bolder;color: cadetblue;">
                    <form action="delu.jsp" method="post">
                    Enter user ID <input style="background:rgba(100, 205, 229, 0.02)" type="text" id="t1" name="id"/><br>
                    <input style="background:rgba(100, 205, 229, 0.02)" type="submit" id="b1" value="Submit"/><br>
                    </form>
                </div>
            </div>
            <%}%>
    </body>
</html>
