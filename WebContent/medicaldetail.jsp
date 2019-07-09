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
<h2>Add New Medicine Detail</h2>
<%

String uid = request.getParameter("uid");

System.out.println ("userid is "+uid);
%>
<form action="medicine" name="dreg" method="post" onsubmit="return validation()"> 
	        <table cellpadding="5" cellspacing="5" border="0" width="350" >
				
				<tr>
					<td><strong>Medicine_1</strong></td>
					<td><strong>:</strong></td>
					<td><select name="m1" required>
					<option name="m1" value="">-- Select --</option>
					<option name="crocin" value="10">crocin</option>
					<option name="paracitamol" value="5">paracitamol</option>
					<option name="comliflam" value="6">comliflam</option>
					<option name="dapsone" value="2">dapsone</option>
					<option name="elanarpil" value="9">elanarpil</option>
					</select></td>
					<td><strong>No._Of_Medicine_1</strong></td>
					<td><strong>:</strong></td>
						<td><input type="text" name="nm1"
							style="width: 100px; height: 20px" required /></td>
				</tr>
				<tr>
					
					<td><strong>Medicine_2</strong></td>
					<td><strong>:</strong></td>
					<td><select name="m2" required>
					<option name="m2" value="">-- Select --</option>
					<option name="crocin" value="10">crocin</option>
					<option name="paracitamol" value="5">paracitamol</option>
					<option name="comliflam" value="6">comliflam</option>
					<option name="dapsone" value="2">dapsone</option>
					<option name="elanarpil" value="9">elanarpil</option>
					</select></td>
					<td><strong>No._Of_Medicine_2</strong></td>
					<td><strong>:</strong></td>
						<td><input type="text" name="nm2"
							style="width: 100px; height: 20px" required /></td>
				</tr>
				<tr>
					
					<td><strong>Medicine_3</strong></td>
					<td><strong>:</strong></td>
					<td><select name="m3" required>
					<option name="m3" value="">-- Select --</option>
					<option name="crocin" value="10">crocin</option>
					<option name="paracitamol" value="5">paracitamol</option>
					<option name="comliflam" value="6">comliflam</option>
					<option name="dapsone" value="2">dapsone</option>
					<option name="elanarpil" value="9">elanarpil</option>
					</select></td>
					<td><strong>No._Of_Medicine_3</strong></td>
					<td><strong>:</strong></td>
						<td><input type="text" name="nm3"
							style="width: 100px; height: 20px" required /></td>
				</tr>
				<tr>
					
					<td><strong>Medicine_Type</strong></td>
					<td><strong>:</strong></td>
					<td><select name="mtype" required>
					<option name="" value="">-- Select --</option>
					<option name="capsule" value="capsule">Capsule</option>
					<option name="powder" value="powder">Powder</option>
					<option name="syrup" value="syrup">Syrup</option>
					</select></td>
				</tr>
				<tr>
					
					<td><strong>Number_Of_Dosage_Of_Medicin_Per_Day</strong></td>
					<td><strong>:</strong></td>
					<td><input type="text" name="dperday"  required /></td>
				</tr>
				<tr>
					
					<td><strong>Amount_Of_Dose</strong></td>
					<td><strong>:</strong></td>
					<td><input type="text" name="damount"  required /></td>
				</tr>
				<tr>
					<td><strong>Number_Of_Days_Of_Dosage</strong></td>
					<td><strong>:</strong></td>
					<td><input type="text" name="ndays"  required /></td>
				</tr><tr>
					
					<td><strong>Medicine_Start_Date</strong></td>
					<td><strong>:</strong></td>
					<td><input type="date" name="startdate" required /></td>
				</tr>
				<tr>
					
					<td><strong>Medicine_End_Date</strong></td>
					<td><strong>:</strong></td>
					<td><input type="date" name="lstdate" required /></td>
				</tr>
				<tr>
					
					<td><strong>Morning_Time_Of_Dosage</strong></td>
					<td><strong>:</strong></td>
					<td><input type="time" name="time1"  required /></td>
				</tr>
				<tr>
					
					<td><strong>Afternoon_Time_Of_Dosage</strong></td>
					<td><strong>:</strong></td>
					<td><input type="time" name="time2"  required /></td>
				</tr>
				<tr>
					
					<td><strong>Night_Time_Of_Dosage</strong></td>
					<td><strong>:</strong></td>
					<td><input type="time" name="time3"  required /></td>
				</tr>
				
				<tr>
					
					<td><strong>Patient_E-mail-id</strong></td>
					<td><strong>:</strong></td>
					<td><input type="text" name="email"  required /></td>
					</tr>
					<tr>
					<td><strong>Patient id</strong></td>
					<td><strong>:</strong></td>
			       <td>   <input type="text" name="uid"  value="<%=uid %>"/></td>
				</tr>
				
				<tr>
					<td colspan="3" align="center"><div style="margin-right:20px">&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" value="Submit" name="submit" /></div>
					
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
