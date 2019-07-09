package unknown;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import unknown.ConnectionProvider;

//import servlet.htttp.seession;

/**
 * Servlet implementation class viewrequest
 */
@WebServlet("/viewrequest")
public class viewrequest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public viewrequest() {
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
		String status = request.getParameter("status");
		System.out.println(status);
		
		HttpSession session = request.getSession();
		
		try {
			Connection con = ConnectionProvider.getConn();
			PreparedStatement ps = con.prepareStatement("select * from prescription where status=? ");
			ps.setString(1, status);
		
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				session.setAttribute("userid", rs.getString("id"));
				session.setAttribute("status", status);
				//seession.setAttribute("cdate", cdate);
				
				response.sendRedirect("View.jsp");
				
			}
			else
			{
				response.sendRedirect("ViewRequest.jsp?invalid");
			}
		
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
