<?php
require("../../conn/conn.php");

session_start();

$sql    = "SELECT * FROM persons ";
$result = mysqli_query($conn, $sql);
$data   = mysqli_fetch_all($result, MYSQLI_ASSOC); 
?>