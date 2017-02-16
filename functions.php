<?php
	require 'dbconfig.php';
	global $connection;
	function checkuser($fbid,$fbfullname,$femail){
    	$check = mysql_query("select * from Users where Fuid='$fuid'");
		$check = mysql_num_rows($check);
		if (empty($check)) { // if new user . Insert a new record		
		$query = "INSERT INTO Users (fb_id,fb_name,email) VALUES ('$fbid','$fbfullname','$femail')";
		mysql_query($query);	
		} else {   // If Returned user . update the user record		
		$query = "UPDATE Users SET fb_name='$fbfullname', email='$femail' where fu_id='$fuid'";
		mysql_query($query);
		}
	}

// 	if ($_SESSION['FBID']){
// 	$_SESSION['LOGIN_SCOPE'] = "FB";
// }elseif(){
// 	$_SESSION['LOGIN_SCOPE'] = "GOOGLE";
// }

?>