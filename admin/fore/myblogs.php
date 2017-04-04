<?php
require_once("../../conn/conn.php");

session_start();

$author_id = $_SESSION['person_id'];
//判断此文章是否已被管理员删除
$sql = "SELECT `blog_id`,`title`,`update_at` FROM blogs WHERE (data_state=1)AND(author_id=$author_id) ORDER BY blog_id DESC";
$result = mysqli_query($conn, $sql);
$data   = mysqli_fetch_all($result, MYSQLI_ASSOC);
?>