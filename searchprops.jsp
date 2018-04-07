<%-- 
    Document   : searchprop
    Created on : Mar 23, 2015, 11:53:36 PM
    Author     : Axita
--%>

<%@page import="mypack.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
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
                   response.sendRedirect("searchprops.jsp");
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
               PreparedStatement psLocation=null;
              ResultSet rsLocation=null;
               try{
                 String sqlLocation="SELECT DISTINCT location FROM PROPERTYLIST ";
                 psLocation=conn.prepareStatement(sqlLocation);
                 rsLocation=psLocation.executeQuery();
                 }
               catch(Exception e)
                {
             e.printStackTrace();
             }
      

%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="back1.css">
      <link rel="stylesheet" type="text/css" href="list.css">
<title>Search List</title>
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
             function f1()
             {
                 document.getElementById("r11").focus();
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
              <nav style="margin-top:-14px;margin-left:400px">
                   <ul>
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
                                <li><a style="color: teal" href="alllisting.jsp">All listings</a></li></ul>
                                <li><a style="color: teal;text-decoration:none;" href="guide.jsp">  Guide </a></li>
                         <li> <a style="color: teal;text-decoration:none;word-spacing: normal;" href="contact.jsp">  Contact Us </a></li></ul>
                </nav>
            <div id="regform">
                <h3 align="center"> FEATURED LISTINGS</h3>
               <form name="frm" action="searchRes.jsp" method="post" onsubmit="return validate()">
                    <% %>
                   Location
                   <select name="dropdown2" style=" width:150px;position:absolute;height:25px;left:480px;border-style: inset;border-color:rgba(100,205,229,0.20);">
                    <option value="" >-- Select Location --</option>
                       <%
                        while (rsLocation.next())
                        {
                    %>
                       <option value="<%=rsLocation.getString("location") %>"><%=rsLocation.getString("location")%></option>
                     <%
                          }
                      %>
                   </select><br><br><br>
                    MIN. No. Of Bedrooms
                    <select name="dropdown3" style=" width:80px;position:absolute;height:25px;left:480px;border-style: inset;border-color:rgba(100,205,229,0.20);">
                   <option value="" >-- Select --</option>
                   <option value="1" >1</option>
                   <option value="2" >2</option>
                   <option value="3" >3</option>
                   <option value="4" >4</option>
                   <option value="5" >5</option>
                   <option value="6" >6</option>
                   <option value="7" >7</option>
                   </select> <br><br><br>
                    No.of Floors
                    <select name="dropdown4" style=" width:80px;position:absolute;height:25px;left:480px;border-style: inset;border-color:rgba(100,205,229,0.20);">
                    <option value="" >-- Select --</option>
                    <option value="1" >1</option>
                   <option value="2" >2</option>
                   <option value="3" >3</option>
                   <option value="4" >4</option>
                   <option value="5" >5</option>
                   </select> <br><br><br>
                    <input type="submit" value="Submit Details" style="border-color:cadetblue;border-radius:0.55em;background: cadetblue;width:150px;height:25px;" />
                    

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



 


<%
    try{
         /*if(psCity!=null){
             psCity.close();
         }
        
         }
         if(psProperty!=null){
             psProperty.close();
         }
         if(psBudget!=null){
             psBudget.close();
         }
         
         if(rsCity!=null){
             rsCity.close();
         }
         if(rsLocation!=null){
             rsLocation.close();
         }
         if(rsProperty!=null){
             rsProperty.close();
         }
         if(rsBudget!=null){
             rsBudget.close();
         }
         */
         if(psLocation!=null){
             psLocation.close();}
         if(conn!=null){
          conn.close();
         }
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }  }
%>
   
