<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Login</title>
<link rel="stylesheet" type="text/css" href="./css/login.css" />
<style type="text/css">

.reference {
	
	position:fixed;
	width:100%;
	font-size:12px;
	left:-1px;
	right:-1px;
	text-align:center;
	height:15px;
	opacity:0.5;
	color:#FFF;
	background-color:#000;
	letter-spacing:1px;
	padding-left:5px;
	bottom:0px;
}
</style>
</head>

<body>
<?php 
	include("config.php");
	/*$conn=mysql_connect("localhost","root","");
	$sel=mysql_select_db("ngldb");*/
	if(isset($_POST['submit']))
	{
		$uname=$_POST['txtuname'];
		$pass=$_POST['txtpass'];
		if($uname=="" and $pass=="")
		{
		  ?>
			<script type="text/javascript">
				alert("Please enter the username and password... ");
			</script>
		  <?php
		}
		else
		{
			$sql="select Username,Password from login";
			$query=mysql_query($sql,$conn) or die(mysql_error());
			
			while($row=mysql_fetch_array($query))
			{
				$u1=$row['Username'];
				$p1=$row['Password'];
			}
			
	    	
			if($uname==$u1) 
			{
				if($pass==$p1)
				{
			  		header('location:ngl.php');
				}
				else
				{
					?>
			    	<script type="text/javascript">
                	alert("Password is wrong..");
                	history.back();
                	</script>
                	<?php
				}
			}
			else
			{
				?>
			    <script type="text/javascript">
                alert("Both username and password are wrong");
              /* history.back(); */
                </script>
    			<?php
			}
		}
	}	
	
?>
<form name="Login" method="post" action="">
<div class="container" align="center">
<div class="login">
<img src="./images/logo.png" />
 <h3><font color="#CC0000" size="+2">N</font>AVRATNA <font color="#CC0000" size="+2">G</font>EMOLOGICAL <font color="#CC0000" size="+2">L</font>ABORATORY &#0153;</h3>
<div class="log">
Username:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="txtuname" placeholder="Username" class="txt" /><br/>
Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="txtpass" placeholder="Password" class="txt" /><br />
<input class="sub" type="submit" name="submit" value="Login" /><br />
</div>
</div>
<div class="reference">Copyright @ 2013 NAVRATNA GEMOLOGICAL LABORATORY ™ &nbsp;Powered By: Wave TechLine India Pvt. Ltd.</div>

</div> 
</form>
</body>
</html>