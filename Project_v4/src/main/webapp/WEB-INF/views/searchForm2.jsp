<%-- <%@page import="kr.co.sunglass.service.UserServiceImpl"%>
<%@page import="kr.co.sunglass.service.UserService"%>
<%@page import="kr.co.sunglass.model.UserVO"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%
request.setCharacterEncoding("utf-8");
	String user_id = request.getParameter("user_id");
	UserServiceImpl service = UserServiceImpl.getInstance();
	UserVO vo = new UserVO();
	vo = service.searchUserService(user_id);
	out.print(vo);
%> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/update.do" method="post">
		<table>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="user_id"
					value="<%-- <%=vo.getUser_id()%> --%>" placeholder="<%-- <%=vo.getUser_id()%> --%>"></td>
			</tr>

			<tr>
				<td>비밀번호</td>
				<td><input type="text" name="u_password"
					value="<%-- <%=vo.getU_password()%> --%>"></td>
			</tr>

			<tr>
				<td>이름</td>
				<td><input type="text" name="user_name"
					value="<%-- <%=vo.getUser_name()%> --%>" placeholder="<%-- <%=vo.getUser_name()%> --%>"></td>
			</tr>

			<tr>
				<td>이메일</td>
				<td><input type="text" name="email" value="<%-- <%=vo.getEmail()%> --%>"></td>
			</tr>

			<tr>
				<td>tel</td>
				<td><input type="text" name="tel" value="<%-- <%=vo.getTel()%> --%>"></td>
			</tr>

			<tr>
				<td>사진</td>
				<td><input type="text" name="thumb_nail"
					value="<%-- <%=vo.getThumb_nail()%> --%>"></td>
			</tr>

			<tr>
				<td><input type="submit" value="수정"></td>
				<td></td>
			</tr>
		</table>
	</form>
</body>
</html>