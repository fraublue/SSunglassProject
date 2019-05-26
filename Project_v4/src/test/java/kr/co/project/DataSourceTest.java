package kr.co.project;

import java.sql.Connection;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.project.domain.CommonBoardVO;
import kr.co.project.service.BoardService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })
public class DataSourceTest {
	@Inject
	private DataSource ds;
	@Inject
	private BoardService service;
	
//	@Test
//	public void testConnection() throws Exception {
//		try {
//			Connection conn = ds.getConnection();
//			System.out.println("\n Connection INFO : " + conn + "\n");
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//	}
	@Test
	public void testCommonBoard() {
		try {
			CommonBoardVO cbvo = new CommonBoardVO();
			cbvo.setBoard_content("수정된 내용입니다");
			cbvo.setBoard_id(18);
			System.out.println(cbvo);
			
			service.updateboardtaker(cbvo);
		}catch (Exception e) {
			// TODO: handle exception
		}
	}
	

}
