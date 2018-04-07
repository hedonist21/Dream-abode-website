<%-- 
    Document   : welcome
    Created on : Nov 18, 2014, 10:11:24 PM
    Author     : Axita
--%>

<%@page import="mypack.userinfo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
         #menubar
            {
                word-spacing:15px; 
                background: rgba(100, 205, 229, 0.30);
                height:25px;
                top:4px;
                left:0;
                position:relative;
                font-size:20px;
                font-weight:bold
            }
    </style>
    </head>
    <body background="IMAGES\P.jpg" style="background-repeat: no-repeat">
        
        <div style="width:1349px;height:53px">
            <div align="left" >
                <img src="IMAGES\T.jpg"  style="margin-top:0px" width="300" height="53" alt></div>
            </div>
            <div id="menubar" align="right" >
                <a style="color: teal ;text-decoration:none;word-spacing: normal" href="home.jsp">My Home</a>
                <a style="color: teal;text-decoration:none;" href="index.html">  Listings</a>
                <a style="color: teal;text-decoration:none;" href="index.html">  Guide </a>
                <a style="color: teal;text-decoration:none;word-spacing: normal;" href="index.html">  Contact Us </a></div>
        
        <%
            userinfo ui=(userinfo)session.getAttribute("user");
            %> <h1>Welcome ${userin}</h1>
    </body>
</html>
