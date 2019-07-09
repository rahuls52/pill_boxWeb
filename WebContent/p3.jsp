<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
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
<h3>Prescription Detail</h3>
 <div class="content_resize"> <img src="prescription/s3.jpg" width="280" height="180" alt="" class="hbg_img" />
 <form action="medicaldetail.jsp">
 <table>
<tr>
            
					<td colspan="3" align="center"><div style="margin-right:20px" >&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" value="Add_Medicine" name="submit" /></div>
					
					</td>
					
				</tr>
			
				</table>
				</form>
				<td>&nbsp;</td>
				<form action="addcost.jsp" >
                        <table>
				<tr>
					<td colspan="3" align="center"><div style="margin-right:20px">&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" value="Add_Cost" name="submit" /></div>
					
					</td>
					
				</tr>
				</table>
				</form>
			</div>
			
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
