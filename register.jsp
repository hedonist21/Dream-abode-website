<%-- 
    Document   : register
    Created on : Nov 20, 2014, 11:23:58 PM
    Author     : Axita
--%>

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
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js" type="text/javascript"></script> 
        <script src="jquery.js" type="text/javascript"></script>  
 <script type="text/javascript">  
       
           
        </script>  
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
    <body onload="f1()">
        
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
            <nav style="margin-top:-14px;margin-left:400px">
                   <ul>
                         <li> <a style="color: teal ;text-decoration:none; " href="homepage.html">Home</a></li>
                         <li> <a style="color: teal ;text-decoration:none;" >Listings</a>
                            <ul>
                                <li><a style="color: teal" href="searchprops.jsp">Featured Listings</a></li>
                                <li><a style="color: teal" href="alllisting.jsp">All listings</a></li></ul>
                               <li><a style="color: teal;text-decoration:none;" href="guide.jsp">  Guide </a></li>
                         <li> <a style="color: teal;text-decoration:none;word-spacing: normal;" href="contact.jsp">  Contact Us </a></li></ul>
                </nav>
            <div id="regform">
                <h5> All fields marked * are compulsory</h5>
                <form action="registercontroller.jsp" method="post">
                   
                    *First Name
                    <input type="text" id="r11" name="r1" size="35" style=" position:absolute;height:25px;left:480px;border-style: inset;border-color:rgba(100,205,229,0.20);"/><br><br><br>
                    *Last Name
                    <input type="text" id="r22" name="r2" size="35" style=" position:absolute; height:25px;left:480px;border-style: inset;border-color:rgba(100,205,229,0.20);"/><br><br><br>
                    *Username
                    <input class="username" type="text" id="username" name="username" size="35" style=" position:absolute; height:25px;left:480px;border-style: inset;border-color:rgba(100,205,229,0.20);" />
                    <br><span id="sp1" style="font-family: verdana;font-size: 12px;"></span><br><br><br>
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
                    <h6 style="font-style:italic;font-weight:100">Click on Create My Account if u agree with our terms and policies</h6>
                    <input type="button" value="Submit Details" style="border-color:cadetblue;border-radius:0.55em;background: cadetblue;width:150px;height:25px;" onclick="f4()"/>
                    <input type="submit" id="r8" value="Create My Account" style="border-color:cadetblue;border-radius:0.55em;background: cadetblue;width:150px;height:25px;">

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
    </body>
</html>



 
