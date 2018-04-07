<%-- 
    Document   : searchprop
    Created on : Mar 23, 2015, 11:53:36 PM
    Author     : Axita
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" type="text/css" href="list.css">
        <title></title>
        <script>  
            function f()
            {
              document.getElementById("t1").focus();  
            }
            function f2()
             {
                 var sttr=document.getElementById("t1").value;
                var sttr1="password123";
                var e=sttr.localeCompare(sttr1);
                if(e!=0)
                {
                    alert(" Old password is incorret");
                    document.getElementById("t1").focus();
                }
                var str1=document.getElementById("t2").value;
                  var str2=document.getElementById("t3").value;
                  var t=str1.localeCompare(str2);   
                   if(t!=0)
                   {
                    alert("New passwords do not match");
                    document.getElementById("t3").focus();
                  } 
                  else
                  {
                      var c=confirm("Change Password?");
                      if(c==true)
                      {
                          document.getElementById("st").style.visibility="visible";
                      }
                  }
                  
             }
             function f3()
             {
                 var n=document.getElementById("t2").value.length;
                 if(n<6)
                 {
                   document.getElementById("t2").style.color="red";
                   alert("password is too short");
                   document.getElementById("t2").focus();
                   document.getElementById("t2").style.color="black";
                 }
                 else
                 {
                   document.getElementById("t2").style.color="green";
                   document.getElementById("t3").focus();
                 }
                            
              }
        </script>
         </head>
         <body style="background: #d9d1c4;width:100%;height:100%" onload="f()">
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
            <div style=" background: rgba(100, 205, 229, 0.20);height:180px;width:500px;left:450px;top:350px;position:absolute;border-style:ridge;border-color:lightblue;border-radius:12px">
                
                <div style="left:10px;top:40px;position:relative;font-size:large;font-weight: bolder;color: cadetblue;">
                    <form action="chpass.jsp" method="post">
                      
                        <table>
                            <tr>
                                <td>Old Password</td><td> <input style="background:rgba(100, 205, 229, 0.02)" type="text" id="t1" name="op" /></td></tr>
                            <tr><td>New Password<td> <input style="background:rgba(100, 205, 229, 0.02)" type="text" id="t2" name="np" /></td></tr>
                            <tr><td>Confirm New Password</td><td> <input style="background:rgba(100, 205, 229, 0.02)" type="text" id="t3" name="cnp" onfocus="f3()" /></td></tr>
                            <tr><td></td><td></td></tr><tr><td>    <input type="button" id="bt" style="background:rgba(100, 205, 229, 0.02)" value="confirm" onclick="f2()"/></td>
                                <td><input type="submit" id="st" style="visibility:hidden;background:rgba(100, 205, 229, 0.02)" value="Submit"></td></tr></table>
                    </form>
                </div>
            </div>
            <%}%>
    </body>
</html>
