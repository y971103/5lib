<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> e1e27cd668ad88177200cb340a9de2e942609314
//package global.sesoc.library.controller;
//
//import java.util.ArrayList;
//
//import javax.servlet.http.HttpSession;
//
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.multipart.MultipartFile;
//
//import global.sesoc.library.dao.BoardDAO;
//import global.sesoc.library.util.PageNavigator;
<<<<<<< HEAD
//<<<<<<< HEAD
//import global.sesoc.library.vo.Board;
//import global.sesoc.library.vo.Notice;
//import global.sesoc.library.vo.QnA;
//import global.sesoc.library.vo.QnA_reply;
//import global.sesoc.library.vo.Reply;
//=======
//import global.sesoc.library.vo.QnA;
//import global.sesoc.library.vo.Board_reply;
//>>>>>>> aec39d4ab45b3626ac22324b15370fd4c329e570
=======
//import global.sesoc.library.vo.QnA;
//import global.sesoc.library.vo.Board_reply;
>>>>>>> e1e27cd668ad88177200cb340a9de2e942609314
//
//@Controller
//@RequestMapping("board")
//public class BoardController {
//	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
//	
//	@Autowired
//	BoardDAO dao;
//	/**
<<<<<<< HEAD
//	 * 글쓰기 폼 보기
//	 */
//	@RequestMapping (value="write", method=RequestMethod.GET)
//	public String write() {
//		return "boardjsp/boardwrite";
=======
//	 * QnA쓰기 폼 보기
//	 */
//	@RequestMapping (value="QnAwrite", method=RequestMethod.GET)
//	public String QnAwrite() {
//		return "boardjsp/QnAwrite";
>>>>>>> e1e27cd668ad88177200cb340a9de2e942609314
//	}
//	
//	/** 
//	 * 글 저장
//	 */
<<<<<<< HEAD
//	@RequestMapping (value="write", method=RequestMethod.POST)
//	public String QnAwrite(
//			HttpSession session
//			, Model model
//<<<<<<< HEAD
//			, Board board) {
//=======
//			, QnA qna 
//			, MultipartFile upload) {
//>>>>>>> aec39d4ab45b3626ac22324b15370fd4c329e570
//		
//		//세션에서 로그인한 사용자의 아이디를 읽어서 QnA객체의 작성자 정보에 세팅
//		String id = (String) session.getAttribute("loginId");
//		board.setId(id);
//		
//		logger.debug("저장할 글 정보 : {}", board);
//		
//		dao.insertBoard(board);
=======
//	@RequestMapping (value="QnAwrite", method=RequestMethod.POST)
//	public String QnAwrite(
//			HttpSession session
//			, Model model
//			, QnA qna 
//			, MultipartFile upload) {
//		
//		//세션에서 로그인한 사용자의 아이디를 읽어서 QnA객체의 작성자 정보에 세팅
//		String id = (String) session.getAttribute("loginId");
//		qna.setId(id);
//		
//		logger.debug("저장할 글 정보 : {}", qna);
//		
//		dao.insertQnA(qna);
>>>>>>> e1e27cd668ad88177200cb340a9de2e942609314
//		return "redirect:list";
//	}
//	
//	/**
//	 * 글목록
//	 */
//	@RequestMapping (value="list", method=RequestMethod.GET)
//	public String listQnA (
//			@RequestParam(value="page", defaultValue="1") int page
//			, @RequestParam(value="searchText", defaultValue="") String searchText
//			, Model model) {
//		
//		logger.debug("page: {}, searchText: {}", page, searchText);
//		
//		int total = dao.getTotal(searchText);			//전체 글 개수
//		
//		//페이지 계산을 위한 객체 생성
//		PageNavigator navi = new PageNavigator(countPerPage, pagePerGroup, page, total); 
//		
//		//검색어와 시작 위치, 페이지당 글 수를 전달하여 목록 읽기
<<<<<<< HEAD
//<<<<<<< HEAD
//		ArrayList<Board> boardlist = dao.listBoard(searchText, navi.getStartRecord(), navi.getCountPerPage());	
//=======
//		ArrayList<Board> noticelist = dao.listNotice(searchText, navi.getStartRecord(), navi.getCountPerPage());	
//		ArrayList<QnA> qnalist = dao.listQnA(searchText, navi.getStartRecord(), navi.getCountPerPage());	
//>>>>>>> aec39d4ab45b3626ac22324b15370fd4c329e570
//		
//		
//		//페이지 정보 객체와 글 목록, 검색어를 모델에 저장
//		model.addAttribute("boardlist", boardlist);
//		model.addAttribute("navi", navi);
//		model.addAttribute("searchText", searchText);
//		
//		return "boardjsp/boardList";
=======
//		ArrayList<Board> noticelist = dao.listNotice(searchText, navi.getStartRecord(), navi.getCountPerPage());	
//		ArrayList<QnA> qnalist = dao.listQnA(searchText, navi.getStartRecord(), navi.getCountPerPage());	
//		
//		
//		//페이지 정보 객체와 글 목록, 검색어를 모델에 저장
//		model.addAttribute("boardlist", qnalist);
//		model.addAttribute("navi", navi);
//		model.addAttribute("searchText", searchText);
//		
//		return "boardjsp/notice_QnA";
>>>>>>> e1e27cd668ad88177200cb340a9de2e942609314
//	}
//
//	/**
//	 * 글 읽기
//	 * @param boardnum 읽을 글번호
//	 * @return 해당 글 정보
//	 */
//	@RequestMapping (value="read", method=RequestMethod.GET)
<<<<<<< HEAD
//	public String readQnA (int boardnum, Model model) {
//		//전달된 글 번호로 해당 글정보 읽기
//		Board board = dao.getBoard(boardnum);
//		if (board == null) {
=======
//	public String readQnA (int qnAnum, Model model) {
//		//전달된 글 번호로 해당 글정보 읽기
//		QnA qna = dao.getQnA(qnAnum);
//		if (qna == null) {
>>>>>>> e1e27cd668ad88177200cb340a9de2e942609314
//			return "redirect:list";
//		}
//		
//		//해당 글에 달린 리플목록 읽기
<<<<<<< HEAD
//<<<<<<< HEAD
//		ArrayList<Reply> replylist = dao.listReply(boardnum);
//=======
//		ArrayList<Board_reply> replylist = dao.listQnAReply(qnAnum);
//>>>>>>> aec39d4ab45b3626ac22324b15370fd4c329e570
//		
//		//본문글정보와 리플 목록을 모델에 저장
//		model.addAttribute("board", board);
//		model.addAttribute("replylist", replylist);
//		
//		return "boardjsp/boardread";
=======
//		ArrayList<Board_reply> replylist = dao.listQnAReply(qnAnum);
//		
//		//본문글정보와 리플 목록을 모델에 저장
//		model.addAttribute("qna", qna);
//		model.addAttribute("replylist", replylist);
//		
//		return "boardjsp/qnaread";
>>>>>>> e1e27cd668ad88177200cb340a9de2e942609314
//	}
//	
//	/**
//	 * 글 삭제
//	 */
//	@RequestMapping (value="delete", method=RequestMethod.GET)
<<<<<<< HEAD
//	public String deleteQnA (HttpSession session, int boardnum) {
//		String id = (String) session.getAttribute("loginId");
//		
//		//삭제할 글 번호와 본인 글인지 확인할 로그인아이디
//		Board board = new Board();
//		board.setBoardnum(boardnum);
=======
//	public String deleteQnA (HttpSession session, int qnAnum) {
//		String id = (String) session.getAttribute("loginId");
//		
//		//삭제할 글 번호와 본인 글인지 확인할 로그인아이디
//		QnA qna = new QnA();
//		qna.setQnAnum(qnAnum);
>>>>>>> e1e27cd668ad88177200cb340a9de2e942609314
//		qna.setId(id);
//	
//		//글 삭제
//		int result = dao.deleteQnA(qna);
//		
//		
//		return "redirect:list";
//	}
//	
//	/**
//	 * 글 수정 폼으로 이동
//	 */
//	@RequestMapping (value="edit", method=RequestMethod.GET)
//	public String editForm(HttpSession session, Model model, int qnAnum) {
//		
//		QnA qna = dao.getQnA(qnAnum);
//		model.addAttribute("qna", qna);
//		return "boardjsp/**editForm";
//	}
//	
//	/**
//	 * 글 수정 처리
//	 * @param board 수정할 글 정보
//	 */
//	@RequestMapping (value="edit", method=RequestMethod.POST)
//	public String updateQnA (
//			HttpSession session
//			, QnA qna
//			, MultipartFile upload) {
//		
//		//수정할 글이 로그인한 본인 글인지 확인
//		String id = (String) session.getAttribute("loginId");
//		QnA oldqna = dao.getQnA(qna.getQnAnum());
//		if (oldqna == null || !oldqna.getId().equals(id)) {
//			return "redirect:list";
//		}
//		
//		//수정할 정보에 로그인 아이디 저장
//		qna.setId(id);
//		
//		//글 수정 처리
//		dao.updateQnA(qna);
//		//원래의 글읽기 화면으로 이동 
//		return "redirect:read?QnAnum=" + qna.getQnAnum();
//	}
//	
//	/**
//	 * 리플 저장 처리
//	 */
//	@RequestMapping (value="replyWrite", method=RequestMethod.POST)
//	public String insertQnAreply(
//			Board_reply qnareply, 
//			HttpSession session, 
//			Model model) {
//		
//		//세션에서 로그인한 사용자의 아이디를 읽어서 Reply객체의 작성자 정보에 세팅
//		String id = (String) session.getAttribute("loginId");
//		qnareply.setId(id);
//		
//		//리플 정보를 DB에 저장
//		dao.insertQnAReply(qnareply);
//		
//		//읽던 게시글로 되돌아 감
//		return "redirect:read?QnAnum=" + qnareply.getQnAnum();
//	}
//	
//	/**
//	 * 리플 삭제
//	 */
//	@RequestMapping (value="replyDelete", method=RequestMethod.GET)
//	public String deleteQnAReply(Board_reply qnareply, HttpSession session) {
//		String id = (String) session.getAttribute("loginId");
//		
//		//삭제할 글 번호와 본인 글인지 확인할 로그인아이디
//		qnareply.setId(id);
//		
//		dao.deleteQnAReply(qnareply);
//		return "redirect:read?QnAnum=" + qnareply.getQnAnum();
//	}
//	
//	/**
//	 * 리플 수정 처리
//	 * @param reply 수정할 리플 정보
//	 */
//	@RequestMapping (value="replyEdit", method=RequestMethod.POST)
//	public String updateQnAreply(HttpSession session, Board_reply qnareply) {
//		
//		//삭제할 리플 정보와 본인 글인지 확인할 로그인아이디
//		String id = (String) session.getAttribute("loginId");
//		qnareply.setId(id);
//		
//		//리플  수정 처리
//		dao.updateQnAReply(qnareply);
//		//원래의 글읽기 화면으로 이동 
//		return "redirect:read?QnAnum=" + qnareply.getQnAnum();
//	}
//	
//}
<<<<<<< HEAD
=======
=======
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
<<<<<<< HEAD
import global.sesoc.library.vo.Board;
import global.sesoc.library.vo.Notice;
import global.sesoc.library.vo.QnA;
import global.sesoc.library.vo.QnA_reply;
import global.sesoc.library.vo.Reply;
=======
import global.sesoc.library.vo.QnA;
import global.sesoc.library.vo.Board_reply;
>>>>>>> aec39d4ab45b3626ac22324b15370fd4c329e570

