package kr.co.project.service;

import java.util.List;

import kr.co.project.domain.BookingVO;
import kr.co.project.domain.CommonBoardVO;
import kr.co.project.domain.Criteria;

public interface BookingService {
	public void insertBooking(BookingVO vo) throws Exception ;
	public void deleteBooking(BookingVO vo);
	public boolean checkExistBooking(int board_id, String user_id);
	public List<CommonBoardVO> bookingList(String user_id,Criteria cri);
	public void deletebooking_boardid(int board_id);
	public void deletebooking_userid(String user_id);
}



