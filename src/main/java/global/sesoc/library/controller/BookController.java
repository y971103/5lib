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
import org.springframework.web.bind.annotation.ResponseBody;

import global.sesoc.library.dao.BookDAO;
import global.sesoc.library.vo.Book;
import global.sesoc.library.vo.Kakaobook;
import global.sesoc.library.vo.Review;



@Controller
@RequestMapping("book")
public class BookController {
	private static final Logger logger = LoggerFactory.getLogger(BookController.class);
	
	@Autowired
	BookDAO dao;

	
// 한줄 리뷰 관련 컨트롤러	
	@RequestMapping (value="reviewWrite", method=RequestMethod.POST)
	public String insertReview (Review review, HttpSession session, Model model) {
		
		//세션에서 로그인한 사용자의 아이디를 읽어서 Reply객체의 작성자 정보에 세팅
		String id = (String) session.getAttribute("loginId");
		review.setId(id);
		
		//리플 정보를 DB에 저장
		dao.insertReview(review);
		
		//읽던 게시글로 되돌아 감
		return "redirect:read?Booknum=" + review.getBooknum();
	}
	
	/**
	 * 한줄 리뷰 삭제
	 */
	@RequestMapping (value="reviewDelete", method=RequestMethod.GET)
	public String deleteReview (Review review, HttpSession session) {
		String id = (String) session.getAttribute("loginId");
		
		review.setId(id);
		
		dao.deleteReview(review);
		return "redirect:read?Booknum=" + review.getBooknum();
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
		return "redirect:read?Booknum=" + review.getBooknum();
	}
	
	//book arraylist
		@RequestMapping(value="book",method=RequestMethod.GET)
		public String Booklist(Model model) {
			logger.debug("book DB 진입");
			List<Book> Booklist = dao.select2();
			logger.debug("결과:{}",Booklist);
			model.addAttribute("Booklist",Booklist);
			return "bookjsp/index";
		}
	
	
	//kakaobook arraylist
	@RequestMapping(value="kakaobook",method=RequestMethod.GET)
	public String Kakaolist(Model model) {
		logger.debug("kakaobook 진입");
		List<Kakaobook> kakaobooklist = dao.select();
		logger.debug("결과:{}",kakaobooklist);
		model.addAttribute("kakaobooklist",kakaobooklist);
		return "bookjsp/index";
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
		
		//책 정보 출력 
		@RequestMapping(value = "/view", method = RequestMethod.GET)
		public String view(Model model) {
			
			List<Kakaobook> kakaobook = dao.select();

			
			model.addAttribute("kakaobook", kakaobook);
			return "view";
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
	
}
