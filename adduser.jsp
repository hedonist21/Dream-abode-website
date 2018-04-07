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
        <script type="text/javascript">

             function f1()
             {
                 document.getElementById("r11").focus();
             }
             function f2()
             {
                 var n=document.getElementById("r66").value.length;
                 if(n<6)
                 {
                   document.getElementById("r66").style.color="red";
                   alert("password is too short");
                   document.getElementById("r66").focus();
                   document.getElementById("r66").style.color="black";
                 }
                 else
                 {
                   document.getElementById("r66").style.color="green";
                   document.getElementById("r77").focus();
                 }
             }
             function f4()
             {
               if(document.getElementById("r11").value==""||document.getElementById("r22").value==""||document.getElementById("r33").value==""||
                       document.getElementById("r44").value==""||document.getElementById("r55").value==""||document.getElementById("r66").value==""||
                       document.getElementById("r77").value=="")
               {
                   alert("Please Fill In The Necessary details");
                }
              else
               {
                 var str1=document.getElementById("r66").value;
                  var str2=document.getElementById("r77").value;
                  var t=str1.localeCompare(str2);   
                   if(t!=0)
                   {
                    alert("passwords do not match");
                    document.getElementById("r77").focus();
                  }
                 else
                 {
                    alert("Recheck details and Create account");
                         document.getElementById("r8").focus();
                  
                 }
              }     
             }
             function f5()
             {
                var st1=document.getElementById("r44").value.length;
               if(st1!=10)
                {
                    alert("Phone no. is not correct");
                    document.getElementById("r44").focus();
                }
             }
</script>
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
                       
              <div id="regform">
                <h5> All fields marked * are compulsory</h5>
                <form action="useradd.jsp" method="post">
                    *First Name
                    <input type="text" id="r11" name="r1" size="35" style=" position:absolute;height:25px;left:480px;border-style: inset;border-color:rgba(100,205,229,0.20);"/><br><br><br>
                    *Last Name
                    <input type="text" id="r22" name="r2" size="35" style=" position:absolute; height:25px;left:480px;border-style: inset;border-color:rgba(100,205,229,0.20);"/><br><br><br>
                    *Username
                    <input type="text" id="r00" name="r0" size="35" style=" position:absolute; height:25px;left:480px;border-style: inset;border-color:rgba(100,205,229,0.20);" onkeyup="loadXMLDoc()"/><span id="err"> </span>
                   <br><br><br>
                    *Email-Id
                    <input type="text" id="r33" name="r3" size="35" style=" position: absolute;height:25px;left:480px;border-style: inset;border-color:rgba(100,205,229,0.20);"/><br><br><br>
                    *Mobile
                    <input type="text" id="r44" name="r4" size="35" style=" position: absolute;height:25px;left:480px;border-style: inset;border-color:rgba(100,205,229,0.20);" onblur="f5()"/><br><br><br>
                    *Account type
                    <input type="radio" id="r55" name="r5" value="realtor" style="margin-left: 60px;border-style: inset;border-color:rgba(100,205,229,0.20);"/>Realtor/Vendor
                    <input type="radio" id="r55" name="r5" value="buyer" style=" border-style: inset;border-color:rgba(100,205,229,0.20);"/>Buyer/Visitor<br><br><br>
                    *Password
                    <input type="password" id="r66" name="r6" size="35" style=" position: absolute;height:25px;left:480px;border-style: inset;border-color:rgba(100,205,229,0.20);" onblur="f2()"/><h6 style=" font-style: italic">(atleast 6 characters)</h6><br>
                    *Confirm Password
                    <input type="password" id="r77" name="r7" size="35" style=" position: absolute;height:25px;left:480px;border-style: inset;border-color:rgba(100,205,229,0.20);"/><br><br><br>
                    <input type="button" value="Submit Details" style="border-color:cadetblue;border-radius:0.55em;background: cadetblue;width:150px;height:25px;" onclick="f4()"/>
                    <input type="submit" id="r8" value="Create Account" style="border-color:cadetblue;border-radius:0.55em;background: cadetblue;width:150px;height:25px;">

                </form>
            </div>
<%}%>
    </body>
</html>