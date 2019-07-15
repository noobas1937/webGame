<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Home</title>
<!--for-mobile-apps-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!--//for-mobile-apps-->

<!-- Custom-Theme-Files -->
<!-- Bootstrap-CSS -->
<link rel="stylesheet" href="index/css/bootstrap.min.css">
<!-- JQuery -->
<script src="index/js/jquery.min.js">
	
</script>
<!-- Bootstrap-Main -->
<script src="index/js/bootstrap.min.js">
	
</script>
<script language="javascript" type="text/javascript">
	function showdiv() {
		document.getElementById("show").style.display = "block";
		$('body').css("z-index","1")
		$('body').css("overflow", "hidden")
		
	}
	function hidediv() {
		document.getElementById("show").style.display = 'none';

		$('body').css("overflow", "auto")
		$('body').css("opacity", "1")
	}
</script>
<style type="text/css">


#show {
	display: none;
	position: absolute;
	top: 25%;
	left: 40%;
	width: 400px;
	height: 250ox;
	padding: 8px;
	border: 8px solid #E8E9F7;
	background-color: #cc0000;

}


#btnbegin {
	background-color: cornsilk;
	position: relative;
	top: -45px;
	left: 630px;
}
#box{
	position:absolute;
	top:0;
	left:0;
}
#btnclose {
	background-color: cornsilk;
}

#login {
	top: 20px;
	position: relative;
	width:300px;
	height:150px;
}

.banner {
	margin-top: 30px;
	height: 55px;
	/*background-color: black;*/
}

.picture {
	font-size: 26px;
	color: white;
	font-family: 楷体;
	margin-left: 30px;
	float: left;
}

.login {
	width: 200px;
	float: right;
}

.login a {
	text-decoration: none;
	color: white;
	line-height: 55px;
}
body {
	/*padding-top: 300px;*/
	background:
		url(image/2a95123cfbaeed9ba4a0a2d88759faac9912cf6411435-AZsLBr_fw658.jpg)
		no-repeat #efeff4;
	background-size: 100% 100%;
	width: 1349px;
	height: 600px;
}
#butt{
position:absolute;
right:0;

}

</style>
<!-- Index-Page-Styling -->
<link rel="stylesheet" href="index/css/style.css" type="text/css"
	media="all">
<!-- Start-Smooth-Scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 2000);
		});
	});
</script>
<!-- //End-Smooth-Scrolling -->

<link rel="stylesheet" type="text/css"
	href="index/css/easy-responsive-tabs.css " />
<script src="index/js/easyResponsiveTabs.js"></script>

</head>

