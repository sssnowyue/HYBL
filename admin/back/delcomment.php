<?php
require_once("../../conn/conn.php");

$comment_id = $_GET["comment_id"];//获取url传递的commet_id
$data_state = $_GET["data_state"];//获取url传递的data_state
$blog_id    = $_GET["blog_id"];//获取url传递的blog_id
if($data_state == 1){
	$sql1="UPDATE comment SET data_state=0 WHERE comment_id='$comment_id'";
	mysqli_query($conn,$sql1);
	echo "<script>alert('删除成功！');location='../../home/back/blog_all.php?blog_id=$blog_id;';</script>";
}else{
	$sql2="UPDATE comment SET data_state=1 WHERE comment_id='$comment_id'";
	mysqli_query($conn,$sql2);
	echo "<script>alert('恢复成功！');location='../../home/back/blog_all.php?blog_id=$blog_id;';</script>";
}
?>