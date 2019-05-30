package kr.co.project.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.project.domain.BookmarkVO;
import kr.co.project.domain.CommonBoardVO;
import kr.co.project.domain.Criteria;

@Repository
public class BookmarkDAOImpl implements BookmarkDAO {

	
	@Inject
	private SqlSession session;
	
	private static String namespace ="kr.co.project.mapper.BookmarkMapper";	
	
	@Override
	public void insertBookmark(BookmarkVO vo) {
		System.out.println(">>>>>>>>>>>>>>>>dao�샂");	
		session.insert(namespace+".insertBookmark", vo);
		
	}


	@Override
	public void deletBookmark(BookmarkVO vo) {
			
		session.delete(namespace+".deleteBookmark", vo);
		
	}


	@Override
	public boolean checkExistBookmark(int board_id, String user_id) {
		System.out.println("sql �떎�뻾�쟾 " + board_id + user_id);
		BookmarkVO vo = new BookmarkVO();
		vo.setBoard_id(board_id);
		vo.setUser_id(user_id);
		String test = session.selectOne(namespace+".checkExistBookmark", vo);
		System.out.println(test+"11111111");
		if(test != null) {
			return false;
		} else {
			return true;
		}
//		System.out.println(user_id);
//		return (user_id == null)? true : false ;
		//議고쉶�맂 媛믪씠 �꼸媛믪씠硫� 遺곷쭏�겕瑜� �븞�븿->true
		//二꾪쉶�맂 媛믪씠 �꼸媛믪씠 �븘�땲硫� 遺곷쭏�겕瑜� �뻽�쓬 -> false
	}

	@Override
	public List<CommonBoardVO> bookmarkList(String user_id) {
		Criteria cri= new Criteria();	
		return session.selectList(namespace+".bookmarkList", user_id);
	}
}
