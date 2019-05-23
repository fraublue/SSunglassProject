package kr.co.project.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.project.domain.CommentVO;
import kr.co.project.domain.CommonBoardVO;
import kr.co.project.domain.Criteria;
import kr.co.project.domain.FavoriteType;
import kr.co.project.domain.GiverBoardVO;
import kr.co.project.domain.PageMaker;
import kr.co.project.domain.SearchCriteria;
import kr.co.project.domain.Test;
import kr.co.project.service.BoardService;
import kr.co.project.service.UserService;

@Controller
@RequestMapping("/board/*")
public class BoardController {

  private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

  @Inject
  private BoardService service;
  @Inject
  private UserService serviceuser;
  
  @RequestMapping(value = "/list", method = RequestMethod.GET)
  public void takerlistPage(Model model) throws Exception {

    logger.info("");
    
    // model.addAttribute("list", service.listCriteria(cri));
    model.addAttribute("list", service.giverlistAll());

//    PageMaker pageMaker = new PageMaker();
//    pageMaker.setCri(cri);
//
//    // 
//    pageMaker.setTotalCount(service.userTypeListCountAll(type));
//
//    model.addAttribute("pageMaker", pageMaker);
  }

  @RequestMapping(value="/flist", method = RequestMethod.GET)
  public String favoritelistpage(@ModelAttribute("ftype") FavoriteType ftype, Model model) throws Exception{
	  
	  //logger.info(service.favoriteTypeList(ftype).toString());
	  model.addAttribute("list",service.favoriteTypeList(ftype));
	  
	  PageMaker pageMaker = new PageMaker();
	  Criteria cri = new Criteria();
	  cri.setPage(ftype.getPage());
	  cri.setPerPageNum(ftype.getPerPageNum());
	  pageMaker.setCri(cri);
 
	  pageMaker.setTotalCount(service.favoriteListCount(ftype));
	  
	  logger.info(service.favoriteListCount(ftype)+"");
	  
	  model.addAttribute("pageMaker", pageMaker);
	  return "board/list";
  }
  @RequestMapping(value="/write", method = RequestMethod.POST)
  public String writeBoard(@RequestParam("user_id") String user_id,@RequestParam("board_content") String board_content,@RequestParam("user_type") int type, HttpSession session) throws Exception{
	  CommonBoardVO vo = new CommonBoardVO();	  
	  vo.setUser_id(user_id);
	  vo.setBoard_content(board_content);
	  vo.setThumb_img("");
	  //int type = Integer.parseInt((String)session.getAttribute("user_type"));
	  
	  if(type == 0) {
		  service.takerWriteBoard(vo);
	  }
	  return "redirect:/";
  }
  @RequestMapping(value="/writeg", method = RequestMethod.POST)
  public String giverwriteBoard(@RequestParam("user_id") String user_id, @RequestParam("board_content") String board_content, @RequestParam("user_type") int type,/*@ModelAttribute("gvo") */GiverBoardVO gvo, HttpSession session) throws Exception{
	  logger.info("asdfasdfsd");
	  CommonBoardVO vo = new CommonBoardVO();
	  vo.setUser_id(user_id);
	  vo.setBoard_content(board_content);
	  vo.setThumb_img("");
	  
	  //int type = Integer.parseInt((String)session.getAttribute("user_type"));
	
	  logger.info(type+"");
	  if(type == 1) {
		  logger.info("????");
		  service.takerWriteBoard(vo);
		  logger.info(vo.toString());
		  gvo.setBoard_id(service.getWritedBoardID(user_id));
		  logger.info(gvo.toString());
		  service.giverWriteBoard(gvo);
	  }
	  return "redirect:/";
  }
  @RequestMapping(value="/writePage", method = RequestMethod.GET)
  public String writeBoardPage() throws Exception{
	  return "board/write";
  }
  ////////////////////////////////
  // 20190521 ts
  ///////////////////////////////
  @RequestMapping(value = "/ulist.do", method = RequestMethod.GET)
	public ModelAndView userboardlistpage(@RequestParam("user_id") String user_id) throws Exception {
		logger.info("useboard " + user_id);
		ModelAndView mav = new ModelAndView();
		List<CommonBoardVO> list = service.listUser(user_id);
		mav.setViewName("board/list");
		mav.addObject("list", list);
		return mav;
	}
  
