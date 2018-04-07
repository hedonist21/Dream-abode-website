/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package mypack;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Axita
 */
public class CheckAvailability extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          response.setContentType("text/html;charset=UTF-8");  
        PrintWriter out = response.getWriter();  
        processRequest(request, response);
         try {  
  
            String connectionURL = "jdbc:mysql://localhost:3306/project"; // students is my database name  
            Connection connection = null;  
            Class.forName("com.mysql.jdbc.Driver").newInstance();  
            connection = DriverManager.getConnection(connectionURL, "root", "123");  
            String uname = request.getParameter("username");  
            PreparedStatement ps = connection.prepareStatement("SELECT Username FROM realtor WHERE Username=?");  
            ps.setString(1,uname);  
            ResultSet rs = ps.executeQuery();  
            if (!rs.next()) 
            {  
                PreparedStatement ps1 = connection.prepareStatement("SELECT Username FROM realtor WHERE Username=?");  
                ps1.setString(1,uname);  
                ResultSet rs1 = ps1.executeQuery();  
                if (rs1.next()) 
                {  
                out.print("<font color=green><b>");
                out.print(uname);
                out.print("</b> is avaliable</font>"); 
                }
                else
                {  
                  out.println("<font color=red><b>"+uname+"</b> is already in use</font>");  
                }  
            }  
            else{  
            out.println("<font color=red><b>"+uname+"</b> is already in use</font>");  
            }  
            out.println();  
  
        } catch (Exception ex) {  
            out.println("Error ->" + ex.getMessage());  
        } finally {  
            out.close();  
        }  
    }
     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request,response);
    }

}
