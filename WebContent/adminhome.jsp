<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Blood Cancer Prediction</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
</head>
<body>

 <%
		if (request.getParameter("upload") != null) {
			out.print("<script>alert('File Upload Successfully')</script>");
		}
	%>

<!-- START PAGE SOURCE -->
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html">Blood Cancer</a> <small>Prediction</small></h1>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="index.jsp">Home</a></li>
         <li><a href="index.jsp">logout</a></li> 
         
        </ul>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize"> <img src="images/hbg_img.jpg" width="948" height="295" alt="" class="hbg_img" />
      
       </div>
    </div>
  </div>
  <h3 class="text-center"><marquee> UPLOAD FILE</marquee></h3>
   <div align="center">
							
							<font style="color: black; font-size: 20px">Upload
				File</font> <br /> <br /> <br />
			<form action="UploadServlet" method="post" enctype="multipart/form-data">
				<table border="0" cellpadding="5" cellspacing="5">
					<tr>


						<td align="center">Select File:-</td>
						<td><input type="file" name="file"
							style="width: 170px; height: 30px" required /></td>
						<td></td>
						<td></td>

					<td></td>
						<td><input type="submit" value="Upload"
							style="width: 130px; height: 35px" /></td>

					</tr>
					
					</tr>
					
  </table>
  </form>
  
       <div class="footer">
    <div class="footer_resize">
      <p class="rf">Blood Cancer prediction...</p>
      <div class="clr"></div>
    </div>
  </div>
</div>

<!-- END PAGE SOURCE -->
</body>
</html>
