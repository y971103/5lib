package global.sesoc.library.controller;

import java.util.List;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;

import javax.net.ssl.HttpsURLConnection;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import global.sesoc.library.dao.BookDAO;
import global.sesoc.library.dao.MypageDAO;
import global.sesoc.library.util.PageNavigator;
import global.sesoc.library.vo.Habit;
import global.sesoc.library.vo.Kakaobook;
import global.sesoc.library.vo.Review;
import global.sesoc.library.vo.book_Search;




@Controller
@RequestMapping("book")
public class BookController {
	private static final Logger logger = LoggerFactory.getLogger(BookController.class);
	
	@Autowired
	BookDAO dao;
	
	@Autowired
	MypageDAO dao2;
	
	final int countPerPage = 8;
	final int pagePerGroup = 5;	
	
// 한줄 리뷰 관련 컨트롤러	
	/**
	 * 한줄 리뷰 등록
	 */
	@RequestMapping (value="reviewWrite", method=RequestMethod.POST)
	public String insertReview (
			Review review,
			HttpSession session,
			Model model) {
		
		//세션에서 로그인한 사용자의 아이디를 읽어서 Reply객체의 작성자 정보에 세팅
		String id = (String) session.getAttribute("loginId");
		review.setId(id);
		
		logger.debug("저장할 한줄 리뷰 정보 : {}", review);
		
		//리플 정보를 DB에 저장
		dao.insertReview(review);
		
		//읽던 게시글로 되돌아 감
		return "redirect:kakaobook_info?isbn=" + review.getIsbn();
	}
	
	/**
	 * 한줄 리뷰 삭제
	 */
	@RequestMapping (value="reviewDelete", method=RequestMethod.GET)
	public String deleteReview (Review review, HttpSession session) {
		String id = (String) session.getAttribute("loginId");
		
		review.setId(id);
		
		dao.deleteReview(review);
		return "redirect:kakaobook_info?isbn=" + review.getIsbn();
	}
	
	/**
	 * 한줄 리뷰 수정 기능
	 */
	@RequestMapping (value="reviewUpdate", method=RequestMethod.POST)
	public String updateReview (HttpSession session, Review review) {
		
		//삭제할 리플 정보와 본인 글인지 확인할 로그인아이디
		String id = (String) session.getAttribute("loginId");
		review.setId(id);
		
		//리플  수정 처리
		dao.updateReview(review);
		//원래의 글읽기 화면으로 이동 
		return "redirect:kakaobook_info?isbn=" + review.getIsbn();
	}
	

	//이미지 파일 저장 경로 (서버의 절대경로)
		final String dir = "/bookimage/";
		
		//카카오 책 API 요청 페이지로 이동
		@RequestMapping(value = "/", method = RequestMethod.GET)
		public String home() throws Exception {
			
			return "book";
		}
		
		//카카오로부터 받은 책 정보를 하나씩 DB에 저장
		@ResponseBody
		@RequestMapping(value = "/bookinsert", method = RequestMethod.POST)
		public void insert(Kakaobook kakaobook) throws Exception {
			logger.debug("전달된값 >>> {}", kakaobook);
			
			String filename = imageSave(kakaobook.getThumbnail(), kakaobook.getIsbn());
			
			if (filename != null) {
				kakaobook.setThumbnail(filename);
			}
			int result = dao.insertKakaobook(kakaobook);
			
			if (result == 0) {
				logger.debug("저장실패 === {}", kakaobook);
			}
		}

