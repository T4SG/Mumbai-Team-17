<?php

define('DB_NAME', 'cfg');
define('DB_USER', 'root');
define('DB_PASSWORD', '');
define('DB_HOST','localhost');

$link = mysql_connect(DB_HOST, DB_USER, DB_PASSWORD);

if(!link) {
	die('could not connect: ' .mysql_error());
}

$db_selected = mysql_select_db(DB_NAME, $link);

if(!db_selected) {
	die('cant use' .DB_NAME . ':' . mysql_error());
}

$value = $_POST['username'];
$value2 = $_POST['password'];
//$sql = "INSERT INTO members (username, password) VALUES ('$value', '$value2')";
$value3 = $_POST['fname'];
$value4 = $_POST['lname'];
$value5 = $_POST['email'];
$value6 = $_POST['gender'];
$sql = "INSERT INTO members (username,password,fname,lname,gender,email) VALUES ('$value','$value2','$value3','$value4','$value6','$value5')";

if (!mysql_query($sql)) {
	die('Error: ' .mysql_error());
	}
//echo 'Thank you for signing up :)';
mysql_close();

header('Location: http://localhost/freehtml5ph/login.html');
?>