package kr.co.project.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.project.domain.ContentImgVO;



@Repository
public class ContentImgDAO {
	@Inject
	  private SqlSession session;

	  private static String namespace = "kr.co.upload.UploadMapper";
	  
	  public int contentImgWrite(ContentImgVO vo) throws Exception{
		  return session.insert(namespace+".contentImgWrite", vo);
	  }
	  
	  public String getFirstImg(int board_id) throws Exception{
		  return session.selectOne(namespace+".getFirstImg",board_id);
	  }
}
