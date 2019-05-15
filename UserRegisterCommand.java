package kr.co.sunglass.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.sunglass.service.RegisterService;
import kr.co.sunglass.service.RegisterServiceImpl;

public class UserRegisterCommand implements CommandController{

	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		String user_id = request.getParameter("user_id");
		String user_name = request.getParameter("user_name");
		String u_password = request.getParameter("u_password");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		String thumb_nail = request.getParameter("thumb_nail");
		int user_type = Integer.parseInt(request.getParameter("user_type"));



		RegisterService rsi = RegisterServiceImpl.getInstance();
		rsi.insert(user_id, user_name, u_password, email, tel, thumb_nail, user_type); 

		return request.getContextPath()+"/html/index.jsp";
	}
}