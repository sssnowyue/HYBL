<?php
require_once("../../conn/conn.php");

session_start();

if($_SERVER['REQUEST_METHOD'] == 'POST'){
	$username = $_POST['username'];
  	$telphone = $_POST['telphone'];
   	$QQ = $_POST['num'];
	$email = $_POST['email'];
	$password = MD5($_POST['password']);
	
	//判断用户注册输入的用户名、手机号、QQ、邮箱已被注册
	$sql1 = "SELECT * FROM persons WHERE name='$username'";
	$result1 = mysqli_query($conn, $sql1);

	$sql2 = "SELECT * FROM persons WHERE telphone='$telphone'";
	$result2 = mysqli_query($conn, $sql2);

	$sql3 = "SELECT * FROM persons WHERE QQ='$QQ'";
	$result3 = mysqli_query($conn, $sql3);

	$sql4 = "SELECT * FROM persons WHERE email='$email'";
	$result4 = mysqli_query($conn, $sql4);

	if($result1->num_rows > 0){
		echo "<script type='text/javascript'>alert('此用户名已存在！');history.back();</script>";
	}else if($result2->num_rows > 0){
		echo "<script type='text/javascript'>alert('此手机号已被注册！');history.back();</script>";
	}else if($result3->num_rows > 0){
		echo "<script type='text/javascript'>alert('此QQ已被注册！');history.back();</script>";
	}else if($result4->num_rows > 0){
		echo "<script type='text/javascript'>alert('此邮箱已被注册！');history.back();</script>";
	}else{
		$sql = "INSERT INTO persons(`password`,`name`,`QQ`,`email`,`telphone`) VALUES ('$password','$username','$QQ','$email','$telphone')";
		mysqli_query($conn, $sql);
		$sql = "SELECT `person_id` FROM persons WHERE name='$username'";
		$result = mysqli_query($conn, $sql);
		$row    = mysqli_fetch_assoc($result);
		$_SESSION['person_id'] = $row['person_id'];
		echo "<script>location='../../home/fore/login.php';</script>";
	}
}
?>