<?php
/*博文全文显示*/
require_once("../../conn/conn.php");

$blog_id      = $_GET["blog_id"];//获取url传递的blog_id
$sql          = "SELECT author_id,title,blog_content,update_at FROM blogs WHERE blog_id='$blog_id'";
$result       = mysqli_query($conn, $sql);
$row          = mysqli_fetch_assoc($result);
$author_id    = $row['author_id'];
$title        = $row['title'];
$blog_content = $row['blog_content'];
$time         = $row['update_at'];
//通过person_id关联到persons表取作者姓名	
$sql          = "SELECT name FROM persons WHERE person_id='$author_id'";
$result       = mysqli_query($conn,$sql);
$row          = mysqli_fetch_assoc($result);
$author_name  = $row['name'];
?>