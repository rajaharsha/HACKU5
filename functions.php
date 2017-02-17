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

	function get_mode_url($connection, $id,$mid)

	{
		$query = "
		SELECT
		cmu.url as URL
		FROM
		users u inner join cu_user_modes cum
		on u.id = cum.uid
		inner join cu_mode_url cmu
		on cum.mid = cmu.mid
		WHERE u.id = $id AND cum.mid = $mid
		";

		$query_result = mysqli_query($connection,$query);
		return $query_result;
	}   

?>