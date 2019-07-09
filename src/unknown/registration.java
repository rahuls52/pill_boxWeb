package unknown;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import unknown.ConnectionProvider;

/**
 * Servlet implementation class registration
 */
@WebServlet("/registration")
public class registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registration() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    	
    	response.setContentType("text/html;charset=UTF-8");
    	PrintWriter out = response.getWriter();
    	HttpSession session = request.getSession();
    	try{
    		
    		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            Date date = new Date();            
            String Addeddate=dateFormat.format(date); 
    		
    		
    		String username = request.getParameter("username");
    		String password = request.getParameter("password");
    		String medical = request.getParameter("medical");
    		String mobile = request.getParameter("mobile");
    		String email = request.getParameter("email");
    		
    		
    		
    		 Connection con = ConnectionProvider.getConn(); 
            
             Statement st = con.createStatement();
             Statement stat = con.createStatement();
           
             ResultSet rs = st.executeQuery("select * from admin where email='"+email+"'");
            
          
             if(rs.next())
             {
                  
                 response.sendRedirect("registration.jsp?Exist=Exist");
             }else{
                 
            	 
                 int r = st.executeUpdate("insert into admin (username,password,medical,mobile,email,regDate) values('"+username+"','"+password+"','"+medical+"','"+mobile+"','"+email+"','"+Addeddate+"')");
                 if(r>0){
                     
                 	
                 	
                 	//System.out.println("-------UseID-------f"+UseID);
                    
                 }
                 response.sendRedirect("login.jsp");
            
             }
         } catch (Exception e) { e.getMessage();
         }finally{
    		out.close();
    		
    	}
	
		
	}

}
