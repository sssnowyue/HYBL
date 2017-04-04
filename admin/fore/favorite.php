<?php
session_start();

require_once("../../conn/conn.php");

$collector_id=$_SESSION['person_id'];
$sql="SELECT `col_blog_id` FROM collect WHERE (collector_id='$collector_id')AND(data_state=1) ORDER BY collect_id DESC";
$result = mysqli_query($conn, $sql);
$data = mysqli_fetch_all($result, MYSQLI_ASSOC); 
?> 