<%-- 
    Document   : searchRes
    Created on : Mar 24, 2015, 8:44:05 AM
    Author     : Axita
--%>

<%@page import="mypack.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
     String user=(String)session.getAttribute("user");
     DBProperties dbConn=new DBProperties();
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "123");
    
        ResultSet rsOptions = null;
        PreparedStatement psOptions=null;
        PreparedStatement psCurrency=null;
        ResultSet rsCurrency=null;
        String loc=request.getParameter("dropdown2");
        int nob=Integer.parseInt(request.getParameter("dropdown3"));
        int nof=Integer.parseInt(request.getParameter("dropdown4"));
        
        
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
            <nav style="margin-top:-14px;margin-left:400px">
                   <ul>
                        <% if(user.equals("admin"))
                             { %>
                             <li> <a style="color: teal ;text-decoration:none; " href="adminhome.jsp">Home</a></li>
                            <% }
                        else if(user.equals(""))
                             {%>
                             <li> <a style="color: teal ;text-decoration:none; " href="homepage.html">Home</a></li>
                             <%
                             } 
                                 else
                                 {
                                         %>
                             <li> <a style="color: teal ;text-decoration:none; " href="home.jsp">Home</a></li>
                                       
                             
                             <%
                             }
                            %>
                         
                         <li> <a style="color: teal ;text-decoration:none;" >Listings</a>
                            <ul>
                                <li><a style="color: teal" href="searchprops.jsp">Featured Listings</a></li>
                                <li><a style="color: teal" href="alllisting.jsp">All listings</a></li>
                                <li><a style="color: teal" href="Mylisting.jsp">My Listings</a></li></ul></li>
                         <li><a style="color: teal;text-decoration:none;" href="guide.jsp">  Guide </a></li>
                         <li> <a style="color: teal;text-decoration:none;word-spacing: normal;" href="contact.jsp">  Contact Us </a></li></ul>
                </nav>
            <div id="regform" style="width:900px; margin-left:100px">
        <%
          psOptions =conn.prepareStatement("SELECT * FROM PROPERTYLIST INNER JOIN realtor ON realtor.Username=PROPERTYLIST.user_ID WHERE location=? AND bedrooms>=? AND Floor>=?");
          psOptions.setString(1,loc);
          psOptions.setInt(2,nob);
          psOptions.setInt(3,nof);
          rsOptions=psOptions.executeQuery();
          if(rsOptions==null)
          {
            out.println("Sorry no listings as per your requirements");
          }
          else
          {
              %><form action="listall.jsp" method="post">
         <table width =100% border=" " cellspacing="0" >
             <th style="background-color: lavender"> </th><th style="background-color: lavender">&nbsp</th>
          <th style="background-color: lavender"> PropertyID </th><th style="background-color: lavender">&nbsp</th>
          <th style="background-color: lavender">Transaction type</th><th style="background-color: lavender">&nbsp</th>
         <th style="background-color: lavender">Specifications</th><th style="background-color: lavender">&nbsp</th>
           <th style="background-color: lavender">Address</th><th style="background-color: lavender">&nbsp</th>
           <th style="background-color: lavender">Price</th><th style="background-color: lavender">&nbsp</th>
           <th style="background-color: lavender">Status</th><th style="background-color: lavender">&nbsp</th>
           <th style="background-color: lavender">Contact</th>
        <%
          while (rsOptions.next())
          {
        %>
       <tr>
<td><input type="checkbox" id="hi" name="hidden" value="<%=rsOptions.getInt("property_ID")%>"></td><td></td>
<td><%=rsOptions.getString("property_ID")%></td><td>&nbsp</td>
<td><%=rsOptions.getString("transaction")%></td><td>&nbsp</td>
<td><%="Bedrooms:"+rsOptions.getString("bedrooms")%><br><%="Area:"+rsOptions.getString("Area")%><br><%="Floors:"+rsOptions.getString("Floor")%></td><td>&nbsp</td>
<td><%=rsOptions.getString("Address")%></td><td>&nbsp</td>
<td><%="Rs."+rsOptions.getString("Price")%></td><td>&nbsp</td>
<td><%=rsOptions.getString("Status")%></td><td>&nbsp</td>
<td><%=rsOptions.getString("user_ID")%><br><%="Mobile:"+rsOptions.getString("Phn_no")%><br><%="Email:"+rsOptions.getString("Email")%></td><td>&nbsp</td>
</tr>
<% }
        }
       %>
         </table><input type="submit" value="Show Property"></form>
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
