<%-- 
    Document   : showuser
    Created on : Apr 21, 2015, 10:18:50 PM
    Author     : Axita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="mypack.*"%>
<%@page import="java.sql.*"%>
<% 
    response.setHeader("Cache-Control","no-cache"); 
                response.setHeader("Cache-Control","no-store"); 
                response.setDateHeader("Expires", 0); 
                response.setHeader("Pragma","no-cache"); 
                String userName = (String) session.getAttribute("user");
                if ( userName==null) 
                {
                  request.setAttribute("Error", "Session has ended.Please login.");
                  RequestDispatcher rd = request.getRequestDispatcher("adminlogin.jsp");
                  rd.forward(request, response);
                }
                else
                {
                    userinfo usinfo=new userinfo();
                    Class.forName("com.mysql.jdbc.Driver");
                   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "123");
                    ResultSet rsOptions = null;
                   Statement st=null;
                   String user=(String)session.getAttribute("user");
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
                   <ul style="width:95%;margin-top:-14px;">
                        <% if(user.equals("admin"))
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
                                <li><a style="color: teal" href="alllisting.jsp">All Listings</a></li></ul></li>
                         <li><a style="color: teal;text-decoration:none;" href="guide.jsp">  Guide </a></li>
                         <li> <a style="color: teal;text-decoration:none;word-spacing: normal;" href="contact.jsp">  Contact Us </a></li></ul>
                </nav>
            <div id="regform" style="width:900px; margin-left:100px">
                     <%
                        String show=request.getParameter("bt1");
                        if(show.equals("Buyers"))
                        {
                          st=conn.createStatement();
                          rsOptions=st.executeQuery("SELECT * FROM buyer");
                          if(rsOptions==null)
                          {
                             out.println("Sorry no users in this category");
                          }
                          else
                          {
       %>
         <table width =100% border=" " cellspacing="0" >
                      <th style="background-color: lavender"> User_ID </th><th style="background-color: lavender">&nbsp</th>
          <th style="background-color: lavender">Name</th><th style="background-color: lavender">&nbsp</th>
         <th style="background-color: lavender">Email</th><th style="background-color: lavender">&nbsp</th>
           <th style="background-color: lavender">Phn no</th><th style="background-color: lavender">&nbsp</th>
          <%
          while (rsOptions.next())
          {
        %>
       <tr>
  <td><%=rsOptions.getString("Username")%></td><td>&nbsp</td>
<td><%=rsOptions.getString("First_name")+" "+rsOptions.getString("Last_name")%></td><td>&nbsp</td>
<td><%=rsOptions.getString("Email")%></td><td>&nbsp</td>
<td><%=rsOptions.getString("Phn_no")%></td><td>&nbsp</td>
</tr>
<% }
        }
                        }%></table>
                        <%
                         if(show.equals("Vendors"))
                        {
                          st=conn.createStatement();
                          rsOptions=st.executeQuery("SELECT * FROM realtor");
                          if(rsOptions==null)
                          {
                             out.println("Sorry no users in this category");
                          }
                          else
                          {
                              %>
         <table width =100% border=" " cellspacing="0" >
                      <th style="background-color: lavender"> User_ID </th><th style="background-color: lavender">&nbsp</th>
          <th style="background-color: lavender">Name</th><th style="background-color: lavender">&nbsp</th>
         <th style="background-color: lavender">Email</th><th style="background-color: lavender">&nbsp</th>
           <th style="background-color: lavender">Phn no</th><th style="background-color: lavender">&nbsp</th>
          <%
          while (rsOptions.next())
          {
        %>
       <tr>
  <td><%=rsOptions.getString("Username")%></td><td>&nbsp</td>
<td><%=rsOptions.getString("First_name")+" "+rsOptions.getString("Last_name")%></td><td>&nbsp</td>
<td><%=rsOptions.getString("Email")%></td><td>&nbsp</td>
<td><%=rsOptions.getString("Phn_no")%></td><td>&nbsp</td>
</tr>
<% }
        }
                        }
       %>
       
         </table>
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
       </div> <%}%> 
    </body>
</html>


