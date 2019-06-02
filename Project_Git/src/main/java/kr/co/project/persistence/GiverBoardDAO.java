package kr.co.project.persistence;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.project.domain.CommonBoardVO;
import kr.co.project.domain.Criteria;
import kr.co.project.domain.FavoriteType;
import kr.co.project.domain.GiverBoardVO;
import kr.co.project.domain.SearchCriteria;

@Repository
public class GiverBoardDAO {
	@Inject
	  private SqlSession session;
	

	  private static String namespace = "kr.co.project.BoardMapper";

	  public int giverWriteBoard(GiverBoardVO gvo) throws Exception{
		  return session.insert(namespace+".giverWriteBoard",gvo);
	  }
	  
	  public void updateboardgiver(GiverBoardVO gbvo) throws Exception{
		  session.update(namespace+".updateboardgiver",gbvo);
	  }
	  
	  public void deleteboard(String user_id, int board_id)throws Exception{
		  GiverBoardVO gbvo = new GiverBoardVO();
		  gbvo.setBoard_id(board_id);
		  session.delete(namespace+".deleteboardgiver",gbvo);
	  }
	  
	  public void deletegiverboard_boardid(int board_id) throws Exception{
		  session.delete(namespace+".deletegiverboard_boardid",board_id);
	  }
	  
	  public void deletegiverboard_userid(String user_id) throws Exception{
		  session.delete(namespace+".deletegiverboard_userid",user_id);
	  }
}
