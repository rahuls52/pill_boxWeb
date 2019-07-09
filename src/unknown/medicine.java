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

import unknown.Mailer;

/**
 * Servlet implementation class medicine
 */
@WebServlet("/medicine")
public class medicine extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public medicine() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
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
            String uid = request.getParameter("uid");
    		String m1 = request.getParameter("m1");
    		String nm1 = request.getParameter("nm1");
    		String m2 = request.getParameter("m2");
    		String nm2 = request.getParameter("nm2");
    		String m3 = request.getParameter("m3");
    		String nm3 = request.getParameter("nm3");
    		String mtype = request.getParameter("mtype");
    		String dperday = request.getParameter("dperday");
    		String damount = request.getParameter("damount");
    		String ndays = request.getParameter("ndays");
    		String startdate = request.getParameter("startdate");
    		String lstdate = request.getParameter("lstdate");
    		String time1 = request.getParameter("time1");
    		String time2 = request.getParameter("time2");
    		String time3 = request.getParameter("time3");  
    		String email = request.getParameter("email");
    		
    		
    			
    		int cost = Integer.parseInt(m1)*Integer.parseInt(nm1);
    		int cost1 = Integer.parseInt(m2)*Integer.parseInt(nm2);
    		int cost2 = Integer.parseInt(m3)*Integer.parseInt(nm3);	
    		int cost3 = cost+cost1+cost2;
    		 
    		 Connection con = ConnectionProvider.getConn(); 
            
             Statement st = con.createStatement();
             Statement stat = con.createStatement();
          

             System.out.print("user is"+uid);
             
 
             
            	Mailer m=new Mailer();
          	  	
          	  	m.EmailSending(email, "cost3","cost3 :"+cost3);
            	 int s = st.executeUpdate("UPDATE prescription SET cost='"+cost3+"', status='paid' where uid='"+uid+"' ");
                 int r = st.executeUpdate("insert into medicine (uid,pid,m1,nm1,m2,nm2,m3,nm3,mtype,dperday,damount,ndays,startdate,lstdate,time1,time2,time3,dmedcount,purchasemedcount,ndose,email,regDate) values('"+damount+"','"+ndays+"','"+m1+"','"+nm1+"','"+m2+"','"+nm2+"','"+m3+"','"+nm3+"','"+mtype+"','"+dperday+"','"+damount+"','"+ndays+"','"+startdate+"','"+lstdate+"','"+time1+"','"+time2+"','"+time3+"','"+dperday+"','"+ndays+"','"+damount+"','"+email+"','"+Addeddate+"')");
                 if(r>0 && s>0){
                     

                	 response.sendRedirect("Addsuccessfully.jsp?Exist=Exist"); 
                 }else
                 {
                 response.sendRedirect("medicaldetail.jsp?Exist=Exist");
            
                 }
         } catch (Exception e) { e.printStackTrace();
         }finally{
    		out.close();
    		
    	}
	
		
	}

}
