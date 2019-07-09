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
        <h1><a href="index.html">Pill_Reminder</a> <small></small></h1>
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
		<center>
										<form action="viewrequest" method="post" id="myform" name="myform" onsubmit="return validate()">
											<table>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><strong>Select_Status</strong></td>
					<td><strong>:</strong></td>
					<td><!-- <input type="text" name="sex" id="sex"  required/> -->
					<select name="status" id="status"  required>
					<option value="">---Select---</option>
					<option value="paid">Completed</option>
					<option value="requested">requested</option>
					</select>
					</td>
				</tr>											</table>
									</center>
									<tr>
										<td>&nbsp;</td>
									</tr>
									<center>
										<table>
											<tr>
												<td>&nbsp;</td>
											</tr>
											<tr>
												<input type="submit" class="button" value="Submit" name="Submit" />
											</tr>

										</table>
									</center>
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
