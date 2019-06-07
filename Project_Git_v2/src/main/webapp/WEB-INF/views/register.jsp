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
							<!-- thumbnail -->
							<div class="row">
						<div class="col-md-12">
							<div class="form-group">
								<!-- <h4>image</h4> -->
								<div>
									<label>thumbnail</label>
									<div class="dropzone upload-drop-zone">
										<div class="imgs_wrap">
											<ul class="row">
											</ul>
										</div>
										<div class="box_icon_wrap">
											<svg class="box__icon" xmlns="http://www.w3.org/2000/svg"
												width="50" height="43" viewBox="0 0 50 43">
												<path
													d="M48.4 26.5c-.9 0-1.7.7-1.7 1.7v11.6h-43.3v-11.6c0-.9-.7-1.7-1.7-1.7s-1.7.7-1.7 1.7v13.2c0 .9.7 1.7 1.7 1.7h46.7c.9 0 1.7-.7 1.7-1.7v-13.2c0-1-.7-1.7-1.7-1.7zm-24.5 6.1c.3.3.8.5 1.2.5.4 0 .9-.2 1.2-.5l10-11.6c.7-.7.7-1.7 0-2.4s-1.7-.7-2.4 0l-7.1 8.3v-25.3c0-.9-.7-1.7-1.7-1.7s-1.7.7-1.7 1.7v25.3l-7.1-8.3c-.7-.7-1.7-.7-2.4 0s-.7 1.7 0 2.4l10 11.6z"></path></svg>
										<label class="labl"><strong>Choose a file</strong><span
												class="box__dragndrop"> or drag it here</span>.</label>
										</div>
									</div>
									<input type="file" id="file0" class="hidden" name="files"
										multiple>
								</div>
							</div>
						</div>
					</div>
					<!-- thumbnail -->
							
							
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
								<label>Phone</label> <input type="text" name="tel"
									class=" form-control" placeholder="phone">
							</div>
							<div class="form-group">

								<input type="hidden" name="thumb_nail" class=" form-control"
									value="sample.jpg">
							</div>
							<div class="form-group">

								<input type="hidden" name="user_type" class="form-control"
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


	<script>
   
      function frmSubmit(){
         //var type = document.writeForm.user_type.value;
            var gboardData = {
               	user_type:type,
                  addr: $("#address").val(),
                  board_id: 0,
                  user_id: $("#user_id").val(),
                  board_content: $("#message_contact").val(),
                  amenities1: $("#amenti1").is(":checked") ? $("#amenti1").val() : null,
                  amenities2: $("#amenti2").is(":checked") ? $("#amenti2").val() : null,
                  amenities3: $("#amenti3").is(":checked") ? $("#amenti3").val() : null,
                  amenities4: $("#amenti4").is(":checked") ? $("#amenti4").val() : null,
                		  
                  favorite_id1: $("#option_1").is(":checked") ? $("#option_1").val() : 0,
                  favorite_id2: $("#option_2").is(":checked") ? $("#option_2").val() : 0,
                  favorite_id3: $("#option_3").is(":checked") ? $("#option_3").val() : 0,
                  favorite_id4: $("#option_4").is(":checked") ? $("#option_4").val() : 0,
                  favorite_id5: $("#option_5").is(":checked") ? $("#option_5").val() : 0,
                  favorite_id6: $("#option_6").is(":checked") ? $("#option_6").val() : 0,
                  favorite_id7: $("#option_7").is(":checked") ? $("#option_7").val() : 0,
                  favorite_id8: $("#option_8").is(":checked") ? $("#option_8").val() : 0,
                 
                  booking_startdate: $("input[name='booking_startdate']").val(),
                  booking_enddate: $("input[name='booking_enddate']").val(),
                  amenities_etc: $("#amenities_etc").val(),
                  people : $("#people").val()
              }
            $.ajax({
               url:"/register.do",
               
               data: gboardData,
               dataType: "JSON",
               err : function(err){
                  console.log(err);
               },
               success: function(data){
                  console.log(data);
                  uploadFile(data);
                  //uploadFile()
               }
            });
   
         
         //document.writeForm.submit();
         //uploadFile();
         
      }
        var fileIndex = 0;
        // 등록할 전체 파일 사이즈
        var totalFileSize = 0;
        // 파일 리스트
        var fileList = new Array();
        // 파일 사이즈 리스트
        var fileSizeList = new Array();
        // 등록 가능한 파일 사이즈 MB
        var uploadSize = 50;
        // 등록 가능한 총 파일 사이즈 MB
        var maxUploadSize = 500;
        $(function () {
            fileDrop();
            // var ci = 0;
            $(".dropzone").on("click", function (e) {
                e.preventDefault();
                $("#file0").click();
            });
            $("input[type='file']").on('change', function (e) {
                //selectFile(e.target.files);
                //console.log(e.target.files);
                $(".box_icon_wrap").css('display','none');
                 setTimeout(function () {
                    selectFile(e.target.files);
                },10)  
            });

        });
        function fileDrop() {
            var dropzone = $(".dropzone");
            dropzone.on('change', function (e) {
                console.log("changed : " + e);
            })
            dropzone.on('dragenter', function (e) {
                e.stopPropagation();
                e.preventDefault();
                // 드롭다운 영역 css
                dropzone.css('background-color', '#E3F2FC');
            });
            dropzone.on('dragleave', function (e) {
                e.stopPropagation();
                e.preventDefault();
                // 드롭다운 영역 css
                dropzone.css('background-color', '#FFFFFF');
            });
            dropzone.on('dragover', function (e) {
                e.stopPropagation();
                e.preventDefault();
                // 드롭다운 영역 css
                dropzone.css('background-color', '#E3F2FC');
            });

            dropzone.on('drop', function (e) {
                e.preventDefault();
                // 드롭다운 영역 css
                dropzone.css('background-color', '#FFFFFF');
                $(".box_icon_wrap").css('display','none');
                var files = e.originalEvent.dataTransfer.files;
                //selectFile
                selectFile(files);
            });
        }
        function selectFile(files) {
            if (files != null) {
                if (files.length < 1) {
                    alert("폴더 업로드 불가");
                    return;
                }
                //selectFile(files);
                //handleImgsFilesSelect(e);

                // 다중
                for (var i = 0; i < files.length; i++) {
                    // 파일 이름
                    var fileName = files[i].name;
                    var fileNameArr = fileName.split("\.");
                    // 확장자
                    var ext = fileNameArr[fileNameArr.length - 1];
                    // 파일 사이즈(단위 :MB)
                    var fileSize = files[i].size / 1024 / 1024;
                    if ($.inArray(ext, ['exe', 'bat', 'sh', 'java', 'jsp', 'html', 'js', 'css', 'xml']) >= 0) {
                        // 확장자 체크
                        alert("등록 불가 확장자");
                        break;
                    } else if (fileSize > uploadSize) {
                        // 파일 사이즈 체크
                        alert("용량 초과\n업로드 가능 용량 : " + uploadSize + " MB");
                        break;
                    } else {
                        // 전체 파일 사이즈
                        totalFileSize += fileSize;
                        // 파일 배열에 넣기
                        fileList[fileIndex] = files[i];
                        // 파일 사이즈 배열에 넣기
                        fileSizeList[fileIndex] = fileSize;                        
                        var reader = new FileReader();
                        var temp = fileList[fileIndex];
                      
                        reader.onloadend = (function (temp) {
                           return function(){
                        	   img_html = '<li class="thumb_list col-md-3 col-lg-3 col-sm-3 thumb_img_' + fileIndex + '"><img class="prvImg" src="' + this.result + '"></li>';
                               $(".imgs_wrap>ul").append(img_html);
                               setTimeout(function(){
                                  $(".thumb_list .prvImg").each(function(){
                                     var listW = $(".thumb_list").width();
                                      $(".thumb_list").height(listW);
                                     var imgW = $(this).width();
                                     var imgH = $(this).height();
                                     console.log(imgW);
                                     console.log(imgH);
                                     if(imgW < imgH){                                 
                                        $(this).addClass("bigHeight");
                                        var imgH = $(this).height();
                                        $(this).css({"margin-top":-imgH/2});
                                     }else if(imgW > imgH){
                                        
                                        $(this).addClass("bigWidth");
                                        var imgW = $(this).width();
                                        $(this).css({"margin-left":-imgW/2});
                                        
                                     }else{
                                        $(this).css({"width":"100%","height":"auto"});
                                     }                           
                                  });                        
                              },20);                     
                           };
                        })(temp); 
                        reader.readAsDataURL(temp);
                        //console.log(img_html);
                      
                        // // 파일 번호 증가
                        fileIndex++;
                    }
                }
                console.log(fileList);
                // 기존 이미지리스트삭제
                //$(".imgs_wrap>ul").children().remove();
               // imageThumbView(fileList);
            } else {
                alert("ERROR");
            }
        }
    
      
        function deleteFile(fIndex) {
            console.log("del call");
            console.log(fileList[fIndex] + " : " + fileSizeList[fIndex]);
            // 전체 파일 사이즈 수정
            totalFileSize -= fileSizeList[fIndex];

            // 파일 배열에서 삭제
            delete fileList[fIndex];

            // 파일 사이즈 배열 삭제
            delete fileSizeList[fIndex];

            // 업로드 파일 테이블 목록에서 삭제                
            $("#fileli_" + fIndex).remove();
            $(".thumbIdx_" + fIndex).remove();
        }
        
        // 파일 등록
        function uploadFile(board_id) {
            // 등록할 파일 리스트
            var uploadFileList = Object.keys(fileList);
            // 파일이 있는지 체크
            if (uploadFileList.length == 0) {
                // 파일등록 경고창
                alert("등록한 이미지 파일이 없습니다.");
                return ;
            }

            // 용량을 500MB를 넘을 경우 업로드 불가
            if (totalFileSize > maxUploadSize) {
                // 파일 사이즈 초과 경고창
                alert("총 용량 초과\n총 업로드 가능 용량 : " + maxUploadSize + " MB");
                return;
            }

            //if (confirm("등록 하시겠습니까?")) {
                // 등록할 파일 리스트를 formData로 데이터 입력
                var form = $('#boardWriteForm');
                //var userid= $("#user_id").val();
                //var formData = new FormData(form);
                var formData = new FormData();
                for (var i = 0; i < uploadFileList.length; i++) {
                   console.log(fileList[uploadFileList[i]]);
                    formData.append('files', fileList[uploadFileList[i]]);
                }
                //formData.append("user_id",userid);
                formData.append("board_id",board_id);
                console.log(formData.getAll("files"));
                console.log(formData.get("user_id"));
                $.ajax({
                    url: "/upload",
                    data: formData,
                    type: 'POST',
                    enctype: 'multipart/form-data',
                    processData: false,
                    contentType: false,
                    dataType: 'json',
                    cache: false,
                    success: function (result) {
                       console.log(result);
                       window.location.href = "/main.do";
                    }
                });
            //}
        }
        
        
    </script>


</body>
</html>