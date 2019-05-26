
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
	


<c:forEach items="${commentList}" var="list">
				<div class="commentlist">
					<ol>
						<li>
						<div class="avatar"><a href="#"><img src="<%=request.getContextPath() %>/data/aa.png" alt=""></a></div><!-- png or jpg -->
						<div class="comment_right clearfix">
							<div class="comment_info">
								<input type="hidden" value="${board_id}" name="board_id" class="board_id">
								<span name="user_id" name="user_id">${list.user_id }</span><span>|</span>${list.reg_date } <span>|</span> ${list.comment_star } <span>|</span>
								<c:if test="${sessionScope.user_id eq list.user_id }">
								<span><a class = "delete" href="commentdelete?comment_id=${list.comment_id }" >
								<input type="hidden" value="${list.comment_id }" name="comment_id" class="comment_id">
								삭제</a></span>
								</c:if>
							</div>
							<p>
								${list.content }
							</p>
						</div>
						</li>
					</ol>
				</div>
				<hr>
				</c:forEach>
				
				<script>
				
				$(".delete").on('click', function() {
					alert("댓글 삭제합니다");
				});
				</script>
