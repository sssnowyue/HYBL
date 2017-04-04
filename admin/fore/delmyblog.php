<?php
	require_once("../../conn/conn.php");

	$blog_id = $_GET["blog_id"];//获取url传递的blog_id

	$sql="UPDATE blogs SET data_state=0 WHERE blog_id='$blog_id'";
	mysqli_query($conn,$sql);
	echo "<script>alert('删除成功！');location='../../home/fore/myblogs.php';</script>";
?>