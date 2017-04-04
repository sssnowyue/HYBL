<?php
$person_id = $value['commenter_id'];
//关联到person表取评论者姓名
$sql    = "SELECT `name`,`data_state` FROM persons WHERE person_id='$person_id'";
$result = mysqli_query($conn,$sql);
$row    = mysqli_fetch_assoc($result);
?>