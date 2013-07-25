<?php
	$host="localhost";
	$user="root";
	$password="";
	$db="ngldb";

	$conn=mysql_connect($host,$user,$password)
	or die("Couldn't connect to database");
	
	$c=mysql_select_db($db,$conn)
	or die("Couldn't select to database");
?>