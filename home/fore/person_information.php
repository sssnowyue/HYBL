<?php
	require_once("../../admin/fore/person_information.php");
?>

<!DOCTYPE html>
<html>
<head>

<!-- for-mobile-apps -->
<head>
	<meta charset="UTF-8">
		<title>个人中心</title>
	<link rel="stylesheet" href="../../css/navigation.css" type="text/css">

	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
			function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- //for-mobile-apps -->
	<link href="../../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="../../css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- js -->
	<script src="../../js/jquery-1.11.1.min.js"></script>
	<script src="../../js/loading.js"></script>

	<!-- //js -->
	<!-- <link href='http://fonts.useso.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
	<link href='http://fonts.useso.com/css?family=Great+Vibes' rel='stylesheet' type='text/css'>
	<link href='http://fonts.useso.com/css?family=Comfortaa:400,300,700' rel='stylesheet' type='text/css'> -->
</head>
	
<body>
<!-- banner-body -->
	<div class="banner-body">
		<div class="container">
			<div class="banner-body-content">
			<div class="col-xs-3 banner-body-left">
				<div class="logo">
					<img src="../../images/2.png" id="pic">
				</div>
				<div class="top-nav">
					<nav class="navbar navbar-default">
					<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
						  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						  </button>
						</div>
						

						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
							<nav class="stroke">
								<ul class="nav navbar-nav">
									<li><a href="all_blogs.php" class="hvr-underline-from-left"><i class="home1"></i>全部博文</a></li>
									<li><a href="myblogs.php" class="hvr-underline-from-left"><i class="picture1"></i>我的博文</a></li>
									<li><a href="blog_public.php" class="hvr-underline-from-left"><i class="edit1"></i>发表博文</a></li>
									<li><a href="favorite.php" class="hvr-underline-from-left"><i class="text-size1"></i>收藏夹</a></li>
									<li class="active"><a href="person_information.php"><i class="envelope"></i>个人中心</a></li>
								</ul>
							</nav>
						</div>
						<!-- /.navbar-collapse -->
					</nav>
				</div>
			</div>
			<div class="col-xs-9 banner-body-right">
			<a href="../../../index.html" class="logout">退出</a>
			
				<div class="banner-bottom">
			<br><br><br><br><br><br>
		<span>&nbsp; &nbsp;昵 &nbsp;称:<?php echo $username   ?></span><br><br><br>
		<span>&nbsp; &nbsp;手机号:<?php echo $telphone ?></span><br><br><br>
		<span>&nbsp; &nbsp;QQ &nbsp; 号:<?php echo $QQ  ?></span><br><br><br>
		<span>&nbsp; &nbsp;邮 &nbsp; 箱:<?php echo $email ?> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <br><br><br><br><a href="../../home/fore/password.php" >&nbsp; &nbsp;修改密码</a>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span>
		
		&nbsp; &nbsp;&nbsp; &nbsp;

		<?php
		require_once("../../admin/back/isadmin.php");
		if($accout_type == 1){
			?>
			<a href="../../home/back/back-stage.html">进入后台</a>
			<?php
		}
		?>
		<!-- <a href="../../admin/back/isadmin.php">进入后台</a> -->
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="clearfix"> </div>
			
			
			<div class="clearfix"> </div>
			<div class="footer">
				<div class="footer-left">
					<p>Copyright © 2016 HYBL Team, All Rights Reserved</p>
	                <p>回忆不老团队 版权所有</p>
				</div>
				<div class="footer-right">
					<ul class="social-nav model-3">
						<li><a href="#" class="icon icon-border facebook"></a></li>
						<li><a href="#" class="icon icon-border twitter"></a></li>
						 <li><a href="#" class="icon icon-border googleplus"></a></li>
						 <li><a href="#" class="icon icon-border github"></a></li>
						 <li><a href="#" class="icon icon-border rss"></a></li>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		</div>
	</div>
<!-- //banner-body -->
<!-- for bootstrap working -->
	<script src="../../js/bootstrap.js"></script>
<!-- //for bootstrap working -->
</body>
</html>