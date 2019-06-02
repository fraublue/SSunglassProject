package kr.co.project.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.co.project.domain.UserHasFavoriteVO;


public interface FavoriteService {
	public void userinsertfavorite(UserHasFavoriteVO fvo) throws Exception;
	public void userdeletefavorite(UserHasFavoriteVO fvo) throws Exception;
	public List<Integer> selectfavo_user(String user_id) throws Exception;
	public void deletefavorite_userid(String user_id) throws Exception;
}
