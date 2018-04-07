<%-- 
    Document   : registercontroller
    Created on : Nov 22, 2014, 11:14:09 PM
    Author     : Axita
--%>

<%@page import="mypack.userinfo"%>
<%@page import="mypack.connect"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
             String actype=request.getParameter("r5");
             String u_name=request.getParameter("username"); 
             String f_name=request.getParameter("r1");
             String l_name=request.getParameter("r2");
             String email=request.getParameter("r3");
             String ph=request.getParameter("r4");
             String pass=request.getParameter("r6");
             connect c=new connect();
             userinfo ui=new userinfo();
             ui.setU_name(u_name);
             ui.setF_name(f_name);
             ui.setL_name(l_name);
             ui.setE_mail(email);
             ui.setPh(ph);
             ui.setPasswd(pass);
             if(actype.equals("realtor"))
             {
                 
                 boolean b=c.RegisterRealtor(actype,ui);
                 if(b==true)
                 {
                   session.setAttribute("user", f_name);
                   response.sendRedirect("home.jsp");
                 }
             }
             else if(actype.equals("buyer"))
             {
                  boolean n=c.RegisterBuyer(actype,ui);
                 if(n==true)
                 {
                   session.setAttribute("user", f_name);
                   request.getRequestDispatcher("/home.jsp").forward(request, response);
                 }
             }
                 else
                {
                    out.println("could not register");
                    request.getRequestDispatcher("/register.jsp").include(request, response);
                }
             
            
        %>
            
    </body>
</html>
