
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link href="css/custom.css" rel="stylesheet">
<!-- SPECIFIC CSS -->
<link href="css/admin.css" rel="stylesheet">
<link href="css/jquery.switch.css" rel="stylesheet">

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
		var user_id = $(".uid").text()
		//var user_id = ${vo.user_id}+"";
		var currentPage = 1;
		userBoardList(user_id,currentPage);
		
		function userBoardList(user_id,currentPage) {
			$.ajax({
				type : "GET",
				url : "<%=request.getContextPath()%>/board/ulist.do",
				data : {
					"user_id" : user_id,
					"page" : currentPage
				},
				error : function(err) {
					console.log(err);
				},
				success : function(data) {
					$("#listWrap").append(data);
				}
			});
		}
		
		$(".btn_moreView").click(function(){
			++currentPage;
			console.log(user_id);
			console.log(currentPage);
			userBoardList(user_id, currentPage);
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
	<%@include file="include/header.jsp"%>

	<!-- end header -------------------- -->
	<section id="search_container">
		<section class="parallax-window" data-parallax="scroll"
			data-image-src="img/admin_top.jpg" data-natural-width="1400"
			data-natural-height="470">
			<div class="parallax-content-1">
				<div class="animated fadeInDown">
					<c:if test="${sessionScope.user_id eq vo.user_id}">
						<h1>
							Hello <span class="idid">${sessionScope.user_id }</span>!
						</h1>
					</c:if>
					<c:if test="${sessionScope.user_id ne vo.user_id}">
						<h1>${vo.user_id}'sProfile</h1>
					</c:if>
				</div>
			</div>
		</section>
	</section>
	<!-- End section -->

	<div id="position">
		<div class="container">
			<ul>
				<li><a href="#">Home</a></li>
				<li><a href="#">Category</a></li>
				<li>Page active</li>
			</ul>
		</div>
	</div>
	<!-- End Position -->

	<div class="margin_60 container">
		<div id="tabs" class="tabs">
			<nav>
				<ul>
					<li><a href="#section-1" class="icon-profile"><span>Profile</span></a></li>
					<li><a href="#section-2"><img src="img/star1.png"
							width="20px" height="20px"><span>Bookmark</span></a></li>
				</ul>
			</nav>

			<div class="content">

				<section id="section-2">
					<div class="row">
						<div class="col-md-6 col-sm-6">
							<h4>
								<span class="uid">${vo.user_id}</span> profile
							</h4>

							<c:if test="${sessionScope.user_id ne vo.user_id}">
								<ul id="profile_summary">
									<li>Username <span>${vo.user_name}</span></li>
									<li>Phone number <span>${vo.tel}</span></li>
									<li>email address<span>${vo.email}</span></li>
								</ul>
							</c:if>

							<c:if test="${sessionScope.user_id eq vo.user_id}">
								<ul id="profile_summary">
									<li>USER_ID <span>${vo.user_id}</span></li>
									<li>Username <span>${vo.user_name}</span></li>
									<li>Phone number <span>${vo.tel}</span></li>
									<li>email address<span>${vo.email}</span></li>
								</ul>
							</c:if>
						</div>

						<div class="col-md-6 col-sm-6">
							<img src="/uploads/${vo.thumb_nail}" alt=""
								class="img-responsive styled profile_pic">
							<!--	</p>-->
						</div>
					</div>


					<!-- End row -->
					<div>
						<h4>
							<span>${vo.user_id}</span>'s POST
						</h4>
						<div id="listWrap" class="row"></div>

					</div>
					<button class="btn_1 btn_moreView" style="color: white">
						<i class="icon-up-hand"></i>SHOW MORE
					</button>
					<c:if test="${sessionScope.user_id eq vo.user_id}">
						<div class="divider"></div>
						<br>
						<div class="row">
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
													</c:forEach>>
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
													</c:forEach>>
													<span> <span>No</span> <span>Yes</span>
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
													</c:forEach>>
													<span> <span>No</span> <span>Yes</span>
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
													</c:forEach>>
													<span> <span>No</span> <span>Yes</span>
												</span> <a></a>
											</label></td>
										</tr>


									</tbody>

								</table>


							</div>
							<!--  -->

							<div class="col-md-6 col-sm-6">

								<table class="table table-striped options_cart">
									<tbody>
										<tr>
											<td style="width: 10%"><i class="icon_set_1_icon-33"></i>
											</td>
											<td style="width: 60%">PHOTO</td>
											<td style="width: 35%"><label
												class="switch-light switch-ios pull-right"> <input
													type="checkbox" name="option_5" id="option_5" value="5"
													<c:forEach items="${fav}" var="fa">
														<c:if test="${fa == 5}">
														checked=""
														</c:if>
													</c:forEach>>
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
													</c:forEach>>
													<span> <span>No</span> <span>Yes</span>
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
													</c:forEach>>
													<span> <span>No</span> <span>Yes</span>
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
													</c:forEach>>
													<span> <span>No</span> <span>Yes</span>
												</span> <a></a>
											</label></td>
										</tr>


									</tbody>

								</table>


							</div>
							<script>
						$(document).ready(function() {
							$("#option_1").on("click", function() {
								var favorite_id = $("#option_1").val();
								console.log(favorite_id);
								src_2 = $("#option_1").is(":checked") ? $(this).val() : "we" ;
								console.log(src_2);
								if(src_2 == $("#option_1").val()){
									favorite("insertfavoriteuser.do",favorite_id);
								}else{
									favorite("deletefavoriteuser.do",favorite_id);
								}
							})
							
							$("#option_2").on("click", function() {
								var favorite_id = $("#option_2").val();
								console.log(favorite_id);
								src_2 = $("#option_2").is(":checked") ? $(this).val() : "we" ;
								console.log(src_2);
								if(src_2 == $("#option_2").val()){
									favorite("insertfavoriteuser.do",favorite_id);
								}else{
									favorite("deletefavoriteuser.do",favorite_id);
								}
							})
							
							$("#option_3").on("click", function() {
								var favorite_id = $("#option_3").val();
								console.log(favorite_id);
								src_2 = $("#option_3").is(":checked") ? $(this).val() : "we" ;
								console.log(src_2);
								if(src_2 == $("#option_3").val()){
									favorite("insertfavoriteuser.do",favorite_id);
								}else{
									favorite("deletefavoriteuser.do",favorite_id);
								}
							})
							
							$("#option_4").on("click", function() {
								var favorite_id = $("#option_4").val();
								console.log(favorite_id);
								src_2 = $("#option_4").is(":checked") ? $(this).val() : "we" ;
								console.log(src_2);
								if(src_2 == $("#option_4").val()){
									favorite("insertfavoriteuser.do",favorite_id);
								}else{
									favorite("deletefavoriteuser.do",favorite_id);
								}
							})
							
							$("#option_5").on("click", function() {
								var favorite_id = $("#option_5").val();
								console.log(favorite_id);
								src_2 = $("#option_5").is(":checked") ? $(this).val() : "we" ;
								console.log(src_2);
								if(src_2 == $("#option_5").val()){
									favorite("insertfavoriteuser.do",favorite_id);
								}else{
									favorite("deletefavoriteuser.do",favorite_id);
								}
							})
							
							$("#option_6").on("click", function() {
								var favorite_id = $("#option_6").val();
								console.log(favorite_id);
								src_2 = $("#option_6").is(":checked") ? $(this).val() : "we" ;
								console.log(src_2);
								if(src_2 == $("#option_6").val()){
									favorite("insertfavoriteuser.do",favorite_id);
								}else{
									favorite("deletefavoriteuser.do",favorite_id);
								}
							})
							
							$("#option_7").on("click", function() {
								var favorite_id = $("#option_7").val();
								console.log(favorite_id);
								src_2 = $("#option_7").is(":checked") ? $(this).val() : "we" ;
								console.log(src_2);
								if(src_2 == $("#option_7").val()){
									favorite("insertfavoriteuser.do",favorite_id);
								}else{
									favorite("deletefavoriteuser.do",favorite_id);
								}
							})
							
							$("#option_8").on("click", function() {
								var favorite_id = $("#option_8").val();
								console.log(favorite_id);
								src_2 = $("#option_8").is(":checked") ? $(this).val() : "we" ;
								console.log(src_2);
								if(src_2 == $("#option_8").val()){
									favorite("insertfavoriteuser.do",favorite_id);
								}else{
									favorite("deletefavoriteuser.do",favorite_id);
								}
							})
							
						
							
							function favorite(act,favorite_id) {
								
								var user_id = $("#user_id").val();
								var sendData = {
									'favorite_id' : favorite_id,
									'user_id' : user_id
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


							<!--  -->

						</div>
						<!-- End row -->
						<br>
						<hr>



						<form action="/update.do" method="post"
							onsubmit="return validate();">
							<br>
							<div class="row">
								<div class="col-md-12">
									<h4>Edit profile</h4>
								</div>
								<input type="hidden" id="user_id" name="user_id"
									value="${vo.user_id}">

								<div class="col-md-6 col-sm-6">
									<div class="form-group">
										<label>NAME</label> <input class="form-control"
											name="user_name" id="user_name" type="text"
											value="${vo.user_name}">
									</div>
								</div>
								<div class="col-md-6 col-sm-6">
									<div class="form-group">
										<label>PHONE NUMBER</label> <input class="form-control"
											name="tel" id="tel" type="text" value="${vo.tel}">
									</div>
								</div>
							</div>
							<!-- End row -->

							<div class="row">
								<div class="col-md-6 col-sm-6">
									<div class="form-group">
										<label>PASSWORD</label> <input class="form-control"
											name="u_password" id="password" type="password"
											value="${vo.u_password}" placeholder="바꿀 비밀번호 혹은 기존 비밀번호 입력"
											id="pw">

									</div>
								</div>
								<div class="col-md-6 col-sm-6">
									<div class="form-group">
										<label>EMAIL<small></small></label> <input
											class="form-control" name="email" id="email" type="text"
											value="${vo.email}">
									</div>
								</div>
							</div>
							<button type="submit" class="btn_1 green">Update Profile</button>
						</form>
						<!-- End row -->
						<br>
						<br>
						<!-- Hidden on mobiles -->
						<div class="hidden-xs">

							<!-- End Hidden on mobiles -->

							<hr>
							<h4>UPLOAD YOUR PROFILE</h4>
							<form action="/uploaduser" method="post" enctype="multipart/form-data">
							<input type="hidden" name="user_id" value="${vo.user_id }">
							<input type="file" id="file0" class="file" name="files" >
								<button type="submit" class="btn_1 green" id="js-upload-submit">Upload file</button>
								<br>
							</form>

							<hr>
							
							<!-- End section 4 -->

							<div></div>


							<br> <br>
							<form action="/deleteuser.do" method="post">
								<input type="hidden" name="user_id" value="${vo.user_id }">
								<button type="submit" class="btn_1 green">User Leave</button>
							</form>

						</div>
						<br>
						<br>
					</c:if>

				</section>

				<section id="section-2">
					<div class="row">

						<div name="bookmark" id="bookmarklist"></div>


					</div>
					<!-- End row -->
					<button class="btn_1 btn_moreView2" style="color: white">
						<i class="icon-up-hand"></i>SHOW MORE
					</button>

				</section>
				<!-- End section 2 -->

			</div>
			<!-- End content -->

		</div>
		<!-- End tabs -->

	</div>
	<!-- end container -->

	<%@include file="include/footer.jsp"%>


	<!-- End footer -->

	<div id="toTop"></div>
	<!-- Back to top button -->

	<!-- Common scripts -->
	<script src="js/jquery-1.11.2.min.js"></script>

	<script src="js/common_scripts_min.js"></script>
	<script src="js/functions.js"></script>

	<!-- Specific scripts -->
	<script src="js/pw_strenght.js"></script>
	<!-- <script>new CBPFWTabs( document.getElementById( 'tabs' ) );</script> -->
	<script>
		$('.wishlist_close_admin').on('click', function(c) {
			$(this).parent().parent().parent().fadeOut('slow', function(c) {
			});
		});

		function validate() {

			if ($("#password").val() == "") {
				alert("비밀번호를 입력하세요 ! ");
				return false;
			}
			if ($("#email").val() == "") {
				alert("이메일을 입력해주세요");
				return false;
			}
			if ($("#user_name").val() == "") {
				alert("이름을 입력하세요 ! ");
				return false;
			}
			if ($("#tel").val() == "") {
				alert("전화번호를 입력하세요 ! ");
				return false;
			}
			if (!/^[a-zA-Z0-9]{4,12}$/.test($("#password").val())) {
				alert("패스워드는 4~12자의 영문 대소문자와 숫자로만 입력");
				return false;
			}

			alert("정보수정이 완료되었습니다.");

		}
	</script>
	<script src="js/tabs.js"></script>
	<script>
		new CBPFWTabs(document.getElementById('tabs'));
	</script>
	<script>
	
	
	$(document).on('click',"#section-2",function(){
		bookmarkList(aa);
	})
		<%-- $(function() {
			function bookmarkList(user_id) {
				var user_id = ${sessionScope.user_id};
				
				$.ajax({
					type : "GET",
					url : "<%=request.getContextPath()%>/bookmarklist.nn",
					data : {
						"user_id" : user_id,

					},
					error : function(err) {
						console.log(err);
					},
					success : function(data) {
						$("#bookmarklist").html(data);
					}
				});
			}
		}) --%>
	$(function() {
		
		var stpage = 1;
		var user_id = $(".uid").text()
		//var user_id = ${vo.user_id}+"";
		bookmarkList(user_id,stpage);
		
		function bookmarkList(user_id,page) {
			$.ajax({
				type : "GET",
				url : "<%=request.getContextPath()%>/bookmarklist.nn",
				data : {
					"user_id" : user_id,
					"page" : page
				},
				error : function(err) {
					console.log(err);
				},
				success : function(data) {
					$("#bookmarklist").append(data);
				}
			});
		}
		
		$(".btn_moreView2").click(function(){
			++stpage;
			console.log(user_id);
			console.log(stpage);
			bookmarkList(user_id, stpage);
			return false;
		})
		

	})
	</script>
	
</body>
</html>