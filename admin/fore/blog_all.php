<?php
require_once("../../conn/conn.php");

session_start();
/*发表评论*/
if($_SERVER['REQUEST_METHOD'] == 'POST'){
	$commenter_id    = $_SESSION['person_id'];
	$com_blog_id     = $_GET["blog_id"];//获取url传递的blog_id
	$comment_content = $_POST['comment_content'];
	if($comment_content){
		$sql="INSERT INTO comment (`commenter_id`,`com_blog_id`,`comment_content`) VALUES ('$commenter_id','$com_blog_id','$comment_content')";
		mysqli_query($conn, $sql);
		echo "<script>location='#';</script>";
	}else{
		echo "<script>alert('请输入评论内容！');</script>";
	}
}
	
/*判断是否已赞*/
$com_blog_id = $_GET["blog_id"];//获取url传递的blog_id
$person_id = $_SESSION['person_id'];
$sql = "SELECT * FROM good WHERE (gooder_id='$person_id')AND(good_blog_id='$com_blog_id')AND(data_state=1)";
$result = mysqli_query($conn,$sql);
echo "<script>location='#';</script>";
if($result->num_rows > 0){
	$isgooded = "已赞";
}else{
	$isgooded = "赞";
}
$_SESSION['isgooded'] = $isgooded;
$sql = "SELECT * FROM good WHERE (good_blog_id='$com_blog_id')AND(data_state=1)";
$result = mysqli_query($conn,$sql);
$good_num = $result->num_rows;

/*博文全文显示*/
$sql    = "SELECT `author_id`,`title`,`blog_content`,`update_at` FROM blogs WHERE blog_id='$com_blog_id'";
$result = mysqli_query($conn, $sql);
$row    = mysqli_fetch_assoc($result);
$author_id = $row['author_id'];
$title = $row['title'];
$blog_content = $row['blog_content'];
//关联到person表获取作者名	
$sql = "SELECT `name` FROM persons WHERE person_id='$author_id'";
$result = mysqli_query($conn,$sql);
$row = mysqli_fetch_assoc($result);

/*判断是否已收藏*/
$sql = "SELECT * FROM collect WHERE (collector_id='$person_id')AND(col_blog_id='$com_blog_id')AND(data_state=1)";
$result = mysqli_query($conn,$sql);
echo "<script>location='#';</script>";
if($result->num_rows > 0){
	$iscoled = "已收藏";
}else{
	$iscoled = "收藏";
}
$_SESSION['iscoled'] = $iscoled;

/*显示博文评论*/
$sql = "SELECT `commenter_id`,`comment_content`,`update_at` FROM comment WHERE (data_state=1)AND(com_blog_id='$com_blog_id') ORDER BY comment_id DESC";
$result = mysqli_query($conn, $sql);
$data   = mysqli_fetch_all($result, MYSQLI_ASSOC);
?>