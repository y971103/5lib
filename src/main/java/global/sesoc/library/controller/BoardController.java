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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import global.sesoc.library.dao.BoardDAO;
import global.sesoc.library.util.PageNavigator;
import global.sesoc.library.vo.Board;
import global.sesoc.library.vo.Reply;

@Controller
@RequestMapping("board")
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	BoardDAO dao;
	
	//게시판 관련 상수값들
		final int countPerPage = 10;			//페이지당 글 수
		final int pagePerGroup = 5;				//페이지 이동 링크를 표시할 페이지 수
		final String uploadPath = "/boardfile";	//파일 업로드 경로
		
	
	// Notice & QnA로 화면 전환	
	@RequestMapping(value="notice_QnA", method=RequestMethod.GET)
	public String notice_qna() {
			
		return "redirect:list";
	}	
	
	/**
	 * 글쓰기 폼으로 이동
	 */
	@RequestMapping (value="boardwrite", method=RequestMethod.GET)
	public String writeForm() {
		
		return "boardjsp/boardwrite";
	}
	
	/** 
	 * 글 저장
	 */
	@RequestMapping (value="write", method=RequestMethod.POST)
	public String write(
			HttpSession session
			, Model model
			, Board board ) {
		
		//세션에서 로그인한 사용자의 아이디를 읽어서 QnA객체의 작성자 정보에 세팅
		String id = (String) session.getAttribute("loginId");
		board.setId(id);
		
		logger.debug("저장할 글 정보 : {}", board);
		
		dao.insertBoard(board);
		return "redirect:list";
	}
	
	/**
	 * 글목록
	 */
	@RequestMapping (value="list", method=RequestMethod.GET)
	public String list (
			@RequestParam(value="page", defaultValue="1") int page
			, @RequestParam(value="searchText", defaultValue="") String searchText
			, Model model) {
		
		logger.debug("page: {}, searchText: {}", page, searchText);
		
		int total = dao.getTotal(searchText);			//전체 글 개수
		
		//페이지 계산을 위한 객체 생성
		PageNavigator navi = new PageNavigator(countPerPage, pagePerGroup, page, total); 
		
		//검색어와 시작 위치, 페이지당 글 수를 전달하여 목록 읽기
		ArrayList<Board> boardlist = dao.listBoard(searchText, navi.getStartRecord(), navi.getCountPerPage());	
		
		
		//페이지 정보 객체와 글 목록, 검색어를 모델에 저장
		model.addAttribute("boardlist", boardlist);
		model.addAttribute("navi", navi);
		model.addAttribute("searchText", searchText);
		
		return "boardjsp/notice_QnA";
	}

	/**
	 * 글 읽기
	 * @param boardnum 읽을 글번호
	 * @return 해당 글 정보
	 */
	@RequestMapping (value="read", method=RequestMethod.GET)
	public String read (int boardnum, Model model) {
		//전달된 글 번호로 해당 글정보 읽기
		Board board = dao.getBoard(boardnum);
		if (board == null) {
			return "redirect:list";
		}
		
		//해당 글에 달린 리플목록 읽기
		ArrayList<Reply> replylist = dao.listReply(boardnum);
		
		//본문글정보와 리플 목록을 모델에 저장
		model.addAttribute("board", board);
		model.addAttribute("replylist", replylist);
		
		return "boardjsp/boardRead";
	}
	
	/**
	 * 글 삭제
	 */
	@RequestMapping (value="delete", method=RequestMethod.GET)
	public String delete (HttpSession session, int boardnum) {
		String id = (String) session.getAttribute("loginId");
		
		//삭제할 글 번호와 본인 글인지 확인할 로그인아이디
		Board board = new Board();
		board.setBoardnum(boardnum);
		board.setId(id);
	
		//글 삭제
		int result = dao.deleteBoard(board);
		
		
		return "redirect:list";
	}
	
	/**
	 * 글 수정 폼으로 이동
	 */
	@RequestMapping (value="edit", method=RequestMethod.GET)
	public String editForm(HttpSession session, Model model, int boardnum) {
		
		Board board = dao.getBoard(boardnum);
		model.addAttribute("board", board);
		return "boardjsp/editForm";
	}
	
	/**
	 * 글 수정 처리
	 * @param board 수정할 글 정보
	 */
	@RequestMapping (value="edit", method=RequestMethod.POST)
	public String update (
			HttpSession session
			, Board board
			, MultipartFile upload) {
		
		//수정할 글이 로그인한 본인 글인지 확인
		String id = (String) session.getAttribute("loginId");
		Board oldboard = dao.getBoard(board.getBoardnum());
		if (oldboard == null || !oldboard.getId().equals(id)) {
			return "redirect:list";
		}
		
		//수정할 정보에 로그인 아이디 저장
		board.setId(id);
		
		//글 수정 처리
		dao.updateBoard(board);
		//원래의 글읽기 화면으로 이동 
		return "redirect:read?QnAnum=" + board.getBoardnum();
	}
	
	/**
	 * 리플 저장 처리
	 */
	@RequestMapping (value="replyWrite", method=RequestMethod.POST)
	public String insertreply(
			Reply reply, 
			HttpSession session, 
			Model model) {
		
		//세션에서 로그인한 사용자의 아이디를 읽어서 Reply객체의 작성자 정보에 세팅
		String id = (String) session.getAttribute("loginId");
		reply.setId(id);
		
		//리플 정보를 DB에 저장
		dao.insertReply(reply);
		
		//읽던 게시글로 되돌아 감
		return "redirect:read?boardnum=" + reply.getBoardnum();
	}
	
	/**
	 * 리플 삭제
	 */
	@RequestMapping (value="replyDelete", method=RequestMethod.GET)
	public String deleteQnAReply(Reply reply, HttpSession session) {
		String id = (String) session.getAttribute("loginId");
		
		//삭제할 글 번호와 본인 글인지 확인할 로그인아이디
		reply.setId(id);
		
		dao.deleteReply(reply);
		return "redirect:read?Boardnum=" + reply.getBoardnum();
	}
	
	/**
	 * 리플 수정 처리
	 * @param reply 수정할 리플 정보
	 */
	@RequestMapping (value="replyEdit", method=RequestMethod.POST)
	public String updateQnAreply(HttpSession session, Reply reply) {
		
		//삭제할 리플 정보와 본인 글인지 확인할 로그인아이디
		String id = (String) session.getAttribute("loginId");
		reply.setId(id);
		
		//리플  수정 처리
		dao.updateReply(reply);
		//원래의 글읽기 화면으로 이동 
		return "redirect:read?Boardnum=" + reply.getBoardnum();
	}
	
	
	//에세이 목록
	@RequestMapping(value="essaylist", method=RequestMethod.GET)
	public String essaylist(
		@RequestParam(value="page", defaultValue="1") int page
		, @RequestParam(value="searchText", defaultValue="") String searchText
		, Model model) {
	
	logger.debug("page: {}, searchText: {}", page, searchText);
	
	int total = dao.getTotal(searchText);			//전체 글 개수
	
	//페이지 계산을 위한 객체 생성
	PageNavigator navi = new PageNavigator(countPerPage, pagePerGroup, page, total); 
	
	//검색어와 시작 위치, 페이지당 글 수를 전달하여 목록 읽기
	ArrayList<Board> boardlist = dao.listBoard(searchText, navi.getStartRecord(), navi.getCountPerPage());	
	
	
	//페이지 정보 객체와 글 목록, 검색어를 모델에 저장
	model.addAttribute("boardlist", boardlist);
	model.addAttribute("navi", navi);
	model.addAttribute("searchText", searchText);
	
		
		return "boardjsp/essaylist";
	}
	
	//에세이 쓰기 폼
	@RequestMapping(value="essaywrite", method=RequestMethod.GET)
	public String essaywrite() {
		
		return "boardjsp/essaywrite";
	}
	
	@RequestMapping(value="comment", method=RequestMethod.GET)
	public String comment() {
			
		return "boardjsp/comment";
	}
	
	@RequestMapping(value="habit", method=RequestMethod.GET)
	public String habit() {
			
		return "boardjsp/habit";
	}
	
	@RequestMapping(value="shelf", method=RequestMethod.GET)
	public String shelf() {
			
		return "boardjsp/shelf";
	}
	
	

	
}