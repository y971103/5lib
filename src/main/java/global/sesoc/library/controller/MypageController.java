package global.sesoc.library.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.library.dao.MypageDAO;

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
	
	
}
