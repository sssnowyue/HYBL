<?php
require_once("../../conn/conn.php");

session_start();

if($_SERVER['REQUEST_METHOD'] == 'POST'){
	$author_id = $_SESSION['person_id'];
	$title = $_POST['title'];
	$blog_content = $_POST['blog_content'];
	if($title){
		$sql = "INSERT INTO blogs (`author_id`,`title`,`blog_content`) VALUES ('$author_id','$title','$blog_content')";
		mysqli_query($conn, $sql);
		echo "<script>location='../../home/fore/all_blogs.php';</script>";
	}else{
		echo "<script>alert('请输入标题！');</script>";
	}
}
?>