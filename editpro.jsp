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
                    ResultSet rsOptions1 = null;
                    PreparedStatement ps=null;
                    PreparedStatement ps1=null;
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
             function f1()
             {
                 var n=document.getElementById("t55").value.length;
                 if(n!=10)
                {
                    alert("Phone no. is not correct");
                    document.getElementById("t55").focus();
                }
             }
     </script>
    </head>
    <body>
        <div class="mainbody ">
           
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
                        <% if(userName.equals("admin"))
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
            <div id="regform" style="height:300px;width:700px; margin-left:200px">
                     <%
                        String uname=null,fname=null,lname=null,ph=null,email=null;
                         connect c=new connect();
                         userinfo ub=new userinfo();
                          ub=c.SearchBuyer(userName);
                          userinfo ui=new userinfo();
                          ui=new connect().SearchRealtor(userName);
                          if(ui!=null)
                          {          
                            if(userName.equals(ui.getU_name()))
                           {
                           uname=ui.getU_name();
                           fname=ui.getF_name();
                           lname=ui.getL_name();
                           email=ui.getE_mail();
                           ph=ui.getPh();
                           }%>
                           <div align="left">
             <form action="editprofile.jsp" style="margin-top:50px;margin-left:180px;font-weight:800;color:teal;alignment-adjust: baseline" method="post">
           First Name 
           <input type="text" id="t22" name="fn" value="<%=fname%>" size="35" style=" position:absolute;height:25px;left:580px;border-style: inset;border-color:rgba(100,205,229,0.20);"><br><br><br>
           Last Name 
           <input type="text" id="t33" name="ln" value="<%=lname%>" size="35" style=" position:absolute;height:25px;left:580px;border-style: inset;border-color:rgba(100,205,229,0.20);"><br><br><br>
           Email Id     
           <input type="text" id="t44" name="em" value="<%=email%>" size="35" style=" position:absolute;height:25px;left:580px;border-style: inset;border-color:rgba(100,205,229,0.20);"><br><br><br>
           Phone no. 
           <input type="text" id="t55" name="ph" value="<%=ph%>" size="35" style=" position:absolute;height:25px;left:580px;border-style: inset;border-color:rgba(100,205,229,0.20);"><br><br><br>
               <input type="submit" value="Save Changes" style="margin-left:80px;background:none">
       </form></div>
                        <%  
                      }
                      else if(ub!=null)
                     {          
                        if(userName.equals(ub.getU_name()))
                        {
                           uname=ub.getU_name();
                           fname=ub.getF_name();
                           lname=ub.getL_name();
                           email=ub.getE_mail();
                           ph= ub.getPh();
                        }
                        %>
                        <div align="left">
       <form action="editprofile.jsp" style="margin-top:50px;margin-left:180px;font-weight:800;color:teal;alignment-adjust: baseline" method="post">
           First Name 
           <input type="text" id="t22" name="fn" value="<%=fname%>" size="35" style=" position:absolute;height:25px;left:580px;border-style: inset;border-color:rgba(100,205,229,0.20);"><br><br><br>
           Last Name 
           <input type="text" id="t33" name="ln" value="<%=lname%>" size="35" style=" position:absolute;height:25px;left:580px;border-style: inset;border-color:rgba(100,205,229,0.20);"><br><br><br>
           Email Id     
           <input type="text" id="t44" name="em" value="<%=email%>" size="35" style=" position:absolute;height:25px;left:580px;border-style: inset;border-color:rgba(100,205,229,0.20);"><br><br><br>
           Phone no. 
           <input type="text" id="t55" name="ph" value="<%=ph%>" size="35" style=" position:absolute;height:25px;left:580px;border-style: inset;border-color:rgba(100,205,229,0.20);" onblur="f1()"><br><br><br>
               <input type="submit" value="Save Changes" style="margin-left:80px;background:none">
       </form></div>
       <% }
                     
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
       </div> <%}%> 
    </body>
</html>


 