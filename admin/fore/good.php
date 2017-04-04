<?php
/*赞与取消赞博文*/
require_once("../../conn/conn.php");

session_start();

$good_blog_id = $_GET["blog_id"];//获取url传递的blog_id

$person_id = $_SESSION['person_id'];
$isgooded = $_SESSION['isgooded'];
if($isgooded == "赞"){
	$sql = "SELECT * FROM good WHERE (gooder_id='$person_id')AND(good_blog_id='$good_blog_id')";
	$result = mysqli_query($conn,$sql);
	//判断曾经是否收藏过后取消赞
	if($result->num_rows > 0){
		$sql = "UPDATE good SET data_state=1 WHERE (gooder_id='$person_id')AND(good_blog_id='$good_blog_id')";
		mysqli_query($conn,$sql);
		echo "<script>history.back();</script>";
	}else{
		$sql = "INSERT INTO good (`gooder_id`,`good_blog_id`) VALUES ('$person_id','$good_blog_id')";
		mysqli_query($conn,$sql);
		echo "<script>history.back();</script>";
	}
}else{
	$sql = "UPDATE good SET data_state=0 WHERE (gooder_id='$person_id')AND(good_blog_id='$good_blog_id')";
	mysqli_query($conn, $sql);
	echo "<script>history.back();</script>";
}
?>