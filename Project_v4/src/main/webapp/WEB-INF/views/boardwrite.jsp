<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if IE 8]><html class="ie ie8"> <![endif]-->
<!--[if IE 9]><html class="ie ie9"> <![endif]-->
<!--[if gt IE 9]><!-->
<html>
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords"
	content="template, tour template, city tours, city tour, tours tickets, transfers, travel, travel template" />
<meta name="description"
	content="Citytours - Premium site template for city tours agencies, transfers and tickets.">
<meta name="author" content="Ansonika">
<title>CITY TOURS - City tours and travel site template by
	Ansonika</title>

<!-- Favicons-->
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" type="image/x-icon"
	href="img/apple-touch-icon-57x57-precomposed.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="72x72"
	href="img/apple-touch-icon-72x72-precomposed.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="114x114"
	href="img/apple-touch-icon-114x114-precomposed.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="144x144"
	href="img/apple-touch-icon-144x144-precomposed.png">

<!-- CSS -->
<link href="css/base.css" rel="stylesheet">

<!-- CSS -->
<link href="css/flickity.css" rel="stylesheet">
<link href="css/custom.css" rel="stylesheet">
<!-- Google web fonts -->
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Gochi+Hand'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Lato:300,400'
	rel='stylesheet' type='text/css'>

<!--[if lt IE 9]>
      <script src="js/html5shiv.min.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
<%
	String user_id = (String) session.getAttribute("user_id");
	if (user_id == null) {
%>
<script>
	alert("잘못된 접근입니다. 로그인 후에 이용해주세요");
	window.location.href = "<%=request.getContextPath()%>/loginForm.do";
</script>
<%
	}
%>
</head>
<body>

	<!--[if lte IE 8]>
    <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a>.</p>
