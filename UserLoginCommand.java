package kr.co.sunglass.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.sunglass.service.LoginService;
import kr.co.sunglass.service.LoginServiceImpl;

public class UserLoginCommand implements CommandController{

   
   @Override
   public String process(HttpServletRequest request, HttpServletResponse response) throws Throwable {
      
      String user_id = request.getParameter("user_id");
      String u_password = request.getParameter("u_password");
      System.out.println(user_id+", "+u_password);

      LoginService lsi = LoginServiceImpl.getInstance();
      String a = lsi.check(user_id, u_password); 

      if(a.equals("Success")) {
    	  HttpSession session = request.getSession();
    	  session.setAttribute("user_id", user_id);
//    	  ArrayList<> list = (ArrayList<>)session.getAttribute("");
    	  return request.getContextPath()+"/html/index.jsp";
      } else {
    	  request.setAttribute("flag",false);
    	  return request.getContextPath()+"/html/loginfalied.jsp";
      }
      }
}