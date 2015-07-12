<!DOCTYPE html> 
<html>

<head>
  <title>Free HTML5 Templates</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
  <link rel="stylesheet" type="text/css" href="css/style.css" />
  <!-- modernizr enables HTML5 elements and feature detects -->
  <script type="text/javascript" src="js/modernizr-1.5.min.js"></script>
</head>

<body>
  <div id="main">
    <header>
	  <div id="banner">
	    <div id="welcome">
	      <h3>Your Stories</h3>
	    </div><!--close welcome-->
	    <div id="welcome_slogan">
	      <h3>Real Life Incidents</h3>
	    </div><!--close welcome_slogan-->			
	  </div><!--close banner-->
    </header>

	<nav>
	  <div id="menubar">
        <ul id="nav">
          <li><a href="index.html">Home</a></li>
          <li class="current"><a href="Story.html">Stories</a></li>
          <li><a href="upload2.html">Share ur Story</a></li>
          <li><a href="projects.html">Events</a></li>
          <li><a href="login.html">Login</a></li>
		  <li><a href="Signup.html">Sign up</a></li>
        </ul>
      </div><!--close menubar-->	
	</nav>	



<?php 
error_reporting(0);
$username = "root";
$password = "";
$hostname = "localhost"; 

$dbhandle = mysql_connect($hostname, $username, $password) 
 or die("Unable to connect to MySQL");



$selected= mysql_select_db("cfg",$dbhandle ) 
  or die("Could not select cfg");
$id=1;
$query="SELECT *FROM  temp";
$result = mysql_query($query);

?>



<?php 
$counter=0;

while ($row = mysql_fetch_array($result)){

//$counter++;
?>
<table cellspacing="20px">
<tr><td rowspan="2">
<div>
<img src="upload/images/<?php echo $row['imgname'];?>" width="200px" height=auto >
</div><div float="left"></td>
<td>
<h3 float="left"><?php echo $row['storyname'] ?> </h3></td>
</tr>

<tr><td float="left">
<br>
<?php echo $row['storydes'] ?></div><br>
</td></tr>
<hr><br>
<?php 
}
?>

</table>

