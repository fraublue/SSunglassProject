<%-- <%@page import="kr.co.sunglass.service.UserServiceImpl"%>
<%@page import="kr.co.sunglass.service.UserService"%>
<%@page import="kr.co.sunglass.model.UserVO"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%
request.setCharacterEncoding("utf-8");
String user_id = request.getParameter("user_id");
String u_password = request.getParameter("u_password");
String user_name = request.getParameter("user_name");
String email = request.getParameter("email");
String tel = request.getParameter("tel");
String thumb_nail = request.getParameter("thumb_nail");

out.println(request.getParameter("user_id"));
out.println(request.getParameter("u_password"));
out.println(request.getParameter("user_name"));

out.println(request.getParameter("email"));
out.println(request.getParameter("tel"));
out.println(request.getParameter("thumb_nail"));

UserVO vo = new UserVO();
vo.setUser_id(user_id);
vo.setU_password(u_password);
vo.setUser_name(user_name);
vo.setEmail(email);
vo.setTel(tel);
vo.setThumb_nail(thumb_nail);

UserServiceImpl service = UserServiceImpl.getInstance();
int i = service.updateUserService(vo);

if(i>0){
	System.out.print("업데이트 ok");
	
}else{
	System.out.print("업데이트 ㄴㄴ; ");
}


%> --%>
<script>
history.go(-1);
</script>