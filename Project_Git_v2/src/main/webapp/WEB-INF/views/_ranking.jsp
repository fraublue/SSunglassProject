<%-- <%@page import="kr.co.sunglass.jdbc.connection.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page import="kr.co.sunglass.dao.UserDAO"%>
<%@page import="kr.co.sunglass.service.UserService"%>
<%@page import="kr.co.sunglass.model.UserVO"%>
<%@page import="kr.co.sunglass.service.UserServiceImpl"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%-- <%
request.setCharacterEncoding("utf-8");
String user_id = request.getParameter("user_id");
String user_id2 = (String) session.getAttribute("user_id");
/* String user_id = (String)session.getAttribute("user_id");

System.out.println(user_id); */

//UserServiceImpl service = UserServiceImpl.getInstance();
UserVO vo = new UserVO();
UserService service = UserServiceImpl.getInstance();

vo = service.searchUserService(user_id);
//vo = (UserVO)request.getAttribute("user");
System.out.println(vo.getU_password());
%> --%>
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
<title>SOCIAL N SPACE</title>

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
                    <h1>Hello Clara!</h1>
                    <p>Ridiculus sociosqu cursus neque cursus curae ante
                        scelerisque vehicula.</p>
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
               <%--  <% if (user_id2.equals(user_id)) { %> --%>
                    <section id="section-4" class="content-current">
                        <div class="row">
                            <div class="col-md-6 col-sm-6">
                                <h4>Your profile</h4>
                                <ul id="profile_summary">
                                    <li>USER_ID <span><%-- <%=vo.getUser_id()%> --%></span></li>
                                    <li>Username <span><%-- <%=vo.getUser_name()%> --%></span></li>                                    
                                    <li>Phone number <span><%-- <%=vo.getTel()%> --%></span></li>                                    
                                    <li>email address<span><%-- <%=vo.getEmail()%> --%></span></li>
                                </ul>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <p>
                                    <img src="img/tourist_guide_pic.jpg" alt=""
                                         class="img-responsive styled profile_pic">
                                </p>
                            </div>
                        </div>
                        <!-- End row -->


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
                                                <td style="width: 35%"><label class="switch-light switch-ios pull-right">
                                                    <input type="checkbox" name="option_1" id="option_1" checked value=""> <span> <span>No</span> <span>Yes</span>
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

            
                            <form action="update.do" method="post">
                                <div class="row">
                                    <div class="col-md-12">
                                        <h4>Edit profile</h4>
                                    </div>
                                    <input type="hidden" name="user_id" value="<%-- <%=vo.getUser_id()%> --%>">

                                    <div class="col-md-6 col-sm-6">
                                        <div class="form-group">
                                            <label>name</label> <input class="form-control"
                                                                       name="user_name" id="first_name" type="text"
                                                                       value="<%-- <%=vo.getUser_name()%> --%>">
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-6">
                                        <div class="form-group">
                                            <label>PHONE NUMBER</label> <input class="form-control"
                                                                               name="tel" id="last_name" type="text" value="<%-- <%=vo.getTel()%> --%>">
                                        </div>
                                    </div>
                                </div>
                                <!-- End row -->

                                <div class="row">
                                    <div class="col-md-6 col-sm-6">
                                        <div class="form-group">
                                            <label>PASSWORD</label> <input class="form-control"
                                                                           name="u_password" id="old_password" type="password"
                                                                           value="<%-- <%=vo.getU_password()%> --%>"
                                                                           placeholder="바꿀 비밀번호 혹은 기존 비밀번호 입력">

                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-6">
                                        <div class="form-group">
                                            <label>Email<small></small></label> <input class="form-control"
                                                                                       name="email" id="old_password" type="text"
                                                                                       value="<%-- <%=vo.getEmail()%> --%>">
                                        </div>
                                    </div>
                                </div>
                                <!-- End row -->

                                <hr>
                                <div class="row">
                                    <div class="col-md-12">
                                        <h4>Edit address</h4>
                                    </div>
                                    <div class="col-md-6 col-sm-6">
                                        <div class="form-group">
                                            <label>Street address</label> <input class="form-control"
                                                                                 name="first_name" id="first_name" type="text">
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-6">
                                        <div class="form-group">
                                            <label>City/Town</label> <input class="form-control"
                                                                            name="last_name" id="last_name" type="text">
                                        </div>
                                    </div>
                                </div>
                                <!-- End row -->

                                <div class="row">
                                    <div class="col-md-6 col-sm-6">
                                        <div class="form-group">
                                            <label>Zip code</label> <input class="form-control"
                                                                           name="email" id="email" type="text">
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-6">
                                        <div class="form-group">
                                            <label>Country</label> <select id="country"
                                                                           class="form-control" name="country">
                                            <option value="">Select...</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <!-- End row -->

                                <hr>
                                <h4>Upload profile photo</h4>
                                <div class="form-inline upload_1">
                                    <div class="form-group">
                                        <input type="file" name="files[]" id="js-upload-files" multiple>
                                    </div>
                                    <button type="submit" class="btn_1 green" id="js-upload-submit">Upload
                                        file</button>
                                </div>

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

                                    <button type="submit" class="btn_1 green">Update Profile</button>
                                </div>
                            </form>

                            <br> <br>
                            <form action="deleteuser.do" method="post">
                                <input type="hidden" name="user_id" value="<%-- <%=vo.getUser_id()%> --%>">
                                <button type="submit" class="btn_1 green">User Leave</button>
                            </form>

                            
    
                        <br> <br>
                    </section>
                        <!-- End section 4 -->
                        <!-- End content -->
                        
                    <!-- End tabs -->
                        <%-- <%
                           }
                           %>     --%>        
            </div>
            <!-- end container -->
            



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
                                        <p>© Citytours 2015</p>
                                    </div>
                                </div>
                            </div>
                            <!-- End row -->
                        </div>
                        <!-- End container -->
                    </footer>
                <!-- End footer -->

                <div id="toTop"></div>
                <!-- Back to top button -->

                <!-- Common scripts -->
                <script src="js/jquery-1.11.2.min.js"></script>
                <script src="js/common_scripts_min.js"></script>
                <script src="js/functions.js"></script>

                <!-- Specific scripts -->
                <script src="js/tabs.js"></script>
                <!-- <script>new CBPFWTabs( document.getElementById( 'tabs' ) );</script> -->
                <script>
                    $('.wishlist_close_admin').on('click', function(c) {
                        $(this).parent().parent().parent().fadeOut('slow', function(c) {
                        });
                    });
                </script>
                
                
                </body>
            </html>