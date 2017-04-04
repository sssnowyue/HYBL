<?php
require_once("../../admin/fore/blog_all.php");
?>
<!DOCTYPE html>
<html>
<head>
<title>博文全文</title>
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
									<li><a href="all_blogs.php" class="hvr-underline-from-left"><i class="home1"></i>全部博文</a></li>
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
					<script src="js/jquery.wmuSlider.js"></script> 
					  <script>
						$('.example1').wmuSlider();         
					 </script> 
				<div class="banner-bottom">

				<!--博文内容-->
					<div class="col-md-4 banner-left1">						
						<div class="col-xs-9 banner-right111">
							<h3 style="text-align: center;"><?php echo $title; ?></h3>
						</div>
						<div class="col-xs-90 banner-right11">
							<p>作者：<?php echo $row['name']; ?></p>
						</div>
						<br><br><br><br><br>
						<div class="clearfix"> </div>
						<text><?php echo $blog_content; ?></text>
					</div><br>
				<!--结束-->

				<!-- 点赞 --><!-- 收藏 -->
					<div id="button1">
						<a href="../../admin/fore/good.php?blog_id=<?php echo $com_blog_id; ?>" class="btn btn-info btn-lg" style="font-size: 14px; width: 70px;height: 40px;">
						<?php echo $isgooded;?>&nbsp;<?php echo $good_num;?>
						</a>
						&nbsp;  
						<a href="../../admin/fore/collect.php?blog_id=<?php echo $com_blog_id; ?>" class="btn btn-info btn-lg" style="font-size: 14px; width: 62px;height: 40px;">
						<?php echo $iscoled;?>
						</a>
					</div>
				<!--结束-->
					
				<!-- 发表评论 -->
					<div>
			        <form action="#" method="POST">
			        <textarea placeholder="评论：" required=" " id="essay" name="comment_content"></textarea><br><br>
		            <div id="button"><input type="submit" value="发表" id="button"></div>
		            </form><br>
		            </div>
					
			    <!-- over -->

                   	<?php
					foreach ($data as $key => $value){
						require("../../admin/fore/blog_all_erg.php");
						//判断此评论者是否已被管理员删除
						if($row['data_state'] == 1){
						?>
	 					<div class="col-md-4 banner-left12">
     					<!-- 评论 -->						
							<div class="clearfix"> </div>
            				<p style="font-size: 16px;font-family:微软雅黑"><?php echo $row['name']; ?></p>
            				<p><?php echo $value['comment_content']; ?></p>
            				<div class="col-xs-90 banner-right11">
                    		<time><?php echo $value['update_at']; ?></time>
                    		</div>
						</div><br>
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