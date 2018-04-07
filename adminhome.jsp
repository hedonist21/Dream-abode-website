<%-- 
    Document   : adminhome
    Created on : Apr 8, 2015, 11:41:46 AM
    Author     : Axita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <link rel="stylesheet" type="text/css" href="list.css">
        <title>admin portal</title>
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
                                <li><a style="color: teal" href="editpro.jsp">Edit Profile</a></li>
                                <li><a style="color: teal" href="logout.jsp">Sign out</a></li></ul>
                         </li>
                   </ul>  
               
            <div style=" background: rgba(100, 205, 229, 0.20);height:120px;width:300px;left:150px;top:350px;position:absolute;border-style:ridge;border-color:lightblue;border-radius:12px">
                <div ><img style="margin:20px 0 0 25px;height:90px;width:90px;float:left" src="IMAGES/users.jpg" alt=""></div>
                <div style="left:50px;top:30px;position:relative">
                <a style="font-size:large;font-weight: bolder;color: cadetblue;text-decoration: underline;" href="showuser.jsp">Show all users</a><br>
                <a style="font-size:large;font-weight: bolder;color: cadetblue;text-decoration: underline;" href="adduser.jsp">Add user</a><br>
                <a style="font-size:large;font-weight: bolder;color: cadetblue;text-decoration: underline" href="deleteuser.jsp">Delete user</a><br>
                </div>
            </div>
            <div style=" background: rgba(100, 205, 229, 0.20);height:120px;width:300px;left:550px;top:350px;position:absolute;border-style:ridge;border-color:lightblue;border-radius:12px">
                <div ><img style="margin:20px 0 0 25px;height:90px;width:90px;float:left" src="IMAGES/mylist.jpg" alt=""></div>
                <div style="left:50px;top:40px;position:relative">
                <a style="font-size:large;font-weight: bolder;color: cadetblue;text-decoration: underline;" href="addlist.jsp">Add Listing</a><br>
                <a style="font-size:large;font-weight: bolder;color: cadetblue;text-decoration: underline" href="deletelist.jsp">Delete Listing</a><br>
                </div>
            </div>
            <div style=" background: rgba(100, 205, 229, 0.20);height:120px;width:300px;left:950px;top:350px;position:absolute;border-style:ridge;border-color:lightblue;border-radius:12px">
                <div ><img style="margin:20px 0 0 10px;height:90px;width:90px;float:left" src="IMAGES/lock.jpg" alt=""></div>
                <div style="left:50px;top:40px;position:relative">
                <a style="font-size:large;font-weight: bolder;color: cadetblue;text-decoration: underline;" href="changepass.jsp">Change Password</a><br>
               
                </div>
            </div>
             </nav>
            <%}%>
    </body>
</html>
