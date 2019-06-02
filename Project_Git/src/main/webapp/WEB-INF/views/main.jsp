<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="shortcut icon" href="/img/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" type="image/x-icon"
	href="/img/apple-touch-icon-57x57-precomposed.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="72x72"
	href="/img/apple-touch-icon-72x72-precomposed.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="114x114"
	href="/img/apple-touch-icon-114x114-precomposed.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="144x144"
	href="/img/apple-touch-icon-144x144-precomposed.png">

<!-- CSS -->
<link href="/css/base.css" rel="stylesheet">

<!-- SPECIFIC CSS -->
<link href="/css/skins/square/grey.css" rel="stylesheet">
<link href="/css/date_time_picker.css" rel="stylesheet">
<link href="/css/custom.css" rel="stylesheet">
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
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
<script>
	$(function() {
		addList(1);
		function addList(currentPage) {
			$.ajax({
				type : "GET",
				url : "<%=request.getContextPath()%>/board/list",
				data : {
					page : currentPage,
					perPageNum : 9
				},
				error : function(err) {
					console.log(err);
				},
				success : function(data) {					
					$("#listWrap").append(data);
				}
			});
		}
		//favoriteList(1,"상가");
		function favoriteList(currentPage,fname) {
			$.ajax({
				type : "GET",
				url : "<%=request.getContextPath()%>/board/flist",
				data : {
					favorite_name : fname,
					page : currentPage,
					perPageNum : 9
				},
				error : function(err) {
					console.log(err);
				},
				success : function(data) {
					$("#listWrap").html(data);
				}
			});
		}
		
		$(".listType > li").on("click",function(){
			 var type = $(this).text();			 
			 if(type == "GIVER"){
				 addlist(1);
			 }else{
				 favoriteList(1,type);
			 }
			 
			 $(this).siblings().removeClass("active");
			 $(this).addClass("active");
			 return false;
		})
				
		
		
	})
