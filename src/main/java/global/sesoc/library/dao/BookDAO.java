package global.sesoc.library.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.library.vo.Kakaobook;
import global.sesoc.library.vo.Review;
import global.sesoc.library.vo.Shelf;
import global.sesoc.library.vo.book_Search;

@Repository
public class BookDAO {
	@Autowired
	SqlSession sqlSession;

	// 한줄평 작성
	public int insertReview(Review review) {
		BookMapper mapper = sqlSession.getMapper(BookMapper.class);
		int result = mapper.insertReview(review);
		return result;
	}

	// 한줄평 삭제
	public int deleteReview(Review review) {
		BookMapper mapper = sqlSession.getMapper(BookMapper.class);
		int result = mapper.deleteReview(review);
		return result;

	}

	// 한줄평 수정
	public int updateReview(Review review) {
		BookMapper mapper = sqlSession.getMapper(BookMapper.class);
		int result = mapper.updateReview(review);
		return result;
	}

	// 북 정보에 달린 한줄평 목록
	public ArrayList<Review> listReview(String isbn) {
		BookMapper mapper = sqlSession.getMapper(BookMapper.class);
		ArrayList<Review> reviewlist = mapper.listReview(isbn);
		return reviewlist;
	}
	
	
	
	public int insertKakaobook(Kakaobook kakaobook) {
		BookMapper mapper = sqlSession.getMapper(BookMapper.class);
		int result = 0;

		result = mapper.insertKakaobook(kakaobook);
		return result;
	}


	//책 목록
	public List<Kakaobook> selectKakaobook(book_Search book_search, int startRecord, int countPerPage) {
		BookMapper mapper = sqlSession.getMapper(BookMapper.class);
		//전체 검색 결과 중 읽을 시작위치와 개수.
		RowBounds rb = new RowBounds(startRecord, countPerPage);
		
		//검색어와 읽을 범위를 전달
		List<Kakaobook> book = mapper.selectKakaobook(book_search, rb);
		return book;
	}

	public Kakaobook getKakaoBook(String isbn) {
		BookMapper mapper = sqlSession.getMapper(BookMapper.class);
		//해당 번호의 글정보 읽기
		Kakaobook book = mapper.getKakaoBook(isbn);
		mapper.addHits(isbn);
		return book;
	}

	//전체 글 개수
	public int getTotal(book_Search book_search) {
		BookMapper mapper = sqlSession.getMapper(BookMapper.class);
		int total = mapper.getTotal(book_search);
		return total;
	}

	//위시리스트 추가
	public int addwishlist(HashMap<String, String> map) {
		BookMapper mapper = sqlSession.getMapper(BookMapper.class);
		int result = mapper.addwishlist(map);
		return result;
		
	}

	//이런 책은 어떠세요 에서 쓸 부분
	public List<Kakaobook> recommendKakaobook() {
		BookMapper mapper = sqlSession.getMapper(BookMapper.class); 
		List<Kakaobook> book = mapper.recommendKakaobook(); 
		return book;
	}

	public ArrayList<Kakaobook> selectBestSeller() {
		BookMapper mapper = sqlSession.getMapper(BookMapper.class);
		ArrayList<Kakaobook> bestseller = mapper.selectBestSeller();
		return bestseller;
	}
	
	// 카테고리별 분류 버튼 생성
	public String getCategory(Kakaobook kakaobook) {
		BookMapper mapper = sqlSession.getMapper(BookMapper.class);
		String category = mapper.getCategory(kakaobook);
		return category;
	}
	
	public int deleteShelf(HashMap<String, String> map) {
		MypageMapper mapper = sqlSession.getMapper(MypageMapper.class);
		int result = mapper.deleteShelf(map);
		return result;
	}

}
