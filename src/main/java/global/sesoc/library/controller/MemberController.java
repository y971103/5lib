package global.sesoc.library.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.library.dao.MemberDAO;



@Controller
@RequestMapping("member")
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	MemberDAO dao;
	
	@RequestMapping(value="index", method=RequestMethod.GET)
	public String index() {
		
		return "memberjsp/index";
	}
	
	@RequestMapping(value="viewer", method=RequestMethod.GET)
	public String viewer() {
		
		return "memberjsp/viewer";
	}
	
	@RequestMapping(value="library", method=RequestMethod.GET)
	public String library() {
		
		return "memberjsp/library";
	}
	
	@RequestMapping(value="book_info", method=RequestMethod.GET)
	public String bookinfo() {
		
		return "memberjsp/book_info";
	}
	
	@RequestMapping(value="login_signup", method=RequestMethod.GET)
	public String login_signup() {
		
		return "memberjsp/login_signup";
	}
	
	@RequestMapping(value="notice_qna", method=RequestMethod.GET)
	public String notice_qna() {
		
		return "boardjsp/notice_qna";
	}
	
	@RequestMapping(value="essaylist", method=RequestMethod.GET)
	public String essaylist() {
		
		return "boardjsp/essaylist";
	}
}
