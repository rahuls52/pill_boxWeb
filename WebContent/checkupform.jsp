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
if(request.getParameter("done")!=null)
{
	out.println("<script>alert('Added Successfully')</script>");
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
          <li class="active"><a href="doctorhome.jsp">Home</a></li>
          <li><a href="logoutServlet">Logout</a></li>
         
        </ul>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
<div align="center">
<h2>Enter Patient Info</h2>
<form action="Prediction" method="post" > 
	        <table cellpadding="5" cellspacing="5" border="0" width="350" >
				
				<tr>
					
					<td><strong>Age (in years)</strong></td>
					<td><strong>:</strong></td>
					<td><input type="text" name="age" id="age" required/></td>
					<td><strong>Gender</strong></td>
					<td><strong>:</strong></td>
					<td><!-- <input type="text" name="sex" id="sex"  required/> -->
					<select name="sex" id="sex"  required>
					<option value="">---Select---</option>
					<option value="1">Male</option>
					<option value="0">Female</option>
					</select>
					</td>
				</tr>
				
				<tr>
					
					<td><strong>abnormal bleeding</strong></td>
					<td><strong>:</strong></td>
					<td><select name="bleed" required>
					<option value="">---Select---</option>
				<option value="1">Yes</option>
				<option value="0">No</option>
					</select></td>
					
					<td><strong>prolonged cough</strong></td>
					<td><strong>:</strong></td>
					<td><select name="cough" required>
					<option value="">---Select---</option>
				<option value="1">Yes</option>
				<option value="0">No</option>
					</select></td>
				</tr>
				
				
				<tr>
					
					
					
					<td><strong>unexplained weight loss</strong></td>
					<td><strong>:</strong></td>
					<td><!-- <input type="text" name="fbs" placeholder="0 OR 1" required/> -->
					<select name="weight" required>
					<option value="">---Select---</option>
				<option value="1">Yes</option>
				<option value="0">No</option>
					</select>
						
					</td>
				</tr>
				
				
				<tr>
					<td><strong>change in bowel movements</strong></td>
					<td><strong>:</strong></td>
					<td><!-- <input type="text" name="restecg" placeholder="0 OR 1 OR 2" required/> -->
					<select name="bowel"  required>
					<option value="">---Select---</option>
					<option value="1" >Yes</option>
					<option value="0">No</option>
</select>
					</td>
					
					<td><strong>excessive alcohol</strong></td>
					<td><strong>:</strong></td>
					<td><select name="alcohol"  required>
					<option value="">---Select---</option>
					<option value="1" >Yes</option>
					<option value="0">No</option>
</select></td>
				</tr>
				
				
				
				<tr>
					<td><strong>certain infections</strong></td>
					<td><strong>:</strong></td>
					<td><!-- <input type="text" name="slope" placeholder="1 OR 2 OR 3" required/> -->
				<select  name="infections" required>
				<option value="">---Select---</option>
				<option value="1" selected>Yes</option>
				<option value="0">No</option>

</select>	
					</td>
					
				</tr>
				
				
				<!-- <tr>
				<td><strong>Search By</strong></td>
				<td><input type="radio" name="algo" value="naive"/>Naive_Bayes</td>
				
				</tr> -->
				<!-- <tr>
				<td></td>
				<td><input type="radio" name="algo" value="decision"/>Decision_Tree</td>
				</tr> -->
				<tr style="display: none;">
				<td></td>
				<td><input type="radio" name="algo" value="knn" checked="checked"/>Knn</td>
				</tr>
				<tr>
					<td colspan="3" align="center"><div style="margin-right:20px">&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" value="Ckeck" name="check" /></div>
					
					</td>
				</tr>
			</table>
			</form>
</div>
      
    </div>
  </div>
  
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
