/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package unknown;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author accede
 */
public class ConnectionProvider {
    private static Connection con=null;
    private static Connection con1=null;
     
    public static Connection getConn(){
        try{
            
        if(con==null){
         Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pill_reminder","root",""); 
        return con;
        }else{
           return con;  
        }
       
    }   catch(Exception e){
        e.printStackTrace();
    }
        return con;
    } 
    
       
}
