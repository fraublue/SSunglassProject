package kr.co.project.persistence;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.project.domain.UserVO;
@Repository
public class UserDAOImpl implements UserDAO {
	@Inject
	private SqlSession session;//DB접근용
	
	private static String namespace ="kr.co.project.mapper.UserMapper";	
	@Override
	public boolean loginCheck(UserVO vo) {
		String user_id = session.selectOne(namespace+".loginCheck",vo);
		return (user_id == null) ? false : true;//null 일때  id가 db에 없으니까 false 
	}

	@Override
	public UserVO viewMember(UserVO vo) {
		
		return session.selectOne(namespace+".viewMember",vo);
	}

	@Override
	public void logout(HttpSession session) {
		
	}

	@Override
	public void insertMember(UserVO vo) {
		session.insert(namespace+".register",vo);//스프링이 자동으로 해줘서 insert 성공여부를 알 필요가 없다 그래서 return없음, 실패시 console에 에러뜸
		
	}

	@Override
	public UserVO idcheck(String user_id) {
		
		return session.selectOne(namespace+".idcheck",user_id);
	}

	@Override
	public UserVO userfromid(String user_id) {
		return session.selectOne(namespace+".viewMemberfromuserid",user_id);
		
	}

	@Override
	public void updateuser(UserVO vo) {
		session.update(namespace+".updateuser",vo);
		
	}

	@Override
	public void deleteuser(String user_id) {
		session.delete(namespace+".deleteuser",user_id);
		
		
	}

	@Override
	public boolean userTypeCheck(String user_id) {
		int i = session.selectOne(namespace+".userTypeCheck",user_id);
		return (i == 1) ? true : false;
		//1이면 (giver이면) true, 0이면 (taker이면 ) false return 
	}

}
