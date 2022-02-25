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
import global.sesoc.library.vo.Board;
import global.sesoc.library.vo.Habit;

@Controller
@RequestMapping("mypage")
public class MypageController {
	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);
	
	@Autowired
	MypageDAO dao;
	
	@RequestMapping(value="comment", method=RequestMethod.GET)
	public String comment() {
			
		return "mypagejsp/comment";
	}
	
	@RequestMapping(value="habit", method=RequestMethod.GET)
	public String habit() {
			
		return "mypagejsp/habit";
	}
	
	@RequestMapping(value="shelf", method=RequestMethod.GET)
	public String shelf() {
			
		return "mypagejsp/shelf";
	}
	
	//회원 id에 읽은 시간 저장
	@RequestMapping(value="counttime", method=RequestMethod.POST)
	public String counttime(
			HttpSession session
			, Model model
			, Habit habit ) {
		
		String id = (String) session.getAttribute("loginId");
		habit.setId(id);
		
		logger.debug("책 읽은 시간 : {}", habit);
		
		dao.counttime(habit);
		
		return "mypagejsp/habit";
	}
}