@Controller
@RequestMapping("board")
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	BoardDAO dao;
	/**
	 * 글쓰기 폼 보기
	 */
	@RequestMapping (value="write", method=RequestMethod.GET)
	public String write() {
		return "boardjsp/boardwrite";
	}
	
	/** 
	 * 글 저장
	 */
	@RequestMapping (value="write", method=RequestMethod.POST)
	public String QnAwrite(
			HttpSession session
			, Model model
<<<<<<< HEAD
			, Board board) {
=======
			, QnA qna 
			, MultipartFile upload) {
>>>>>>> aec39d4ab45b3626ac22324b15370fd4c329e570
		
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
	public String listQnA (
			@RequestParam(value="page", defaultValue="1") int page
			, @RequestParam(value="searchText", defaultValue="") String searchText
			, Model model) {
		
		logger.debug("page: {}, searchText: {}", page, searchText);
		
		int total = dao.getTotal(searchText);			//전체 글 개수
		
		//페이지 계산을 위한 객체 생성
		PageNavigator navi = new PageNavigator(countPerPage, pagePerGroup, page, total); 
		
		//검색어와 시작 위치, 페이지당 글 수를 전달하여 목록 읽기
<<<<<<< HEAD
		ArrayList<Board> boardlist = dao.listBoard(searchText, navi.getStartRecord(), navi.getCountPerPage());	
=======
		ArrayList<Board> noticelist = dao.listNotice(searchText, navi.getStartRecord(), navi.getCountPerPage());	
		ArrayList<QnA> qnalist = dao.listQnA(searchText, navi.getStartRecord(), navi.getCountPerPage());	
>>>>>>> aec39d4ab45b3626ac22324b15370fd4c329e570
		
		
		//페이지 정보 객체와 글 목록, 검색어를 모델에 저장
		model.addAttribute("boardlist", boardlist);
		model.addAttribute("navi", navi);
		model.addAttribute("searchText", searchText);
		
		return "boardjsp/boardList";
	}

	/**
	 * 글 읽기
	 * @param boardnum 읽을 글번호
	 * @return 해당 글 정보
	 */
	@RequestMapping (value="read", method=RequestMethod.GET)
	public String readQnA (int boardnum, Model model) {
		//전달된 글 번호로 해당 글정보 읽기
		Board board = dao.getBoard(boardnum);
		if (board == null) {
			return "redirect:list";
		}
		
		//해당 글에 달린 리플목록 읽기
<<<<<<< HEAD
		ArrayList<Reply> replylist = dao.listReply(boardnum);
=======
		ArrayList<Board_reply> replylist = dao.listQnAReply(qnAnum);
>>>>>>> aec39d4ab45b3626ac22324b15370fd4c329e570
		
		//본문글정보와 리플 목록을 모델에 저장
		model.addAttribute("board", board);
		model.addAttribute("replylist", replylist);
		
		return "boardjsp/boardread";
	}
	
	/**
	 * 글 삭제
	 */
	@RequestMapping (value="delete", method=RequestMethod.GET)
	public String deleteQnA (HttpSession session, int boardnum) {
		String id = (String) session.getAttribute("loginId");
		
		//삭제할 글 번호와 본인 글인지 확인할 로그인아이디
		Board board = new Board();
		board.setBoardnum(boardnum);
		qna.setId(id);
	
		//글 삭제
		int result = dao.deleteQnA(qna);
		
		
		return "redirect:list";
	}
	
	/**
	 * 글 수정 폼으로 이동
	 */
	@RequestMapping (value="edit", method=RequestMethod.GET)
	public String editForm(HttpSession session, Model model, int qnAnum) {
		
		QnA qna = dao.getQnA(qnAnum);
		model.addAttribute("qna", qna);
		return "boardjsp/**editForm";
	}
	
	/**
	 * 글 수정 처리
	 * @param board 수정할 글 정보
	 */
	@RequestMapping (value="edit", method=RequestMethod.POST)
	public String updateQnA (
			HttpSession session
			, QnA qna
			, MultipartFile upload) {
		
		//수정할 글이 로그인한 본인 글인지 확인
		String id = (String) session.getAttribute("loginId");
		QnA oldqna = dao.getQnA(qna.getQnAnum());
		if (oldqna == null || !oldqna.getId().equals(id)) {
			return "redirect:list";
		}
		
		//수정할 정보에 로그인 아이디 저장
		qna.setId(id);
		
		//글 수정 처리
		dao.updateQnA(qna);
		//원래의 글읽기 화면으로 이동 
		return "redirect:read?QnAnum=" + qna.getQnAnum();
	}
	
	/**
	 * 리플 저장 처리
	 */
	@RequestMapping (value="replyWrite", method=RequestMethod.POST)
	public String insertQnAreply(
			Board_reply qnareply, 
			HttpSession session, 
			Model model) {
		
		//세션에서 로그인한 사용자의 아이디를 읽어서 Reply객체의 작성자 정보에 세팅
		String id = (String) session.getAttribute("loginId");
		qnareply.setId(id);
		
		//리플 정보를 DB에 저장
		dao.insertQnAReply(qnareply);
		
		//읽던 게시글로 되돌아 감
		return "redirect:read?QnAnum=" + qnareply.getQnAnum();
	}
	
	/**
	 * 리플 삭제
	 */
	@RequestMapping (value="replyDelete", method=RequestMethod.GET)
	public String deleteQnAReply(Board_reply qnareply, HttpSession session) {
		String id = (String) session.getAttribute("loginId");
		
		//삭제할 글 번호와 본인 글인지 확인할 로그인아이디
		qnareply.setId(id);
		
		dao.deleteQnAReply(qnareply);
		return "redirect:read?QnAnum=" + qnareply.getQnAnum();
	}
	
	/**
	 * 리플 수정 처리
	 * @param reply 수정할 리플 정보
	 */
	@RequestMapping (value="replyEdit", method=RequestMethod.POST)
	public String updateQnAreply(HttpSession session, Board_reply qnareply) {
		
		//삭제할 리플 정보와 본인 글인지 확인할 로그인아이디
		String id = (String) session.getAttribute("loginId");
		qnareply.setId(id);
		
		//리플  수정 처리
		dao.updateQnAReply(qnareply);
		//원래의 글읽기 화면으로 이동 
		return "redirect:read?QnAnum=" + qnareply.getQnAnum();
	}
	
}
>>>>>>> 66e3ff3cff09a621215ea4779854e70be76a1a61
>>>>>>> e1e27cd668ad88177200cb340a9de2e942609314
