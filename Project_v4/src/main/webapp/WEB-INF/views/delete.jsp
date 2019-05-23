<%-- <%@page import="kr.co.sunglass.model.UserVO"%>
<%@page import="kr.co.sunglass.service.UserServiceImpl"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%
request.setCharacterEncoding("utf-8");
String user_id= request.getParameter("user_id");



UserServiceImpl impl = UserServiceImpl.getInstance();
UserVO vo = new UserVO();
vo.setUser_id(user_id);

int i = impl.leaveUserService(vo);
if(i>0){
	System.out.println("삭제성공");
}else{
	System.out.println("삭제에 실패하였습니다");
}
%> --%>

<script>
location.href = "main.do";
</script>