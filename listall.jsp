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
                   response.sendRedirect("alllisting.jsp");
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
             Blob image = null;
             byte[ ] imgData = null ;
        
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
            <div id="regform" style="width:900px; margin-left:100px">
                <form action="listall.jsp" method="post">
        <%
          int n=Integer.parseInt(request.getParameter("hidden"));
           PreparedStatement ps=conn.prepareStatement("SELECT * FROM PROPERTYLIST INNER JOIN realtor ON realtor.Username=PROPERTYLIST.user_ID WHERE property_ID=?");
            ps.setInt(1, n);
            rsOptions=ps.executeQuery();
           if(rsOptions==null)
          {
            out.println("Sorry no listings as per your requirements");
          }
          else
          {
              while (rsOptions.next())
              {
       %>
      
       <div align="right" style="float:right">
            <image src="IMAGES/B.jpg" alt="" style=" height: 180px;width:180px"/>&nbsp;
            <image src="IMAGES/E.jpg" alt="" style=" height: 180px;width:180px"/>&nbsp;
            <image src="IMAGES/C.png" alt="" style=" height: 180px;width:180px"/><br>
            <image src="IMAGES/K.jpg" alt="" style=" float:left;height: 180px;width:180px"/>&nbsp;
            <image src="IMAGES/L.jpg" alt="" style=" height: 180px;width:180px"/>&nbsp;</div>
            <div style="top:100px;left:80px;positio:absolute"> <h4>Property ID:</h4> <%=rsOptions.getInt(1)%><br>
       <h4> transaction type :</h4> <%=rsOptions.getString(2)%><br>
       <h4>   Specifications:</h4>
       bedrooms: <%=rsOptions.getInt(4)%><br>   
       bathrooms: <%=rsOptions.getInt(11)%><br> 
       Area: <%=rsOptions.getString(7)%><br>
       Floors: <%=rsOptions.getInt(8)%><br>
       <%=rsOptions.getString(12)%><br>
       <h4>    Price: </h4><%=rsOptions.getInt(9)%><br>
       <h4> Status: </h4>
           <%=rsOptions.getString("Status")%><br>
           <h4> Contact:</h4><%=rsOptions.getString("user_ID")%><br><%="Mobile:"+rsOptions.getString("Phn_no")%><br><%="Email:"+rsOptions.getString("Email")%>
            </div>
           
            <%
              }
          }
          
              
        %>
                
         
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

    