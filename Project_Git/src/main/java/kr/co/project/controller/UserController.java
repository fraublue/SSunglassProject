package kr.co.project.controller;



import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.junit.runners.Parameterized.Parameter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.project.domain.UserHasFavoriteVO;
import kr.co.project.domain.UserVO;
import kr.co.project.service.BoardService;
import kr.co.project.service.FavoriteService;
import kr.co.project.service.UserService;
import kr.co.project.service.UserServiceImpl;


@Controller
public class UserController {
	  private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	  
	  @Inject
	  private UserService service;
	  
	  @Inject
	  private BoardService bservice;
	  
	  @Inject
	  private FavoriteService fservice;
	
	 
	  
	  @RequestMapping(value = "/main.do")
	  //메인페이지 이동
	  public String main() {
		  logger.info("Welcome home! The client locale is {}.");
		  return "main";
	  }
	  //로그인페이지 이동
	  @RequestMapping(value = "/loginForm.do")
	  public String login() {
		  logger.info("go to loginForm.do");
		  return "loginForm";
	  }
	  //로그인처리	  
	  @RequestMapping(value = "/login.do")
	  public ModelAndView loginForm(@ModelAttribute UserVO vo, HttpSession session) {
		  
		  boolean result = service.loginCheck(vo, session);
		  ModelAndView mav = new ModelAndView();
		  if(result == true) {//�α��� ����
			  //main.do�� �̵� 
			  mav.setViewName("main");//vo가 dao까지 왔다갔다 하면서, 정보 처리를 다 하고, 어디로 매핑할건지에 대한 정보 
			  mav.addObject("msg","로그인성공");
		  }else {
			  mav.setViewName("loginForm");
			  mav.addObject("msg","로그인실패" );
		  }
		  return mav ;
	  }
	  @RequestMapping(value = "/logout.do")
	  //로그아웃 처리
	  public ModelAndView logout(HttpSession session) {
		  service.logout(session);
		  ModelAndView mav = new ModelAndView();
		  logger.info("logout");
		  mav.setViewName("main");
		  mav.addObject("msg","logout");
		  return mav;
	  }
	  
	  
	  @RequestMapping(value = "/registerForm.do")
	  //회원가입페이지 이동 
	  public String registerForm() {
		  logger.info("go to registerForm.do");
		  return "register";
	  }
	  
	  @RequestMapping(value = "/register.do")
	  //회원가입 처리
	  public String register(@ModelAttribute UserVO vo) {
		  logger.info("go to register!.do");
		  service.insertMember(vo);
		  return "main";
	  }
	  
	  @ResponseBody
	  @RequestMapping(value = "/idcheck.do")
	  //아이디 중복체크
	  public int idcheck(HttpServletRequest req) {
		  logger.info("exec idcheck.do ");
		  String user_id = req.getParameter("user_id");
		  UserVO vo = service.idcheck(user_id);
		  int result = 0;
		  if(vo == null) {
			  result = 1;//아이디 중복 되지 않으면 
		  }
		  return result;
	  }
	  
	  @RequestMapping(value = "/searchuser.do")
	  //회원정보 검색
	  public String searchuser(HttpServletRequest req, Model model) {
		  
		  //model은 vo의 상위객체이다
		  try {
		  String user_id = req.getParameter("user_id");
		  model.addAttribute("vo",service.usercheck(user_id));
		  logger.info("회원정보 검색 searchuser.do  :::::::: " + user_id);
		  model.addAttribute("fav",fservice.selectfavo_user(user_id));
		} catch (Exception e) {
			e.printStackTrace();
		}
		  return "ranking";
	  }
	  
	  @RequestMapping(value = "/update.do")
	  //회원정보 수정 
	  public String updateuser(@ModelAttribute UserVO vo, HttpServletRequest req) {
		  service.updateuser(vo);
		  logger.info("회원정보 수정  " );
		  String user_id = req.getParameter("user_id");
		  return "forward:/searchuser.do?user_id="+user_id;
	  }
	  
	  @RequestMapping(value = "/insertfavoriteuser.do")
	  //user favorite insert 
	  public @ResponseBody int insertfavoriteuser(@ModelAttribute UserHasFavoriteVO fvo) {
		  logger.info("insert favorite user : " + fvo.getUser_id() + " , favo : " + fvo.getFavorite_id());
		  try {
			fservice.userinsertfavorite(fvo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		  return 1;
	  }
	  
	  @RequestMapping(value = "/deletefavoriteuser.do")
	  //user favorite insert 
	  public @ResponseBody int deletefavoriteuser(@ModelAttribute UserHasFavoriteVO fvo) {
		  logger.info("delete favorite user : " + fvo.getUser_id() + " , favo : " + fvo.getFavorite_id());
		  try {
			fservice.userdeletefavorite(fvo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		  return 1;
	  }
	  
	  @RequestMapping(value = "/deleteuser.do")
	  //회원탈퇴
	  public String deleteuser(HttpSession session, @RequestParam("user_id")String user_id) {
		  boolean a = service.userTypeCheck(user_id);
		  
		  try {
			  if(a) {//giver 이면
				  logger.info("usertype : giver");
			  //좋아요, 북마크 삭제 
			  //댓글 삭제 
				bservice.deletecomment_userid(user_id);
				logger.info("댓글삭제 ok");
			  //채팅 삭제 
			  //user_has_favorite 삭제
			  //board_has_favorite 삭제 
			  //giver_board 삭제 
				bservice.deletegiverboard_userid(user_id);
				logger.info("giverboard 삭제 ok ");
			  //common_board 삭제 
				bservice.deletecommonboard_userid(user_id);
				logger.info("commonboard 삭제 ok ");
				service.deleteuser(user_id, session);
				logger.info("user삭제 ok ");
		  }else {//taker 이면 
			  logger.info("usertype : taker");
			  //좋아요, 북마크 삭제 
			  //댓글 삭제 
			  bservice.deletecomment_userid(user_id);
			  logger.info("댓글 삭제 ok ");
			  //채팅 삭제 
			  //user_has_favorite 삭제
			  //board_has_favorite 삭제 
			  //common_board 삭제 
			  bservice.deletecommonboard_userid(user_id);
			  logger.info("common_board 삭제 ok ");
			  service.deleteuser(user_id, session); 
			  logger.info("user 삭제 ok ");
		  }
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		  service.deleteuser(user_id,session);
		  logger.info("회원정보 삭제 " );
		 
		  return "main";
	  }
	  
	  
	 
}
