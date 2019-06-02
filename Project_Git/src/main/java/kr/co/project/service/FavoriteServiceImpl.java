package kr.co.project.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.project.domain.UserHasFavoriteVO;
import kr.co.project.persistence.FavoriteDAO;

@Service
public class FavoriteServiceImpl implements FavoriteService {
	@Inject
	private FavoriteDAO fao;

	@Override
	public void userinsertfavorite(UserHasFavoriteVO fvo) throws Exception {
		fao.userinsertfavorite(fvo);

	}

	@Override
	public void userdeletefavorite(UserHasFavoriteVO fvo) throws Exception {
		fao.userdeletefavorite(fvo);

	}

	@Override
	public List<Integer> selectfavo_user(String user_id) throws Exception {
		return fao.selectfavo_user(user_id);
		
	}

	@Override
	public void deletefavorite_userid(String user_id) throws Exception {
		fao.deletefavorite_userid(user_id);
	}


}