</script>
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
	<%@include file="./include/header.jsp"%>
	<!-- Header================================================== -->

	
	<section id="search_container">
		<div id="search">
			<ul class="nav nav-tabs">
				<li class="active"><a href="#tours" data-toggle="tab">Search</a></li>

			</ul>

			<div class="tab-content">
				<div class="tab-pane active" id="tours">

					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>Address</label> <input type="text" class="form-control"
									id="firstname_booking" name="firstname_booking"
									placeholder="Type your search terms">
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label>Things to do</label> <select class="ddslick"
									name="category">
									<option value="0"
										data-imagesrc="/img/icons_search/all_tours.png" selected>All
										tours</option>
									<option value="1"
										data-imagesrc="/img/icons_search/sightseeing.png">City
										sightseeing</option>
									<option value="2" data-imagesrc="/img/icons_search/museums.png">Museum
										tours</option>
									<option value="3"
										data-imagesrc="/img/icons_search/historic.png">Historic
										Buildings</option>
									<option value="4" data-imagesrc="/img/icons_search/walking.png">Walking
										tours</option>
									<option value="5" data-imagesrc="/img/icons_search/eat.png">Eat
										& Drink</option>
									<option value="6"
										data-imagesrc="/img/icons_search/churches.png">Churces</option>
									<option value="7" data-imagesrc="/img/icons_search/skyline.png">Skyline
										tours</option>
								</select>
							</div>
						</div>
					</div>
					<!-- End row -->
					<div class="row">
						<div class="col-md-3">
							<div class="form-group">
								<label><i class="icon-calendar-7"></i> Date</label> <input
									class="date-pick form-control" data-date-format="M d, D"
									type="text">
							</div>
						</div>
						<div class="col-md-3">
							<div class="form-group">
								<label><i class=" icon-clock"></i> Time</label> <input
									class="time-pick form-control" value="12:00 AM" type="text">
							</div>
						</div>
						<div class="col-md-2 col-sm-3 col-xs-6">
							<div class="form-group">
								<label>Adults</label>
								<div class="numbers-row">
									<input type="text" value="1" id="adults"
										class="qty2 form-control" name="adults">
								</div>
							</div>
						</div>
						<!-- <div class="col-md-2 col-sm-3 col-xs-6">
							<div class="form-group">
								<label>Children</label>
								<div class="numbers-row">
									<input type="text" value="0" id="children"
										class="qty2 form-control" name="children">
								</div>
							</div>
						</div> -->

					</div>
					<!-- End row -->
					<hr>
					<button class="btn_1 green">
						<i class="icon-search"></i>Search now
					</button>
				</div>
				<!-- End rab -->
				<div class="tab-pane" id="hotels">
					<h3>Search Hotels in Paris</h3>
					<div class="row">
						<div class="col-md-3">
							<div class="form-group">
								<label><i class="icon-calendar-7"></i> Check in</label> <input
									class="date-pick form-control" data-date-format="M d, D"
									type="text">
							</div>
						</div>
						<div class="col-md-3">
							<div class="form-group">
								<label><i class="icon-calendar-7"></i> Check out</label> <input
									class="date-pick form-control" data-date-format="M d, D"
									type="text">
							</div>
						</div>
						<div class="col-md-2 col-sm-3 col-xs-5">
							<div class="form-group">
								<label>Adults</label>
								<div class="numbers-row">
									<input type="text" value="1" id="adults"
										class="qty2 form-control" name="adults_2">
								</div>
							</div>
						</div>
						<div class="col-md-2 col-sm-3 col-xs-5">
							<div class="form-group">
								<label>Children</label>
								<div class="numbers-row">
									<input type="text" value="0" id="children"
										class="qty2 form-control" name="children_2">
								</div>
							</div>
						</div>
						<div class="col-md-2 col-sm-3 col-xs-12">
							<div class="form-group">
								<label>Rooms</label>
								<div class="numbers-row">
									<input type="text" value="1" id="children"
										class="qty2 form-control" name="rooms">
								</div>
							</div>
						</div>
					</div>
					<!-- End row -->
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>Hotel name</label> <input type="text"
									class="form-control" id="hotel_name" name="hotel_name"
									placeholder="Optionally type hotel name">
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label>Preferred city area</label> <select class="form-control"
									name="area">
									<option value="Centre" selected>Centre</option>
									<option value="Gar du Nord Station">Gar du Nord
										Station</option>
									<option value="La Defance">La Defance</option>
								</select>
							</div>
						</div>
					</div>
					<!-- End row -->
					<hr>
					<button class="btn_1 green">
						<i class="icon-search"></i>Search now
					</button>
				</div>
				<div class="tab-pane" id="transfers">
					<h3>Search Transfers in Paris</h3>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label class="select-label">Pick up location</label> <select
									class="form-control">
									<option value="orly_airport">Orly airport</option>
									<option value="gar_du_nord">Gar du Nord Station</option>
									<option value="hotel_rivoli">Hotel Rivoli</option>
								</select>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label class="select-label">Drop off location</label> <select
									class="form-control">
									<option value="orly_airport">Orly airport</option>
									<option value="gar_du_nord">Gar du Nord Station</option>
									<option value="hotel_rivoli">Hotel Rivoli</option>
								</select>
							</div>
						</div>
					</div>
					<!-- End row -->
					<div class="row">
						<div class="col-md-3">
							<div class="form-group">
								<label><i class="icon-calendar-7"></i> Date</label> <input
									class="date-pick form-control" data-date-format="M d, D"
									type="text">
							</div>
						</div>
						<div class="col-md-3">
							<div class="form-group">
								<label><i class=" icon-clock"></i> Time</label> <input
									class="time-pick form-control" value="12:00 AM" type="text">
							</div>
						</div>
						<div class="col-md-2 col-sm-3">
							<div class="form-group">
								<label>Adults</label>
								<div class="numbers-row">
									<input type="text" value="1" id="adults"
										class="qty2 form-control" name="quantity">
								</div>
							</div>
						</div>
						<div class="col-md-4 col-sm-9">
							<div class="form-group">
								<div class="radio_fix">
									<label class="radio-inline" style="padding-left: 0"> <input
										type="radio" name="inlineRadioOptions" id="inlineRadio1"
										value="option1" checked> One Way
									</label>
								</div>
								<div class="radio_fix">
									<label class="radio-inline"> <input type="radio"
										name="inlineRadioOptions" id="inlineRadio2" value="option2">
										Return
									</label>
								</div>
							</div>
						</div>
					</div>
					<!-- End row -->
					<hr>
					<button class="btn_1 green">
						<i class="icon-search"></i>Search now
					</button>
				</div>
				<div class="tab-pane" id="restaurants">
					<h3>Search Restaurants in Paris</h3>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>Search by name</label> <input type="text"
									class="form-control" id="restaurant_name"
									name="restaurant_name" placeholder="Type your search terms">
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label>Food type</label> <select class="ddslick"
									name="category_2">
									<option value="0"
										data-imagesrc="/img/icons_search/all_restaurants.png" selected>All
										restaurants</option>
									<option value="1"
										data-imagesrc="/img/icons_search/fast_food.png">Fast
										food</option>
									<option value="2"
										data-imagesrc="/img/icons_search/pizza_italian.png">Pizza
										/ Italian</option>
									<option value="3"
										data-imagesrc="/img/icons_search/international.png">International</option>
									<option value="4"
										data-imagesrc="/img/icons_search/japanese.png">Japanese</option>
									<option value="5" data-imagesrc="/img/icons_search/chinese.png">Chinese</option>
									<option value="6" data-imagesrc="/img/icons_search/bar.png">Coffee
										Bar</option>
								</select>
							</div>
						</div>
					</div>
					<!-- End row -->
					<div class="row">
						<div class="col-md-3">
							<div class="form-group">
								<label><i class="icon-calendar-7"></i> Date</label> <input
									class="date-pick form-control" data-date-format="M d, D"
									type="text">
							</div>
						</div>
						<div class="col-md-3">
							<div class="form-group">
								<label><i class=" icon-clock"></i> Time</label> <input
									class="time-pick form-control" value="12:00 AM" type="text">
							</div>
						</div>
						<div class="col-md-2 col-sm-3 col-xs-6">
							<div class="form-group">
								<label>Adults</label>
								<div class="numbers-row">
									<input type="text" value="1" id="adults"
										class="qty2 form-control" name="adults">
								</div>
							</div>
						</div>
						<div class="col-md-2 col-sm-3 col-xs-6">
							<div class="form-group">
								<label>Children</label>
								<div class="numbers-row">
									<input type="text" value="0" id="children"
										class="qty2 form-control" name="children">
								</div>
							</div>
						</div>

					</div>
					<!-- End row -->
					<hr>
					<button class="btn_1 green">
						<i class="icon-search"></i>Search now
					</button>
				</div>
			</div>
		</div>
	</section>
	<!-- End hero -->

	<div class="container margin_60">

		<div class="main_title">
			<h2>
				당신의 <span>공간을</span> 찾아보세요
			</h2>
			<h4>kyeongoh, seolah, taeseong and pureum worked very hard!!! </h4>
		</div>
		<div id="search" class="cst-search">
			<ul class="listType nav nav-tabs">
				<li class="active"><a href="#">Giver</a></li>
				<li><a href="#">Exhibition</a></li>
				<li><a href="#">Flea Market</a></li>
				<li><a href="#">Society</a></li>
			</ul>
		</div>
		<div class="row" id="listWrap">
		
		</div>
		<!-- End row -->

		<!-- <p class="text-center nopadding">
			<a href="#" class="btn_1 medium"><i class="icon-eye-7"></i>View
				all tours (144) </a>
		</p> -->
	</div>
	<!-- End container -->
	<script>
	
		$(function(){
			$(document).on("click",'.like',function(){
				var imgsrc = $(this).attr("src");
				var board_id = $(this).next(".board_id").val();
				console.log(board_id);
				console.log(imgsrc);
				if(imgsrc == "img/like1.png"){//1이 비어있는거				
					$(this).attr("src","img/like2.png");
					
					like("board/insertLike.do",imgsrc,board_id);
							
				}else{
					$(this).attr("src","img/like1.png");
					
					like("board/removeLike.do",imgsrc,board_id);
							
				}
			})
					
			function like(act,src,board_id){
				
				var user_id = $(".user_id").val();
				console.log(act);
				var sendData = {'board_id' : board_id, 'user_id' : user_id };
				$.ajax({
					url:act,
					type :'post',
					data: sendData,
					success : function(data){
						//likecnt("board/selectLikecnt.do");
					}
				})
			}	
						
		})
	</script>

	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-sm-3">
					<h3>Need help?</h3>
					<a href="tel://004542344599" id="phone">010 2733 5696</a> <a
						href="mailto:help@citytours.com" id="email_footer">kyungohhelp@gmail.com</a>
				</div>
				<div class="col-md-3 col-sm-3">
					<h3>About</h3>
					<ul>
						<li><a href="#">About us</a></li>
						<li><a href="#">경오</a></li>
						<li><a href="#">설아</a></li>
						<li><a href="#">태성</a></li>
						<li><a href="#">푸름</a></li>
					</ul>
				</div>
				<!-- <div class="col-md-3 col-sm-3">
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
				</div> -->
			</div>
			<!-- End row -->
			<!-- <div class="row">
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
						<p>© Citytours 2015</p>
					</div>
				</div>
			</div> -->
			<!-- End row -->
		</div>
		<!-- End container -->
	</footer>
	<!-- End footer -->

	<div id="toTop"></div>
	<!-- Back to top button -->

	<!-- Common scripts -->
	<script src="/js/jquery-1.11.2.min.js"></script>
	<script src="/js/common_scripts_min.js"></script>
	<script src="/js/functions.js"></script>

	<!-- Specific scripts -->
	<script src="/js/icheck.js"></script>
	<script>
		$('input').iCheck({
			checkboxClass : 'icheckbox_square-grey',
			radioClass : 'iradio_square-grey'
		});
	</script>
	<script src="/js/bootstrap-datepicker.js"></script>
	<script src="/js/bootstrap-timepicker.js"></script>
	<script>
		$('input.date-pick').datepicker('setDate', 'today');
		$('input.time-pick').timepicker({
			minuteStep : 15,
			showInpunts : false
		})
	</script>
	<script src="/js/jquery.ddslick.js"></script>
	<script>
		$("select.ddslick").each(function() {
			$(this).ddslick({
				showSelectedHTML : true
			});
		});
	</script>
</body>
</html>
