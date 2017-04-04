<?php
require_once("../../admin/fore/all_blogs.php");
?>
<!DOCTYPE html>
<html>
<head>
<title>全部博文</title>
<!-- for-mobile-apps -->
<head>
<meta charset="UTF-8">
<title>back-stage</title>
<link rel="stylesheet" href="../../css/navigation.css" type="text/css">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="../../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="../../css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script src="../../js/jquery-1.11.1.min.js"></script>
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
									<li class="active"><a href="all_blogs.php"><i class="home"></i>全部博文</a></li>
									<li><a href="myblogs.php" class="hvr-underline-from-left"><i class="picture1"></i>我的博文</a></li>
									<li><a href="blog_public.php" class="hvr-underline-from-left"><i class="edit1"></i>发表博文</a></li>
									<li><a href="favorite.php" class="hvr-underline-from-left"><i class="text-size1"></i>收藏夹</a></li>
									<li><a href="person_information.php" class="hvr-underline-from-left"><i class="envelope1"></i>个人中心</a></li>
								</ul>
							</nav>
						</div>
						<!-- /.navbar-collapse -->
					</nav>
				</div>
			</div>

			<div class="col-xs-9 banner-body-right">
				<a href="../../../index.html" class="logout">退出</a>
				<br><br><br>
					<script src="../../js/jquery.wmuSlider.js"></script> 
					  <script>
						$('.example1').wmuSlider();         
					 </script> 
				<div class="banner-bottom">
				<!--第一篇博文-->
				<?php
				foreach ($data as $key => $value){
					//关联到person表取作者姓名
					$person_id = $value['author_id'];
					$sql       = "SELECT `name`,`data_state` FROM persons WHERE person_id='$person_id'";
					$result    = mysqli_query($conn,$sql);
					$row       = mysqli_fetch_assoc($result);
					//判断此文章作者是否已被管理员删除
					if($row['data_state'] == 1){
						?>
						<div class="col-md-4 banner-left">						
							<div class="col-xs-9 banner-right1">
								<a href="../../home/fore/blog_all.php?blog_id=<?php echo $value['blog_id']; ?>"><h3><?php echo $value['title']; ?></h3></a>
							</div>
							<div class="col-xs-90 banner-right11">
							 	<time><?php echo $value['update_at']; ?></time>
							</div>
							<div class="clearfix"></div>
							<p><?php echo $row['name']; ?></p>
						</div>
						<br>
						<?php
						}
					}
				?>

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