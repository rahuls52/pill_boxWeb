<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Pill_Reminder</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
 
 <script>
 function ValidateMobNumber() {
	  var fld = document.getElementById("txtMobId");

	  if (fld.value == "") {
	  alert("You didn't enter a phone number.");
	  fld.value = "";
	  fld.focus();
	  return false;
	 }
	  else if (isNaN(fld.value)) {
	  alert("The phone number contains illegal characters.");
	  fld.value = "";
	  fld.focus();
	  return false;
	 }
	 else if (!(fld.value.length == 10)) {
	  alert("The phone number is the wrong length. \nPlease enter 10 digit mobile no.");
	  fld.value = "";
	  fld.focus();
	  return false;
	 }

	}
 
 function validmail()
 {
 	var mail=document.dreg.email.value;
 	  if(mail==0){
           alert("Enter mailid");
           document.dreg.email.focus();
           return false;
       }
       if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(mail))  
       {  
       }else{
       	alert("Enter Valid Main id");
       	 document.dreg.email.focus();
          return false;
   	}
       
 }
 
function AllowAlphabet(){
   
    if (!dreg.fname.value.match(/^[a-zA-Z]+$/) && dreg.fname.value !="")	
	{
    	dreg.fname.value="";
    	dreg.fname.focus();
		alert("Please Enter only alphabets in text");
	}
   
    if (!dreg.lname.value.match(/^[a-zA-Z]+$/) && dreg.lname.value !="")	
	{
    	dreg.lname.value="";
    	dreg.lname.focus();
		alert("Please Enter only alphabets in text");
	}
	  
         
	
	
}

function pass() {
	var pass=document.dreg.password.value; 
	 if(pass.length < 6) {
         alert("Error: Password must contain at least six characters!");
         document.dreg.password.focus();
         return false;
       }
       if(pass == name) {
         alert("Error: Password must be different from Username!");
         document.dreg.password.focus();
         return false;
       }
       re = /[0-9]/;
       if(!re.test(pass)) {
         alert("Error: password must contain at least one number (0-9)!");
         document.dreg.password.focus();
         return false;
       }
       re = /[a-z]/;
       if(!re.test(pass)) {
         alert("Error: password must contain at least one lowercase letter (a-z)!");
         document.dreg.password.focus();
         return false;
       }
       re = /[A-Z]/;
       if(!re.test(pass)) {
         alert("Error: password must contain at least one uppercase letter (A-Z)!");
         document.dreg.password.focus();
         return false;
       }
}
</script>
</head>
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
          <li><a href="login.jsp">User</a></li>
<!--           <li><a href="admin.jsp">Admin</a></li> -->
         
        </ul>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
<div align="center">
<h2>User registration</h2>
<form action="registration" name="dreg" method="post" onsubmit="return validation()"> 
	        <table cellpadding="5" cellspacing="5" border="0" width="350" >
				
				<tr>
					
					<td><strong>User_Name</strong></td>
					<td><strong>:</strong></td>
					<td><input type="text" name="username" onkeyup="AllowAlphabet()" required /></td>
				</tr>
				<tr>
					
					<td><strong>Password</strong></td>
					<td><strong>:</strong></td>
					<td><input type="password" name="password"  required/></td>
				</tr>
				<tr>
					
					<td><strong>Medical Name</strong></td>
					<td><strong>:</strong></td>
					<td><input type="text" name="medical"  required/></td>
				</tr>
				<tr>
					
					<td><strong>Contact No.</strong></td>
					<td><strong>:</strong></td>
					<td><input type="" name="mobile"  required/></td>
				</tr>
				<tr>
					
					<td><strong>Email</strong></td>
					<td><strong>:</strong></td>
					<td><input type="email" name="email"  required/></td>
				</tr>
				
				<tr>
					<td colspan="3" align="center"><div style="margin-right:20px">&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" value="Register" name="submit" /></div>
					
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
