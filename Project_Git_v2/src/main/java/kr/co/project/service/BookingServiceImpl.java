package kr.co.project.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.project.domain.BookingVO;
import kr.co.project.domain.CommonBoardVO;
import kr.co.project.domain.Criteria;
import kr.co.project.persistence.BookingDAO;


@Service
public class BookingServiceImpl implements BookingService {


	@Inject
	private BookingDAO dao;
	
	@Override
	public void insertBooking(BookingVO vo) throws Exception {
		 dao.insertBooking(vo);		
	}

	@Override
	public void deleteBooking(BookingVO vo) {
		dao.deleteBooking(vo);
		
	}

	@Override
	public boolean checkExistBooking(int board_id, String user_id) {
		dao.checkExistBooking(board_id, user_id);
		return false;
	}

	@Override
	public List<CommonBoardVO> bookingList(String user_id, Criteria cri) {
		dao.bookingList(user_id, cri);
		return null;
	}

	@Override
	public void deletebooking_boardid(int board_id) {
		dao.deletebooking_boardid(board_id);
		
	}

	@Override
	public void deletebooking_userid(String user_id) {
		dao.deletebooking_userid(user_id);
		
	}

}
