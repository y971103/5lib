package global.sesoc.library.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.library.vo.Kakaobook;
import global.sesoc.library.vo.Review;

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


	public List<Kakaobook> selectKakaoBooknum() {
		BookMapper mapper = sqlSession.getMapper(BookMapper.class); 
		List<Kakaobook> kakaobooknum = mapper.selectKakaoBooknum(); 
		return kakaobooknum; 
	}	 
	
	public List<Kakaobook> selectKakaobook(String searchText, int startRecord, int countPerPage) {
		BookMapper mapper = sqlSession.getMapper(BookMapper.class);
		
		RowBounds rb = new RowBounds(startRecord, countPerPage);
		
		List<Kakaobook> book = mapper.selectKakaobook(searchText, rb);
		return book;
	}

	public Kakaobook getKakaoBook(String isbn) {
		BookMapper mapper = sqlSession.getMapper(BookMapper.class);
		//해당 번호의 글정보 읽기
		Kakaobook book = mapper.getKakaoBook(isbn);
		return book;
	}

	public int getTotal(String searchText) {
		BookMapper mapper = sqlSession.getMapper(BookMapper.class);
		int total = mapper.getTotal(searchText);
		return total;
	}

}
