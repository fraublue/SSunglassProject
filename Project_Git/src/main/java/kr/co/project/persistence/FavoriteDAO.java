package kr.co.project.persistence;

import java.util.List;

import kr.co.project.domain.UserHasFavoriteVO;

public interface FavoriteDAO {
	public void userinsertfavorite(UserHasFavoriteVO fvo) throws Exception;
	public void userdeletefavorite(UserHasFavoriteVO fvo) throws Exception;
	public List<Integer> selectfavo_user(String user_id) throws Exception;
	public void deletefavorite_userid(String user_id) throws Exception;
}
