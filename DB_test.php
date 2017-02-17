<?php
	require 'dbconfig.php';
	
		$id = trim($_GET['id']);
		$mid = trim($_GET['mid']);	

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

	$test =	get_mode_url($connection, $id,$mid);
	$row = mysqli_fetch_assoc($test);
	echo $row["URL"];
?>