<body>

	<div class="header">

		<div class="nav">
			<nav class="navbar navbar-inverse navbar-fixed-top">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#"><img
							src="index/images/logo2.png" alt="logo"></a>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->

					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">

						<ul class="nav navbar-nav navbar-right">
							<li><a href="person1.jsp">My info</a></li>
							<li><a href="History.jsp">WarRecord</a></li>
							<li><a href="gameLo">gameLobby</a></li>
							<li>
							<c:choose>
							<c:when test="${user eq null }">
							<a href="#" onclick="showdiv()">Login</a>
							</c:when>
							<c:otherwise>
							<a href="#">${user.username}</a>
							</c:otherwise>
							</c:choose>
							</li>
							<li><a href="signup.jsp" >Signup</a></li>
						</ul>

					</div>
					<!-- navbar-collapse -->
				</div>
				<!-- container -->
			</nav>
		</div>
		<!-- Nav Ends -->

		<div class="banner" id="home">
			<div class="container">
				<div class="banner-content">
					<h1>COMBAT G</H1>
					<h2>Modern combat Game Template For Action Games</h2>
					<p>Lorem Ipsum is simply dummy text of the printing and
						typesetting industry. Lorem Ipsum has been the industry's standard
						dummy text</p>
				</div>
			</div>
		</div>
		<!-- Banner Ends Here -->
	</div>
	<!-- Header Ends -->


	<div class="about" id="about">
		<div class="container">

			<h3>
				Welcome to <span>Combat G</span>
			</h3>
			<h4>This is the Game of Lorem Ipsum available, but the majority
				have suffered alteration in some form, by injected humour, or
				randomised words which don't look even slightly believable.</h4>

			<div class="about-image">

				<div class="col-md-4 about-size">
					<div class="shadow">
						<img src="index/images/ai1.jpg" alt="image">
					</div>
					<h5>Battle in Game</h5>
					<p>Lorem Ipsum available, but the majority have suffered
						alteration in some form, by injected Lorem Ipsum available, but
						the majority have suffered alteration in some</p>

				</div>

				<div class="col-md-4 about-size">
					<div class="shadow">
						<img src="index/images/ai2.jpg" alt="image">
					</div>
					<h5>Drive in Game</h5>
					<p>Lorem Ipsum available, but the majority have suffered
						alteration in some form, by injected Lorem Ipsum available, but
						the majority have suffered alteration in some</p>

				</div>

				<div class="col-md-4 about-size">
					<div class="shadow">
						<img src="index/images/ai3.jpg" alt="image">
					</div>
					<h5>Shooting in Game</h5>
					<p>Lorem Ipsum available, but the majority have suffered
						alteration in some form, by injected Lorem Ipsum available, but
						the majority have suffered alteration in some</p>

				</div>
				<div class="clearfix"></div>
			</div>
			<!-- About-image Ends  -->

		</div>
		<!-- Container ends -->
	</div>
	<!-- About Ends -->


	<div class="requirement" id="requirements">
		<!-- Requirements Starts   -->
		<div class="container">
			<div class="all-require">

				<div class="heading">
					<h3>
						Combat G <span> Requirements</span>
					</h3>
				</div>

				<div class="specification">

					<div class="col-md-4 require-size">
						<div class="grid">
							<i class="pc"> </i>
							<p>
								OS : <span>Windows 8 64-Bit </span>
							</p>
							<p>
								CPU : <span>Intel® Core™ 2 Duo </span>
							</p>
							<p>
								Memory : <span>6 GB RAM </span>
							</p>
							<p>
								Hard Disk Space : <span>40 GB </span>
							</p>
							<p>
								Video : <span>NVIDIA® GTS 450 / ATI® 5870</span>
							</p>
							<p>
								Sound : <span>DirectX compatible</span>
							</p>
							<p>
								DirectX® : <span>DirectX® 11 </span>
							</p>
							<p>
								Internet : <span>Broadband </span>
							</p>
						</div>
					</div>

					<div class="col-md-4 require-size">
						<div class="grid">
							<i class="xbox"> </i>
							<h5>Xbox One</h5>
							<p>
								Storage : <span>40 GB of free space </span>
							</p>
							<p>
								HD Video Output : <span>1080px </span>
							</p>

							<div class="grid-bottom">
								<h5>Xbox 360</h5>
								<p>
									Storage : <span>50 GB of free space </span>
								</p>
								<p>
									HD Video Output : <span>1920px </span>
								</p>
							</div>
						</div>
					</div>

					<div class="col-md-4 require-size">

						<div class="grid">
							<i class="ps"> </i>
							<h5>PS 2</h5>
							<p>
								Storage : <span>40 GB of free space </span>
							</p>
							<p>
								HD Video Output : <span>1080px </span>
							</p>

							<div class="grid-bottom">
								<h5>PS 3</h5>
								<p>
									Storage : <span>50 GB of free space </span>
								</p>
								<p>
									HD Video Output : <span>1920px </span>
								</p>
							</div>
						</div>
					</div>

					<div class="clearfix"></div>
				</div>
				<!-- Specification Ends here   -->
			</div>
		</div>
	</div>
	<!-- requirement Ends -->


	<div class="upcoming" id="games">
		<div class="container">
			<div class="padding-upcoming">

				<h3>
					Up Coming <span> Games</span>
				</h3>

				<div class="background shadow1">

					<div id="parentVerticalTab">

						<div class="col-md-7 trailer game-video">
							<div class="resp-tabs-container hor_1">

								<div>
									<div class="category">
										<iframe width="560" height="315" src="" frameborder="0"
											allowfullscreen></iframe>
									</div>
								</div>
								<div>
									<div class="category">
										<iframe width="560" height="315" src="" frameborder="0"
											allowfullscreen></iframe>
									</div>
								</div>
								<div>
									<div class="category">
										<iframe width="560" height="315" src="" frameborder="0"
											allowfullscreen></iframe>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>


						<div class="col-md-5 trailer-text game-image">
							<ul class="resp-tabs-list hor_1">
								<li>
									<div class="sub-trailer">
										<div class="sub-img">
											<img src="index/images/up1.jpg" alt="img07" />
										</div>
										<div class="sub-text">
											<h4>Sniper Elite-III - Fall Reviews</h4>
											<p>Lorem ipsum dolor sit amet, consectetur adipi…</p>
										</div>
										<div class="clearfix"></div>
									</div>
								</li>

								<li>
									<div class="sub-trailer">
										<div class="sub-img">
											<img src="index/images/up2.jpg" alt="img07" />
										</div>
										<div class="sub-text">
											<h4>Sniper Ghost Warrior II</h4>
											<p>Lorem ipsum dolor sit amet, consectetur adipi…</p>
										</div>
										<div class="clearfix"></div>
									</div>
								</li>

								<li>
									<div class="sub-trailer">
										<div class="sub-img">
											<img src="index/images/up3.jpg" alt="img07" />
										</div>
										<div class="sub-text">
											<h4>Call of duty - Warfare</h4>
											<p>Lorem ipsum dolor sit amet, consectetur adipi…</p>
										</div>
										<div class="clearfix"></div>
									</div>
								</li>
								<div class="clearfix"></div>
							</ul>
						</div>


						<div class="clearfix"></div>
					</div>

				</div>
			</div>
		</div>
	</div>



	<!--Plug-in Initialisation-->
	<script type="text/javascript">
		$(document).ready(function() {

			//Vertical Tab
			$('#parentVerticalTab').easyResponsiveTabs({
				type : 'vertical', //Types: default, vertical, accordion
				width : 'auto', //auto or any width like 600px
				fit : true, // 100% fit in a container
				closed : 'accordion', // Start closed if in accordion view
				tabidentify : 'hor_1', // The tab groups identifier
				activate : function(event) { // Callback function if tab is switched
					var $tab = $(this);
					var $info = $('#nested-tabInfo2');
					var $name = $('span', $info);
					$name.text($tab.text());
					$info.show();
				}
			});
		});
	</script>
	<div id="show">

		<div id="box">
			<input id="btnclose" type="button" value="返回" onclick="hidediv();"
				style="width: 50px; height: 30px" />
		</div>
		<div id="login">
	
			<form action="join" method="get">
				账 号：<input type="text" name="username"
					style="width: 150px; height: 30px;"> <br> <br> 密
				码：<input type="text" name="password"
					style="width: 150px; height: 30px;"> <br><br>
				 <input type="submit" value="登录"
					style="width: 70px; height: 30px;" id="butt">
			</form>
		</div>
	</div>
</body>
</html>