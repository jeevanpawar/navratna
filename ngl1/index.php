<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Login</title>
<link rel="stylesheet" type="text/css" href="./css/login.css" />
</head>

<body>
<?php 
	$conn=mysql_connect("localhost","root","");
	$sel=mysql_select_db("ngl_login");
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
			echo "\nQuery executed";
			while($row=mysql_fetch_array($query))
			{
				$u1=$row['Username'];
				$p1=$row['Password'];
			}
			
	    	echo "User:$uname";
			
			if($uname==$u1) 
			{
				if($pass==$p1)
				{
			  		header('location:certificate.php');
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
<form name="Login" method="post" action="index.php">
<div class="container" align="center">
<div class="login">
<img src="./images/logo.png" />
 <h3><font color="#CC0000" size="+2">N</font>AVRATNA <font color="#CC0000" size="+2">G</font>EMOLOGICAL <font color="#CC0000" size="+2">L</font>ABORATORY &#0153;</h3>
<h2>Login</h2>
Username:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="txtuname" placeholder="Username" class="txt" /><br/>
Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="txtpass" placeholder="Password" class="txt" /><br />
<input class="sub" type="submit" name="submit" value="Login" /><br />
</div>
</div> 
</form>
</body>
</html>