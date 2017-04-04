<?php
require_once("../../admin/fore/login.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta author="HYBL">
	<title>登录 </title>
	<link rel="stylesheet" type="text/css" href="../../css/register-login.css">
</head>
<body>
<div id="box"></div>
<div class="cent-box">
	<div class="cent-box-header">
		<h1 class="main-title hide">HYBL</h1>
	</div>

	<div class="cont-main clearfix">
		<div class="index-tab">
			<div class="index-slide-nav">
				<a href="#" class="active">登录</a>
				<a href="register.php">注册</a>
				<div class="slide-bar"></div>				
			</div>
		</div>
 <!--登录的内容，用的form表格，name名称要与后台数据库的建表名称相同-->
 		<form action="#" method="POST">
		<div class="login form">
			<div class="group">
				<div class="group-ipt tel">
					<input type="text" name="name" id="tel" class="ipt" placeholder="手机号/QQ号/邮箱" required>
				</div>
				<div class="group-ipt password">
					<input type="password" name="password" id="password" class="ipt" placeholder="登录密码" required>
				</div>
				<div class="group-ipt verify">
					<input type="text" name="code" id="verify" class="ipt" placeholder="输入验证码" required>
					<img src="../../admin/fore/verification_code.php" id="code_img"> <!--验证码-->
				</div>
				<a href="javascript:;" onclick="changing()" id="changing">看不清，换一张！</a>
			</div>
		</div>
<!--登录-->
		<div class="button">
			<button type="submit" class="login-btn register-btn" id="button">登录</button>
		</div>
		</form>
</div>

<div class="footer">
	<p>Copyright © 2016 HYBL Team, All Rights Reserved</p>
	<p>回忆不老团队 版权所有</p>
</div>
</body>
<script type="text/javascript">
	function changing(){
    document.getElementById('code_img').src="../../admin/fore/verification_code.php?"+Math.random();
	}	 
</script>
<script src='../../js/particles.js' type="text/javascript"></script>
<script src='../../js/background.js' type="text/javascript"></script>
</html>