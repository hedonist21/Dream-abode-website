<%-- 
    Document   : logincontroller
    Created on : Nov 18, 2014, 9:26:31 PM
    Author     : Axita
--%>
<%@page import="mypack.*;"%>
<%@page import="java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "123");
             String u_name= request.getParameter("l1");
             String pass=request.getParameter("l2");
             connect c=new connect();
             userinfo ub=new userinfo();
             ub=c.SearchBuyer(u_name);
             userinfo ui=new userinfo();
             ui=new connect().SearchRealtor(u_name);
             PreparedStatement ps=con.prepareStatement("SELECT * FROM realtor WHERE Username=? ");
             ps.setString(1,"admin");
             ResultSet rs=ps.executeQuery();
             String passwd= null;
             String fn=null;
             while(rs.next())
             {
                 passwd=rs.getString(6);
                 fn=rs.getString(2);
                 
             }
              if(u_name.equals("admin")&&pass.equals(passwd))
                 {
                         session.setAttribute("user", u_name);
                         request.getRequestDispatcher("/adminhome.jsp").forward(request,response);
                          
                 }
             else if(ui!=null)
             {          
                 if(u_name.equals(ui.getU_name())&&pass.equals(ui.getPasswd())&&u_name.compareTo("admin")!=0)
                 {
                        session.setAttribute("user", ui.getU_name());
                        request.getRequestDispatcher("/home.jsp").forward(request,response);
                          
                 }
                 else
                 {
                     request.setAttribute("message","Wrong User name or Password!");
                     request.getRequestDispatcher("login.jsp").forward(request, response);
                 }
             }
             else if(ub!=null)
             {          
                 if(u_name.equals(ub.getU_name())&&pass.equals(ub.getPasswd()))
                 {
                        session.setAttribute("user", ub.getU_name());
                        request.getRequestDispatcher("/home.jsp").forward(request,response);
                          
                 }
                  else
                 {
                     request.setAttribute("message","Wrong User name or Password!");
                     request.getRequestDispatcher("login.jsp").forward(request, response);
                 }
             }
             
             else 
             {
                 if(u_name.equals("")&&pass.equals("")||u_name.equals("username")&&pass.equals("password"))
                {
                request.setAttribute("message","Please Enter the user name and password");
                request.getRequestDispatcher("login.jsp").forward(request, response);
                }
                else if(u_name.equals("")||u_name.equals("username"))
              {
                request.setAttribute("message","Please Enter the user name");
                request.getRequestDispatcher("login.jsp").forward(request, response);
              }
            else if(pass.equals("")||pass.equals("password"))
              {
                request.setAttribute("message","Please Enter the Password");
                request.getRequestDispatcher("login.jsp").forward(request, response);
              }
             
            else
            {
               request.setAttribute("message","Wrong User name or Password!");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
           
             }
          
        %>
        
    </body>
</html>
