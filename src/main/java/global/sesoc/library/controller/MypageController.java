package global.sesoc.library.controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import global.sesoc.library.dao.MypageDAO;
import global.sesoc.library.util.PageNavigator;
import global.sesoc.library.vo.Comments;
import global.sesoc.library.vo.Habit;
import global.sesoc.library.vo.Kakaobook;
import global.sesoc.library.vo.Review;
import global.sesoc.library.vo.Shelf;
import global.sesoc.library.vo.book_Search;

@Controller
@RequestMapping("mypage")
public class MypageController {
	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);
	
	@Autowired
	MypageDAO dao;
	
	final int countPerPage = 8;
	final int pagePerGroup = 5;	
	
	
	//이미지 파일 저장 경로 (서버의 절대경로)
			final String dir = "/bookimage/";
			
			//shelf 테이블에서 이미지파일 가져오기  <img src="download?filename=${book.thumbnail}">
			@RequestMapping(value = "download", method = RequestMethod.GET)
			public String fileDownload(String filename, HttpServletResponse response) {
				
				try {
					response.setHeader("Content-Disposition", " attachment;filename="+ URLEncoder.encode(filename, "UTF-8"));
				} catch (UnsupportedEncodingException e) {
					e.printStackTrace();
				}
				
				//저장된 파일 경로
				String fullPath = dir + filename;
				
				//서버의 파일을 읽을 입력 스트림과 클라이언트에게 전달할 출력스트림
				FileInputStream filein = null;
				ServletOutputStream fileout = null;
				
				try {
					filein = new FileInputStream(fullPath);
					fileout = response.getOutputStream();
					
					//Spring의 파일 관련 유틸 이용하여 출력
					FileCopyUtils.copy(filein, fileout);
					
					filein.close();
					fileout.close();
				} catch (IOException e) {
					e.printStackTrace();
				}

				return null;
			}
	
	
	@RequestMapping(value="shelf", method=RequestMethod.GET)
	public String shelf(@RequestParam(value="page", defaultValue="1") int page,
			HttpSession session, Model model, Shelf shelf) {
		String id = (String) session.getAttribute("loginId");
		int total = dao.getTotal();
		PageNavigator navi = new PageNavigator(countPerPage, pagePerGroup, page, total); 
		ArrayList<Shelf> shelflist = dao.listshelf(navi.getStartRecord(), navi.getCountPerPage(), id);
		model.addAttribute("shelflist", shelflist);
		model.addAttribute("navi", navi);
		logger.info("shelflist:{}", shelflist);
		
		return "mypagejsp/shelf";
	}
	
	
	
	
	
	/*
	 * //북 인포 페이지 하나 더 만듦. 카카오 책 정보를 위한 북 인포 페이지
	 * 
	 * @RequestMapping(value="kakaobook_info",method=RequestMethod.GET) public
	 * String list(Model model, String isbn) { Kakaobook book =
	 * dao.getKakaoBook(isbn); List<Kakaobook> kakaobooklist =
	 * dao.recommendKakaobook(); ArrayList<Review> reviewlist =
	 * dao.listReview(isbn); logger.info("결과:{}",book); model.addAttribute("book",
	 * book); model.addAttribute("kakaobooklist",kakaobooklist);
	 * model.addAttribute("reviewlist", reviewlist); logger.info("결과:{}",book);
	 * return "bookjsp/kakaobook_info"; }
	 */
	
	
	@RequestMapping(value="habit", method=RequestMethod.GET)
	public String habit(HttpSession session, Model model) {
		logger.info("안녕하세여{}");
		String id = (String) session.getAttribute("loginId");
		ArrayList<Habit> habitlist = dao.selectTime(id);
		model.addAttribute("habitlist", habitlist);
		logger.info("habit.jsp를 가기 전에 실행되는 컨트롤러의 모델에 저장한 habitlist 목록:{}", habitlist);
		return "mypagejsp/habit";
	}
	
	@RequestMapping(value="comment", method=RequestMethod.GET)
	public String commentlist(@RequestParam(value="page", defaultValue="1") int page,
			HttpSession session, Model model, Shelf shelf) {
		String id = (String) session.getAttribute("loginId");
		int total = dao.getTotal();
		PageNavigator navi = new PageNavigator(countPerPage, pagePerGroup, page, total); 
		ArrayList<Shelf> shelflist = dao.listshelf(navi.getStartRecord(), navi.getCountPerPage(), id);
		model.addAttribute("shelflist", shelflist);
		model.addAttribute("navi", navi);
		logger.info("shelflist:{}", shelflist);
		return "mypagejsp/comment";
	}
	

	 //코멘트 작성하기
	@RequestMapping(value="commentWrite", method=RequestMethod.POST)
	public String commentWrite (Comments comments, HttpSession session, Model model) {
		
		String id = (String) session.getAttribute("loginId");
		
		/* Comments comments = new Comments(); */
		
		comments.setId(id);
		
		logger.debug("저장할 내 서재 책 정보: {}", comments);
		
		dao.commentWrite(comments);
		
		return "redirect:comment?isbn="+ comments.getIsbn();
	}
	
	
	// 등록한 책 코멘트 삭제하기 
	@RequestMapping (value="deleteComment", method=RequestMethod.GET)
	public String deleteComments (Comments comments, HttpSession session) {
		String id = (String) session.getAttribute("loginId");
		
		comments.setId(id);
		
		dao.deleteComments(comments);
		return "redirect:comments?isbn="+ comments.getIsbn();
	}
	

	
	// 등록한 내 서재 책 코멘트 수정하기
	@RequestMapping (value="updateComment", method=RequestMethod.POST)
	public String updateComments (HttpSession session, Comments comments) {
		
		String id = (String) session.getAttribute("loginId");
		comments.setId(id);
		
		//코멘트  수정 처리
		dao.updateComments(comments);
		//원래 화면으로 이동 
		return "redirect:comments?isbn="+ comments.getIsbn();
	}
	
	
	
//	//id별 독서시간
//	@RequestMapping (value="selectTime", method=RequestMethod.GET)
//	public String selectTime (HttpSession session, Model model) {
//		logger.debug("안녕하세여{}");
//		String id = (String) session.getAttribute("loginId");
//		ArrayList<Habit> habitlist = dao.selectTime(id);
//		model.addAttribute("habitlist", habitlist);
//		logger.debug("habit.jsp를 가기 전에 실행되는 컨트롤러의 모델에 저장한 habitlist 목록:{}", habitlist);
//		return "mypagejsp/habit";
//	}
	
	
	
	
}
