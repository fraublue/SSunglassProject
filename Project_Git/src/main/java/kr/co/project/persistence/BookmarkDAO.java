package kr.co.project.persistence;

import java.util.List;

import kr.co.project.domain.BookmarkVO;
import kr.co.project.domain.CommonBoardVO;

public interface BookmarkDAO {
	public void insertBookmark(BookmarkVO vo);
	
	public void deletBookmark(BookmarkVO vo);
	
	public boolean checkExistBookmark(int board_id, String user_id);
	
	public List<CommonBoardVO> bookmarkList(String user_id);
	
	public void deletemark_boardid(int board_id);
}
