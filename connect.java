/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package mypack;
import java.sql.*;

/**
 *
 * @author Axita
 */
public class connect {
    Connection con=null;
    Statement st=null;
    ResultSet rs=null;
    PreparedStatement ps=null;
    public connect()throws Exception
    {
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "123");
        st=con.createStatement();
    }
    public userinfo SearchBuyer(String str1)throws Exception
    {
        userinfo obj1=new userinfo();
        rs=st.executeQuery("SELECT * FROM buyer");
        while(rs.next())
        {
           if(str1.equals(rs.getString(1)))
           {
               obj1.setU_name(rs.getString(1));
               obj1.setF_name(rs.getString(2));
               obj1.setL_name(rs.getString(3));
               obj1.setE_mail(rs.getString(4));
               obj1.setPh(rs.getString(5));
               obj1.setPasswd(rs.getString(6));
               return obj1;
                
            } 
        }
           
           return null;
    }
    
    public userinfo SearchRealtor(String str)throws Exception
    {
       userinfo obj=new userinfo();
       rs=st.executeQuery("SELECT * FROM realtor");
       while(rs.next())
       {
           if(str.equals(rs.getString(1)))
           {
               obj.setU_name(rs.getString(1));
               obj.setF_name(rs.getString(2));
               obj.setL_name(rs.getString(3));
               obj.setE_mail(rs.getString(4));
               obj.setPh(rs.getString(5));
               obj.setPasswd(rs.getString(6));
               return obj;
                
            } 
       }
           
           return null;
    }
            
      
    public boolean RegisterRealtor(String ac,userinfo u)throws Exception
    {
        
        if(ac.equals("realtor"))
        {
            ps=con.prepareStatement("INSERT INTO realtor(Username,First_name,Last_name,Email,Phn_no,Password)VALUES(?,?,?,?,?,?)");
            ps.setString(1,u.getU_name());
            ps.setString(2,u.getF_name());
            ps.setString(3,u.getL_name());
            ps.setString(4,u.getE_mail());
            ps.setString(5,u.getPh());
            ps.setString(6,u.getPasswd());
             ps.executeUpdate();
           
            con.close();
            return true;
        }
        else
            return false;
        
    }
    
    public boolean RegisterBuyer(String ac,userinfo u)throws Exception
    {
        
        if(ac.equals("buyer"))
        {
            ps=con.prepareStatement("INSERT INTO buyer(Username,First_name,Last_name,Email,Phn_no,Password)VALUES(?,?,?,?,?,?)");
            ps.setString(1,u.getU_name());
            ps.setString(2,u.getF_name());
            ps.setString(3,u.getL_name());
            ps.setString(4,u.getE_mail());
            ps.setString(5,u.getPh());
            ps.setString(6,u.getPasswd());
             ps.executeUpdate();
           
            con.close();
            return true;
        }
        else
            return false;
        
    }
    public boolean Deleteuser(String us)throws Exception
    {
        userinfo obj1=new userinfo();
        obj1=SearchBuyer(us);
        userinfo obj2=new userinfo();
        obj2=SearchRealtor(us);
        if(obj1!=null&&obj1.getU_name().compareTo("admin")!=0)
        {
            ps=con.prepareStatement("DELETE FROM buyer WHERE Username=?");
            ps.setString(1,us);
            ps.executeUpdate();
            con.close();
            return true;
        }
        else if(obj2!=null&&obj2.getU_name().compareTo("admin")!=0)
        {
            ps=con.prepareStatement("DELETE FROM realtor WHERE Username=?");
            ps.setString(1,us);
            ps.executeUpdate();
            con.close();
            return true;
        }
        else 
        {
            con.close();
            return false;
        }
            
    }
     public boolean addlist(DBProperties db)throws Exception
    {
        
            ps=con.prepareStatement("INSERT INTO PROPERTYLIST(transaction,user_ID,bedrooms,location,Address,Area,Floor,Price,Status,Bathroom,Furnished_Status)VALUES(?,?,?,?,?,?,?,?,?,?,?)");
            ps.setString(1,db.getTransaction_type());
            ps.setString(2,db.getUserId());
            ps.setInt(3,db.getBedroom());
            ps.setString(4,db.getLocation());
            ps.setString(5,db.getAddress());
            ps.setString(6,db.getArea()+"sq.ft");
            ps.setInt(7,db.getNfloor());
            ps.setInt(8,db.getPrice());
            ps.setString(9,db.getStatus());
            ps.setInt(10,db.getBathroom());
            ps.setString(11,db.getFurnished());
             ps.executeUpdate();
             con.close();
            return true;
        
        
    }
     public DBProperties Searchlist(int str1)throws Exception
    {
        DBProperties obj1=new DBProperties();
        rs=st.executeQuery("SELECT * FROM PROPERTYLIST");
        while(rs.next())
        {
           if(str1==rs.getInt(1))
           {
               obj1.setProperty_id(rs.getInt(1));
               obj1.setTransaction_type(rs.getString(2));
               obj1.setUserId(rs.getString(3));
               obj1.setBedroom(rs.getInt(4));
               obj1.setLocation(rs.getString(5));
               obj1.setAddress(rs.getString(6));
               obj1.setArea(rs.getString(7));
               obj1.setNfloor(rs.getInt(8));
               obj1.setPrice(rs.getInt(9));
               obj1.setBathroom(11);
               return obj1;
            } 
        }
        return null;
    }
    public boolean Deletelist(int us)throws Exception
    {
        DBProperties obj1=new DBProperties();
        obj1=Searchlist(us);
        if(obj1!=null)
        {
            ps=con.prepareStatement("DELETE FROM PROPERTYLIST WHERE property_ID=?");
            ps.setInt(1,us);
            ps.executeUpdate();
            con.close();
            return true;
         }
              else 
        {
            con.close();
            return false;
        }
            
    }
}
    
    
