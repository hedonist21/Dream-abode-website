<%-- 
    Document   : delu
    Created on : Apr 20, 2015, 11:52:39 PM
    Author     : Axita
--%>

<%@page import="mypack.connect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="mypack.userinfo"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="list.css">
        <title>JSP Page</title>
    </head>
    <body style="background: #d9d1c4;width:100%;height:100%">
       <% 
                response.setHeader("Cache-Control","no-cache"); 
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
                    connect c=new connect();
                    int pid=Integer.parseInt(request.getParameter("id"));
                    boolean t= c.Deletelist(pid);
                
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
                    <%
                    if(t==true)
                    {%>
                   PROPERTY DELETED
                     <%}
                   else 
                    {
                      %>
                      NOT A VALID PROPERTY ID..Please ENTER AGAIN
                      <%
                        
                    }
                   %>
                 </div>
            </div>
            <%}%>
    </body>
</html>
