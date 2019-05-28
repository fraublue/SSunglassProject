
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
		userBoardList(user_id);
		
		function userBoardList(user_id) {
			$.ajax({
				type : "GET",
				url : "<%=request.getContextPath()%>/board/ulist.do",
				data : {
					"user_id" : user_id
				},
				error : function(err) {
					console.log(err);
				},
				success : function(data) {					
					$("#listWrap").append(data);
				}
			});
		}
		
		
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
						<h1>Hello ${sessionScope.user_id }!</h1>
					</c:if>
					<c:if test="${sessionScope.user_id ne vo.user_id}">
						<h1>${vo.user_id}'sprofile</h1>
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
					<li><a href="#section-4" class="icon-profile"><span>Profile</span></a></li>
				</ul>
			</nav>
			<div class="content">
				<!-- 
			<section id="section-3"> 
			
-->

				<hr>


				<section id="section-4" class="content-current">
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
							<img src="/data/${vo.thumb_nail}" alt=""
								class="img-responsive styled profile_pic">
							<!--	</p>-->
						</div>
					</div>
				

					<!-- End row -->
					<div>
						<h4>
							<span >${vo.user_id}</span>'S post
						</h4>
						<div id="listWrap" class="row"></div>
					</div>
					<c:if test="${sessionScope.user_id eq vo.user_id}">
						<div class="divider"></div>
						<br>
						<div class="row">
							<div class="col-md-6 col-sm-6">
								<h4>Notification settings</h4>
								<table class="table table-striped options_cart">
									<tbody>
										<tr>
											<td style="width: 10%"><i class="icon_set_1_icon-33"></i>
											</td>
											<td style="width: 60%">New Citytours Tours</td>
											<td style="width: 35%"><label
												class="switch-light switch-ios pull-right"> <input
													type="checkbox" name="option_1" id="option_1" checked
													value=""> <span> <span>No</span> <span>Yes</span>
												</span> <a></a>
											</label></td>
										</tr>
										<tr>
											<td><i class="icon_set_1_icon-6"></i></td>
											<td>New Citytours Hotels</td>
											<td><label class="switch-light switch-ios pull-right">
													<input type="checkbox" name="option_2" id="option_2"
													value=""> <span> <span>No</span> <span>Yes</span>
												</span> <a></a>
											</label></td>
										</tr>
										<tr>
											<td><i class="icon_set_1_icon-26"></i></td>
											<td>New Citytours Transfers</td>
											<td><label class="switch-light switch-ios pull-right">
													<input type="checkbox" name="option_3" id="option_3"
													value="" checked> <span> <span>No</span> <span>Yes</span>
												</span> <a></a>
											</label></td>
										</tr>
										<tr>
											<td><i class="icon_set_1_icon-81"></i></td>
											<td>New Citytours special offers</td>
											<td><label class="switch-light switch-ios pull-right">
													<input type="checkbox" name="option_4" id="option_4"
													value=""> <span> <span>No</span> <span>Yes</span>
												</span> <a></a>
											</label></td>
										</tr>
									</tbody>
								</table>
								<button type="submit" class="btn_1 green">Update
									notifications settings</button>
							</div>
						</div>
						<!-- End row -->

						<!--
			</section>
				 End section 3 
				 
-->
				</section>

				<form action="/update.do" method="post" onsubmit="return validate();">
					<div class="row">
						<div class="col-md-12">
							<h4>Edit profile</h4>
						</div>
						<input type="hidden" id="user_id" name="user_id"
							value="${vo.user_id}">

						<div class="col-md-6 col-sm-6">
							<div class="form-group">
								<label>name</label> <input class="form-control" name="user_name"
									id="user_name" type="text" value="${vo.user_name}">
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
								<label>Email<small></small></label> <input class="form-control"
									name="email" id="email" type="text" value="${vo.email}">
							</div>
						</div>
					</div>
					<button type="submit" class="btn_1 green">Update Profile</button>
				</form>
				<!-- End row -->

				<hr>


				<hr>

				<!-- Hidden on mobiles -->
				<div class="hidden-xs">
					<!-- Drop Zone -->
					<h5>Or drag and drop files below</h5>
					<div class="upload-drop-zone" id="drop-zone">Just drag and
						drop files here</div>
					<!-- Progress Bar -->
					<div class="progress">
						<div class="progress-bar" role="progressbar" aria-valuenow="60"
							aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
							<span class="sr-only">60% Complete</span>
						</div>
					</div>
					<!-- Upload Finished -->
					<div class="js-upload-finished">
						<h5>Processed files</h5>
						<div class="list-group">
							<a href="#" class="list-group-item list-group-item-success"><span
								class="badge alert-success pull-right">Success</span>image-01.jpg</a>
							<input type="hidden" name="thumb_nail"
								value="<%-- <%=vo.getThumb_nail()%> --%>">
						</div>
					</div>
					<!-- End Hidden on mobiles -->

					<hr>



					<!-- End section 4 -->

					<div></div>


					<br> <br>
					<form action="deleteuser.do" method="post">
						<input type="hidden" name="user_id" value="${vo.user_id }">
						<button type="submit" class="btn_1 green">User Leave</button>
					</form>

				</div>
				<br> <br>
				</c:if>

				<!-- End content -->



			</div>
			<!-- End tabs -->
		</div>
		<!-- end container -->

	</div>
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
			
			
			if($("#password").val() == ""){
				alert("비밀번호를 입력하세요 ! ");
				return false;
			}
			if($("#email").val() == ""){
				alert("이메일을 입력해주세요");
				return false;
			}
			if($("#user_name").val() == ""){
				alert("이름을 입력하세요 ! ");
				return false;
			}
			if($("#tel").val() == ""){
				alert("전화번호를 입력하세요 ! ");
				return false;
			}
			if(!/^[a-zA-Z0-9]{4,12}$/.test($("#password").val())){
				alert("패스워드는 4~12자의 영문 대소문자와 숫자로만 입력");
				return false;
			}
				
				
			alert("정보수정이 완료되었습니다.");
			
		}

	</script>
</body>
</html>