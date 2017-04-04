<?php
$sql = "SELECT `comment_id`,`commenter_id`,`comment_content`,`update_at`,`data_state` FROM comment WHERE com_blog_id='$blog_id' ORDER BY comment_id DESC";
$result = mysqli_query($conn, $sql);
$data   = mysqli_fetch_all($result, MYSQLI_ASSOC);
?>