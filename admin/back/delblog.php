<?php
require_once("../../conn/conn.php");

$blog_id    = $_GET["blog_id"];//获取url传递的blog_id
$data_state = $_GET["data_state"];//获取url传递的data_state

if($data_state==1){
	$sql = "UPDATE blogs SET data_state=0 WHERE blog_id='$blog_id'";
	mysqli_query($conn,$sql);
	echo "<script>alert('删除成功！');location='../../home/back/all_blogs.php';</script>";
}else{
	$sql = "UPDATE blogs SET data_state=1 WHERE blog_id='$blog_id'";
	mysqli_query($conn,$sql);
	echo "<script>alert('恢复成功！');location='../../home/back/all_blogs.php';</script>";
}
?>