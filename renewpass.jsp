<%-- 
    Document   : renewpass
    Created on : Feb 17, 2015, 10:54:45 PM
    Author     : Axita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" type="text/css" href="css/back1.css">
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
        <% 
            String mail= request.getParameter("l3");
            if(mail.equals("")||mail.equals("Enter your email id"))
            {
                request.setAttribute("message","Enter a valid email id");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
            else
            {
        %>
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
           <div id="menubar1" align="center" >
                <a style="color: teal ;text-decoration:none; " href="index.html">Home</a>
                <a style="color: teal;text-decoration:none;" href="index.html">  Listings</a>
                <a style="color: teal;text-decoration:none;" href="index.html">  Guide </a>
                <a style="color: teal;text-decoration:none;word-spacing: normal;" href="index.html">Contact Us </a>
                
         </div>
               <div id="bottomcover">
                   <div style="border-style:none;padding:5px;border-color:peru;background:none;width:400px;height:600px;position:absolute;top:60px;margin-left:250px;font-family:georgia;color: peru">
                         <form action="mail.jsp">
                             <h3 >check your e mail id for the link to renew password</h3><br><br>
                             
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
                                <li><a href="IMAGES/house7.jpg">
                                 <img src="IMAGES/house7.jpg" alt style="border-style: ridge;height:80px;margin-top:15px;width:100px;"></a></li>
                             </ul>
                     </div>
        </div>
       </div>  
      <% } %>
    </body>
</html>
