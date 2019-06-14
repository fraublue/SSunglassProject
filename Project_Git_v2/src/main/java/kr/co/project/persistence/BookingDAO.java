package kr.co.project.persistence;

import java.util.List;

import kr.co.project.domain.BookingListVO;
import kr.co.project.domain.BookingVO;
import kr.co.project.domain.Criteria;

public interface BookingDAO {
	public void insertBooking(BookingVO vo)throws Exception;
	public void deleteBooking(BookingVO vo);
	public boolean checkExistBooking(int board_id, String user_id);
	public List<BookingListVO> tbookingList(String user_id,Criteria cri);
	public List<BookingListVO> gbookingList(String user_id,Criteria cri);
	public void deletebooking_boardid(int board_id);
	public void deletebooking_userid(String user_id);
}