		//전달받은 이미지 파일의 URL로부터 파일 저장
		private String imageSave(String thumbnail, String isbn) {
			//파일경로가 없으면 null 리턴
			if (thumbnail == null || thumbnail.isEmpty()) {
				return null;
			}
			
			//저장 폴더가 없으면 생성
			File path = new File(dir);
			if (!path.isDirectory()) {
				path.mkdirs();
			}
			
			//저장할 파일명 (ISBN에서 공백제거)
			String filename = isbn.trim().replaceAll(" ", "") + ".jpg";
			
			
			try {
				URL url = new URL(thumbnail);
				HttpsURLConnection con = (HttpsURLConnection) url.openConnection();
				InputStream in = con.getInputStream();
				
				FileOutputStream out = new FileOutputStream(dir + filename);
				
				FileCopyUtils.copy(in, out);
			}
			catch (Exception e) {
				e.printStackTrace();
				return null;
			}
			return filename;
		}
		

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
		
		@RequestMapping(value="index",method=RequestMethod.GET)
		public String bestseller(Model model) {
			ArrayList<Kakaobook> bestseller = dao.selectBestSeller();
			model.addAttribute("bestseller", bestseller);
			return "bookjsp/index";
		}
		
							
		@RequestMapping(value="kakaolibrary",method=RequestMethod.GET)
		public String kakaolibrary(
				@RequestParam(value="page", defaultValue="1") int page//페이징 변수
				, book_Search book_search
				, Kakaobook kakaobook
				, Model model) {
			
			logger.debug("page: {}, book_search: {}", page, book_search);
			
			int total = dao.getTotal(book_search);
			
			PageNavigator navi = new PageNavigator(countPerPage, pagePerGroup, page, total); 
			
			List<Kakaobook> kakaobooklist = dao.selectKakaobook(book_search, navi.getStartRecord(), navi.getCountPerPage());
			logger.debug("결과:{}",kakaobooklist);
			
			model.addAttribute("kakaobooklist",kakaobooklist);
			model.addAttribute("navi", navi);
			model.addAttribute("book_search", book_search);
			
			return "bookjsp/kakaolibrary";
		}
		
		
		
		@RequestMapping(value="kakaocategory",method=RequestMethod.GET)
		public String kakaocategory(Kakaobook kakaobook , Model model) {
			// 카테고리별 분류 버튼 생성
			String category = dao.getCategory(kakaobook);
			
			return "bookjsp/kakaolibrary";
		}
		
		@RequestMapping(value="kakaobook_info",method=RequestMethod.GET)
		public String list(Model model, String isbn) {
			Kakaobook book = dao.getKakaoBook(isbn);
			List<Kakaobook> kakaobooklist = dao.recommendKakaobook();
            ArrayList<Review> reviewlist = dao.listReview(isbn);
			logger.info("결과:{}",book);
			model.addAttribute("book", book);
			model.addAttribute("kakaobooklist",kakaobooklist);
            model.addAttribute("reviewlist", reviewlist);
			logger.info("결과:{}",book);
			return "bookjsp/kakaobook_info";
		}
		
		
		@RequestMapping(value="viewer", method=RequestMethod.GET)
		public String viewer() {
					
			return "bookjsp/viewer";
		}
			
		
		//ajax 세팅
		@ResponseBody
		@RequestMapping(value="addwishlist",method=RequestMethod.POST)
		public void wishlist(HttpSession session, String isbn, String authors, String title, String thumbnail) {
			//로그인한 사용자의 아이디를 세션에서 읽기
			String id = (String) session.getAttribute("loginId");
			
			//ID와  ISBN을 HashMap에 저장
			HashMap<String, String> map = new HashMap<String, String>();
			map.put("id", id);
			map.put("isbn", isbn);
			map.put("authors", authors);
			map.put("title", title);
			map.put("thumbnail", thumbnail);
			
			
			//DAO로 맵을 전달
			dao.addwishlist(map);
			
		}
		
		//회원 id에 읽은 시간 저장
		@RequestMapping(value="countTime", method=RequestMethod.POST)
		public String countTime(
				HttpSession session
				, Model model
				, Habit habit ) {
			
			String id = (String) session.getAttribute("loginId");
			habit.setId(id);
			
			logger.info("책 읽은 시간 : {}", habit);
			
			dao2.countTime(habit);
			
			return "redirect:kakaolibrary";
		}

}
