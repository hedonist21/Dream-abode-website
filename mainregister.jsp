<%-- 
    Document   : mainregister
    Created on : Feb 18, 2015, 12:26:18 AM
    Author     : Axita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <% request.getSession(true);
               if (request.getParameter("s1").equals("Sign in"))  
                 request.getRequestDispatcher("/logincontroller.jsp").forward(request, response);
              else if(request.getParameter("s1").equals("Submit"))
                  request.getRequestDispatcher("/renewpass.jsp").forward(request, response);
                             
               %>
    </body>
</html>
