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
             
             function f4()
             {
               if(document.getElementById("r11").value==""||document.getElementById("r22").value==""||document.getElementById("r33").value==""||
                       document.getElementById("r44").value==""||document.getElementById("r55").value==""||document.getElementById("r66").value==""||
                       document.getElementById("r77").value==""||document.getElementById("r88").value==""||document.getElementById("r99").value==""||document.getElementById("r110").value=="")
               {
                   alert("Please Fill In The Necessary details");
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
                         <% 
                             String userName=(String)session.getAttribute("user");
                             if(userName.equals("admin"))
                             { %>
                             <li> <a style="color: teal ;text-decoration:none; " href="adminhome.jsp">Home</a></li>
                            <% }
                            else
                             {%>
                             <li> <a style="color: teal ;text-decoration:none; " href="home.jsp">Home</a></li>
                             <%
                             }
                            %>
                         <li> <a style="color: teal ;text-decoration:none;" >Listings</a>
                            <ul>
                                <li><a style="color: teal" href="searchprops.jsp">Featured Listings</a></li>
                                <li><a style="color: teal" href="alllisting.jsp">All listings</a></li></ul>
                               <li><a style="color: teal;text-decoration:none;" href="guide.jsp">  Guide </a></li>
                         <li> <a style="color: teal;text-decoration:none;word-spacing: normal;" href="contact.jsp">  Contact Us </a></li></ul>
                </nav>
            <div id="regform" style="height:680px">
                <h5> All fields marked * are compulsory</h5>
                <form action="listcontroller.jsp" method="post">
                   
                    *Transaction type
                     <select id="r11" name="type" style=" position: absolute;height:25px;left:480px;border-style: inset;border-color:rgba(100,205,229,0.20);">
                        <option  value=""><--Select--></option>
                         <option  value="sell">sell</option>
                      </select><br><br><br>
                    *User_id
                    <% 
                         if(userName.equals("admin"))
                         {%>
                    <input type="text" id="r22" name="r2" size="35" style=" position:absolute; height:25px;left:480px;border-style: inset;border-color:rgba(100,205,229,0.20);"/><br><br><br>
                    <%
                       }
                       else
                         {%>
                      <input type="text" id="r22" name="r2" size="35" style=" position:absolute; height:25px;left:480px;border-style: inset;border-color:rgba(100,205,229,0.20);" value="<%=userName%>" readonly/><br><br><br>
              <%}%>*No. Of Bedrooms
                     <select id="r33" name="bed" style=" position: absolute;height:25px;left:480px;border-style: inset;border-color:rgba(100,205,229,0.20);">
                        <option  value=""><--Select--></option>
                         <option  value="1">1</option>
                            <option value="2">2</option>
                            <option  value="3">3</option>
                            <option  value="4">4</option>
                            <option  value="5">5</option>
                            <option  value="6">6</option>
                            <option  value="7">7</option>
                            <option  value="8">8</option>
                            <option  value="9">9</option>
                            <option  value="10">10</option>
                    </select><br><br><br>
                    *Location
                    <input type="text" id="r44" name="r4" size="35" style=" position: absolute;height:25px;left:480px;border-style: inset;border-color:rgba(100,205,229,0.20);"/><br><br><br>
                    *Address
                    <input type="text" id="r55" name="r5" size="35" style=" position: absolute;height:25px;left:480px;border-style: inset;border-color:rgba(100,205,229,0.20);" onblur="f5()"/><br><br><br>
                    *Area
                    <input type="text" id="r66" name="r6" value=" " style="left:480px;position: absolute;border-style: inset;border-color:rgba(100,205,229,0.20);"/>sq. ft<br><br><br>
                    *No. of Floors
                    <select id="r77" name="floor" style=" position: absolute;height:25px;left:480px;border-style: inset;border-color:rgba(100,205,229,0.20);">
                        <option  value=""><--Select--></option><option  value="1">1</option>
                            <option value="2">2</option>
                            <option  value="3">3</option>
                            <option  value="4">4</option>
                            <option  value="5">5</option>
                    </select><br><br><br>
                    *Price
                     <input type="text" id="r88" name="r8" size="35" style=" position: absolute;height:25px;left:480px;border-style: inset;border-color:rgba(100,205,229,0.20);"/><br><br><br>
                    *Status
                    <select id="r99" name="r9" style=" position: absolute;height:25px;left:480px;border-style: inset;border-color:rgba(100,205,229,0.20);">
                        <option  value=""><--Select--></option><option  value="available">Available</option>
                            <option value="sold">Sold</option>
                    </select><br><br><br>
                    *Bathrooms
                    <select id="r110" name="bath" style=" position: absolute;height:25px;left:480px;border-style: inset;border-color:rgba(100,205,229,0.20);">
                        <option  value=""><--Select--></option><option  value="1">1</option>
                            <option value="2">2</option>
                            <option  value="3">3</option>
                            <option  value="4">4</option>
                            <option  value="5">5</option>
                            <option  value="6">6</option>
                            <option  value="7">7</option>
                            <option  value="8">8</option>
                            <option  value="9">9</option>
                            <option  value="10">10</option>
                    </select><br><br><br>
                    <input type="radio" id="r10" name="fur" value="Furnished" style="margin-left: 0px;border-style: inset;border-color:rgba(100,205,229,0.20);"/>Furnished
                    <input type="radio" id="r10" name="fur" value="Unfurnished" style="margin-left: 60px;border-style: inset;border-color:rgba(100,205,229,0.20);"/>Unfurnished
                    <br><br>
                    <input type="submit" id="r111" value="Add property" style="border-color:cadetblue;border-radius:0.55em;background: cadetblue;width:150px;height:25px;" onclick="f4()"/>

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



 
