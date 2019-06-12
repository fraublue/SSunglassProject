
package kr.co.project.persistence;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.project.domain.BookingVO;
import kr.co.project.domain.CommonBoardVO;
import kr.co.project.domain.Criteria;

@Repository
public class BookingDAOImpl implements BookingDAO{
	
	@Inject
	private SqlSession session;
	
	private static String namespace ="kr.co.project.mapper.BookingMapper";	

	@Override
	public void insertBooking(BookingVO vo) throws Exception{
		System.out.println(">>>>>>>>>>>>>>>>insertbookingdao");
		session.insert(namespace+".insertbooking", vo);
		
	}

	@Override
	public void deleteBooking(BookingVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean checkExistBooking(int board_id, String user_id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<CommonBoardVO> bookingList(String user_id, Criteria cri) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deletebooking_boardid(int board_id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deletebooking_userid(String user_id) {
		// TODO Auto-generated method stub
		
	}

}