	@RequestMapping(value = "/boardview.do", method = RequestMethod.GET)
	public ModelAndView boardview(@RequestParam("board_id") int board_id, @RequestParam("user_id") String user_id)
			throws Exception {
		logger.info("boardview board_id ::: " + board_id);
		logger.info("boardview user_id ::::" + user_id);
		
		boolean flag = serviceuser.userTypeCheck(user_id);
		
		if(flag) {
			logger.info("boardview giver ::::::::::::::::");
		}else {
			logger.info("boardview taker ::::::::::::::::");
		}
		
		ModelAndView mav = new ModelAndView();
		if (flag) {
			mav.setViewName("board/boardForm");
			mav.addObject("common_board", service.commmonboard(board_id));
			mav.addObject("user_type",flag);
			mav.addObject("giver_board",service.giverboard(board_id));
			
		} else {
			mav.setViewName("board/boardForm");
			mav.addObject("common_board", service.commmonboard(board_id));
			mav.addObject("user_type",flag);
		}
		return mav;
	}
	
	
	/////////////////////////
	
	
	
//  @RequestMapping(value = "/readPage", method = RequestMethod.GET)
//  public void read(@RequestParam("bno") int bno, @ModelAttribute("cri") SearchCriteria cri, Model model)
//      throws Exception {
//
//    model.addAttribute(service.read(bno));
//  }
//
//  @RequestMapping(value = "/removePage", method = RequestMethod.POST)
//  public String remove(@RequestParam("bno") int bno, SearchCriteria cri, RedirectAttributes rttr) throws Exception {
//
//    service.remove(bno);
//
//    rttr.addAttribute("page", cri.getPage());
//    rttr.addAttribute("perPageNum", cri.getPerPageNum());
//    rttr.addAttribute("searchType", cri.getSearchType());
//    rttr.addAttribute("keyword", cri.getKeyword());
//
//    rttr.addFlashAttribute("msg", "SUCCESS");
//
//    return "redirect:/sboard/list";
//  }
//
//  @RequestMapping(value = "/modifyPage", method = RequestMethod.GET)
//  public void modifyPagingGET(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
//
//    model.addAttribute(service.read(bno));
//  }
//
//  @RequestMapping(value = "/modifyPage", method = RequestMethod.POST)
//  public String modifyPagingPOST(BoardVO board, SearchCriteria cri, RedirectAttributes rttr) throws Exception {
//
//    logger.info(cri.toString());
//    service.modify(board);
//
//    rttr.addAttribute("page", cri.getPage());
//    rttr.addAttribute("perPageNum", cri.getPerPageNum());
//    rttr.addAttribute("searchType", cri.getSearchType());
//    rttr.addAttribute("keyword", cri.getKeyword());
//
//    rttr.addFlashAttribute("msg", "SUCCESS");
//
//    logger.info(rttr.toString());
//
//    return "redirect:/sboard/list";
//  }
//
//  @RequestMapping(value = "/register", method = RequestMethod.GET)
//  public void registGET() throws Exception {
//
//    logger.info("regist get ...........");
//  }
//
//  @RequestMapping(value = "/register", method = RequestMethod.POST)
//  public String registPOST(BoardVO board, RedirectAttributes rttr) throws Exception {
//
//    logger.info("regist post ...........");
//    logger.info(board.toString());
//
//    service.regist(board);
//
//    rttr.addFlashAttribute("msg", "SUCCESS");
//
//    return "redirect:/sboard/list";
//  }
//  
//  
//  @RequestMapping("/getAttach/{bno}")
//  @ResponseBody
//  public List<String> getAttach(@PathVariable("bno")Integer bno)throws Exception{
//    
//    return service.getAttach(bno);
//  }  

  // @RequestMapping(value = "/list", method = RequestMethod.GET)
  // public void listPage(@ModelAttribute("cri") SearchCriteria cri,
  // Model model) throws Exception {
  //
  // logger.info(cri.toString());
  //
  // model.addAttribute("list", service.listCriteria(cri));
  //
  // PageMaker pageMaker = new PageMaker();
  // pageMaker.setCri(cri);
  //
  // pageMaker.setTotalCount(service.listCountCriteria(cri));
  //
  // model.addAttribute("pageMaker", pageMaker);
  // }
	
	@RequestMapping(value = "/insertcomment.do")
	@ResponseBody
	public String commentinsert(@ModelAttribute CommentVO vo) {
		logger.info("go to insertcomment");
		service.insertcomment(vo);
		
		
		return "commentList";
	}
	
	
	@RequestMapping(value = "/commentlistboardid.do")
	public ModelAndView commentlist(@RequestParam("board_id")int board_id) {
		logger.info("go to insertcomment");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("commentList");
		try {
			mav.addObject("commentList", service.commentlistboardid(board_id));
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
		return mav;
	}
}
