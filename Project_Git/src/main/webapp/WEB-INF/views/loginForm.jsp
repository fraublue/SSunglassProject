<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!DOCTYPE html>
	<!--[if IE 8]><html class="ie ie8"> <![endif]-->
	<!--[if IE 9]><html class="ie ie9"> <![endif]-->
	<!--[if gt IE 9]><!-->	<html> <!--<![endif]-->
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="keywords" content="template, tour template, city tours, city tour, tours tickets, transfers, travel, travel template" />
		<meta name="description" content="Citytours - Premium site template for city tours agencies, transfers and tickets.">
		<meta name="author" content="Ansonika">
		<title>CITY TOURS - City tours and travel site template by Ansonika</title>
		
		<!-- Favicons-->
		<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
		<link rel="apple-touch-icon" type="image/x-icon" href="img/apple-touch-icon-57x57-precomposed.png">
		<link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/apple-touch-icon-72x72-precomposed.png">
		<link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/apple-touch-icon-114x114-precomposed.png">
		<link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/apple-touch-icon-144x144-precomposed.png">
	
		<!-- CSS -->
		<link href="css/base.css" rel="stylesheet">
		
		<!-- CSS -->
		<link href="css/flickity.css" rel="stylesheet">
		<link href="css/custom.css" rel="stylesheet">
		<!-- Google web fonts -->
	   <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
	   <link href='http://fonts.googleapis.com/css?family=Gochi+Hand' rel='stylesheet' type='text/css'>
	   <link href='http://fonts.googleapis.com/css?family=Lato:300,400' rel='stylesheet' type='text/css'>
		
		<!--[if lt IE 9]>
		  <script src="js/html5shiv.min.js"></script>
		  <script src="js/respond.min.js"></script>
		<![endif]-->
		
		<!-- 유효성검사 -->
		<script language="javascript">
		
		function validate() {
			var re = /^[a-zA-Z0-9]{4,12}$/ // 아이디와 패스워드가 적합한지 검사할 정규식
			var id = document.getElementById("id");
		    var pw = document.getElementById("pw");
		    
		       if(id.value=="") {
		           alert("ID를 입력해 주세요");
		           id.focus();
		           return false;
		       }

		       if(pw.value=="") {
		           alert("PASSWORD를 입력해 주세요");
		           pw.focus();
		           return false;
		       }
		       
		     
		}
		       
 		   function check(re, what, message) {
		       if(re.test(what.value)) {
		           return true;
		       }
		       alert(message);
		       what.value = "";
		       what.focus();
		       //return false;
		   } 
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
	
		<!-- Header================================================== -->
		<%@include file="include/header.jsp"%>
		
		<!-- <section id="search_container"> -->
		<section id="search_container" class="login fix-height" >
			<div class="container">
				<div class="row">
					<div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
						<div id="login">
								<div class="text-center"><img src="img/logo_sticky.png" alt="" data-retina="true" ></div>
								<hr>
								<form name="login" onsubmit="return validate();" action="login.do" method="post">
	<!-- login -->
									<div class="form-group">
										<label>UserID</label>
										<input type="text" name="user_id" class=" form-control " placeholder="Username" id="id">
									</div>
									<div class="form-group">
										<label>Password</label>
										<input type="password" name="u_password" class=" form-control" placeholder="Password" id="pw">
									</div>
								  
									<button type="submit" class="btn_full">Sign in</button>
									
									<div class="row">
		                            <div class="login-or"><hr class="hr-or"><span class="span-or">Register</span></div>
		                            <div class="col-md-6 col-sm-6 login_social">
		                                <a href="${pageContext.request.contextPath}/registerForm.do?user_type=1" class="btn btn-primary btn-block"> giver</a>
		                            </div>
		                            <div class="col-md-6 col-sm-6 login_social">
		                                <a href="${pageContext.request.contextPath}/registerForm.do?user_type=0" class="btn btn-info btn-block ">taker</a>
		                            </div>
		                            </div>
								</form>
							</div>
					</div>
				</div>
			</div>
		</section>
	
	<%@include file="./include/footer.jsp"%>
	
	<div id="toTop"></div><!-- Back to top button -->
	
	 <!-- Common scripts -->
	<script src="/js/jquery-1.11.2.min.js"></script>
	<script src="/js/common_scripts_min.js"></script>
	<script src="/js/functions.js"></script>
	
	
	  </body>
	  
	</html>