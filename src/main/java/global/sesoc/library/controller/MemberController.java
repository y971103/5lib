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
	

	@RequestMapping (value="login_signup", method=RequestMethod.GET)
	public String signupForm(Model model) {
		return "memberjsp/login_signup";
	}

	// 회원가입
	@RequestMapping (value="register", method=RequestMethod.POST)
	public String signup(Model model, Members member) {
		
		logger.info("전달된 param: {}", member);
		int result = dao.insertMember(member);
		if (result != 1) {
			return "memberjsp/login_signup";
		}
		return "bookjsp/index";
	}
	
	// 로그인
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String loginForm() {
		return "memberjsp/login_signup";
	}
	
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(HttpSession session, String id, String password) {
		Members member = dao.getMember(id);
		
		if (member != null && member.getPassword().equals(password)) {
			session.setAttribute("loginId", member.getId());
			return "bookjsp/index";
		}
		//맞지 않으면 로그인폼으로 이동
		else {
			return "memberjsp/login_signup";
		}
	}
	
	// 로그아웃
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.removeAttribute("loginId");
		return "memberjsp/login_signup";
	}
	
	
	// 개인정보 수정 폼 이동
	@RequestMapping(value = "update", method= RequestMethod.GET)
	public String update(HttpSession session, Model model) {
		//세션의 아이디를 읽어서 DB에서 개인정보를 검색
		String id = (String) session.getAttribute("loginId");  // 캐스팅 필요.
		Members member = dao.getMember(id);
		//개인정보를 모델에 저장.
		model.addAttribute("members", member);
		return "memberjsp/updateForm";
	}
	
	// 개인정보 수정 내용 DB에 반영
	@RequestMapping(value = "update", method= RequestMethod.POST)
	public String update(Members member, HttpSession session) {			
		logger.debug("수정폼에서 전달된 값 {}", member);
		String id =(String) session.getAttribute("loginId");
		member.setId(id);
		dao.updateMember(member);
		return "redirect:/";
	}
	
//	@RequestMapping(value="index", method=RequestMethod.GET)
//	public String index() {
//		
//		return "memberjsp/index";
//	}
	
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
	
	@RequestMapping(value="contact", method=RequestMethod.GET)
	public String contact() {
		
		return "memberjsp/contact";
	}
	
	
}
