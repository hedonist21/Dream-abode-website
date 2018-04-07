<%-- 
    Document   : register
    Created on : Nov 20, 2014, 11:23:58 PM
    Author     : Axita
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="mypack.DBProperties"%>
<% 
           response.setHeader("Cache-Control","no-cache"); 
            response.setHeader("Cache-Control","no-store"); 
            response.setDateHeader("Expires", 0); 
            response.setHeader("Pragma","no-cache"); 
            String user = (String) session.getAttribute("user");
            int t=0;
            if ( user==null) 
            {
                   session.setAttribute("user","");
                   response.sendRedirect("contact.jsp");
            }
            else
            {
                t=1;
            }
            
            if(t==1)
            {
             DBProperties dbConn=new DBProperties();
              Class.forName("com.mysql.jdbc.Driver");
              Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "123");
             ResultSet rsOptions = null;
             Statement st=null;
        
%>
<%@page import="mypack.userinfo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
         <link rel="stylesheet" type="text/css" href="back1.css">
         <link rel="stylesheet" type="text/css" href="list.css">
        <title>dreamabodes.com</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
    <body style="width:100%;height: 100%">
      <div class="mainbody">
         <div id="figure1"> 
             <div id="masterhead1">
                   <div id="w1">
                 <div id="menuholder1">
                     <div class="image11"><br/><br/><br/><br/><br/><br/>
                     </div>
                          <div id="imaa" style="left:-50px;top:105px; position:absolute">
                     <img src="IMAGES/cycad.png" width="120" height="160" alt/></div>
                     </div>
                     <div id="slider">
                       <img src="IMAGES/E.jpg" id="slide" width="660" height="230"  alt />
                       <div id="banner1">
                        <img src="IMAGES/slidebg.png" alt style="width:580px; height:220px"/>
                       </div>
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

</script></div>
                   </div>
               </div>
             </div>
           
               <div id="bottomcover">
                   <nav style="margin-top:10px;">
                   <ul style="width:95%;margin-top:-14px;">
                        <% 
                           
                           if(user.equals("admin"))
                            { %>
                             <li> <a style="color: teal ;text-decoration:none; " href="adminhome.jsp">Home</a></li>
                            <%}
                       else if(user.equals(""))
                            {%>
                             <li> <a style="color: teal ;text-decoration:none; " href="homepage.html">Home</a></li>
                             <%
                            }
                          else 
                           {%>
                             <li> <a style="color: teal ;text-decoration:none; " href="home.jsp">Home</a></li>
                             <%
                            }
                             %>
                         
                         
                         <li> <a style="color: teal ;text-decoration:none;" >Listings</a>
                            <ul>
                                <li><a style="color: teal" href="searchprops.jsp">Featured Listings</a></li>
                                <li><a style="color: teal" href="alllisting.jsp">All Listings</a></li></ul></li>
                         <li><a style="color: teal;text-decoration:none;" href="guide.jsp">  Guide </a></li>
                         <li> <a style="color: teal;text-decoration:none;word-spacing: normal;" href="contact.jsp">  Contact Us </a></li></ul>
                </nav>
                   <div style="border-style:ridge;padding:15px;border-color:peru;background:none;width:400px;height:600px;position:absolute;top:60px;margin-left:250px;font-family:georgia;color: peru">
                         <form action="mail.jsp">
                             <h2 >CONTACT</h2><br><br>
                             Your Name<br><br>
                           <input type="text" id="c1" name="c11" size="35" style="border-color:peru"/><br><br><br><br>
                           Your Email Address<br><br>
                           <input type="text" id="c2" name="c22" size="35" style="border-color:peru"/><br><br><br>
                           Your Message<br><br>
                           <textarea id="cc" name="cct" style="width:200px;height:105px;"></textarea><br><br><br>
                           <input type="submit" id="s1" value="Send"/>
                          </form>
                  </div>
                       <div id="thumbnail1">
                         <ul style="list-style-type:none">
                             <li><a href="IMAGES/house1.jpg">
                                 <img src="IMAGES/house1.jpg" alt style="border-style: ridge;height:80px;margin-top:15px;width:100px;"></a></li>
                             <li> <a href="IMAGES/house2.jpg">
                                 <img src="IMAGES/house2.jpg" alt style=" border-style: ridge;height:80px;margin-top:15px;width:100px;"></a></li>
                             <li> <a href="IMAGES/house3.jpg">
                                 <img src="IMAGES/house3.jpg" alt style="border-style: ridge;height:80px;margin-top:15px;width:100px;"></a></li>
                             <li><a href="IMAGES/house4.jpg">
                                 <img src="IMAGES/house4.jpg" alt style="border-style: ridge;height:80px;margin-top:15px;width:100px;"></a></li>
                             <li><a href="IMAGES/house5.jpg">
                               <img src="IMAGES/house5.jpg" alt style="border-style: ridge;height:80px;margin-top:15px;width:100px;"></a></li>
                               <li> <a href="IMAGES/house6.jpg">
                                <img src="IMAGES/house6.jpg" alt style="border-style: ridge;height:80px;margin-top:15px;width:100px;"></a></li>
                                
                             </ul>
                     </div>
        </div>
       </div>  
                            <%}%>
    </body>
</html>



 
