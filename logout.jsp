<%-- 
    Document   : logout
    Created on : Nov 24, 2014, 2:18:05 PM
    Author     : Axita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="mypack.userinfo"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <% 
                 request.getSession(false);
                session.invalidate();
                response.sendRedirect("login.jsp");
                        
        %>
        

</body>
</html>
                

    