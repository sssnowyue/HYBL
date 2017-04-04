<?php
//后台显示所有管理员
require_once("../../conn/conn.php");

$sql = "SELECT `person_id`,`name` FROM persons WHERE accout_type=1";
$result = mysqli_query($conn, $sql);
$data   = mysqli_fetch_all($result, MYSQLI_ASSOC);
?>