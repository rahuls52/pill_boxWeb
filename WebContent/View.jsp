<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="unknown.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<head>
<title>Pill_Reminder</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
</head>
<%
if(request.getParameter("user")!=null){
	
	out.println("<script>alert('Incorrect Login Details');</script>");
}
%>

<body>
	<!-- START PAGE SOURCE -->
	<div class="main">
		<div class="header">
			<div class="header_resize">
				<div class="logo">
					<h1>
						<a href="index.html">Pill_Reminder</a> <small></small>
					</h1>
				</div>
				<div class="clr"></div>
				<div class="menu_nav">
					<ul>
						<li class="active"><a href="index.jsp">Home</a></li>

						<!--           <li><a href="admin.jsp">Admin</a></li> -->

					</ul>
				</div>
				<div class="clr"></div>
			</div>
		</div>
		

		<div class="content">
			<div align="center">
				<form action="View.jsp" method="" id="myform" name="myform"
					onsubmit="return validate()">


					<center>

						<h2>
							<span>Company Information</span>
						</h2>

						<br />
						<table border="2">
							<tr align="center">
																
								
								<th>Prescription</th>
								<th>Status</th>
								

							</tr>

							<%
													
												    String status = session.getAttribute("status").toString();
											        Connection con = ConnectionProvider.getConn();
													PreparedStatement ps = con.prepareStatement("select * from prescription where status=? ");
													ps.setString(1, status);
													ResultSet rs = ps.executeQuery();
													while (rs.next()) {
														String uid = rs.getString("uid");
														session.setAttribute("uid", uid);
												%>
							<tr align="center">
								
								<td><img height="150px" width="200px"  src="prescriptions\<%=rs.getString("imagename")%>"> </td>

								<td><a href="p1.jsp?id=<%=rs.getString("status") %>&uid=<%=uid%>"
													style="color: blue;"><%=rs.getString("status") %></a></td>
								
								

<%-- 								<td><a href="adminhomenew?id=<%=rs.getString("cdate") %>" --%>
<!-- 									style="color: blue;">link</a></td> -->
								<%
														}
													%>
							</tr>
						</table>
						</form>
						</center>
						<td>&nbsp;</td>
						<form action="ViewRequest.jsp" method="post" id="myform" name="myform"  onsubmit="return validate()">
						<center>
						<tr>
							<input type="submit" class="button" value="Done" name="Submit" />
						</tr>
					</center>
				</form>
			</div>
		</div>

		<div class="footer">
			<div class="footer_resize">
				<p class="rf">Pill_Reminder...</p>
				<div class="clr"></div>
			</div>
		</div>
	</div>
	<!-- END PAGE SOURCE -->
</body>
</html>
