package kr.co.sunglass.service;

public interface RegisterService {
	public void insert(String user_id, String user_name, String u_password, String email, String tel, String thumb_nail, int user_type);
}
