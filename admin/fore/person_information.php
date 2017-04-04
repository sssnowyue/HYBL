<?php
require_once("../../conn/conn.php");

session_start();

$person_id = $_SESSION['person_id'];
$sql       = "SELECT `name`,`telphone`,`QQ`,`email` FROM persons WHERE person_id='$person_id'";
$result    = mysqli_query($conn, $sql);
$rows      = mysqli_fetch_assoc($result);
$username  = $rows['name'];
$telphone  = $rows['telphone'];
$QQ        = $rows['QQ'];
$email     = $rows['email'];
?>