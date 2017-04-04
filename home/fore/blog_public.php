<?php
require_once("../../admin/fore/blog_public.php");
?>
<!DOCTYPE html>
<html>
<head>
<title>发表博文</title>
	<!-- for-mobile-apps -->
	<meta charset="UTF-8">
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
	<!--引入wangEditor.css-->
	<link rel="stylesheet" type="text/css" href="../../dist/css/wangEditor.min.css">
	<style type="text/css">
	        .containe1{
	            width: 800px;
	            height: auto;
	            margin: 50px auto;
	        }
	        .container1 textarea{
	            height: 700px;
	            resize: none;
	        }
	        #title1{
	        	width:100%;
	        }
	</style>
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
									<li class="active"><a href="blog_public.php"><i class="edit"></i>发表博文</a></li>
									<li><a href="favorite.php" class="hvr-underline-from-left"><i class="text-size1"></i>收藏夹</a></li>
									<li><a href="person_information.php" class="hvr-underline-from-left"><i class="envelope1"></i>个人中心 </a></li>
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
				<div class="wmuSlider example1">
					
				</div>
					
				<div class="banner-bottom">
			<!-- <form>
			<input type="text" placeholder="标题" required=" " id="title"></br></br>
			<textarea placeholder="正文：" required=" " id="essay"></textarea><br><br>
			<div id="button"><input type="submit" value="Submit" id="button"></div>
			</form> -->
			<div class="container1">
    		<form action="#" method="post">
        	<!-- <strong>：</strong> -->
        	<input type="text" placeholder="文章标题：" name="title" id="title1"><br><br>
        	<!-- <strong>文章内容：</strong> -->
        	<textarea id="textarea1" placeholder="文章内容：" name="blog_content"></textarea><br><br>
        	<div id="buttonposition"><div id="button"><input type="submit" value="发表" id="button"></div></div>

    		</form>
			</div>
			<!--引入jquery和wangEditor.js-->  
			<!--注意：javascript必须放在body最后，否则可能会出现问题-->
			<script type="text/javascript" src="../../dist/js/lib/jquery-1.10.2.min.js"></script>
			<script type="text/javascript" src="../../dist/js/wangEditor.js"></script>
			<!--这里引用jquery和wangEditor.js-->
			<script type="text/javascript">
    		var editor = new wangEditor('textarea1');
    		// 上传图片（举例）
    		editor.config.uploadImgUrl = '/upload.php';
    		editor.config.uploadImgFileName = 'myFileName';
   			editor.create();
			</script>


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