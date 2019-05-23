package kr.co.project.presistence;

import java.util.List;

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
}
