package global.sesoc.library.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.library.dao.MypageDAO;
import global.sesoc.library.vo.Comments;
import global.sesoc.library.vo.Habit;

@Controller
@RequestMapping("mypage")
public class MypageController {
	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);
	
	@Autowired
	MypageDAO dao;
	
	@RequestMapping(value="shelf", method=RequestMethod.GET)
	public String shelf() {
			
		return "mypagejsp/shelf";
	}
	
	@RequestMapping(value="habit", method=RequestMethod.GET)
	public String habit() {
			
		return "mypagejsp/habit";
	}
	
	
	// 코멘트 작성하기
	@RequestMapping(value="comment", method=RequestMethod.GET)
	public String insertComments (Comments comments, HttpSession session, Model model) {
		
		String id = (String) session.getAttribute("loginId"); 
		comments.setId(id);
		
		logger.debug("저장할 내 서재 책 정보: {}", comments);
		return "mypagejsp/comment";
		//dao.insertComments(comments);
		
		//return "redirect:comment?booknum="+ comments.getBooknum();
	}
	
	
	// 등록한 책 코멘트 삭제하기 
	@RequestMapping (value="deleteComment", method=RequestMethod.GET)
	public String deleteComments (Comments comments, HttpSession session) {
		String id = (String) session.getAttribute("loginId");
		
		comments.setId(id);
		
		dao.deleteComments(comments);
		return "redirect:comment?booknum="+ comments.getBooknum();
	}
	
	// 등록한 내 서재 책 코멘트 수정하기
	@RequestMapping (value="updateComment", method=RequestMethod.POST)
	public String updateComments (HttpSession session, Comments comments) {
		
		String id = (String) session.getAttribute("loginId");
		comments.setId(id);
		
		//코멘트  수정 처리
		dao.updateComments(comments);
		//원래 화면으로 이동 
		return "redirect:comment?booknum=" + comments.getBooknum();
	}
	
	
	
	
	
	
}
