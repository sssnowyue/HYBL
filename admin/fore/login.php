<?php
require_once("../../conn/conn.php");
session_start();
if($_SERVER['REQUEST_METHOD'] == 'POST'){
	if($_POST['code'] !== $_SESSION['$code']){
		echo "<script>alert('验证码有误！');</script>";
	}else{
		$name     = $_POST['name'];
		$password = md5($_POST['password']);
		$sql="SELECT `person_id`,`telphone`,`QQ` `email`,`password`,`data_state` FROM persons WHERE ((telphone='$name')||(QQ='$name')||(email='$name'))AND(password='$password')";
		$result = mysqli_query($conn, $sql);
		if($result->num_rows == 1){
			$row = mysqli_fetch_assoc($result);
			$data_state = $row['data_state'];
			//判断此用户是否已被管理员删除
			if($data_state == 1){
				$_SESSION['person_id'] = $row['person_id'];
				echo "<script>location='../../home/fore/all_blogs.php';</script>";
			}else{
				echo "<script>alert('对不起，因××此用户已被删除！');location='../../home/fore/register.php';</script>";
			}
		}else{
			echo "<script>alert('密码错误！');</script>";
		}
	}
}
?>