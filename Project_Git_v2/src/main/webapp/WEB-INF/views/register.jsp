<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<% request.setCharacterEncoding("utf-8"); %>

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
	<!-- <section id="search_container"> -->
	<section id="search_container" class="login fix-height">
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
					<div id="login">
						<div class="text-center">
							<img src="img/logo_sticky.png" alt="" data-retina="true">
						</div>
						<hr>
						<form name="join" onsubmit="return validate();"
							action="register.do" method="post">
							<div class="form-group">
								<label>UserID</label> <input type="text" name="user_id"
									class=" form-control" placeholder="userID" id="user_id">
								<div class="from-group">
									<br>
									<p class="result">
										<button type="button" class="idcheck">
											<i class="icon-eye-7"></i>
										</button>
										<span class="msg">아이디를 확인해주세요</span>
									</p>
								</div>

							</div>
						
							
							
							<div class="form-group">
								<label>UserName</label> <input type="text" name="user_name"
									class=" form-control" id="username"placeholder="Username">
							</div>
							<div class="form-group">
								<label>Password</label> <input type="password" name="u_password"
									class=" form-control" placeholder="4~12자리의 영문 대소문자와 숫자로만 입력"
									id="pw">
							</div>
							<div class="form-group">
								<label>Check Password</label> <input type="password"
									class=" form-control" id="checkpw">
							</div>

							<div class="form-group">
								<label>Email</label> <input type="email" name="email"
									class=" form-control" placeholder="Email" id="email">
							</div>
							<div class="form-group">
								<label>Phone</label> <input type="text" name="tel" id="tel"
									class=" form-control" placeholder="phone">
							</div>
							<div class="form-group">

								<input type="hidden" name="thumb_nail" class=" form-control"
									value="sample.jpg">
							</div>
							<div class="form-group">

								<input type="hidden" name="user_type" class="form-control" id="user_type"
									value="${param.user_type }">
							</div>

							<div id="pass-info" class="clearfix"></div>
							<button type="submit" id="submit" class="btn_full" disabled="disabled">확인</button>
								

						</form>
					</div>
				</div>
			</div>
		</div>
	</section>

	<%@include file="./include/footer.jsp"%>

	<div id="toTop"></div>
	<!-- Back to top button -->

	<!-- Common scripts -->
	<script src="js/jquery-1.11.2.min.js"></script>
	<script src="js/common_scripts_min.js"></script>
	<script src="js/functions.js"></script>

	<!-- Specific scripts -->
	<script src="js/pw_strenght.js"></script>
	<!-- <script src='https://code.jquery.com/jquery-3.3.1.min.js'></script> -->

	<!-- 유효성검사 -->
	<script language="javascript">
		function validate() {
			var re = /^[a-zA-Z0-9]{4,12}$/ // 아이디와 패스워드가 적합한지 검사할 정규식
			var re2 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
			// 이메일이 적합한지 검사할 정규식

			var id = document.getElementById("user_id");
			var pw = document.getElementById("pw");
			var email = document.getElementById("email");
			/*        var num1 = document.getElementById("num1");
			 var num2 = document.getElementById("num2"); */

			// ------------ 이메일 까지 -----------
			if (!check(re, id, "아이디는 4~12자의 영문 대소문자와 숫자로만 입력해야 합니다")) {
				return false;
			}

			
			if($("#username").val() == ""){
				alert("이름을 입력하세요 ! ");
				return false;
			}
			if (!check(re, pw, "패스워드는 4~12자의 영문 대소문자와 숫자로만 입력")) {
				return false;
			}

			if (join.pw.value != join.checkpw.value) {
				alert("비밀번호가 다릅니다. 다시 확인해 주세요.");
				join.checkpw.value = "";
				join.checkpw.focus();
				return false;
			}

			if (email.value == "") {
				alert("이메일을 입력해 주세요");
				email.focus();
				return false;
			}

			if (!check(re2, email, "적합하지 않은 이메일 형식입니다.")) {
				return false;
			}

			if (join.tel.value == "") {
				alert("전화번호를 입력해 주세요");
				join.tel.focus();
				return false;
			}

			alert("회원가입이 완료되었습니다.");
		}

		function check(re, what, message) {
			if (re.test(what.value)) {
				return true;
			}
			alert(message);
			what.value = "";
			what.focus();
			//return false;
		}

		$(".idcheck").click(function() {
			var id = document.getElementById("user_id");
			var query = {
				user_id : $("#user_id").val()
			};

			$.ajax({
				url : "idcheck.do",
				type : "post",
				data : query,
				error : function(err) {
					console.log(err);
				},
				success : function(data) {
					
					if (data == 1 && $("#user_id").val() == "") {
						$(".result .msg").text("아이디를 확인해주세요 ");
						$(".result .msg").attr("style", "color:#f00");
						$("#submit").attr("disabled", "disabled");
					} else if(data == 1 ){
						$(".result .msg").text("중복되지 않은 id 입니다 ");
						$(".result .msg").attr("style",  "color:#00f");
						$("#submit").removeAttr("disabled");
					}
					else if (data != 1){
						$(".result .msg").text("중복된 id 입니다 ");
						$(".result .msg").attr("style", "color:#f00");
						$("#submit").attr("disabled", "disabled");
					}
				}
			}); // ajax 끝
		});
	</script>

<script src="/js/jquery-1.11.2.min.js"></script>
	<script src="/js/common_scripts_min.js"></script>
	<script src="/js/functions.js"></script>




</body>
</html>