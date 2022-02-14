package global.sesoc.library.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.library.dao.BookDAO;
import global.sesoc.library.dao.MemberDAO;



@Controller
@RequestMapping("book")
public class BookController {
	private static final Logger logger = LoggerFactory.getLogger(BookController.class);
	
	@Autowired
	BookDAO dao;
	
	/*@RequestMapping(value="index", method=RequestMethod.GET)
	public String index() {
		
		return "memberjsp/index";
	}
	
	@RequestMapping(value="viewer", method=RequestMethod.GET)
	public String viewer() {
		
		return "memberjsp/viewer";
	}*/
}
