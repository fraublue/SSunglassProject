package kr.co.sunglass.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import kr.co.sunglass.jdbc.JDBCUtil;
import kr.co.sunglass.model.UserVO;



public class UserDAO {
	// 회원가입(두개) , 회원 프로필 조회 , 회원정보 수정
	// 회원탈퇴 ,
	private static final UserDAO instance = new UserDAO();
	
	private UserDAO() {
		
	};
	
	public static UserDAO getInstance() {
		return instance;
	}
	
	public int insertUserGiver(Connection conn, UserVO vo) throws SQLException {
		PreparedStatement pstmt = null;
		String sql = "insert into user(user_id,user_name,u_password,email,tel,thumb_nail,user_type) values(?,?,password(?),?,?,?,1) ";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getUser_id());
			pstmt.setString(2, vo.getUser_name());
			pstmt.setString(3, vo.getU_password());
			pstmt.setString(4, vo.getEmail());
			pstmt.setString(5, vo.getTel());
			pstmt.setString(6, vo.getThumb_nail());
			return pstmt.executeUpdate();
		} finally {
			JDBCUtil.close(pstmt);
		}
	}

	public int insertUserTaker(Connection conn, UserVO vo) throws SQLException {
		PreparedStatement pstmt = null;
		String sql = "insert into user(user_id,user_name,u_password,email,tel,thumb_nail,user_type) values(?,?,?,?,?,?,0) ";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getUser_id());
			pstmt.setString(2, vo.getUser_name());
			pstmt.setString(3, vo.getU_password());
			pstmt.setString(4, vo.getEmail());
			pstmt.setString(5, vo.getTel());
			pstmt.setString(6, vo.getThumb_nail());
			return pstmt.executeUpdate();
		} finally {
			JDBCUtil.close(pstmt);
		}
	}

	public UserVO selectUser(Connection conn, UserVO vo) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from user where user_id = '?' ";
		UserVO user = new UserVO();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getUser_id());
			rs = pstmt.executeQuery();
			while(rs.next()) {
				user.setUser_name(rs.getString("user_name"));
				user.setUser_id(rs.getString("user_id"));
				user.setThumb_nail(rs.getString("thumb_nail"));
				user.setEmail(rs.getString("email"));
				user.setTel(rs.getString("tel"));
			}
			return user;

		} finally {
			JDBCUtil.close(rs);
			JDBCUtil.close(pstmt);
		}

	}///end select_user
	
	public int updateUser(Connection conn, UserVO vo) throws SQLException{
		PreparedStatement pstmt = null;
		try {
			String sql = "update user set u_password = '?' , email = '?' , tel = '?' , thumb_nail = '?' where user_id = '?' ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getU_password());
			pstmt.setString(2, vo.getEmail());
			pstmt.setString(3, vo.getTel());
			pstmt.setString(4, vo.getThumb_nail());
			pstmt.setString(5, vo.getUser_id());
			return pstmt.executeUpdate();
		}finally {
			JDBCUtil.close(pstmt);
		}
	}//end update 
	
	public int deleteUser(Connection conn , UserVO vo) throws SQLException {
		PreparedStatement pstmt = null;
		try {
			String sql ="DELETE FROM user WHERE user_id = '?'  ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getUser_id());
			return pstmt.executeUpdate();
		}finally {
			JDBCUtil.close(pstmt);
		}
	}//end delete 
	
	
	public String idOverlapCheck(Connection conn, String str)throws SQLException {
		Statement stmt = null;
		ResultSet rs = null;
		try{
			String sql = "select user_id from user where user_id = ' "+ str+ " ' "; 
			stmt = conn.createStatement(); 
			rs = stmt.executeQuery(sql);
			String userid = "";
			if(rs.next()) { //id값이 검색되면 : 중복 o  
				userid = rs.getString(1);//검색한값 return되게 
			}else { // id값 검색안되면 : 중복 x
				userid = "회원가입이 가능합니다";
			}
			return userid;
		}finally {
			JDBCUtil.close(rs);
			JDBCUtil.close(stmt);
		}
	}//end idcheck 
	
	
	public boolean loginCheck(Connection conn, String id, String pwd ) throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		UserVO vo = null;
		boolean flag = false;
		try {
			String sql = "select user_id, u_password from user where user_id = ? ";
			//id값으로 검
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {//회원정보가 있고, 제대로 검색햇을 경우(true)
				String uid = rs.getString("user_id");
				String pw = rs.getString("u_password");
				if(pwd.equals(pw)) {
					flag = true;
					
				}else {
					flag = false;
				}//endif
			}else {
				flag = false;
			}//end if
			return flag;
		}finally {
			JDBCUtil.close(rs);
			JDBCUtil.close(pstmt);
		}
	}//end check 
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
