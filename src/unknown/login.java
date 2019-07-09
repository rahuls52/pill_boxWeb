package unknown;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//import com.mongo.DbConnection;

import unknown.CopyToServer;

import unknown.ConnectionProvider;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		HttpSession session = request.getSession();
		
		
		
		try {
			Connection con = ConnectionProvider.getConn();
			PreparedStatement ps = con.prepareStatement("select * from admin where email=? and password=?");
			ps.setString(1, email);
			ps.setString(2, password);
			
			
			CopyToServer cs=new CopyToServer();
			PreparedStatement ps1 = con.prepareStatement("select * from prescription");
			ResultSet rs1 = ps1.executeQuery();
			while(rs1.next())
			{
				cs.CopyToFolde2(rs1.getString("imagename"));
			}
			
			
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				String id = rs.getString("id");
				session.setAttribute("id", id);
				session.setAttribute("email", email);
				
				response.sendRedirect("Userhome.jsp");
			}
			else
			{
				response.sendRedirect("login.jsp?invalid");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}

		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	