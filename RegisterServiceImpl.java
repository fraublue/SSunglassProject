package kr.co.sunglass.service;

import java.sql.Connection;

import kr.co.sunglass.dao.UserDAO;
import kr.co.sunglass.jdbc.connection.ConnectionProvider;
import kr.co.sunglass.model.UserVO;


public class RegisterServiceImpl implements RegisterService {

	private static final RegisterServiceImpl instance = new  RegisterServiceImpl();
	
	private RegisterServiceImpl() {}
	
	public static RegisterServiceImpl getInstance () {
		return instance;
	}
	
	@Override
	public void insert(String user_id, String user_name, String u_password, String email, String tel, String thumb_nail,
			int user_type) {
		try {
			UserVO vo = new UserVO();
			vo.setUser_id(user_id);
			vo.setUser_name(user_name);
			vo.setU_password(u_password);
			vo.setEmail(email);
			vo.setTel(tel);
			vo.setThumb_nail(thumb_nail);
			vo.setUser_type(user_type);

			UserDAO dao = UserDAO.getInstance();
			Connection conn = ConnectionProvider.getConnection();
			if (user_type ==1) {								
				int i =dao.insertUserGiver(conn, vo);
				
				if(i ==1) {
					System.out.println("giverinsert success");
				}else {
					System.out.println("giverinsert fail");
				}
				
			}else if(user_type ==0) {
				int i=dao.insertUserTaker(conn, vo);
				
				if(i ==1) {
					System.out.println("takerinsert success");
				}else {
					System.out.println("takerinsert fail");
				}
			}else {
				System.out.println("유저타입 없음 회원가입실패");
			}		
		}catch(Exception e) {
		e.printStackTrace();
		}
	}
}
