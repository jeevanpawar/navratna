<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Gems Identification Form</title>
<?php
	include("config.php");	
	if(isset($_REQUEST['submit'])) 
	{
		$jweller=$_REQUEST['jeweller'];
		if($jweller=='other')
			$cname=$_REQUEST['cname'];
		else
			$cname=$jweller;
		$carat=$_REQUEST['carat'];
		$gcolor=$_REQUEST['gcolor'];
		$cut=$_REQUEST['cut'];
		$clarity=$_REQUEST['clarity'];		
		$rindex=$_REQUEST['ri'];
		$sg=$_REQUEST['sg'];		
		$hardness=$_REQUEST['hardness'];	
		$transperancy=$_REQUEST['transperancy'];
		$mining=$_REQUEST['mining'];
		$luster=$_REQUEST['luster'];
		$op=$_REQUEST['op'];
		$inclusion=$_REQUEST['inclusion'];
		$comments=$_REQUEST['comments'];
		
	 	$photo_jeweller=$_FILES['browse'];
	 	$photo_gem=$_FILES['gembrowse'];
		
	 	$uploadDir = 'images/'; //Image Upload Folder
	 	$uploadGem='gemsimages/'; 	
		
		$fileName = $_FILES['browse']['name'];
		$appendval=time();
		$fileName=$appendval.$fileName;
		
		echo "<br><br> The logo file name is $fileName <br><br>";
		
		$tmpName  = $_FILES['browse']['tmp_name'];
		$fileSize = $_FILES['browse']['size'];
		$fileType = $_FILES['browse']['type'];
		$filePath = $uploadDir . $fileName;
		$result = move_uploaded_file($tmpName, $filePath);
		if (!$result)
		{
			echo "Error uploading file";
			exit;
		}
		if(!get_magic_quotes_gpc())
		{
    		$fileName = addslashes($fileName);
			$filePath = addslashes($filePath);
		}
		/*Gems images*/
		$gemfileName = $_FILES['gembrowse']['name'];
		$appendval=time();
		$gemfileName=$appendval.$gemfileName;
		echo "<br><br> The gems file name is $gemfileName <br><br>";
		
		$gemtmpName  = $_FILES['gembrowse']['tmp_name'];
		$gemfileSize = $_FILES['gembrowse']['size'];
		$gemfileType = $_FILES['gembrowse']['type'];
		$gemfilePath = $uploadGem . $gemfileName;
		$gemresult = move_uploaded_file($gemtmpName, $gemfilePath);
		if (!$gemresult) 
		{
			echo "Error uploading file";
			exit;
		}
		if(!get_magic_quotes_gpc())
		{
    		$gemfileName = addslashes($gemfileName);
			$gemfilePath = addslashes($gemfilePath);
		}
	
		/******************************************/
		echo "$gemfilePath<br>$filePath";
 

		$query="insert into gemsireport
(cust_name,carat,color,cut,clarity,rindex,sgravity,hardness,transperancy,mining,luster,optproprties,inclusion,comments,logoimg,gemimg)	values('$cname','$carat','$gcolor','$cut','$clarity','$rindex','$sg','$hardness','$transperancy','$mining','$luster','$op','$inclusion','$comments','$filePath','$gemfilePath')";
	 	mysql_query($query) or die("Record was not inserted");
	 	$reportno=mysql_insert_id();
			echo "$reportno";
		header("location:certificate.php?r_no=$reportno");	
}	 

?>
<link rel="stylesheet" type="text/css" href="./css/ngl.css"></link>
<script src="ngl.js" type="text/javascript"></script>
<script language="Javascript" type="text/javascript">
 
        function onlyAlphabets(e, t) {
            try {
                if (window.event) {
                    var charCode = window.event.keyCode;
                }
                else if (e) {
                    var charCode = e.which;
                }
                else { return true; }
                if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123))
                    return true;
                else
                    return false;
            }
            catch (err) {
                alert(err.Description);
            }
        }
 
    </script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>NGL</title>
