<?php
require_once("../../admin/fore/register.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>注册</title>
	<meta author="HYBL">
	<link rel="stylesheet" type="text/css" href="../../css/register-login.css">
</head>
<body>
<div id="box"></div>
<div class="cent-box register-box">
	<div class="cent-box-header">
		<h1 class="main-title hide">HYBL</h1>
	</div>

	<div class="cont-main clearfix">
		<div class="index-tab">
			<div class="index-slide-nav">
				<a href="login.php">登录</a>
				<a href="#" class="active">注册</a>
				<div class="slide-bar slide-bar1"></div>				
			</div>
		</div>
 <!--注册的内容，用的form表格，name名称要与后台数据库的建表名称相同-->
 		<form action="#" method="POST" onsubmit="return chkinput(this)">
		<div class="login form">
			<div class="group">
			    <div class="group-ipt tel">
					<input type="text" name="telphone" id="tel" class="ipt" placeholder="手机号" required>
				</div>
				<div class="group-ipt qq">
					<input type="text" name="num" id="qq" class="ipt" placeholder="QQ号" required>
				</div>
				<div class="group-ipt email">
					<input type="email" name="email" id="l1" class="ipt" placeholder="邮箱地址" required>
				</div>
				<div class="group-ipt user">
					<input type="text" name="username" id="user" class="ipt" placeholder="昵称" required>
				</div>
				<div class="group-ipt password">
					<input type="password" name="password" id="l2" class="ipt" placeholder="设置登录密码" required>
				</div>
				<div class="group-ipt password1">
					<input type="password" name="password1" id="l3" class="ipt" placeholder="重复密码" required>
				</div>
			</div>
		</div>
 <!--注册-->
		<div class="button">
			<button type="submit" class="login-btn register-btn" id="button">注册</button>
		</div>
		</form>
	</div>
</div>

<div class="footer">
	<p>Copyright © 2016 HYBL Team, All Rights Reserved</p>
	<p>回忆不老团队 版权所有</p>
</div>
<script type="text/javascript" src="../../js/register.js"></script>
<script src='../../js/particles.js' type="text/javascript"></script>
<script src='../../js/background.js' type="text/javascript"></script>
</html>