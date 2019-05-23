
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
								${list.user_id }<span>|</span>${list.reg_date } <span>|</span> ${list.comment_star }
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
