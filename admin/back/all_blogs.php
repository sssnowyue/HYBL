<?php
require_once("../../conn/conn.php");

//将所有博文全部取出按blog_id降序排列
$sql = "SELECT `blog_id`,`author_id`,`title`,`update_at`,`data_state` FROM blogs ORDER BY blog_id DESC";
$result = mysqli_query($conn, $sql);
$data   = mysqli_fetch_all($result, MYSQLI_ASSOC);
?>