package global.sesoc.library.controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
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

import global.sesoc.library.dao.MemberDAO;
import global.sesoc.library.vo.Book;
import global.sesoc.library.vo.Kakaobook;
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
	
	@RequestMapping(value="viewer", method=RequestMethod.GET)
	public String viewer() {
				
		return "memberjsp/viewer";
	}
	
	
	@RequestMapping(value="library",method=RequestMethod.GET)
	public String list(Model model) {
		logger.info("book 진입");
		List<Book> booklist = dao.selectBook();
		logger.info("결과:{}",booklist);
		model.addAttribute("booklist",booklist);
		return "memberjsp/library";
	}
	
	@RequestMapping(value="book_info",method=RequestMethod.GET)
	public String list(Model model, int booknum) {
		
		Book book = dao.getBook(booknum);
		model.addAttribute("book", book);
		return "memberjsp/book_info";
	}
							
						//라이브러리 페이지 하나 더 만듦. 카카오 책 정보를 위한 라이브러리 페이지
	@RequestMapping(value="kakaolibrary",method=RequestMethod.GET)
	public String kakaolist(Model model) {
		logger.debug("kakaobook 진입");
		List<Kakaobook> kakaobooklist = dao.selectKakaobook();
		logger.debug("결과:{}",kakaobooklist);
		model.addAttribute("kakaobooklist",kakaobooklist);
		return "memberjsp/kakaolibrary";
	}
	
						//북 인포 페이지 하나 더 만듦. 카카오 책 정보를 위한 북 인포 페이지
	@RequestMapping(value="kakaobook_info",method=RequestMethod.GET)
	public String list(Model model, String isbn) {
		Kakaobook book = dao.getKakaoBook(isbn);
		logger.info("결과1:{}",book);
		model.addAttribute("book", book);
		logger.info("결과:{}",book);
		return "memberjsp/kakaobook_info";
	}
	
	final String dir = "/bookimage/";
	//kakaobook 테이블에서 이미지파일 가져오기  <img src="download?filename=${book.thumbnail}">
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
	
	@RequestMapping(value="contact", method=RequestMethod.GET)
	public String contact() {
		
		return "memberjsp/contact";
	}
	
	
}
