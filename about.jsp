<%-- 
    Document   : deleteuser
    Created on : Apr 20, 2015, 11:33:47 PM
    Author     : Axita
--%>
<%@page import="mypack.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% 
           response.setHeader("Cache-Control","no-cache"); 
            response.setHeader("Cache-Control","no-store"); 
            response.setDateHeader("Expires", 0); 
            response.setHeader("Pragma","no-cache"); 
            
            String userName = (String) session.getAttribute("user");
            int t=0;
            if ( userName==null) 
            {
                   session.setAttribute("user","");
                   response.sendRedirect("about.jsp");
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
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="back1.css">
        <link rel="stylesheet" type="text/css" href="list.css">
        <title>JSP Page</title>
               <script>
    
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
    <body>
        <div class="mainbody">
           
          <div id="figure1"> 
             <div id="masterhead1">
                   <div id="w1">
                 <div id="menuholder1">
                     <div class="image11"><br/><br/><br/><br/><br/><br/>
                         
                         </div>
                          <div id="imaa" style="left:-50px;top:105px; position:absolute">
                     <img src="IMAGES/cycad.png" alt width="120" height="160" /></div>
                     </div>
                 
                 
                 <div id="slider">
                     
                       <img src="IMAGES/E.jpg" id="slide" width="660" height="230" alt />
                       <div id="banner1">
                     <img src="IMAGES/slidebg.png" alt  style="width:580px; height:220px"/>
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
                   <ul style="width: 95%; margin-top:-14px;">
                        <% 
                           
                           if(userName.equals("admin"))
                            { %>
                             <li> <a style="color: teal ;text-decoration:none; " href="adminhome.jsp">Home</a></li>
                            <%}
                       else if(userName.equals(""))
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
                         <li> <a style="color: teal;text-decoration:none;word-spacing: normal;" href="contact.html">  Contact Us </a></li></ul>
                </nav>
            <div id="regform" style="width:900px;margin-left:100px;height:400px">
                <div style="top:160px;position:absolute;line-break:loose">   Our strengths are mainly a strong focus, persistence, and attention to details.When buying or<br><br>
                    selling real estate of any kind, one must pay close attention to the details. You as a potential<br><br>
                    client and friend will appreciate my services rendered. Having delved deeply into management, law <br><br>
                    enforcement, and construction supervision, We can better serve you with your real estate negotiations.<br><br>
                    Please allow us the opportunity  to help you and your family with your real estate needs.<br><br><br>
                    It is our goal as your full service real estate broker in DehraDun to provide you with superior service <br><br>
                    at all times.  We consider DehraDun an excellent place to reside and would love to share with you our enthusiasm<br><br>
                    for the many neighborhoods that encompass it. We pride ourself on providing unparalleled service and look forward <br><br>
                    to developing a long-term relationship with you. Please feel free to contact us if you would like to discuss how we<br><br>
               can best assist you with your real estate needs.
         
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
            </div>  </div>
         <%}%>
    </body>
</html>

    