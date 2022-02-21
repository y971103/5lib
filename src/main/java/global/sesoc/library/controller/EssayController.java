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

import global.sesoc.library.dao.EssayDAO;
import global.sesoc.library.util.PageNavigator;
import global.sesoc.library.vo.Essay;
import global.sesoc.library.vo.essay_Search;

@Controller
@RequestMapping("essay")
public class EssayController {
private static final Logger logger = LoggerFactory.getLogger(EssayController.class);
	
	@Autowired
	EssayDAO dao;
	
	//게시판 관련 상수값들
		final int countPerPage = 10;			//페이지당 글 수
		final int pagePerGroup = 5;				//페이지 이동 링크를 표시할 페이지 수
		final String uploadPath = "/boardfile";	//파일 업로드 경로
		
	
	// essay로 화면 전환	
	@RequestMapping(value="essay", method=RequestMethod.GET)
	public String essay() {
			
		return "redirect:list";
	}	
	
	
	/**
	 * 에세이쓰기 폼으로 이동
	 */
	@RequestMapping (value="essaywrite", method=RequestMethod.GET)
	public String writeForm() {
		
		return "boardjsp/essaywrite";
	}
	
	
	/** 
	 * 글 저장
	 */
	@RequestMapping (value="essay_write", method=RequestMethod.POST)
	public String write(
			HttpSession session
			, Model model
			, Essay essay ) {
		
		//세션에서 로그인한 사용자의 아이디를 읽어서 essay객체의 작성자 정보에 세팅
		String id = (String) session.getAttribute("loginId");
		essay.setId(id);
		
		logger.debug("저장할 글 정보 : {}", essay);
		
		dao.insertEssay(essay);
		return "redirect:list";
	}
	
	/**
	 * 글목록
	 */
	@RequestMapping (value="list", method=RequestMethod.GET)
	public String list (
			@RequestParam(value="page", defaultValue="1") int page
			, essay_Search essay_search
			, Model model) {
		
		logger.debug("page: {}, essay_search: {}", page, essay_search);
		
		int total = dao.getTotal(essay_search);			//전체 글 개수
		
		//페이지 계산을 위한 객체 생성
		PageNavigator navi = new PageNavigator(countPerPage, pagePerGroup, page, total); 
		
		//검색어와 시작 위치, 페이지당 글 수를 전달하여 목록 읽기
		ArrayList<Essay> essaylist = dao.listEssay(essay_search, navi.getStartRecord(), navi.getCountPerPage());	
		
		
		//페이지 정보 객체와 글 목록, 검색어를 모델에 저장
		model.addAttribute("essaylist", essaylist);
		model.addAttribute("navi", navi);
		model.addAttribute("essay_search", essay_search);
		
		return "boardjsp/essay";
	}

	/**
	 * 글 읽기
	 */
	@RequestMapping (value="read", method=RequestMethod.GET)
	public String read (int essaynum, Model model) {
		//전달된 글 번호로 해당 글정보 읽기
		Essay essay = dao.getEssay(essaynum);
		if (essay == null) {
			return "redirect:list";
		}
		
		//본문글정보와 리플 목록을 모델에 저장
		model.addAttribute("essay", essay);
		
		return "boardjsp/essayRead";
	}
	
	/**
	 * 글 삭제
	 */
	@RequestMapping (value="delete", method=RequestMethod.GET)
	public String delete (HttpSession session, int essaynum) {
		String id = (String) session.getAttribute("loginId");
		
		//삭제할 글 번호와 본인 글인지 확인할 로그인아이디
		Essay essay = new Essay();
		essay.setEssaynum(essaynum);
		essay.setId(id);
	
		//글 삭제
		int result = dao.deleteEssay(essay);
		
		
		return "redirect:list";
	}
	
	/**
	 * 글 수정 폼으로 이동
	 */
	@RequestMapping (value="edit", method=RequestMethod.GET)
	public String editForm(HttpSession session, Model model, int essaynum) {
		
		Essay essay = dao.getEssay(essaynum);
		model.addAttribute("essay", essay);
		return "boardjsp/essayedit";
	}
	
	/**
	 * 글 수정 처리
	 * @param essay 수정할 글 정보
	 */
	@RequestMapping (value="edit", method=RequestMethod.POST)
	public String update (
			HttpSession session
			, Essay essay
			, MultipartFile upload) {
		
		//수정할 글이 로그인한 본인 글인지 확인
		String id = (String) session.getAttribute("loginId");
		Essay oldessay = dao.getEssay(essay.getEssaynum());
		if (oldessay == null || !oldessay.getId().equals(id)) {
			return "redirect:list";
		}
		
		//수정할 정보에 로그인 아이디 저장
		essay.setId(id);
		
		//글 수정 처리
		dao.updateEssay(essay);
		//원래의 글읽기 화면으로 이동 
		return "essayjsp/essayRead";
	}
}
