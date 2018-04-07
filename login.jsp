<%-- 
    Document   : login
    Created on : Nov 13, 2014, 12:10:16 PM
    Author     : Axita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="mypack.userinfo"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login</title>
        <script type="text/javascript">
            function f1()
            {
                document.getElementById("l11").value=null;
                document.getElementById("l11").style.color="black";
            }
            function f2()
            {
                 document.getElementById("l22").value=null;
                document.getElementById("l22").type="password";
                document.getElementById("l22").style.color="black";
            }
            function f3()
            {
                document.getElementById("l33").style.visibility="visible";
                document.getElementById("a1").style.visibility="visible";
            }
            function f4()
            {
                document.getElementById("l33").value=null;
            }
            
        </script>
        <style>
            .imageback
            {
                width:100%;
                height:683px;
                background:url(IMAGES/ddn.jpg);  
                opacity:0.6;
                background-size:cover;
                background-repeat:no-repeat;
            }
            #loginlabel
            {
                top: 150px;
                position: absolute;
                left:450px;
                background: url(IMAGES/ddn.jpg) no-repeat;
                background-size:50em 25em;
                opacity:0.9;
                height:330px;
                width:483px;
                position:absolute;
                font-family: georgia;
                font-size:15px;
                border-style:groove;
                border:none;
                padding-left:5px;
                font-weight: bold;
            }
        </style>
      </head>
      <body style="padding:0 0 0 0;margin: 0 0 0 0;width: 100%;height: 100% "> 
           <div class="imageback"></div>
           <div id="loginlabel"><br><br>
               <div align="center" style="font-size: 13px; color: darkred">${message}</div><br><br>
               <form  action="mainregister.jsp" method="post" >
                  <input type="text" id="l11" name="l1" size="35" style=" height:25px;margin-left:110px;border-style: inset;border-color: black; color:grey" value="username"  onfocus="f1()"/><br><br><br>
                  <input type="text" id="l22" name="l2" size="35" style="height: 25px;margin-left:110px;border-style:inset;border-color: black;color:grey" value='password' onfocus="f2()"/><br><br><br>
                  <input type="submit" name="s1" value="Sign in" style="opacity: 1;margin-left:110px;width:120px;font-family:georgia;font-weight: 800"/>
                  <input type="button" style="border:none;background:none;opacity:1;font-size:15px;margin-left:40px;color: antiquewhite;font-weight: bold" onclick="f3()" value="Forgot Password?"/><br><br>
                  <input type="text" value="Enter your email id" id="l33" name="l3" size="15" style="visibility: hidden;margin-left:150px;" onfocus="f4()"/>
                  <input type="submit" name="s1" id="a1" style="visibility: hidden;margin-left:40px;color:white;font-family:georgia;font-weight:400;background: none" value="Submit" onclick="f5()"/><br><br>
                  <a href="register.jsp" style="opacity:1;margin-left:130px;font-family:georgia;color: white;text-decoration:none">New User? Sign up</a><br><br>
                   <a href="homepage.html" style="background: appworkspace;position:absolute;text-decoration:none;border-color: aliceblue;border-style:outset;top:400px;margin-left:150px;color:black;font-family:georgia;font-weight:800">Go to Home Page </a>
              </form>
             </div> 
        </body>
</html>
                

    