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
<!-- <link rel="shortcut icon" href="/img/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" type="/image/x-icon"
	href="/img/apple-touch-icon-57x57-precomposed.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="72x72"
	href="/img/apple-touch-icon-72x72-precomposed.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="114x114"
	href="/img/apple-touch-icon-114x114-precomposed.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="144x144"
	href="/img/apple-touch-icon-144x144-precomposed.png">
 -->
<!-- CSS -->
<link href="/css/base.css" rel="stylesheet">
<link href="/css/admin.css" rel="stylesheet">
<link href="/css/jquery.switch.css" rel="stylesheet">
<!-- CSS -->
<link href="/css/flickity.css" rel="stylesheet">
<link href="/css/custom.css" rel="stylesheet">
<link href="/css/date_time_picker.css" rel="stylesheet">
<!-- Google web fonts -->
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Gochi+Hand'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Lato:300,400'
	rel='stylesheet' type='text/css'>
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
<!--[if lt IE 9]>
      <script src="js/html5shiv.min.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
    
<%	

	//int type = Integer.parseInt((String)session.getAttribute("user_type"));	
	String user_id = (String)session.getAttribute("user_id");
	
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
					<c:if test ="${ sessionScope.user_type == 1 }">
						<form action="<%=request.getContextPath()%>/board/updateg" method="get">
					</c:if>
					<c:if test ="${ sessionScope.user_type == 0 }"> 
						<form action="<%=request.getContextPath()%>/board/update" method="get">
					</c:if>
						<div class="row">
							<div class="col-md-6 col-sm-6">
								<div class="form-group">
									<h4>ID</h4>
									<input type="text" class="form-control" name="user_id"
										value="${sessionScope.user_id}" readonly>
									<%-- ${user_id} --%>
								</div>
							</div>
						</div>
						<!-- End row -->

						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<h4>Message</h4>
									<textarea rows="5" id="message_contact" name="board_content"
										class="form-control" placeholder="Write your message"
										style="height: 200px;">${common_board.board_content}</textarea>
								</div>
							</div>
						</div>
					<!--  GiverWritePage -->
					<c:if test ="${ sessionScope.user_type == 1 }">
						<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
						<script type="text/javascript"
							src="http://dapi.kakao.com/v2/maps/sdk.js?appkey=b71c545210111992d3f4b64ae0245b27&libraries=services"></script>
						<div class="row">
							<div class="col-md-6 col-sm-6 cst-form-group">
								<div class="cst-form-group">
									<h4>주소</h4>
									<div class="form-group">
										<input type="text" id="postcode"
											class="form-control cst-form-control" placeholder="우편번호">
										<input type="button" style="height: 40px;"
											onclick="execDaumPostcode()" class="btn_1" value="우편번호 찾기">
									</div>
								</div>
								<div class="cst-form-group">
									<div class="form-group">
										<input type="text" id="address"
											class="cst-form-control form-control" name="addr"
											value="${giver_board.addr }"
											placeholder="주소"> <input type="text"
											id="extraAddress" class="cst-form-control form-control"
											placeholder="참고항목">
									</div>
								</div>
								<div class="cst-form-group">
									<div class="form-group">
										<input type="text" id="detailAddress"
											class="cst-form-width form-control" placeholder="상세주소">

									</div>
								</div>
							</div>
							<div class="col-md-6 col-sm-6 cst-form-group">
								<div id="map" style="width: 100%; height: 380px;"></div>
							</div>
						</div>
						<script>
							//$(function(){
							var initAddr = $("#address").val();
							if (initAddr != "") {
								loadMap(initAddr);
								removeBox();
							}

							function loadMap(address) {
								//address = document.getElementById('address').value;
								var mapContainer = document
										.getElementById('map'), mapOption = {
									center : new daum.maps.LatLng(33.450701,
											126.570667),
									level : 7
								};
								var map = new daum.maps.Map(mapContainer,
										mapOption);
								var geocoder = new daum.maps.services.Geocoder();
								geocoder
										.addressSearch(
												address,
												function(result, status) {
													if (status === daum.maps.services.Status.OK) {
														var coords = new daum.maps.LatLng(
																result[0].y,
																result[0].x);
														var marker = new daum.maps.Marker(
																{
																	map : map,
																	position : coords
																});

														var infowindow = new daum.maps.InfoWindow(
																{
																	content : '<div id="removeBox" style="width:150px;text-align:center;padding:6px 0;"></div>'
																});
														infowindow.open(map,
																marker);
														map.setCenter(coords);
														$("#removeBox")
																.ready(
																		function() {
																			var rmvbox = $(
																					"#removeBox")
																					.parent();
																			rmvbox
																					.parent()
																					.remove();
																		});
													}
												});
							}
							function removeBox() {
								$("#removeBox").ready(function() {
									var rmvbox = $("#removeBox").parent();
									rmvbox.parent().remove();
								});
							}
							function execDaumPostcode() {
								new daum.Postcode(
										{
											oncomplete : function(data) {
												var addr = ''; // 주소 변수
												var extraAddr = ''; // 참고항목 변수
												if (data.userSelectedType === 'R') {
													addr = data.roadAddress;
												} else {
													addr = data.jibunAddress;
												}
												if (data.userSelectedType === 'R') {
													if (data.bname !== ''
															&& /[동|로|가]$/g
																	.test(data.bname)) {
														extraAddr += data.bname;
													}
													// 건물명이 있고, 공동주택일 경우 추가한다.
													if (data.buildingName !== ''
															&& data.apartment === 'Y') {
														extraAddr += (extraAddr !== '' ? ', '
																+ data.buildingName
																: data.buildingName);
													}
													if (extraAddr !== '') {
														extraAddr = ' ('
																+ extraAddr
																+ ')';
													}
													document
															.getElementById("extraAddress").value = extraAddr;

												} else {
													document
															.getElementById("extraAddress").value = '';
												}
												document
														.getElementById('postcode').value = data.zonecode;
												document
														.getElementById("address").value = addr;
												// loadMap
												loadMap(addr);

												document.getElementById(
														"detailAddress")
														.focus();
											}
										}).open();
							}
							//})
						</script>
						<div class="row">
							<div class="col-md-6 col-sm-6">
								<div class="col-md-12 col-sm-12">
									<h4>건물정보</h4>
								</div>
								<table class="table table-striped options_cart">
									<tbody class="checkedCheck">
										<tr>
											<td style="width: 10%"><i class="icon_set_1_icon-22"></i>
											</td>
											<td style="width: 60%">Pet allowed</td>
											<td style="width: 35%"><label
												class="switch-light switch-ios pull-right"><input
													type="checkbox" name="amenities1" id="amenti1" value="Pet allowed"
													<c:if test='${giver_board.amenities1 != null}'> checked=""</c:if>> <span> <span>No</span> <span>Yes</span>
												</span> <a></a>
											</label></td>
										</tr>
										<tr>
											<td><i class="icon_set_1_icon-86"></i></td>
											<td>Free Wifi</td>
											<td><label class="switch-light switch-ios pull-right">
											
													<input type="checkbox" name="amenities2" id="amenti2"
													value="Free Wifi" <c:if test='${giver_board.amenities2 != null}'> checked=""</c:if>> <span> <span>No</span>
														<span>Yes</span>
												</span> <a></a>
											</label></td>
										</tr>
										<tr>
											<td><i class="icon_set_1_icon-13"></i></td>
											<td>Accessibiliy</td>
											<td><label class="switch-light switch-ios pull-right">
													<input type="checkbox" name="amenities3" id="amenti2"
													value="Accessibiliy" <c:if test='${giver_board.amenities3 != null}'> checked=""</c:if>> <span> <span>No</span>
														<span>Yes</span>
												</span> <a></a>
											</label></td>
										</tr>
										<tr>
											<td><i class="icon_set_1_icon-27"></i></td>
											<td>Parking</td>
											<td><label class="switch-light switch-ios pull-right">												
													<input type="checkbox" name="amenities4" id="amenti4"
													value="Parking" <c:if test='${giver_board.amenities4 != null}'> checked=""</c:if>> <span> <span>No</span>
														<span>Yes</span>
												</span> <a></a>
											</label></td>
										</tr>
										<!-- <tr>
											<td><i class="icon_set_1_icon-81"></i></td>
											<td>체크5</td>
											<td><label class="switch-light switch-ios pull-right">
													<input type="checkbox" name="amenities5" id="amenti5"
													value="체크5" checked=""> <span> <span>No</span>
														<span>Yes</span>
												</span> <a></a>
											</label></td>
										</tr> -->
									</tbody>
								</table>
							</div>
							<div class="col-md-6 col-sm-6">
								<div class="col-md-12 col-sm-12">
									<h4>이용 가능 날짜</h4>
								</div>
								<div class="col-md-12">
									<div class="form-group cst-form-group-layout cst-form-group">
										<label><i class="icon-calendar-7"></i> Start Date</label> <input
											class="date-pick1 form-control" name="booking_startdate"
											data-date-format="yyyy-mm-dd" type="text" value="${giver_board.booking_startdate}">
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group cst-form-group-layout cst-form-group">
										<label><i class="icon-calendar-7"></i> End Date</label>
										<!-- <input class="date-pick form-control" name="booking_enddate" data-date-format="M d, D" type="text"> -->
										<input class="date-pick2 form-control" name="booking_enddate" value="${giver_board.booking_enddate}"
											data-date-format="yyyy-mm-dd" type="text">
									</div>
								</div>
								<div class="col-md-12 col-sm-12 col-xs-12">
									<div class="form-group cst-form-group-layout cst-form-group">
										<label>수용가능 인원</label>
										<div class="numbers-row">
											<input type="text" value="${giver_board.people}" id="adults"
												class="qty2 form-control" name="people">
											<div class="inc button_inc">+</div>
											<div class="dec button_inc">-</div>
										</div>
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group cst-form-group-layout">
										<label>ETC</label>
										<textarea rows="5" id="message_contact" name="amenities_etc"
											class="form-control" placeholder="Write your message"
											style="height: 53px;">${giver_board.amenities_etc}</textarea>
									</div>
								</div>
							</div>
						</div>
						</c:if>
						<!--  -->
						<h4>FAVORITE</h4>
							<div class="col-md-6 col-sm-6">

								<table class="table table-striped options_cart">
									<tbody>
										<tr>
											<td style="width: 10%"><i class="icon_set_1_icon-23"></i>
											</td>
											<td style="width: 60%">COMMERCIAL</td>
											<td style="width: 35%"><label
												class="switch-light switch-ios pull-right"> <input
													type="checkbox" name="option_1" id="option_1" value="1"
													<c:forEach items="${fav}" var="fa">
														<c:if test="${fa == 1}">
														checked=""
														</c:if>
													</c:forEach>
													>
													<span> <span>No</span> <span>Yes</span>
												</span> <a></a>
											</label></td>
										</tr>
										<tr>
											<td><i class="icon-basket"></i></td>
											<td>FLEA MARKET</td>
											<td><label class="switch-light switch-ios pull-right">
													<input type="checkbox" name="option_2" id="option_2"
													value="2"
													<c:forEach items="${fav}" var="fa">
														<c:if test="${fa == 2}">
														checked=""
														</c:if>
													</c:forEach>
													> <span>
														<span>No</span> <span>Yes</span>
												</span> <a></a>
											</label></td>
										</tr>
										<tr>
											<td><i class="icon_set_1_icon-26"></i></td>
											<td>EXHIBITION</td>
											<td><label class="switch-light switch-ios pull-right">
													<input type="checkbox" name="option_3" id="option_3"
													value="3"
													<c:forEach items="${fav}" var="fa">
														<c:if test="${fa == 3}">
														checked=""
														</c:if>
													</c:forEach>
													> <span>
														<span>No</span> <span>Yes</span>
												</span> <a></a>
											</label></td>
										</tr>
										<tr>
											<td><i class="icon_set_1_icon-81"></i></td>
											<td>POP - UP STORE</td>
											<td><label class="switch-light switch-ios pull-right">
													<input type="checkbox" name="option_4" id="option_4"
													value="4"
													<c:forEach items="${fav}" var="fa">
														<c:if test="${fa == 4}">
														checked=""
														</c:if>
													</c:forEach>
													> <span>
														<span>No</span> <span>Yes</span>
												</span> <a></a>
											</label></td>
										</tr>


									</tbody>

								</table>


							</div>
							

							<div class="col-md-6 col-sm-6">

								<table class="table table-striped options_cart">
									<tbody>
										<tr>
											<td style="width: 10%"><i class="icon_set_1_icon-33"></i>
											</td>
											<td style="width: 60%">New Citytours Tours</td>
											<td style="width: 35%"><label
												class="switch-light switch-ios pull-right"> <input
													type="checkbox" name="option_5" id="option_5" value="5"
													<c:forEach items="${fav}" var="fa">
														<c:if test="${fa == 5}">
														checked=""
														</c:if>
													</c:forEach>
													>
													<span> <span>No</span> <span>Yes</span>
												</span> <a></a>
											</label></td>
										</tr>
										<tr>
											<td><i class="icon_set_1_icon-6"></i></td>
											<td>STUDY</td>
											<td><label class="switch-light switch-ios pull-right">
													<input type="checkbox" name="option_6" id="option_6"
													value="6"
													<c:forEach items="${fav}" var="fa">
														<c:if test="${fa == 6}">
														checked=""
														</c:if>
													</c:forEach>
													> <span>
														<span>No</span> <span>Yes</span>
												</span> <a></a>
											</label></td>
										</tr>
										<tr>
											<td><i class="icon_set_1_icon-26"></i></td>
											<td>SMALL GROUP</td>
											<td><label class="switch-light switch-ios pull-right">
													<input type="checkbox" name="option_7" id="option_7"
													value="7"
													<c:forEach items="${fav}" var="fa">
														<c:if test="${fa == 7}">
														checked=""
														</c:if>
													</c:forEach>
													> <span>
														<span>No</span> <span>Yes</span>
												</span> <a></a>
											</label></td>
										</tr>
										<tr>
											<td><i class="icon_set_1_icon-81"></i></td>
											<td>SMALL WEDDING</td>
											<td><label class="switch-light switch-ios pull-right">
													<input type="checkbox" name="option_8" id="option_8"
													value="8"
													<c:forEach items="${fav}" var="fa">
														<c:if test="${fa == 8}">
														checked=""
														</c:if>
													</c:forEach>
													> <span>
														<span>No</span> <span>Yes</span>
												</span> <a></a>
											</label></td>
										</tr>


									</tbody>

								</table>


							</div>
						<!--  -->
						<div class="row">
							<div class="col-md-6">							
									
									<input type="hidden" name="user_type" value="${sessionScope.user_type}">						
								<input type="hidden" id ="board_id" name="board_id" value="${common_board.board_id }">
								<input type="submit" value="MODIFY" class="btn_1" id="submit-contact">
							</div>
						</div>
					</form>
				</div>
			</div>
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
	<script src="/js/bootstrap-datepicker.js"></script>
	<script>
		var i = $('input.date-pick1').val();
		$('input.date-pick1').datepicker('setDate', i);
		var i2 = $('input.date-pick2').val();
		$('input.date-pick2').datepicker('setDate', i2);
		$(".checkedCheck").each(function(){
			var chk = $(this).find("input[type='checkbox']").is(":checked");
			if(!chk){
				$(this).val(null);
			}
			
		})
		function checkbox(){
			
			if ($('input[name=sampleCheckbox]').is(":checked")) {
			    $('input[name=sampleHidden]').val('Y');
			} else {
			    $('input[name=sampleHidden]').val('N');
			}



		
		}
	</script>
	<script src="/js/jquery-1.11.2.min.js"></script>
	<script src="/js/common_scripts_min.js"></script>
	<script src="/js/functions.js"></script>
		<script>
						$(document).ready(function() {
							$("#option_1").on("click", function() {
								var favorite_id = $("#option_1").val();
								console.log(favorite_id);
								src_2 = $("#option_1").is(":checked") ? $(this).val() : "we" ;
								console.log(src_2);
								if(src_2 == $("#option_1").val()){
									favorite("insertfavboard.do",favorite_id);
								}else{
									favorite("deletefavboard.do",favorite_id);
								}
							})
							
							$("#option_2").on("click", function() {
								var favorite_id = $("#option_2").val();
								console.log(favorite_id);
								src_2 = $("#option_2").is(":checked") ? $(this).val() : "we" ;
								console.log(src_2);
								if(src_2 == $("#option_2").val()){
									favorite("insertfavboard.do",favorite_id);
								}else{
									favorite("deletefavboard.do",favorite_id);
								}
							})
							
							$("#option_3").on("click", function() {
								var favorite_id = $("#option_3").val();
								console.log(favorite_id);
								src_2 = $("#option_3").is(":checked") ? $(this).val() : "we" ;
								console.log(src_2);
								if(src_2 == $("#option_3").val()){
									favorite("insertfavboard.do",favorite_id);
								}else{
									favorite("deletefavboard.do",favorite_id);
								}
							})
							
							$("#option_4").on("click", function() {
								var favorite_id = $("#option_4").val();
								console.log(favorite_id);
								src_2 = $("#option_4").is(":checked") ? $(this).val() : "we" ;
								console.log(src_2);
								if(src_2 == $("#option_4").val()){
									favorite("insertfavboard.do",favorite_id);
								}else{
									favorite("deletefavboard.do",favorite_id);
								}
							})
							
							$("#option_5").on("click", function() {
								var favorite_id = $("#option_5").val();
								console.log(favorite_id);
								src_2 = $("#option_5").is(":checked") ? $(this).val() : "we" ;
								console.log(src_2);
								if(src_2 == $("#option_5").val()){
									favorite("insertfavboard.do",favorite_id);
								}else{
									favorite("deletefavboard.do",favorite_id);
								}
							})
							
							$("#option_6").on("click", function() {
								var favorite_id = $("#option_6").val();
								console.log(favorite_id);
								src_2 = $("#option_6").is(":checked") ? $(this).val() : "we" ;
								console.log(src_2);
								if(src_2 == $("#option_6").val()){
									favorite("insertfavboard.do",favorite_id);
								}else{
									favorite("deletefavboard.do",favorite_id);
								}
							})
							
							$("#option_7").on("click", function() {
								var favorite_id = $("#option_7").val();
								console.log(favorite_id);
								src_2 = $("#option_7").is(":checked") ? $(this).val() : "we" ;
								console.log(src_2);
								if(src_2 == $("#option_7").val()){
									favorite("insertfavboard.do",favorite_id);
								}else{
									favorite("deletefavboard.do",favorite_id);
								}
							})
							
							$("#option_8").on("click", function() {
								var favorite_id = $("#option_8").val();
								console.log(favorite_id);
								src_2 = $("#option_8").is(":checked") ? $(this).val() : "we" ;
								console.log(src_2);
								if(src_2 == $("#option_8").val()){
									favorite("insertfavboard.do",favorite_id);
								}else{
									favorite("deletefavboard.do",favorite_id);
								}
							})
							
						
							
							function favorite(act,favorite_id) {
								
								var board_id = $("#board_id").val();
								var sendData = {
									'favorite_id' : favorite_id,
									'board_id' : board_id
								};
								 $.ajax({
									url : act,
									data : sendData,
									success : function(data) {
										console.log("ㅎㅇ");
									}
								}) 
							}

						})
					</script>


</body>
</html>

