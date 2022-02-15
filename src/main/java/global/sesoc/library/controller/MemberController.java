package global.sesoc.library.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.library.dao.MemberDAO;
import global.sesoc.library.vo.Members;



@Controller
@RequestMapping("member")
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	MemberDAO dao;
	

	@RequestMapping (value="register", method=RequestMethod.GET)
	public String signupForm(Model model) {
		return "memberjsp/login_signup";
	}

	
	@RequestMapping (value="register", method=RequestMethod.POST)
	public String signup(Model model, Members member) {
		
		logger.info("전달된 param: {}", member);
		int result = dao.insertMember(member);
		if (result != 1) {
			return "memberjsp/login_signup";
		}
		return "memberjsp/index";
	}
	
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginForm() {
		return "memberjsp/login_signup";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(HttpSession session, String id, String password) {
		Members member = dao.getMember(id);
		
		if (member != null && member.getPassword().equals(password)) {
			session.setAttribute("loginId", member.getId());
			return "memberjsp/index";
		}
		//맞지 않으면 로그인폼으로 이동
		else {
			return "memberjsp/login_signup";
		}
	}
	
	/**
	 * 로그아웃
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.removeAttribute("loginId");
		return "redirect:/";
	}
	
	
	/*�엫�떆 �럹�씠吏� �씠�룞 */
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
	
	@RequestMapping(value="essaywrite", method=RequestMethod.GET)
	public String essaywrite() {
		
		return "boardjsp/essaywrite";
	}
	
	@RequestMapping(value="QnAwrite", method=RequestMethod.GET)
	public String QnAwrite() {
		
		return "boardjsp/QnAwrite";
	}
	
	@RequestMapping(value="contact", method=RequestMethod.GET)
	public String contact() {
		
		return "memberjsp/contact";
	}
}
