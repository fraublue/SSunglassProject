<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<c:if test="${list !=null}">
	<c:forEach var="bvo" items="${list}" >
		<div class="strip_booking">
				<div class="row">
					<div class="col-md-2 col-sm-2">
						<div class="date">
							<span class="month">${bvo.booking_startdate.substring(5,7)}</span>
							<span class="day"><strong>${bvo.booking_startdate.substring(8,10)}</strong>Sat</span>
						</div>
					</div>
					<div class="col-md-2 col-sm-2">
						<div class="date">
							<span class="month">${bvo.booking_startdate.substring(5,7)}</span>
							<span class="day"><strong>${bvo.booking_enddate.substring(8,10)}</strong>Sat</span>
						</div>
					</div>
					<div class="col-md-4 col-sm-5">
						<h3 class="hotel_booking">${bvo.addr}<span>2 Adults / 2 Nights</span></h3>
					</div>
					<div class="col-md-2 col-sm-3">
						<ul class="info_booking">
							<li><strong>Booking id</strong> ${bvo.giver_id}</li>
							<li><strong>Booked on</strong> Sat. 23 Dec. 2015</li>
						</ul>
					</div>
					<div class="col-md-2 col-sm-2">
						<div class="booking_buttons">
							<a href="#0" class="btn_2">Edit</a>
							<a href="#0" class="btn_3">Cancel</a>
						</div>
					</div>
				</div><!-- End row -->
			</div><!-- End strip booking -->
			</c:forEach>
			
	
</c:if>


<c:if test="${list == null}">
	<h4>등록된 <span>예약이 없습니다.</span></h4>
</c:if>
