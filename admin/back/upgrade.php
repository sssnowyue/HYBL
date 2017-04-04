<?php
require_once("../../conn/conn.php");

session_start();

$person_id = $_GET['person_id'];
$sql       = "UPDATE persons SET accout_type=1 WHERE person_id = '$person_id' ";
$result    = mysqli_query($conn,$sql);
echo "<script>history.back();</script>";
?>