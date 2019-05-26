package kr.co.project.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import kr.co.project.domain.CommentVO;
import kr.co.project.domain.CommonBoardVO;
import kr.co.project.domain.FavoriteType;
import kr.co.project.domain.GiverBoardVO;

public interface BoardService {

	public List<CommonBoardVO> takerlistAll() throws Exception;
	
	public List<CommonBoardVO> giverlistAll() throws Exception;

	public int userTypeListCountAll(int type) throws Exception;

	public List<CommonBoardVO> favoriteTypeList(FavoriteType ftype) throws Exception;

	public int favoriteListCount(FavoriteType ftype) throws Exception;

	//public List<CommonBoardVO> userBoardList(String user_id) throws Exception;


	public int takerWriteBoard(CommonBoardVO vo) throws Exception;
	
	public int giverWriteBoard(GiverBoardVO gvo) throws Exception;
	
	public int getWritedBoardID(String user_id) throws Exception;
	
	///////////////////
	// 20190521 ts
	///////////////
	public List<CommonBoardVO> listAll() throws Exception;
	public List<CommonBoardVO> listUser(String user_id) throws Exception ;
	public CommonBoardVO commmonboard(int board_id) throws Exception;
	public GiverBoardVO giverboard(int board_id) throws Exception;
	///////////////////
	
	public void insertcomment(CommentVO vo);
	public List<CommentVO> commentlistboardid(int board_id) throws Exception;
	//댓글
	
	
	
	//글수정
	public void updateboardtaker(CommonBoardVO cbvo) throws Exception;
	public void updateboardgiver(GiverBoardVO gbvo) throws Exception;
	

}
