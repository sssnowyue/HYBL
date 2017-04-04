<?php
require_once("../../conn/conn.php");

session_start();

$person_id   = $_GET['person_id'];
$sql         = "SELECT accout_type FROM persons WHERE person_id = '$person_id' ";
$result      = mysqli_query($conn, $sql); 
$rows        = mysqli_fetch_assoc($result);
$accout_type = $rows['accout_type'];
if ($accout_type==0) {
	
	$sql     = "UPDATE persons SET data_state=0 WHERE person_id = '$person_id' ";
	mysqli_query($conn,$sql);
	echo "<script>history.back();</script>";

}else{
	echo "<script> alert('不能删除管理员！');location='../../home/back/all_persons.php';</script>";
}
?>