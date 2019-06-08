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
   <!-------------------header-------------------------->
	<%@include file="./include/header.jsp"%>


   
   <section id="search_container" class="social"></section>
   <!-- End hero -->


   <div class="container margin_60">

      
      
      <div class="row" id="takerlist">
      
      </div>
      <p class="text-center nopadding">
			<button class="btn_1 btn_moreView" style="color: white">
				<i class="icon-up-hand"></i>SHOW MORE
			</button>
			</p>
      <!-- End row -->

      <!-- <p class="text-center nopadding">
         <a href="#" class="btn_1 medium"><i class="icon-eye-7"></i>View
            all tours (144) </a>
      </p> -->
   </div>
   <!-- End container -->
   <script>
   $(function() {
	   var page = 1;
		addList(page);
		function addList(currentPage) {
			$.ajax({
				type : "GET",
				url : "<%=request.getContextPath()%>/board/tlist",
				data : {
					page : currentPage,
					
				},
				error : function(err) {
					console.log(err);
				},
				success : function(data) {					
					$("#takerlist").append(data);
				}
			});
		}
		
		 $(".btn_moreView").click(function(){
 			console.log("view");
 			++page;
 			console.log(page);
 			addList(page);
 			return false;
 		})
 		
 		//seol //input박스에 class이름이 form-control의 value값을 user_id에 저장
		//var user_id = $(".form-control" ).val();
			function tsearch(currentPage,user_id){
				 $.ajax({
						type : "GET",
						url : "/board/tsearch",
						data : {
							user_id : user_id,
							page : currentPage
						},
						error : function(err){
							console.log(err);
						},
						success : function(data){
							$("#takerlist").html(data);
						}
					});
				}
				
		/* 	$(".btn-default").click(function(){
				var user_id = $(".form-control" ).val();
				tsearch(1,user_id);
			}) */
			$("#keyword").on('keydown', function(e){
                if(e.keyCode ==13){
                   var user_id = $(this).val();
                   tsearch(1, user_id);
                }
                
             })
             $("#searchbtn").on('click',function(){
                var user_id = $("#keyword").val();
                tsearch(1,user_id);
             })
 		
   })
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