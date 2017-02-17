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


	function get_mode_url($id,$,$mid){
	
		$query = "
		SELECT
		cu_mode_url.url 
		FROM
		users u left outer join cu_user_modes cum
		on u.id = cum.uid
		inner join cu_mode_url cmu
		on cum.mid = cmu.mid
		WHERE id = $id AND mid = $mid
		";
		$query_result = mysqli_query($query);
		return $query_result;
	}
?>