<![endif]-->

	<div id="preloader">
		<div class="sk-spinner sk-spinner-wave">
			<div class="sk-rect1"></div>
			<div class="sk-rect2"></div>
			<div class="sk-rect3"></div>
			<div class="sk-rect4"></div>
			<div class="sk-rect5"></div>
		</div>
	</div>
	<!-- End Preload -->

	<div class="layer"></div>
	<!-- Mobile menu overlay mask -->

	<!-- Header================================================== -->
	<%@include file="include/header.jsp"%>

	<section id="search_container"></section>
	<div class="container margin_60">
		<div class="row">
			<div class="col-md-12 col-sm-12">
				<div class="form_title">
					<h3>
						<strong><i class="icon-pencil"></i></strong>Write Feed
					</h3>
					<p>Mussum ipsum cacilds, vidis litro abertis.</p>
				</div>
				<div class="step">

					<div id="message-contact"></div>
					<form action="write.do" method="post" enctype="Multipart/form-data">
						<div class="row">
							<div class="col-md-6 col-sm-6">
								<div class="form-group">
									<label>ID</label> <input type="text" class="form-control"
										name="user_id" value="${user_id}" readonly>
									<%-- ${user_id} --%>
								</div>
							</div>
						</div>
						<!-- End row -->

						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<label>Message</label>
									<textarea rows="5" id="message_contact" name="board_content"
										class="form-control" placeholder="Write your message"
										style="height: 200px;"></textarea>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6 filebox">
								<!-- <label>Upload</label> <input type="file" id="verify_contact" name="fileName1" class="upload-name form-control add_bottom_30" placeholder="Are you human? 3 + 1 ="> -->

								<!-- <input class="upload-name" value="file" disabled="disabled"> -->
								<label for="ex_filename">Upload</label> <input type="file"
									name="fileName1" class="">
								<!-- <script>
								$(document).ready(function(){ 
									var fileTarget = $('.filebox .upload-hidden');
									fileTarget.on('change', function(){ // 값이 변경되면 
										if(window.FileReader){ // modern browser 
											var filename = $(this)[0].files[0].name; 
										} else { // old IE 
											var filename = $(this).val().split("/").pop().split("\\").pop();
										// 파일명만 추출
	`									} 
										// 추출한 파일명 삽입
										$(this).siblings('.upload-name').val(filename);
										
									}); 
								});								
								</script> -->
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<input type="submit" value="글작성" class="btn_1"
									id="submit-contact">
							</div>
						</div>
					</form>
				</div>
			</div>
			<!-- End col-md-8 -->
			<!-- 
			<div class="col-md-4 col-sm-4">
				<div class="box_style_1">
					<span class="tape"></span>
					<h4>
						Address <span><i class="icon-pin pull-right"></i></span>
					</h4>
					<p>Place Charles de Gaulle, 75008 Paris</p>
					<hr>
					<h4>
						Help center <span><i class="icon-help pull-right"></i></span>
					</h4>
					<p>Lorem ipsum dolor sit amet, vim id accusata sensibus, id
						ridens quaeque qui. Ne qui vocent ornatus molestie.</p>
					<ul id="contact-info">
						<li>+ 61 (2) 8093 3400 / + 61 (2) 8093 3402</li>
						<li><a href="#">info@domain.com</a></li>
					</ul>
				</div>
				<div class="box_style_4">
					<i class="icon_set_1_icon-57"></i>
					<h4>
						Need <span>Help?</span>
					</h4>
					<a href="tel://004542344599" class="phone">+45 423 445 99</a> <small>Monday
						to Friday 9.00am - 7.30pm</small>
				</div>
			</div> -->
			<!-- End col-md-4 -->
		</div>
		<!-- End row -->
	</div>

	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-sm-3">
					<h3>Need help?</h3>
					<a href="tel://004542344599" id="phone">+45 423 445 99</a> <a
						href="mailto:help@citytours.com" id="email_footer">help@citytours.com</a>
				</div>
				<div class="col-md-3 col-sm-3">
					<h3>About</h3>
					<ul>
						<li><a href="#">About us</a></li>
						<li><a href="#">FAQ</a></li>
						<li><a href="#">Login</a></li>
						<li><a href="#">Register</a></li>
						<li><a href="#">Terms and condition</a></li>
					</ul>
				</div>
				<div class="col-md-3 col-sm-3">
					<h3>Discover</h3>
					<ul>
						<li><a href="#">Community blog</a></li>
						<li><a href="#">Tour guide</a></li>
						<li><a href="#">Wishlist</a></li>
						<li><a href="#">Gallery</a></li>
					</ul>
				</div>
				<div class="col-md-2 col-sm-3">
					<h3>Settings</h3>
					<div class="styled-select">
						<select class="form-control" name="lang" id="lang">
							<option value="English" selected>English</option>
							<option value="French">French</option>
							<option value="Spanish">Spanish</option>
							<option value="Russian">Russian</option>
						</select>
					</div>
					<div class="styled-select">
						<select class="form-control" name="currency" id="currency">
							<option value="USD" selected>USD</option>
							<option value="EUR">EUR</option>
							<option value="GBP">GBP</option>
							<option value="RUB">RUB</option>
						</select>
					</div>
				</div>
			</div>
			<!-- End row -->
			<div class="row">
				<div class="col-md-12">
					<div id="social_footer">
						<ul>
							<li><a href="#"><i class="icon-facebook"></i></a></li>
							<li><a href="#"><i class="icon-twitter"></i></a></li>
							<li><a href="#"><i class="icon-google"></i></a></li>
							<li><a href="#"><i class="icon-instagram"></i></a></li>
							<li><a href="#"><i class="icon-pinterest"></i></a></li>
							<li><a href="#"><i class="icon-vimeo"></i></a></li>
							<li><a href="#"><i class="icon-youtube-play"></i></a></li>
							<li><a href="#"><i class="icon-linkedin"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- End row -->
		</div>
		<!-- End container -->
	</footer>
	<div id="toTop"></div>
	<!-- Back to top button -->

	<!-- Common scripts -->
	<script src="js/jquery-1.11.2.min.js"></script>
	<script src="js/common_scripts_min.js"></script>
	<script src="js/functions.js"></script>


</body>
</html>

