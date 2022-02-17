package global.sesoc.library.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.library.dao.BookDAO;
import global.sesoc.library.vo.Kakaobook;
import global.sesoc.library.vo.Review;



@Controller
@RequestMapping("")
public class BookController {
	private static final Logger logger = LoggerFactory.getLogger(BookController.class);
	
	@Autowired
	BookDAO dao;
	
	@RequestMapping(value="book", method=RequestMethod.GET)
	public String book() {
				
		return "bookjsp/booktest";
	}

	
	// 한줄 리뷰 관련 컨트롤러	
	
	/**
	 * 한줄 리뷰 저장
	 */
	@RequestMapping (value="reviewWrite", method=RequestMethod.POST)
	public String insertReview (Review review, HttpSession session, Model model) {
		
		//세션에서 로그인한 사용자의 아이디를 읽어서 Reply객체의 작성자 정보에 세팅
		String id = (String) session.getAttribute("loginId");
		review.setId(id);
		
		//리플 정보를 DB에 저장
		dao.insertReview(review);
		
		//읽던 게시글로 되돌아 감
		return "redirect:read?Booknum=" + review.getBooknum();
	}
	
	/**
	 * 한줄 리뷰 삭제
	 */
	@RequestMapping (value="reviewDelete", method=RequestMethod.GET)
	public String deleteReview (Review review, HttpSession session) {
		String id = (String) session.getAttribute("loginId");
		
		review.setId(id);
		
		dao.deleteReview(review);
		return "redirect:read?Booknum=" + review.getBooknum();
	}
	
	/**
	 * 한줄 리뷰 수정 기능
	 */
	@RequestMapping (value="reviewUpdate", method=RequestMethod.POST)
	public String updateReview (HttpSession session, Review review) {
		
		//삭제할 리플 정보와 본인 글인지 확인할 로그인아이디
		String id = (String) session.getAttribute("loginId");
		review.setId(id);
		
		//리플  수정 처리
		dao.updateReview(review);
		//원래의 글읽기 화면으로 이동 
		return "redirect:read?Booknum=" + review.getBooknum();
	}
	
	//kakaobook arraylist
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public String list(Model model) {
		ArrayList<Kakaobook> kakaobooklist = dao.selectKakaobook();
		logger.debug("결과:{}",kakaobooklist);
		model.addAttribute("kakaobooklist",kakaobooklist);
		return "kakaobooklist";
	}
}