</head>
<body>
<div class="container">
<div id="header">
<div id="mycompdiv">
<div class="logo">
  <img src="./images/logo.png" />
  </div>
   <div class="heading1">
  	<h3><font color="#CC0000" size="+2">N</font>AVRATNA <font color="#CC0000" size="+2">G</font>EMOLOGICAL <font color="#CC0000" size="+2">L</font>ABORATORY &#0153;</h3>
	<p>CERTIFICATION OF GEMSTONES & DIAMONDS GRADING LABOROTARY</p>
	<p style="color:#ffffff;"><font style="background-color:#990033">AN ISO 9001-2008 CERTIFIED LAB</font></p>
	<h6>A LAB TRADE MARK UNDER GOVERNMENT OF INDIA(REGISTRY DEPARTMENT)</h6>
	<P><font style="background-color:#990033; color:#FFFFFF">1st GEMOLOGICAL LAB IN NORTH MAHARASTRA</font></P>
  </div>
 </div>
</div>
<div id="content">
<form method="post" action="" onSubmit="return validateForm();" enctype="multipart/form-data">
<table id="itable">
	<tr><td>Select Jeweller:</td>
    <td><select name="jeweller" id="jeweller"><option value="0">Select</option>
    <?php
    	$query="select * from jeweller";
		$exe=mysql_query($query);
		while($res=mysql_fetch_array($exe))
		{
			echo "<option value='$res[1]'>$res[1]</option>";
		}
	?>    
    </select>
    </td>
    <td id="logoimg">Select Logo:</td> 
    <td><input type="File" name="browse" value="Browse" id="fileUpload" class="filebuttons"/></td></tr>
    <tr><td>Customer Name:</td>
    <td><input type="text" name="cname" class="q_in"  id="cname"  onkeypress="return onlyAlphabets(event,this);"/></td>
    
	<td id="gemimg">Upload Gem's Image:</td>
    <td><input type="file" name="gembrowse" value="Upload" id="gemFileUpload" class="filebuttons"/></td></tr>
    <tr><td>CARAT:</td>
    <td><select name="carat" id="carat">
    <option value="0">Select</option>
    <?php
    $query="select * from carat";
	$exe=mysql_query($query);
	while($res=mysql_fetch_array($exe))
	{
		echo "<option value='$res[1]'>$res[1]</option>";
	}
	?>
    <option value="----">Other</option> 
    </select>
	</td>
    </tr>
    <tr>
	<td>
    COLOR:
	</td>
    <td>
    <select name="gcolor" id="gcolor">
    <option value="0">Select</option>
    <?php
    $query="select * from color";
	$exe=mysql_query($query);
	while($res=mysql_fetch_array($exe))
	{
		echo "<option value='$res[1]'>$res[1]</option>";
	}
	?>  
    <option value="----">Other</option>   
    </select>
	</td>
    </tr>
    <tr><td>CUT:</td><td>
    <select name="cut" id="cut">
    <option value="0">Select</option>
    <option value="oval">Oval</option>
    <option value="blue">Blue</option>
    <option value="----">Other</option>    
    </select></td></tr>
    <tr><td>CLARITY(Grade):</td><td>
    <select name="clarity" id="clarity">
    <option value="0">Select</option>
    <option value="AA+(GOOD)">AA+(GOOD)</option>
    <option value="BB+(GOOD)">BB+(GOOD)</option>
    <option value="----">Other</option>    
    </select></td></tr>
    <tr><td>Refractive Index (R.I):</td><td>
    <select name="ri" id="ri">
    <option value="0">Select</option>
    <?php
    $query="select * from refractive_index";
	$exe=mysql_query($query);
	while($res=mysql_fetch_array($exe))
	{
		echo "<option value='$res[1]'>$res[1]</option>";
	}
	?>  
    <option value="----">Other</option>    
    </select>
	</td>
    </tr>
    <tr><td>Specific gravity(S.G):</td><td>
    <select name="sg" id="sg"><option value="0">Select</option>
    <?php
   		$query="select * from specific_gravity";
		$exe=mysql_query($query);
		while($res=mysql_fetch_array($exe))
		{
			echo "<option value='$res[1]'>$res[1]</option>";
		}
	?>  
    <option value="----">Other</option>    
    </select></td></tr>
    
    <tr><td>Hardness (H):</td><td>
    <select name="hardness" id="hardness">
    <option value="0">Select</option>
    <?php
    $query="select * from hardness";
	$exe=mysql_query($query);
	while($res=mysql_fetch_array($exe))
	{
		echo "<option value='$res[1]'>$res[1]</option>";
	}
	?>  
    <option value="----">Other</option>    
    </select></td></tr>
    
    <tr><td>TRANSPARANCY:</td><td>
    <select name="transperancy" id="transperancy">
    <option value="0">Select</option>
    <?php
    $query="select * from transparency";
	$exe=mysql_query($query);
	while($res=mysql_fetch_array($exe))
	{
		echo "<option value='$res[1]'>$res[1]</option>";
	}
	?>  
    <option value="----">Other</option>    
    </select></td></tr>
    
    <tr><td>MINING:</td><td>
    <select name="mining" id="mining">
    <option value="0">Select</option>
    <?php
    $query="select * from mining";
	$exe=mysql_query($query);
	while($res=mysql_fetch_array($exe))
	{
		echo "<option value='$res[1]'>$res[1]</option>";
	}
	?>  
    <option value="----">Other</option>    
    </select></td></tr>
    
    <tr><td>LUSTER:</td><td>
    <select name="luster" id="luster">
    <option value="0">Select</option>
    <?php
    $query="select * from luster";
	$exe=mysql_query($query);
	while($res=mysql_fetch_array($exe))
	{
		echo "<option value='$res[1]'>$res[1]</option>";
	}
	?>  
    <option value="other">Other</option>    
    </select></td></tr>
    
    <tr><td>OPTICAL PROPERTIES:</td><td>
    <select name="op" id="op">
    <option value="0">Select</option>
    <?php
    $query="select * from opticalproperties";
	$exe=mysql_query($query);
	while($res=mysql_fetch_array($exe))
	{
		echo "<option value='$res[1]'>$res[1]</option>";
	}
	?>  
    <option value="other">Other</option>
    </select></td></tr>
    
    <tr><td>INCLUSION:</td><td>
    <select name="inclusion" id="inclusion">
    <option value="0">Select</option>
    <?php
    $query="select * from inclusion";
	$exe=mysql_query($query);
	while($res=mysql_fetch_array($exe))
	{
		echo "<option value='$res[1]'>$res[1]</option>";
	}
	?>  
    <option value="other">Other</option>
    </select></td></tr>
    
    <tr><td>COMMENTS:</td><td><textarea class="q_add" id="comments" name="comments"></textarea></td></tr>
    
    <tr><td></td><td><button name="submit" id="submitbtn" class="sub">Save</button></select></td></tr>
</table>	
</form>
</div> <!-- content -->
<div id="sub-footer">
<div class="heading">
  	<h3><font color="#CC0000" size="+2">N</font>AVRATNA <font color="#CC0000" size="+2">G</font>EMOLOGICAL <font color="#CC0000" size="+2">L</font>ABORATORY &#0153;</h3>
    <p>1<sup>st</sup> Floor,Alankar Market,Opp.Okachit talim,Jijamata road,Saraf Bazaar,Nasik-422001</p>
    <p>MOB-09923051515,09823654220,9545901515 RES-0253-2506515</p>
    <p>E-mail:-<a href="#">bhavehgems@gmail.com,bsvispute@gmail.com</a></p>
    <p>POST YOUR COMMENTS ON <a href="#">WWW.FACEBOOK.COM/BHAVESH.VISPUTE</a></p>
    <p><font color="#003399" size="+1">www.gemslab.in</font></p>
    </div>
</div>
</div><!--end of Container-->
</body>

</html>