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
                   response.sendRedirect("guide.jsp");
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
                         <li> <a style="color: teal;text-decoration:none;word-spacing: normal;" href="contact.jsp">  Contact Us </a></li></ul>
                </nav>
            <div id="regform" style="alignment-adjust:central;width:900px; margin-left:130px;height:94.5%;margin-top:-20px">
                <h3 style="margin-left:100px;text-decoration: underline">Guide for buyers</h3>
               <div style="margin-left:100px;font-size:12px;color:teal" >Purchasing a property is most likely the biggest financial decision you will ever make.<br> 
               Whether this is your first purchase or you are an experienced buyer, this decision must <br>
               be made carefully. As a buyer in the city of DehraDun area real estate market, you’ll <br>
               want to know the process for purchasing a home.<br>

               <h4>Why Do You Want To Buy? </h4>
               Are you tired of paying rent? Have you decided to pay your own mortgage and not your landlord’s?<br>
               Have you outgrown your current home? Are you looking for an investment portfolio? Are you looking <br>
               for a rental property? Would you like a larger yard? Would you rather live in a different area? <br>
               Do you want to shorten your commute? Having a clear sense of your reasons for buying will help you <br>
               choose the right property.<br>

               <h4>Has Your Income Grown? </h4>
              Property ownership is an excellent investment; whether you are looking for your dream home, a rental <br>
              property, or to expand your investment portfolio. Owning real estate is one of the least risky ways to<br>
              build equity or to obtain a greater return on your initial investment.
               </div>
               <h3 style="margin-left:100px;text-decoration: underline">Guide for Sellers</h3>
               <div style="margin-left:100px;color:teal;font-size:12px " >
                So you have decided to sell your property. Before anything else, it is a good idea to sit down and <br>
                clarify your motivations and draw up a basic time frame for the selling process.<br>
                <h4>Why Sell?</h4>
                Why do you want to sell your property? Do you intend to simply find a larger property, or do you plan<br>
                on moving to another neighborhood, school district, city or state? You might think your reasons are <br>
                obvious, but it would do well to consider the implications of each option for your lifestyle, opportunities,<br>
                and finances. Being clear about your intentions for selling will make it easier for us to determine the most<br>
                appropriate option for your specified financial, lifestyle, and real estate goals.
                <h4>When Should I Sell?</h4>
                You should immediately establish your time frame for selling. If you need to sell quickly, we can speed up <br>
                the process by giving you a complete market analysis and action plan to obtain all of your goals. If there is <br>
                no pressing need to sell immediately, you can sit down with one of our expert real estate agents to thoroughly<br>
                review the current market conditions and find the most favorable time to sell.<br>
                <h4>What Is The Market Like?</h4>
                When you work with us, you can be sure that you will have our knowledge, expertise and negotiating skills at <br>
                work for you to arrive at the best market prices and terms. We will keep you up-to-date on what is happening in<br>
                the marketplace and the price, financing, terms and conditions of competing properties. With us, you will know<br>
                exactly how to price and when to sell your property.

                <h4>How Do I Optimize My Finances?</h4>
                Deciding to sell your property demands a serious consideration of your current financial situation and future <br>
                possibilities. With the help of our qualified agents, you will be able to effectively assess the cumulative impact<br>
                of these changes, estimate potential proceeds of selling your property, and plan effective tax savings and estate <br>
                planning strategies. We will ensure that you not only take control of your finances, but use them to their fullest potential.
               </div>
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

    