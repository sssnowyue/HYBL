<?php
require_once("../../conn/conn.php");

session_start();
		
if($_SERVER['REQUEST_METHOD'] == 'POST'){
  	$telphone  = $_POST['telphone'];
   	$QQ        = $_POST['num'];
	$email     = $_POST['email'];
	$password  = MD5($_POST['password']);
	$password1 = MD5($_POST['password1']);
	$password2 = MD5($_POST['password2']);

    $person_id=$_SESSION['person_id'];
    //判断多信息验证是否为本人操作
    $sql       = "SELECT `telphone`,`QQ`,`email`,`password` FROM persons WHERE person_id='$person_id'";
    $result    = mysqli_query($conn, $sql);
	$rows      = mysqli_fetch_assoc($result);
	$password3 = $rows['password'];
	$telphone1 = $rows['telphone'];
	$QQ1       = $rows['QQ'];
	$email1    = $rows['email'];

    if (($telphone1==$telphone) && ($QQ1==$QQ) && ($password==$password3) && ($email==$email1)) {
    	$sql    = "UPDATE persons SET password='$password1' WHERE person_id = '$person_id'";
    	$result = mysqli_query($conn, $sql);
	   	if($result){
	   		echo "<script>alert('密码修改成功！');location='../../home/fore/person_information.php';</script>";
	   		}
	}else{
	   	echo "<script>alert('密码修改失败！');</script>";
	   	echo "<script>location:'../../home/fore/password.php';</script>";
	}
}
?>
