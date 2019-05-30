package kr.co.project.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.project.domain.BookmarkVO;
import kr.co.project.domain.PageMaker;
import kr.co.project.service.BookmarkService;

@Controller
public class BookmarkController {

	private static final Logger logger = LoggerFactory.getLogger(BookmarkController.class);

	@Inject
	private BookmarkService service;

	/*
	 * @RequestMapping(value = "/bookmark.do") public String
	 * selectAllBookmark(HttpSession session)
	 */

	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping(value ="/board/checkmark.nn") public boolean
	 * selectmark(@ModelAttribute BookmarkVO vo) {
	 * logger.info(">>>>>>>>>>>>>go to checkmark.nn"); // boolean a = false; // //
	 * try { // a = service.checkExistBookmark(vo); // }catch(Exception e){ //
	 * e.printStackTrace(); // } // // //�씠誘� 遺곷쭏�겕 �뻽�쑝硫� flase �븞�뻽�쑝硫� true // if(a) { //
	 * return "bookmarkdo"; // }else { // return "bookmarkcancel"; // }
	 * 
	 * System.out.println(vo.getBoard_id() + " " + vo.getUser_id()); boolean a =
	 * true;
	 * 
	 * a = service.checkExistBookmark(board_id, user_id);
	 * 
	 * 
	 * 
	 * if(a) { insert �떎�뻾 } else { delete �떎�뻾 }
	 * 
	 * 
	 * System.out.println("遺덈┛媛� " + a); return a;
	 * 
	 * }
	 */

	@RequestMapping(value = "/board/insertmark.nn")
	@ResponseBody
	public String insertmark(@ModelAttribute BookmarkVO vo) {
		logger.info(">>>>>>>>>>>>>go to insertmark.nn");

		try {
			service.insertBookmark(vo);
		} catch (Exception e) {

			e.printStackTrace();
		}
		return "bookmarkcancel";
	}

	@RequestMapping(value = "/board/deletemark.nn")
	public String deletemark(HttpServletRequest req, BookmarkVO vo) {
		logger.info(">>>>>>>>>>>>>go to deletemark.nn ");

		try {
			service.deleteBookmark(vo);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "bookmarkdo";
	}
	
	@RequestMapping(value = "/bookmarklist.nn")	  
	  public String list(@RequestParam("user_id")String user_id, Model model) {
		logger.info(">>>>>>>>>>>>>go to bookmarklist.nn " );				 
		  
		 try {
			 model.addAttribute("list", service.bookmarkList(user_id));
			 //PageMaker pageMaker = new PageMaker();
			 
			  
		} catch (Exception e) {			
			e.printStackTrace();
		}
		
		  return "board/list";
	  }
}