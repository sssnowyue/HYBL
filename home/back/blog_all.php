<?php
require_once("../../admin/back/blog_all.php");
require_once("../../admin/back/all_comments.php");
?>
<!DOCTYPE html>
<html>
<head>
	<title>博文全文</title>
	<!-- for-mobile-apps -->
	<meta charset="UTF-8">
	<link rel="stylesheet" href="../../css/navigation.css" type="text/css">

	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
			function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- //for-mobile-apps -->
	<link href="../../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="../../css/style0.css" rel="stylesheet" type="text/css" media="all" />
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
			<div class="col-xs-3 col-md-3 banner-body-left">
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
									<li><a href="back-stage.html" class="hvr-underline-from-left"><i class="home1"></i>后台管理</a></li>
									<li><a href="all_persons.php" class="hvr-underline-from-left"><i class="picture1"></i>用户</a></li>
									<li class="active"><a href="all_blogs.php"><i class="edit"></i>博文</a></li>
									<li><a href="all_admins.php" class="hvr-underline-from-left"><i class="text-size1"></i>管理员</a></li>
									<li><a href="../fore/all_blogs.php" class="hvr-underline-from-left"><i class="envelope1"></i>返回前台 </a></li>
								</ul>
							</nav>
						</div>
						<!-- /.navbar-collapse -->
					</nav>
				</div>
			</div>
			<div class="col-xs-9 col-md-9 banner-body-right">
			<a href="../../../index.html" class="logout">退出</a>
			</div>
			<br><br><br>
			<div id="bigbox" class="col-xs-9 col-md-9 pull-right">
						<div id="title"><span><?php echo $title; ?></span></div><br>
						<div id="author">作者：<?php echo $author_name; ?></div>
						<div id="box"><?php echo $blog_content; ?></div>
						<?php
						foreach ($data as $key => $value) {
							$person_id        = $value['commenter_id'];
							//关联到person表取评论者姓名
							$sql              ="SELECT `name` FROM persons WHERE person_id='$person_id'";
							$result           = mysqli_query($conn,$sql);
							$row              = mysqli_fetch_assoc($result);
							//检查博文评论状态是否被删除
							if($value['data_state'] == 1){
								$isdeled = "删除";
							}else{
								$isdeled = "恢复";
							}
							?>
							<div id="assess">
								<p style="font-size: 16px;font-family: 微软雅黑"><?php echo $row['name']; ?>:<p>
								<h4><?php echo $value['comment_content']; ?></h4>

								<h5 style="float: left;font-size:12px; "><?php echo $value['update_at']; ?></h5>
								<a href="../../admin/back/delcomment.php?comment_id=<?php echo $value['comment_id']; ?>&data_state=<?php echo $value['data_state']; ?>&blog_id=<?php echo $blog_id; ?>"> &nbsp &nbsp &nbsp 
									<button id="button3"><?php echo $isdeled;?></button>
								</a>
							</div><br>
							<?php
						}
						?>
						
			</div>
			<!-- <div class="clearfix"> </div>
			
			<div class="clearfix"> </div> -->
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