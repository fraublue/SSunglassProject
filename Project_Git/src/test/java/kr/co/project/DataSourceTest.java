package kr.co.project;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.project.domain.CommonBoardVO;
import kr.co.project.domain.UserHasFavoriteVO;
import kr.co.project.persistence.FavoriteDAO;
import kr.co.project.service.BoardService;
import kr.co.project.service.FavoriteService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })
public class DataSourceTest {
	
	@Inject
	private FavoriteDAO fdao;
	@Inject
	private FavoriteService fservice;
	

//	@Test
//	public void testCommonBoard() {
//		UserHasFavoriteVO fvo = new UserHasFavoriteVO();
//		fvo.setFavorite_id(1);
//		fvo.setUser_id("aa");
//		System.out.println(fvo);
//		try {
//			fdao.userinsertfavorite(fvo);
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		
//	}
	
	@Test
	public void delete() {
		List<Integer> list = new ArrayList<Integer>();
		
		try {
			list = fservice.selectfavo_user("aa");
			System.out.println(list);
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		try {
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	

}
