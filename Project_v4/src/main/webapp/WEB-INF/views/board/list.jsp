<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- <c:set var="list" value="${list}" scope="request" /> --%>
<c:if test="${list !=null}">

	<c:forEach var="bvo" items="${list}" varStatus="status">
		<div class="col-md-4 col-sm-6 wow zoomIn" data-wow-delay="0.1s">

			<div class="tour_container">

				<div class="img_container">
					<a
						href="<%= request.getContextPath()%>/board/boardview.do?board_id=${bvo.board_id}&user_id=${bvo.user_id}&loginUserId=${sessionScope.user_id}">
						<c:if test="${bvo.thumb_img != null }">
							<img src="/upload/${bvo.thumb_img}" class="img-responsive" alt="">
						</c:if>
						<c:if test="${bvo.thumb_img == null }">
							<img src="/data/no-image.png" class="img-responsive" alt="">
						</c:if>
					</a>
				</div>
				<div class="tour_title">
					<h3>
						<strong>${bvo.user_id}</strong>
						
					</h3>
					<c:if test="${sessionScope.user_id != null }">
					<c:forEach begin="${status.index}" end="${status.index}" var="lvo"
							items="${like }">
						<img class="like" src="img/${lvo}" align="right">

						</c:forEach>
						<input type="hidden" value="${bvo.board_id}" class="board_id">
						<input type="hidden" value="${sessionScope.user_id}" class="user_id">
					</c:if>
					
					<!-- End wish list-->
				</div>
			</div>
			<!-- End box tour -->
		</div>
		<!-- End col-md-4 -->
	</c:forEach>
</c:if>


<c:if test="${list == null}">
	<h4>등록된 상품이없습니다.</h4>
</c:if>
