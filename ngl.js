		

 function validateForm()
 {
	if(document.getElementById("jeweller").value == "0")
   {
      alert("Please select value"); // prompt user 
	  document.getElementById("jeweller").focus(); //set focus back to control     
      return false;
   }
   else if(document.getElementById('jeweller').value=='other' && document.getElementById('cname').value=='')
		{
		alert("Please enter customer name if jweller is other");
		return false;
		}

   else if(document.getElementById("carat").value == "0")
   {
      alert("Please select value"); // prompt user 
	  document.getElementById("carat").focus(); //set focus back to control     
      return false;
   }
   else if(document.getElementById("gcolor").value == "0")
   {
      alert("Please select value"); // prompt user 
	  document.getElementById("gcolor").focus(); //set focus back to control     
      return false;
   }
   else if(document.getElementById("cut").value == "0")
   {
      alert("Please select value"); // prompt user 
	  document.getElementById("cut").focus(); //set focus back to control     
      return false;
   }
   else if(document.getElementById("clarity").value == "0")
   {
      alert("Please select value"); // prompt user 
	  document.getElementById("clarity").focus(); //set focus back to control     
      return false;
   }
   else if(document.getElementById("ri").value == "0")
   {
      alert("Please select value"); // prompt user 
	  document.getElementById("ri").focus(); //set focus back to control     
      return false;
   }
   else if(document.getElementById("sg").value == "0")
   {
      alert("Please select value"); // prompt user 
	  document.getElementById("sg").focus(); //set focus back to control     
      return false;
   }
   else if(document.getElementById("hardness").value == "0")
   {
      alert("Please select value"); // prompt user 
	  document.getElementById("hardness").focus(); //set focus back to control     
      return false;
   }
   else if(document.getElementById("transperancy").value == "0")
   {
      alert("Please select value"); // prompt user 
	  document.getElementById("transperancy").focus(); //set focus back to control     
      return false;
   }
   else if(document.getElementById("mining").value == "0")
   {
      alert("Please select value"); // prompt user 
	  document.getElementById("mining").focus(); //set focus back to control     
      return false;
   }
    else if(document.getElementById("luster").value == "0")
   {
      alert("Please select value"); // prompt user 
	  document.getElementById("luster").focus(); //set focus back to control     
      return false;
   }
    else if(document.getElementById("op").value == "0")
   {
      alert("Please select value"); // prompt user 
	  document.getElementById("op").focus(); //set focus back to control     
      return false;
   }
    else if(document.getElementById("inclusion").value == "0")
   {
      alert("Please select value"); // prompt user 
	  document.getElementById("inclusion").focus(); //set focus back to control     
      return false;
   }
   else if(document.getElementById("fileUpload").value == "")
   {
	   alert("Please browse to a file for uploading....");
	   document.getElementById("fileUpload").focus();
	   return false;
   }
   else if(document.getElementById("gemFileUpload").value == "")
   {
	   alert("Please browse to a file for uploading....");
	   document.getElementById("gemFileUpload").focus();
	   return false;
   }
   else if(document.getElementById("cname").value!="NULL")
   {
	   var cname_txt= document.getElementById("cname").value;
	   var letters = /^[A-Za-z]+$/;  
      if(!cname_txt.value.match(letters)) 
      {  
      alert('Please enters letters..');  
      return false;  
      }  

   }
   
   
   return true;
 }