<?php
	$username = $_POST['username'];
	$password = $_POST['password'];
	
	
	
	
		$con = mysql_connect("localhost","root","");
		mysql_select_db("cfg");
		$get = mysql_query("SELECT count(id) FROM members WHERE username='$username' and password='$password'");
		
		if($get!=0) {
			echo "invalid login";
			} else {
			header('Location: http://localhost/freehtml5ph/index.html');
			
			}
		
	
	


?>