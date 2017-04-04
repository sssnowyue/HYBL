<?php
//判断此用户是否为管理员
$sql = "SELECT `accout_type` FROM persons WHERE person_id='$person_id'";
$result = mysqli_query($conn,$sql);
$row = mysqli_fetch_assoc($result);
$accout_type = $row['accout_type'];
?>