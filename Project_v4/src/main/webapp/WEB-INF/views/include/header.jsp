<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<header>
	<div id="top_line">
		<div class="container">
			<div class="row">
				<!-- <div class="col-md-6 col-sm-6 col-xs-6">
						<i class="icon-phone"></i><strong>02 539 8879</strong>
					</div> -->

				<div class="col-md-12 col-sm-12 col-xs-12">
					<ul id="top_links">
						<li>
							<div class="dropdown dropdown-access">
								<c:if test="${sessionScope.user_id == null }">
									<a href="${pageContext.request.contextPath}/loginForm.do" id="access_link">Sign in</a>
								</c:if>
								<c:if test="${sessionScope.user_id != null }">
									<a href="${pageContext.request.contextPath}/userboard.jsp" class="dropdown-toggle"
										data-toggle="dropdown" id="access_link">${sessionScope.user_id}님</a>
									<div class="dropdown-menu">
										<div class="row">
											<div class="col-md-6 col-sm-6 col-xs-6">
												<a
													href="${pageContext.request.contextPath}/searchuser.do?user_id=<%=session.getAttribute("user_id")%>"
													class="bt_facebook"> 개인페이지 </a>
											</div>
											<div class="col-md-6 col-sm-6 col-xs-6">
												<a href="${pageContext.request.contextPath}/logout.do" class="bt_paypal"> 로그아웃 </a>
											</div>
										</div>
								</c:if>
								<!-- <div class="login-or">
											<hr class="hr-or">
											<span class="span-or">or</span>
										</div>
										<div class="form-group">
											<input type="text" class="form-control"
												id="inputUsernameEmail" placeholder="Email">
										</div>
										<div class="form-group">
											<input type="password" class="form-control"
												id="inputPassword" placeholder="Password">
										</div>
										<a id="forgot_pw" href="#">Forgot password?</a> <input
											type="submit" name="Sign_in" value="Sign in" id="Sign_in"
											class="button_drop"> <input type="submit"
											name="Sign_up" value="Sign up" id="Sign_up"
											class="button_drop outline"> -->
							</div>
				</div>
				<!-- End Dropdown access -->
				</li>
				<!-- <li><a href="wishlist.html" id="wishlist_link">Wishlist</a></li> -->
				</ul>
			</div>
		</div>
		<!-- End row -->
	</div>
	<!-- End container-->
	</div>
	<!-- End top line-->

	<div class="container">
		<div class="row">
			<div class="col-md-3 col-sm-3 col-xs-3">
				<div id="logo">
					<a href="/"><img src="/img/logo.png" width="160"
						height="34" alt="City tours" data-retina="true"
						class="logo_normal"></a> <a href="main.do"><img
						src="/img/logo_sticky.png" width="160" height="34"
						alt="City tours" data-retina="true" class="logo_sticky"></a>
				</div>
			</div>
			<nav class="col-md-9 col-sm-9 col-xs-9">
				<a class="cmn-toggle-switch cmn-toggle-switch__htx open_close"
					href="javascript:void(0);"><span>Menu mobile</span></a>
				<div class="main-menu">
					<div id="header_menu">
						<img src="/img/logo_sticky.png" width="160" height="34"
							alt="City tours" data-retina="true">
					</div>
					<a href="#" class="open_close" id="close_in"><i
						class="icon_set_1_icon-77"></i></a>
					<ul>
						<li class="submenu"><a href="javascript:void(0);"
							class="show-submenu">Social <!-- <i class="icon-down-open-mini"></i> --></a>
							<!-- <ul>
									<li><a href="index.html">With Hotels and Tours</a></li>
									<li><a href="index_2.html">With Only tours</a></li>
									<li><a href="index_3.html">Single image</a></li>
									<li><a href="index_4.html">Header video</a></li>
									<li><a href="index_7.html">With search panel</a></li>
									<li><a href="index_5.html">With map</a></li>
									<li><a href="index_6.html">With search bar</a></li>
									<li><a href="index_8.html">Search bar + Video</a></li>
									<li><a href="index_9.html">With Text Rotator</a></li>
									<li><a href="index_10.html">With Cookie Bar (EU law)</a></li>
									<li><a href="index_11.html">Popup Advertising</a></li>
								</ul> --></li>
						<li class="submenu"><a href="javascript:void(0);"
							class="show-submenu">Space <!-- <i class="icon-down-open-mini"></i> --></a>
							<!-- <ul>
									<li><a href="all_tours_list.html">All tours list</a></li>
									<li><a href="all_tours_grid.html">All tours grid</a></li>
									<li><a href="single_tour.html">Single tour page</a></li>
									<li><a href="single_tour_with_gallery.html">Single
											tour with gallery</a></li>
									<li><a href="javascript:void(0);">Single tour fixed
											sidebar</a>
										<ul>
											<li><a href="single_tour_fixed_sidebar.html">Single
													tour fixed sidebar</a></li>
											<li><a
												href="single_tour_with_gallery_fixed_sidebar.html">Single
													tour 2 Fixed Sidebar</a></li>
											<li><a href="cart_fixed_sidebar.html">Cart Fixed
													Sidebar</a></li>
											<li><a href="payment_fixed_sidebar.html">Payment
													Fixed Sidebar</a></li>
											<li><a href="confirmation_fixed_sidebar.html">Confirmation
													Fixed Sidebar</a></li>
										</ul></li>
									<li><a href="single_tour_working_booking.php">Single
											tour working booking</a></li>
									<li><a href="cart.html">Single tour cart</a></li>
									<li><a href="payment.html">Single tour booking</a></li>
								</ul> --></li>
						<li class="submenu"><a href="${pageContext.request.contextPath}/board/writePage"
							class="show-submenu">Write <!-- <i class="icon-down-open-mini"></i> -->
						</a> <!-- <ul>
									<li><a href="all_hotels_list.html">All hotels list</a></li>
									<li><a href="all_hotels_grid.html">All hotels grid</a></li>
									<li><a href="single_hotel.html">Single hotel page</a></li>
									<li><a href="single_hotel_datepicker_adv.html">Single
											hotel datepicker adv</a></li>
									<li><a href="single_hotel_working_booking.php">Single
											hotel working booking</a></li>
									<li><a href="cart_hotel.html">Cart hotel</a></li>
									<li><a href="payment_hotel.html">Booking hotel</a></li>
									<li><a href="confirmation_hotel.html">Confirmation
											hotel</a></li>
								</ul> --></li>

					</ul>
				</div>
				<!-- End main-menu -->
				<ul id="top_tools">
					<li>
						<div class="dropdown dropdown-search">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i
								class="icon-search"></i></a>
							<div class="dropdown-menu">
								<form>
									<div class="input-group">
										<input type="text" class="form-control"
											placeholder="Search..."> <span
											class="input-group-btn">
											<button class="btn btn-default" type="button"
												style="margin-left: 0;">
												<i class="icon-search"></i>
											</button>
										</span>
									</div>
								</form>
							</div>
						</div>
					</li>
					<li>
						<!-- End dropdown-cart-->
					</li>
				</ul>
			</nav>
		</div>
	</div>
	<!-- container -->
</header>
<!-- End Header -->