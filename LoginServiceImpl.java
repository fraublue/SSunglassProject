package kr.co.sunglass.service;

import java.sql.Connection;

import kr.co.sunglass.dao.UserDAO;
import kr.co.sunglass.jdbc.connection.ConnectionProvider;
import kr.co.sunglass.model.UserVO;


public class LoginServiceImpl implements LoginService {

   private static final LoginServiceImpl instance = new  LoginServiceImpl();
   
   private LoginServiceImpl() {}
   
   public static LoginServiceImpl getInstance () {
      return instance;
   }
   
   @Override
   public String check(String user_id, String u_password) {
	   String a = null;
      try {
         UserDAO dao = UserDAO.getInstance();
         Connection conn = ConnectionProvider.getConnection();
         boolean flag =dao.loginCheck(conn, user_id, u_password);
            
            if(flag) {
            	System.out.println("회원정보가 찾았습니다.");
               a = "Success";
            } else {
            	System.out.println("회원정보를 없습니다.");
               a = "Fail";
            }     
      }catch(Exception e) {
    	  e.printStackTrace();
      }
	return a;
   }
}