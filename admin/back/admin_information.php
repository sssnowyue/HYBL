<?php
require_once("../../conn/conn.php");

$person_id = $_GET['person_id'];//获取url传递的person_id
$sql = "SELECT `name`,`telphone`,`QQ`,`email` FROM persons WHERE person_id='$person_id'";
$result = mysqli_query($conn, $sql);
$rows = mysqli_fetch_assoc($result);
?>