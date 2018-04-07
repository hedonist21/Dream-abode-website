<%-- 
    Document   : home
    Created on : Nov 19, 2014, 3:51:51 AM
    Author     : Axita
--%>

<%@page import="mypack.connect"%>
<%@page import="mypack.userinfo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="back.css">
        <link rel="stylesheet" type="text/css" href="list1.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript">

            var slideimages = new Array(); 
             slideimages[0] = new Image(); 
             slideimages[0].src = "IMAGES/E.jpg"; 
             slideimages[1] = new Image();
             slideimages[1].src = "IMAGES/I.jpg";
             slideimages[2] = new Image();
             slideimages[2].src = "IMAGES/K.jpg";
             slideimages[3] = new Image();
             slideimages[3].src = "IMAGES/N.jpg";
             slideimages[4] = new Image();
             slideimages[4].src = "IMAGES/L.jpg";
             slideimages[5] = new Image();
             slideimages[5].src = "IMAGES/Q.jpg";
             slideimages[6] = new Image();
             slideimages[6].src = "IMAGES/C.png";
             slideimages[7] = new Image();
             slideimages[7].src = "IMAGES/B.jpg";
             slideimages[8] = new Image();
             slideimages[8].src = "IMAGES/D.jpg";
             slideimages[9] = new Image();
             slideimages[9].src = "IMAGES/F.JPG";
             slideimages[10] = new Image();
             slideimages[10].src = "IMAGES/O.jpg";
             slideimages[11] = new Image();
             slideimages[11].src = "IMAGES/R.jpg";
             
            
             </script>
            
       
    </head>
    <body >
        <div id="mbody">
            <%
                response.setHeader("Cache-Control","no-cache"); 
                response.setHeader("Cache-Control","no-store"); 
                response.setDateHeader("Expires", 0); 
                response.setHeader("Pragma","no-cache"); 
                String userName = (String) session.getAttribute("user");
                if ( userName==null) 
                {
                  request.setAttribute("Error", "Session has ended.Please login.");
                  RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                  rd.forward(request, response);
                }
                else{
                      
           %>
                    <div style="width:100%;height: 83px">
            <div align="left" style="width:405px;height: 83px">
                <img src="IMAGES\T.jpg"  style="margin-top:0px" width="405" height="83" alt></div>
            <div align="right" style="color: coral;height:20px;top:4px;left: 1000px;position:absolute;font-size:16px;font-weight:bold" >
                  <form action="logout.jsp" >
                Hello ${user}! 
                <%                      connect cs=new connect();
                                         userinfo usb=new userinfo();
                                        usb=cs.SearchBuyer(userName);
                                        userinfo usi=new userinfo();
                                        usi=new connect().SearchRealtor(userName);
                                        if(usi!=null)
                                        {   
                                         if(userName.equals(usi.getU_name()))    
                                         {
                                          %>     
                                          <a href="addlist.jsp" style=" text-decoration:none;color: #F4CCC7;background:none;border:none;font-size:16px;font-weight:bold;font-family: inherit" >Post a property | </a>
                                      <%}
                                          }%>
                    <input type="submit" style=" color: #F4CCC7;background:none;border:none;font-size:16px;font-weight:bold;font-family: inherit" value="Logout "/>
                  </form>
                        </div>
           </div>
          <div id="figure"> 
             <div id="masterhead">
                   
                     <div id="banner"></div>
                 <div id="w">
                 <div id="menuholder">
                     <div class="image"><br/><br/><br/><br/><br/><br/>
                         <div style="margin-left:30px;font-family: gunplay;font-size: 55px;color: firebrick">
                             Welcome
                         </div>
                         <div class="main_menu">
                             <nav>
                             <ul id="menu" style=" font-family: gunplay;list-style-type: none;font-size:24px;" >
                                 <li id="item1" >
                                  <a style="color: darkgreen;text-decoration: none" href="about.jsp">ABOUT US</a></li>
                                 <li id="item2">
                                     <a style="color:darkgreen;text-decoration: none" href="listings.jsp">LISTINGS</a>
                                     <ul style="font-size:16px">
                                      <li><a href="searchprops.jsp" style="color: black;text-decoration: none" >Featured Listings</a></li>
                                      <li><a href="alllisting.jsp" style="color: black;text-decoration: none" >All Listings</a></li>
                                       <%connect c=new connect();
                                         userinfo ub=new userinfo();
                                        ub=c.SearchBuyer(userName);
                                        userinfo ui=new userinfo();
                                        ui=new connect().SearchRealtor(userName);
                                       if(ui!=null)
                                      {   
                                        if(userName.equals(ui.getU_name()))    
                                        {
                                          %>     
                                      <li><a href="myposting.jsp" style="color: black;text-decoration: none" >My Postings</a></li>
                                     <% }
                                      }
                                        else if(ub!=null)
                                        {   
                                        if(userName.equals(ub.getU_name()))    
                                        {
                                          %>     
                                      <li><a href="mylisting.jsp" style="color: black;text-decoration: none" >My Listings</a></li>
                                      <% }
                                        }%>                                  </ul><br></li>
                                 <li id="item3">
                                     <a style="color: darkgreen;text-decoration: none" href="guide.jsp">GUIDE</a></li>
                                 <li id="item5">
                                     <a style="color: darkgreen;text-decoration: none" href="profile.jsp">MY PROFILE</a></li>
                                 <li id="item4">
                                     <a style="color:darkgreen;text-decoration: none" href="contact.jsp">CONTACT US</a></li>
                             </ul></nav>
                         </div>
                         <div id="imaa" style="left:-145px;top:172px; position:absolute">
                     <img src="IMAGES/cycad.png" width="210" height="310" alt/></div>
                     </div>
                 </div>
                 
                 <div id="slider">
                     
                       <img src="IMAGES/E.jpg" id="slide" width="1060" height="430"  alt />
                       
<script type="text/javascript">
var step=0;
function slideit()
{
  if (!document.images)
  return;
 document.getElementById('slide').src = slideimages[step].src;
 if (step<11)
  step++;
 else
  step=0;
  setTimeout("slideit()",5000);
}

slideit();

</script></div></div>
                 
                 </div>
             </div>
        
                <% } %>
        </div>
      </body>
</html>
