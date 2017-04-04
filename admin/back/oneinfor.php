<?php
require("../../conn/conn.php");

session_start();

$person_id   = $_GET['person_id'];
$sql         = "SELECT name,telphone,QQ,email,accout_type FROM persons WHERE person_id='$person_id'";
$result      = mysqli_query($conn, $sql);
$rows        = mysqli_fetch_assoc($result);
$username    = $rows['name'];
$telphone    = $rows['telphone'];
$QQ          = $rows['QQ'];
$email       = $rows['email'];
$accout_type = $rows['accout_type'];
?>
