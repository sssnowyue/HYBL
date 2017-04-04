<?php
/*博文收藏*/
require_once("../../conn/conn.php");
session_start();
$col_blog_id = $_GET["blog_id"];//获取url传递的blog_id

$person_id = $_SESSION['person_id'];
$iscoled = $_SESSION['iscoled'];
if($iscoled == "收藏"){
	$sql = "SELECT * FROM collect WHERE (collector_id='$person_id')AND(col_blog_id='$col_blog_id')";
	$result = mysqli_query($conn,$sql);
	if($result->num_rows > 0){
		$sql = "UPDATE collect SET data_state=1 WHERE (collector_id='$person_id')AND(col_blog_id='$col_blog_id')";
		mysqli_query($conn,$sql);
		echo "<script>history.back();</script>";
	}else{
		$sql = "INSERT INTO collect (`collector_id`,`col_blog_id`) VALUES ('$person_id','$col_blog_id')";
		mysqli_query($conn,$sql);
		echo "<script>history.back();</script>";
	}
}else{
	$sql = "UPDATE collect SET data_state=0 WHERE (collector_id='$person_id')AND(col_blog_id='$col_blog_id')";
	mysqli_query($conn, $sql);
	echo "<script>history.back();</script>";
}		
?>