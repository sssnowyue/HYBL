<?php

$conn = mysqli_connect('localhost', 'root', '', 'blog') or die("数据库服务器连接失败".mysql_error());

mysqli_query($conn,"set names utf8");

?>