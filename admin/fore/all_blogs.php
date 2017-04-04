<?php
require_once("../../conn/conn.php");

//判断此文章是否已被管理员删除
$sql = "SELECT`blog_id`,`author_id`,`title`,`update_at` FROM blogs WHERE data_state=1 ORDER BY blog_id DESC";
$result = mysqli_query($conn, $sql);
$data   = mysqli_fetch_all($result, MYSQLI_ASSOC);
?>