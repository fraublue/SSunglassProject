package kr.co.sunglass.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.sunglass.command.CommandController;
import kr.co.sunglass.command.UserRegisterCommand;


@WebServlet("*.do")
public class UserFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		try {
	         process(request, response);
	      } catch (Throwable e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      } 
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
	         process(request, response);
	      } catch (Throwable e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      } 
	}

	private void process(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
	      CommandController Controller = null;
	      String viewPage="";
	      String frontPath = new String(request.getRequestURL());
	      int pathLoc = frontPath.lastIndexOf(request.getContextPath())+request.getContextPath().length();
	      frontPath = frontPath.substring(pathLoc+1);
	      
	      if(frontPath.equals("register.do")) {
		         Controller = new UserRegisterCommand();
		      }
		      
		      if(Controller != null) {
		         viewPage = Controller.process(request,response);
		         response.sendRedirect(viewPage);
//		         RequestDispatcher rd = request.getRequestDispatcher(viewPage);
//		         rd.forward(request,response);
		      }
	      
	}
}
